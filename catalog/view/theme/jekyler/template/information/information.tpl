
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
    <div class="main-container col2-right-layout">
        <div class="container">
            <div class="main" >
                <div class="row">
                    <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                        <div class="col-main">
                            <div id="messages_product_view"></div>
                            <div class="page-title">
                                <h1><?php echo $heading_title; ?></h1>
                            </div>
                            <div id="content">

                                <div class="fieldset">
                                    <div class="panel ">
                                        <?php echo $description; ?>
                                    </div>

                                </div> 

                                <?php echo $content_bottom; ?></div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                        <div class="col-right sidebar">
                            <?php   echo $column_right ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php echo $content_bottom; ?>
    </div>
</main>
<?php echo $footer; ?>
