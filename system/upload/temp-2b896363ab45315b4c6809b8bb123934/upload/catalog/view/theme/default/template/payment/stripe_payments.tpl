<link rel="stylesheet" type="text/css" href="<?php echo $this->registry->get( 'config' )->get('config_ssl'); ?>catalog/view/theme/default/stylesheet/stripe_payments.css">
<form action="" method="POST" id="payment-form" class="form-horizontal">
	<div id="msgBox" role="alert"><i></i><span style="margin-left:10px;"></span></div>
	<div class="content" id="payment">
		<div class="row" id="header">
			<div class="col-sm-6">
				<h2><?php echo $text_credit_card; ?></h2>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-6">
				<div class="credit-cards"></div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for='cc-number'>
				<?php echo $entry_cc_number; ?>
			</label>
			<div class="col-sm-4">
				<input type="number" name="cc_number" id="cc-number" class="form-control" data-stripe="number" value="" >
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="cc-month">
				<?php echo $entry_cc_expire_date; ?>
			</label>
			<div class="col-sm-2" style="margin-top:10px">
				<select id="cc-month" name="cc_expire_date_month" data-stripe="exp-month" class="form-control">
					<?php foreach ($months as $month) : ?>
					<option value="<?php echo $month['value']; ?>"><?php echo $month['text']; ?></option>
					<?php endforeach; ?>
				</select>
			</div>
			<div class="col-sm-2" style="margin-top:10px">
				<select id="cc-year" name="cc_expire_date_year" data-stripe="exp-year" class="form-control">
					<?php foreach ($year_expire as $year) : ?>
					<option value="<?php echo $year['value']; ?>"><?php echo $year['text']; ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="cc-cvv">
				<?php echo $entry_cc_cvv2; ?>
			</label>
			<div class="col-sm-4">
				<input id="cc-cvv" type="text" name="cc_cvv2" data-stripe="cvc" value="" class="form-control" >
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-4 col-sm-offset-2">
				<button type="button" class="btn btn-primary" id="button-confirm" data-loading-text="Processing"><?php echo $button_confirm; ?></button>
			</div>
		</div>
	</div>
	<?php if( defined( 'PRO_MODE' ) && PRO_MODE ) : ?>
	<div id="container">
		<div id="card">
			<div id="face">
				<div id="code"></div>
				<div id="expire"></div>
			</div>
			<div id="back">
				<div id="stripe"></div>
				<div id="cvv"></div>
			</div>
		</div>
	</div>
	<?php endif; ?>
</form>

<!-- The required Stripe lib -->
<script>
'use strict';

	if( typeof Stripe == 'undefined' )
	{
		var script = document.createElement( 'script'),
			head = document.getElementsByTagName( 'head' )[ 0 ];
		script.src = "https://js.stripe.com/v2/";
		head.appendChild( script );
	}

	if( typeof console == 'undefined' )
	{
		var console = {}
		console.log = function(){}
		console.dir = function(){}
	}
	
	var apiKey = false;
	function setApiKey(){
		if( ! apiKey )
		{
			Stripe.setPublishableKey( '<?php echo $sp_public_key; ?>' );
			apiKey = true;
		}
	}

	jQuery(function($){

		function addMsg( msg , type ){
	    	var $msgBox = $( '#msgBox' );

			$msgBox[ 0 ].className =  'alert alert-' + type;
			$msgBox.find( 'span' ).text( msg );

			var className = '';
			switch( type ){
				case 'danger' :
					className = 'fa-lg fa fa-exclamation-triangle';
				break;
				case 'warning' :
					className = 'fa fa-cog fa-spin urgent-2x';
				break;
				case 'success' : 
					className = 'fa-2x fa fa-check';
				break;
			}
			$msgBox.find( 'i' )[ 0 ].className = className;
		}

		var stripeResponseHandler = function( status, response ){
			var $form = $('#payment-form'),
				$msgBox = $( '#msgBox' );
			$msgBox.find( 'img' ).remove();

			if( response.error )
			{
				addMsg( response.error.message , 'danger' )
				$form.find('button').button( 'reset' );
			}
			else if( status < 300 && response.id )
			{
				var token = response.id,
					spData = {};

				spData.token = token;
				if( $( '#recurring-box-toggler').is( ':checked' ) )
				{
					spData.recurring = 1,
					spData.period = $( '#erb-period' ).val(),
					spData.stopDate = $( '#erb-stop-date' ).val() ? $( '#erb-stop-date' ).val() : 0,
					spData.mailMe = $( '#erb-mail-me' ).is( ':checked' ) ? 1 : 0
				}
				$.ajax({
					url: 'index.php?route=payment/stripe_payments/send',
					type: 'post',
					data: spData,
					dataType: 'text'
				})
				.done( function( resp ){
					console.dir( resp );
					if( resp )
					{
						var json;
						try{ json = JSON.parse( resp ) }
						catch( err )
						{
							addMsg( '<?php echo $error_error; ?>' , 'danger' );
						}
						if( json )
						{
							if( json.error )
							{
								addMsg( json.error , 'danger' );
							}
							else if( json.success )
							{
								$form.find('button').attr( 'disabled' , 'disabled' );
								addMsg( '<?php echo $text_success_payment; ?>' , 'success' );
								setTimeout( function(){ document.location.assign( json.success ) } , 2000 );
							}
							else
							{
								addMsg( '<?php echo $error_error; ?>' , 'danger' );
							}
						}
					}
					else
					{
						addMsg( '<?php echo $error_error; ?>' , 'danger' );
					}
				} )
				.fail( function( err ){
					console.log( err );
					addMsg( '<?php echo $error_error; ?>' , 'danger' );
					
				} )
				.always( function(){ $form.find('button').button( 'reset' ); });
			}
		}

		$('#button-confirm').on( 'click' , function(e){

			if( typeof Stripe == 'undefined' )
			{
				alert( '<?php $text_wait_page_load; ?>' );
				return;
			}

			var $msgBox = $( '#msgBox' ),
				$form = $( this ).parents( 'form' );

			$( this ).button( 'loading' );
			addMsg( '<?php echo $text_wait; ?>' , 'warning' );
			setApiKey();
			Stripe.card.createToken($form, stripeResponseHandler);
			return false;
		});

		$('#cc-number').on('input propertychange', function(){
			setApiKey();
			var cctype = Stripe.card.cardType( $( this ).val() );
			cctype = cctype.replace(/\s/g, '').toLowerCase();
			$('.credit-cards').removeClass().addClass('credit-cards ' + cctype);
		});
	
		$( '#cc-number' ).on({
			focus : function(){
				$( '#container' ).attr( 'class' , 'visible' );
				$( '#card' ).attr( 'class' , 'code' );
			},
			input : function(){
				var $input = $( this ),
					str = $input.val().replace( /\s/g , '' ).substr( 0 , 16 ),
					code = '';

				for( var i = 0 , len = str.length ; i < len ; i++ ){
					var char = str.charAt( i );
					if( isFinite( char ) )
					{
						if( i != 0 && ! ( i % 4 ) )
						{
							code += ' ';
						}
						code += char;
					}
				}
				$input.val( str );
				$( '#code' ).text( code );
			}
		} );

		$( '#cc-month, #cc-year' ).on({ 
			focus : function(){
				$( '#container' ).attr( 'class' , 'visible' );
				$( '#card' ).attr( 'class' , 'expire' );
			},
			change : function(){
				$( '#expire' ).text( $( '#cc-month' ).val() + '/' + $( '#cc-year' ).val() );
			}
		});

		$( '#cc-cvv' ).on({
			focus :  function(){
				$( '#container' ).attr( 'class' , 'visible' );
				$( '#card' ).attr( 'class' , 'cvv' );
			},
			input : function(){
				var str = $( this ).val().replace( /[^\d]/g , '' ).substr( 0 , 4 );
				this.value = str;
				$( '#cvv' ).text( str );
			}
		});

	});
</script>