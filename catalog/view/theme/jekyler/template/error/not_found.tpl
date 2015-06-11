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
                    <div class="page-sitemap">
                        <div class="page-title">
                            <h1><?php echo $heading_title; ?></h1>
                        </div>
                        <div id="content" ><?php echo $content_top; ?>
                            <h1><?php echo $heading_title; ?></h1>
                            <p><?php echo $text_error; ?></p>
                            <div class="buttons">
                                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn button"><span><span><?php echo $button_continue; ?></span></span></a></div>
                            </div>
                            <?php echo $content_bottom; ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php echo $content_bottom; ?>
</main>
<?php echo $footer; ?>