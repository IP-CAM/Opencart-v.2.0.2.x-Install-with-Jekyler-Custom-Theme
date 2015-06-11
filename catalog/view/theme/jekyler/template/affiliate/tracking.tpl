<?php echo $header; ?>
<main>
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
    <div class="main-container col1-layout">
        <div class="container">
            <div class="main">
                <div class="col-main">
                    <div class="account-create">
                        <div class="page-title">
                            <h1><?php echo $heading_title; ?></h1>
                        </div>
                        <div id="content" ><?php echo $content_top; ?>
                            <p><?php echo $text_description; ?></p>
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-code"><?php echo $entry_code; ?></label>
                                    <div class="col-sm-10">
                                        <textarea cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" id="input-code" class="form-control"><?php echo $code; ?></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-generator"><span data-toggle="tooltip" title="<?php echo $help_generator; ?>"><?php echo $entry_generator; ?></span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="product" value="" placeholder="<?php echo $entry_generator; ?>" id="input-generator" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-link"><?php echo $entry_link; ?></label>
                                    <div class="col-sm-10">
                                        <textarea name="link" cols="40" rows="5" placeholder="<?php echo $entry_link; ?>" id="input-link" class="form-control"></textarea>
                                    </div>
                                </div>
                            </form>
                            <div class="buttons buttons-set">
                                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn button"><span><span><?php echo $button_continue; ?></span></span></a></div>
                            </div>
                            <?php echo $content_bottom; ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php echo $footer; ?>
<script type="text/javascript"><!--
    $('input[name=\'product\']').autocomplete({
    'source': function(request, response) {
    $.ajax({
    url: 'index.php?route=affiliate/tracking/autocomplete&filter_name=' +  encodeURIComponent(request),
    dataType: 'json',			
    success: function(json) {
    response($.map(json, function(item) {
    return {
    label: item['name'],
    value: item['link']
}
}));
}
});
},
'select': function(item) {
$('input[name=\'product\']').val(item['label']);
$('textarea[name=\'link\']').val(item['value']);	
}	
});
//--></script> 