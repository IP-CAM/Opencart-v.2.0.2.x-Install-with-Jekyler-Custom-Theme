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
                    <?php if ($error_warning) { ?>
                    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
                    <?php } ?>
                    <div class="account-create">
                        <div class="page-title">
                            <h1><?php echo $heading_title; ?></h1>
                        </div>
                        <div id="content" ><?php echo $content_top; ?>
                            <p><?php echo $text_email; ?></p>
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                                <div class='fieldset'>
                                    <h2 class="legend"><?php echo $text_your_email; ?></h2>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                                        <div class="col-sm-10">
                                            <input type="email" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="buttons buttons-set">
                                    <div class="pull-left"><a href="<?php echo $back; ?>" class="btn button"><span><span><?php echo $button_back; ?></span></span></a></div>
                                    <div class="pull-right"><button type="submit"  class="btn button"><span><span><?php echo $button_continue; ?></span></span></button></div>
                                </div>
                            </form>
                            <?php echo $content_bottom; ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php echo $footer; ?>