<?php echo $header; ?>
<main>
    <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>
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
    <?php } ?>
    <div class="main-container col2-left-layout">
        <div class="container">                    
            <div class="main">
                <div class="row">
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                        <div class="col-left sidebar">
                            <?php echo $column_left; ?>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                        <div class="col-main">
                            <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>
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
                            <?php } ?>
                            <div class="page-title category-title">
                                <h1><?php echo $heading_title; ?></h1>
                            </div>

                            <?php if ($categories) { ?>
                            <div class="category-products">
                                <p><strong><?php echo $text_index; ?></strong>
                                <ul>

                                    <?php foreach ($categories as $category) { ?>
                                    &nbsp;&nbsp;&nbsp;<a href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>"><?php echo $category['name']; ?></a>
                                    <?php } ?>
                                    </p>
                                    <?php foreach ($categories as $category) { ?>
                                    <h2 id="<?php echo $category['name']; ?>"><?php echo $category['name']; ?></h2>
                                    <?php if ($category['manufacturer']) { ?>
                                    <?php foreach (array_chunk($category['manufacturer'], 4) as $manufacturers) { ?>
                                    <div class="row">
                                        <?php foreach ($manufacturers as $manufacturer) { ?>
                                        <div class="col-sm-3"><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></div>
                                        <?php } ?>
                                    </div>
                                    <?php } ?>
                                    <?php } ?>
                                    <?php } ?>
                                </ul>
                            </div>
                            <?php } else { ?>
                            <p><?php echo $text_empty; ?></p>
                            <div class="buttons clearfix">
                                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php echo $content_bottom; ?>
<?php echo $footer; ?>
<?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") { ?>
<style type="text/css">
nav{
  padding: 0 0 0 300px;
}
</style>
<?php } ?>