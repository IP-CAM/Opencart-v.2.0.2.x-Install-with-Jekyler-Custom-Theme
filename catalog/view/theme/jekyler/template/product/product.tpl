<?php echo $header; ?>
<main>

    <div class="main-container <?php if($wg24options['wg24themeoptionpanel_homepage12']=='homepage3') :   ?> col1-layout <?php else: ?> col2-right-layout <?php endif; ?>">
        <div class="container">
            <div class="breadcrumbs">
                <div class="container">
                    <ul>
                        <?php $brdsize=count($breadcrumbs); $bar=1;foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?>
                                <?php if($bar==$brdsize):?>
                                <?php else: ?>
                                <span>/ </span>
                                <?php endif;?>
                            </a></li>
                        <?php $bar=$bar+1; } ?>

                    </ul>
                </div>
            </div>

            <div class="main">
            <?php if($wg24options['wg24themeoptionpanel_homepage12']!="homepage3") {     ?>    
                <div class="row">
                    <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                 <?php } ?>       
                        <div class="col-main">
                            <div class="product-view">
                                <div class="product-essential">
                                    <div class="row">
                                        
                                    <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>   
                                          <div class="product-img-box col-sm-4 col-md-4 col-sms-6 col-smb-12">
                                         <?php }else { ?>
                                       <div class="product-img-box col-sm-5 col-md-5 col-sms-6 col-smb-12">
                                        <?php } ?> 
                                        
                                            <?php if ($thumb || $images) { ?>
                                            <p class="product-image thumbnails">
                                                <?php if ($thumb) { ?>
                                                <?php  if($wg24options['wg24themeoptionpanel_product_light_zomme']=='disable')  { ?>
                                                <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox">
                                                    <?php }?>    
                                                    <img id="zoom_image"  src="<?php echo $thumb; ?>" data-zoom-image="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"/>
                                                    <?php  if($wg24options['wg24themeoptionpanel_product_light_zomme']=='disable')  { ?>
                                                </a>
                                                <?php }?>  
                                                <?php } ?>
                                            </p>
                                            <?php if ($images) { ?>
                                            <div class="more-views thumbnail-container horizontal">
                                                <h2>More Views</h2>
                                                <ul id="more" class="bxslider thumbnails">
                                                    <?php foreach ($images as $image) { ?>
                                                    <li class="thumbnail-item"><a href="<?php echo $image['popup']; ?>"  data-image="<?php echo $image['popup']; ?>" data-zoom-image="<?php echo $image['popup']; ?>"  title="<?php echo $heading_title; ?>"   class="elevatezoom-gallery colorbox"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>"  width="113" height="113" alt="<?php echo $heading_title; ?>" /></a></li>
                                                    <?php } ?>
                                                </ul>
                                                <script type="text/javascript">
                                                    //<![CDATA[
                                                    jQuery(document).ready(function($){
                                                    $('.thumbnail-container .bxslider').bxSlider({
                                                    slideWidth: 113,
                                            <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>    
                                                    slideMargin: 16,
                                              <?php } else { ?>
                                             slideMargin: 5,
                                              <?php } ?>
                                                    mode: 'horizontal',
                                                    minSlides: 3,
                                                    maxSlides: 4,
                                                    pager: false,
                                                    speed: 500,
                                                    pause: 3000
                                                });	
                                            });					
                                            //]]>
                                                </script>

                                            </div>  
                                            <?php  if($wg24options['wg24themeoptionpanel_product_light_zomme']=='enable')  { ?>
                                            <script type="text/javascript">
                                        jQuery(document).ready(function () {
                                        jQuery("#zoom_image").elevateZoom({
                                        cursor: 'crosshair', 
                                        borderColour:"#e4dddd",
                                        zoomType: "window",
                                        lensShape : "round",
                                        lensSize    : 200 ,
                                        lensOpacity:0,
                                        gallery:'more',
                                        galleryActiveClass: 'active',
                                        imageCrossfade: true,
                                        easing: false, 
                                        loadingIcon: "catalog/view/theme/jekyler/image/loader.gif"
                                    }); 
                                }); 
                                            </script>    
                                            <?php } ?> 

                                            <?php } ?>
                                            <!-- end: more-images -->
                                            <?php } ?>

                                        </div>
                                        
                                         <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>   
                                          <div class="product-shop col-sm-5 col-md-5 col-sms-6 col-smb-12">
                                         <?php }else { ?>
                                        <div class="product-shop col-sm-7 col-md-7 col-sms-6 col-smb-12">
                                        <?php } ?> 
                                            
                                            <div class="product-name">
                                                <h1><?php echo $heading_title; ?></h1>
                                            </div>
                                            <?php if ($review_status) { ?>
                                            <div class="ratings">
                                                <div class="rating-box">
                                                    <div class="rating">
                                                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                                                        <?php if ($rating < $i) { ?>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                        <?php } else { ?>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                                        <?php } ?>
                                                        <?php } ?>
                                                    </div>
                                                </div>    
                                                <p class="rating-links">
                                                   <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a>  <span class="separator">|</span> <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a>

                                                </p>
                                                <hr>
                                                <!-- AddThis Button BEGIN -->
                                                <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
                                                <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script> 
                                                <!-- AddThis Button END --> 
                                            </div>
                                            <?php } ?>
                                            <div class="price-box">
                                                <?php if ($price) { ?>
                                                <ul class="list-unstyled">
                                                    <?php if (!$special) { ?>
                                                    <li>
                                                        <p class="special-price">
                                                            <span class="price-label">Special Price</span>
                                                            <span class="price">
                                                                <?php echo $price; ?>             
                                                            </span>
                                                        </p>   
                                                    </li>
                                                    <?php } else { ?>
                                                    <li>
                                                        <p class="old-price">
                                                            <span class="price-label">Regular Price:</span>
                                                            <span class="price">
                                                                <?php echo $price; ?>            
                                                            </span>
                                                        </p>

                                                        <p class="special-price">
                                                            <span class="price-label">Special Price</span>
                                                            <span class="price">
                                                                <?php echo $special; ?>
                                                            </span>
                                                        </p>
                                                    </li>
                                                    <?php } ?>
                                                    <?php if ($tax) { ?>
                                                    <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
                                                    <?php } ?>
                                                    <?php if ($points) { ?>
                                                    <li><div class="product-code">   <span><?php echo $text_points; ?> <span class="prt-code"><?php echo $points; ?></span></span></div></li>
                                                    <?php } ?>
                                                    <?php if ($discounts) { ?>
                                                    <li>
                                                        <hr>
                                                    </li>
                                                    <?php foreach ($discounts as $discount) { ?>
                                                    <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
                                                    <?php } ?>
                                                    <?php } ?>
                                                </ul>
                                                <?php } ?>
                                            </div> 
                                            <ul class="list-unstyled">
                                                <?php if ($manufacturer) { ?>
                                                <li> <div class="manufacturer">  <span><?php echo $text_manufacturer; ?><span class="brand"> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></span></span> </div></li>
                                                <?php } ?>
                                                <li><div class="product-code">   <span><?php echo $text_model; ?><span class="prt-code"> <?php echo $model; ?></span></span>
                                                    </div></li>
                                                <?php if ($reward) { ?>
                                                <li>   <div class="product-code">   <span><?php echo $text_reward; ?> <span class="prt-code"><?php echo $reward; ?></span></span>
                                                    </div></li>
                                                <?php } ?>
                                                <li> <p class="availability in-stock"><?php echo $text_stock; ?> <span><?php echo $stock; ?></span></p></li>
                                            </ul>
                                            <div id="product" class="product-options">
                                                <?php if ($options) { ?>
                                                <hr>
                                                <h3><?php echo $text_option; ?></h3>
                                                <?php foreach ($options as $option) { ?>
                                                <?php if ($option['type'] == 'select') { ?>
                                                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                    <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control product-custom-option">
                                                        <option value=""><?php echo $text_select; ?></option>
                                                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                        <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                            <?php if ($option_value['price']) { ?>
                                                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                            <?php } ?>
                                                        </option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'radio') { ?>
                                                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                    <label class="control-label"><?php echo $option['name']; ?></label>
                                                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                                                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                                <?php echo $option_value['name']; ?>
                                                                <?php if ($option_value['price']) { ?>
                                                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                                <?php } ?>
                                                            </label>
                                                        </div>
                                                        <?php } ?>
                                                    </div>
                                                </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'checkbox') { ?>
                                                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                    <label class="control-label"><?php echo $option['name']; ?></label>
                                                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                                                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                                <?php echo $option_value['name']; ?>
                                                                <?php if ($option_value['price']) { ?>
                                                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                                <?php } ?>
                                                            </label>
                                                        </div>
                                                        <?php } ?>
                                                    </div>
                                                </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'image') { ?>
                                                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                    <label class="control-label"><?php echo $option['name']; ?></label>
                                                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                                                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                        <div class="radio">
                                                            <label>
                                                                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                                <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                                                                <?php if ($option_value['price']) { ?>
                                                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                                <?php } ?>
                                                            </label>
                                                        </div>
                                                        <?php } ?>
                                                    </div>
                                                </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'text') { ?>
                                                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control product-custom-option" />
                                                </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'textarea') { ?>
                                                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                    <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control product-custom-option"><?php echo $option['value']; ?></textarea>
                                                </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'file') { ?>
                                                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                    <label class="control-label"><?php echo $option['name']; ?></label>
                                                    <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                                    <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                                                </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'date') { ?>
                                                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                    <div class="input-group date">
                                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control product-custom-option" />
                                                        <span class="input-group-btn">
                                                            <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                                                        </span></div>
                                                </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'datetime') { ?>
                                                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                    <div class="input-group datetime">
                                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control product-custom-option" />
                                                        <span class="input-group-btn">
                                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                                        </span></div>
                                                </div>
                                                <?php } ?>
                                                <?php if ($option['type'] == 'time') { ?>
                                                <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                                    <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                                    <div class="input-group time">
                                                        <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control product-custom-option" />
                                                        <span class="input-group-btn">
                                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                                        </span></div>
                                                </div>
                                                <?php } ?>
                                                <?php } ?>
                                                <?php } ?>
                                                <?php if ($recurrings) { ?>
                                                <hr>
                                                <h3><?php echo $text_payment_recurring ?></h3>
                                                <div class="form-group required">
                                                    <select name="recurring_id" class="form-control">
                                                        <option value=""><?php echo $text_select; ?></option>
                                                        <?php foreach ($recurrings as $recurring) { ?>
                                                        <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                                                        <?php } ?>
                                                    </select>
                                                    <div class="help-block" id="recurring-description"></div>
                                                </div>
                                                <?php } ?>
                                                <?php if ($minimum > 1) { ?>
                                                <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                                                <?php } ?>
                                                <div class="add-to-box">
                                                    <div class="add-to-cart">
                                                        <div class="input-content">
                                                            <label><?php echo $entry_qty; ?></label>
                                                            <div class="box-qty">
                                                                <input type="text" name="quantity" value="<?php echo $minimum; ?>"  id="input-quantity" class="input-text qty" />
                                                                <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                                                <div class="qty-arrows">
                                                                    <input type="button" onclick="var qty_el = document.getElementById('input-quantity'); var qty = qty_el.value; if( !isNaN( qty )) qty_el.value++;return false;" class="qty-increase"/>
                                                                    <input type="button" onclick="var qty_el = document.getElementById('input-quantity'); var qty = qty_el.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) qty_el.value--;return false;" class="qty-decrease" />
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="button btn-cart"><span><span><?php echo $button_cart; ?></span></span></button>
                                                    <ul class="add-to-links">
                                                        <li><a  class="link-wishlist" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></a></li>
                                                        <li> <a  class="link-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-refresh"></i></a></li>
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>
                                            
                <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>        
                    <div class="product-shop col-sm-3 col-md-3 col-sms-7 col-smb-12">
                        <div class="col-right sidebar">
                            <div class="relatedslider">
                                <div class="bx-title related-title"><h2 class="title"><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_specialtext'][$wg24options['config_language_id']]);?></h2></div>    
                                <ul class="products-grid" id="block-related">
                                    <?php if($wg24options['speciproducts']!='test'){ $k=1;  foreach ($wg24options['speciproducts'] as $product) { 
                                    if($k<10){ 
                                    ?>  
                                    <li class="item">
                                        <?php if ($product['thumb']) { ?>
                                        <a  href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                            <img  width='270' height="270" src="<?php echo $product['thumbon']; ?>" alt="<?php echo $product['name']; ?>"> 
                                        </a> 
                                        <?php } ?>
                                        <div class="product-details">
                                            <h2 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
                                            <div class="ratings">
                                                <div class="rating-box">
                                                    <?php if ($product['rating']) { ?>
                                                    <div class="rating">
                                                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                                                        <?php if ($product['rating'] < $i) { ?>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <?php } else { ?>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <?php } ?>
                                                        <?php } ?>
                                                    </div>
                                                    <?php } ?>
                                                </div>
                                            </div>

                                            <div class="price-box">
                                                <?php if ($product['price']) { ?>
                                                <?php if (!$product['special']) { ?>
                                                <p class="special-price">
                                                    <span class="price-label">Special Price</span>
                                                    <span class="price">
                                                        <?php echo $product['price']; ?>
                                                    </span>
                                                </p>
                                                <?php } else { ?>
                                                <p class="old-price">
                                                    <span class="price-label">Special Price</span>
                                                    <span class="price">
                                                        <?php echo $product['price']; ?>
                                                    </span>
                                                </p>
                                                <p class="special-price">
                                                    <span class="price-label">Special Price</span>
                                                    <span class="price">
                                                        <?php echo $product['special']; ?>
                                                    </span>
                                                </p>
                                                <?php } ?>
                                                <?php } ?> 

                                            </div>
                                        </div>

                                    </li>
                                    <?php $k++;  }  }  } ?>  
                                </ul>
                                
                   <script type="text/javascript">
    jQuery(document).ready(function($){
        (function(selector){
            var $content = $(selector);
            var $slider  = $('.products-grid', $content);
            var slider   = $slider.bxSlider({
                auto: 0, speed: 600,
                controls: 1, 
                pager: 0,
                maxSlides: 1,
                slideWidth: 270,                 //infiniteLoop: false,
                moveSlides:1,
                slideMargin: 0,
                autoHover: true, // stop while hover &lt;=&gt; slider.stopAuto(); + slider.startAuto();
            })

        })(".relatedslider");
    });

    //]]&gt;
</script>             
                                
                                
                                
                                
                            </div>

                            <?php                       
                            $defalut_lang_id=$wg24options['config_language_id'];
                            $right_banner=$wg24options['wg24themeoptionpanel_productsidebarcustomban'];
                            echo  html_entity_decode($right_banner[$defalut_lang_id]);
                            ?> 

                        </div>
                    </div>    
                       <?php } ?>                     
                                    </div>
                                    <div class="clearer"></div>
                                </div>

                                <div class="product-collateral row-fluid">
                                    <ul class="nav-tabs product-tabs">
                                        <li class="active first"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
                                        <?php if ($attribute_groups) { ?>
                                        <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
                                        <?php } ?>
                                        <?php if ($review_status) { ?>
                                        <li ><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
                                        <?php } ?>
                                        <?php   if($wg24options['wg24themeoptionpanel_l_custom_tab']=="enable") { 
                                        ?>

                                        <li class="last"><a  data-toggle="tab" href="#product1_tabs_custom_contents">   
                                                <?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_l_tab_title'][$wg24options['config_language_id']]);?> 
                                            </a></li>

                                        <?php  } ?>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active product-tabs-content" id="tab-description"><?php echo $description; ?></div>
                                        <?php if ($attribute_groups) { ?>
                                        <div class="tab-pane product-tabs-content" id="tab-specification">
                                            <table class="table table-bordered">
                                                <?php foreach ($attribute_groups as $attribute_group) { ?>
                                                <thead>
                                                    <tr>
                                                        <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                                    <tr>
                                                        <td><?php echo $attribute['name']; ?></td>
                                                        <td><?php echo $attribute['text']; ?></td>
                                                    </tr>
                                                    <?php } ?>
                                                </tbody>
                                                <?php } ?>
                                            </table>
                                        </div>
                                        <?php } ?>
                                        <?php 
                                        if($wg24options['wg24themeoptionpanel_l_custom_tab']=="enable") { 
                                        ?>

                                        <div  class="tab-pane product-tabs-content" id="product1_tabs_custom_contents">  
                                            <?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_l_tabc'][$wg24options['config_language_id']]);?> 

                                        </div>

                                        <?php  } ?>
                                        <?php if ($review_status) { ?>
                                        <div class="tab-pane product-tabs-content" id="tab-review">
                                            <form class="form-horizontal">
                                                <div id="review"></div>
                                                <h2><?php echo $text_write; ?></h2>
                                                <?php if ($review_guest) { ?>
                                                <div class="form-group required">
                                                    <div class="col-sm-12">
                                                        <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                                        <input type="text" name="name" value="" id="input-name" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <div class="col-sm-12">
                                                        <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                                        <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                                        <div class="help-block"><?php echo $text_note; ?></div>
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <div class="col-sm-12">
                                                        <label class="control-label"><?php echo $entry_rating; ?></label>
                                                        &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                                                        <input type="radio" name="rating" value="1" />
                                                        &nbsp;
                                                        <input type="radio" name="rating" value="2" />
                                                        &nbsp;
                                                        <input type="radio" name="rating" value="3" />
                                                        &nbsp;
                                                        <input type="radio" name="rating" value="4" />
                                                        &nbsp;
                                                        <input type="radio" name="rating" value="5" />
                                                        &nbsp;<?php echo $entry_good; ?></div>
                                                </div>
                                                <div class="form-group required">
                                                    <div class="col-sm-12">
                                                        <label class="control-label" for="input-captcha"><?php echo $entry_captcha; ?></label>
                                                        <input type="text" name="captcha" value="" id="input-captcha" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-12"> <img src="index.php?route=tool/captcha" alt="" id="captcha" /> </div>
                                                </div>
                                                <div class="buttons">
                                                    <div class="buttons-set">
                                                        <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn button"><span><span><?php echo $button_continue; ?></span></span></button>
                                                    </div>
                                                </div>
                                                <?php } else { ?>
                                                <?php echo $text_login; ?>
                                                <?php } ?>
                                            </form>
                                        </div>
                                        <?php } ?>
                                    </div>  
                                    <?php if ($products) { ?>
                                    <div class="upsellslider">
                                        <div class="upsell-title bx-title"><h2 class="title"><?php echo $text_related; ?></h2></div>	
                                        <ul class="products-grid">
                                            <?php foreach ($products as $product) { ?>
                                            <li class="item">
                                                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="product-image" /></a>
                                                <h3 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <?php if ($product['rating']) { ?>
                                                        <div class="rating">
                                                            <?php for ($i = 1; $i <= 5; $i++) { ?>
                                                            <?php if ($product['rating'] < $i) { ?>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <?php } else { ?>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <?php } ?>
                                                            <?php } ?>
                                                        </div>
                                                        <?php } ?>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <?php if ($product['price']) { ?>
                                                    <?php if (!$product['special']) { ?>
                                                    <p class="special-price">
                                                        <span class="price-label">Special Price</span>
                                                        <span class="price">
                                                            <?php echo $product['price']; ?>
                                                        </span>
                                                    </p>
                                                    <?php } else { ?>
                                                    <p class="old-price">
                                                        <span class="price-label">Special Price</span>
                                                        <span class="price">
                                                            <?php echo $product['price']; ?>
                                                        </span>
                                                    </p>
                                                    <p class="special-price">
                                                        <span class="price-label">Special Price</span>
                                                        <span class="price">
                                                            <?php echo $product['special']; ?>
                                                        </span>
                                                    </p>
                                                    <?php } ?>
                                                    <?php } ?> 

                                                </div>
                                                <p><button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $button_cart; ?>" ><span><span><?php echo $button_cart; ?></span></span></button></p>
                                            </li>
                                            <?php } ?>
                                        </ul>
                                    </div>
                                    <script type="text/javascript">
                        jQuery(document).ready(function($){
                        (function(selector){
                        var $content = $(selector);
                        var $slider  = $('.products-grid', $content);
                        var slider   = $slider.bxSlider({
                        auto: 0, 
                        speed: 600, 
                        controls: 1, 
                        pager: 0, 
                    <?php if($wg24options['wg24themeoptionpanel_homepage12']!="homepage3") {     ?>     
                        maxSlides: 4,
                       slideWidth: 195, 
                    <?php } else{ ?>
                    maxSlides: 5,
                   slideWidth: 210, 
                       <?php  } ?>
                                     //infiniteLoop: false,
                        moveSlides:2,
                        slideMargin: 30,
                        autoHover: true, // stop while hover <=> slider.stopAuto(); + slider.startAuto();
                    })

                })(".upsellslider");
            });
                                    </script>
                                    <?php } ?>  
                                </div>
                            </div>


                        </div>
                      <?php if($wg24options['wg24themeoptionpanel_homepage12']!="homepage3") {     ?>          
                    </div>
                    <?php } ?>
                    <?php if($wg24options['wg24themeoptionpanel_homepage12']!="homepage3") {     ?>        
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                        <div class="col-right sidebar">
                            <div class="relatedslider">
                                <div class="bx-title related-title"><h2 class="title"><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_specialtext'][$wg24options['config_language_id']]);?></h2></div>    
                                <ul class="products-grid" id="block-related">
                                    <?php if($wg24options['speciproducts']!='test'){ $k=1;  foreach ($wg24options['speciproducts'] as $product) { 
                                    if($k<10){ 
                                    ?>  
                                    <li class="item">
                                        <?php if ($product['thumb']) { ?>
                                        <a  href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                            <img  width='270' height="270" src="<?php echo $product['thumbon']; ?>" alt="<?php echo $product['name']; ?>"> 
                                        </a> 
                                        <?php } ?>
                                        <div class="product-details">
                                            <h2 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
                                            <div class="ratings">
                                                <div class="rating-box">
                                                    <?php if ($product['rating']) { ?>
                                                    <div class="rating">
                                                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                                                        <?php if ($product['rating'] < $i) { ?>
                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <?php } else { ?>
                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        <?php } ?>
                                                        <?php } ?>
                                                    </div>
                                                    <?php } ?>
                                                </div>
                                            </div>

                                            <div class="price-box">
                                                <?php if ($product['price']) { ?>
                                                <?php if (!$product['special']) { ?>
                                                <p class="special-price">
                                                    <span class="price-label">Special Price</span>
                                                    <span class="price">
                                                        <?php echo $product['price']; ?>
                                                    </span>
                                                </p>
                                                <?php } else { ?>
                                                <p class="old-price">
                                                    <span class="price-label">Special Price</span>
                                                    <span class="price">
                                                        <?php echo $product['price']; ?>
                                                    </span>
                                                </p>
                                                <p class="special-price">
                                                    <span class="price-label">Special Price</span>
                                                    <span class="price">
                                                        <?php echo $product['special']; ?>
                                                    </span>
                                                </p>
                                                <?php } ?>
                                                <?php } ?> 

                                            </div>
                                        </div>

                                    </li>
                                    <?php $k++;  }  }  } ?>  
                                </ul>
                                <script type="text/javascript">
        jQuery(document).ready(function($){
        (function(selector){
        var $content = $(selector);
        var $slider  = $('.products-grid', $content);
        var slider   = $slider.bxSlider({
        auto: 0,
        speed: 600,
        controls: 0,
        pager: 1,
        maxSlides: 1,
        slideWidth: 270,                 //infiniteLoop: false,
        moveSlides:1,
        slideMargin: 0,
        autoHover: true, // stop while hover &lt;=&gt; slider.stopAuto(); + slider.startAuto();
    })

})(".relatedslider");
});

//]]&gt;
                                </script>
                            </div>

                            <?php                       
                            $defalut_lang_id=$wg24options['config_language_id'];
                            $right_banner=$wg24options['wg24themeoptionpanel_productsidebarcustomban'];
                            echo  html_entity_decode($right_banner[$defalut_lang_id]);
                            ?> 

                        </div>
                    </div>
                </div>
               <?php } ?>     
            </div>
        </div>
        <?php if ($tags) { ?>
        <p><?php echo $text_tags; ?>
            <?php for ($i = 0; $i < count($tags); $i++) { ?>
            <?php if ($i < (count($tags) - 1)) { ?>
            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
            <?php } else { ?>
            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
            <?php } ?>
            <?php } ?>
        </p>
        <?php } ?>
        <?php echo $content_bottom; ?>
    </div> 

</main>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
$.ajax({
url: 'index.php?route=product/product/getRecurringDescription',
type: 'post',
data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
dataType: 'json',
beforeSend: function() {
$('#recurring-description').html('');
},
success: function(json) {
$('.alert, .text-danger').remove();
			
if (json['success']) {
$('#recurring-description').html(json['success']);
}
}
});
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
$.ajax({
url: 'index.php?route=checkout/cart/add',
type: 'post',
data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
dataType: 'json',
beforeSend: function() {
$('#button-cart').button('loading');
},
complete: function() {
$('#button-cart').button('reset');
},
success: function(json) {
$('.alert, .text-danger').remove();
$('.form-group').removeClass('has-error');

if (json['error']) {
if (json['error']['option']) {
for (i in json['error']['option']) {
var element = $('#input-option' + i.replace('_', '-'));
						
if (element.parent().hasClass('input-group')) {
element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
} else {
element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
}
}
}
				
if (json['error']['recurring']) {
$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
}
				
// Highlight any found errors
$('.text-danger').parent().addClass('has-error');
}
			
if (json['success']) {
$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				
$('#cart-total').html(json['total']);
				
$('html, body').animate({ scrollTop: 0 }, 'slow');
				
$('#cart > ul').load('index.php?route=common/cart/info ul li');
}
}
});
});
//--></script> 
<script type="text/javascript"><!--
$('.date').datetimepicker({
pickTime: false
});

$('.datetime').datetimepicker({
pickDate: true,
pickTime: true
});

$('.time').datetimepicker({
pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
var node = this;
	
$('#form-upload').remove();
	
$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
	
$('#form-upload input[name=\'file\']').trigger('click');
	
timer = setInterval(function() {
if ($('#form-upload input[name=\'file\']').val() != '') {
clearInterval(timer);
			
$.ajax({
url: 'index.php?route=tool/upload',
type: 'post',
dataType: 'json',
data: new FormData($('#form-upload')[0]),
cache: false,
contentType: false,
processData: false,
beforeSend: function() {
$(node).button('loading');
},
complete: function() {
$(node).button('reset');
},
success: function(json) {
$('.text-danger').remove();
					
if (json['error']) {
$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
}
					
if (json['success']) {
alert(json['success']);
						
$(node).parent().find('input').attr('value', json['code']);
}
},
error: function(xhr, ajaxOptions, thrownError) {
alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
}
});
}
}, 500);
});
//--></script> 
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
e.preventDefault();

$('#review').fadeOut('slow');

$('#review').load(this.href);

$('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
$.ajax({
url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
type: 'post',
dataType: 'json',
data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
beforeSend: function() {
$('#button-review').button('loading');
},
complete: function() {
$('#button-review').button('reset');
$('#captcha').attr('src', 'index.php?route=tool/captcha#'+new Date().getTime());
$('input[name=\'captcha\']').val('');
},
success: function(json) {
$('.alert-success, .alert-danger').remove();
			
if (json['error']) {
$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
}
			
if (json['success']) {
$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
				
$('input[name=\'name\']').val('');
$('textarea[name=\'text\']').val('');
$('input[name=\'rating\']:checked').prop('checked', false);
$('input[name=\'captcha\']').val('');
}
}
});
});

$(document).ready(function() {
$('.thumbnails').magnificPopup({
type:'image',
delegate: 'a',
gallery: {
enabled:true
}
});
});
//--></script> 
<?php echo $footer; ?>
