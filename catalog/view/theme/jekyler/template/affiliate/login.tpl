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
                    <?php if ($success) { ?>
                    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
                    <?php } ?>
                    <?php if ($error_warning) { ?>
                    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
                    <?php } ?>
                    <div class="account-create">
                        <div class="page-title">
                            <h1><?php echo $heading_title; ?></h1>
                        </div>
                        <div id="content" ><?php echo $content_top; ?>
                            <?php echo $text_description; ?>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="well">
                                        <h2><?php echo $text_new_affiliate; ?></h2>
                                        <p><?php echo $text_register_account; ?></p>
                                        <a class="btn btn-primary" href="<?php echo $register; ?>"><?php echo $button_continue; ?></a></div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="well">
                                        <h2><?php echo $text_returning_affiliate; ?></h2>
                                        <p><strong><?php echo $text_i_am_returning_affiliate; ?></strong></p>
                                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                                                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
                                                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                                                <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a> </div>
                                            <div class="buttons buttons-set">

                                                <button type="submit"  class="btn button"><span><span><?php echo $button_login; ?></span></span></button>
                                            </div>
                                            <?php if ($redirect) { ?>
                                            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                                            <?php } ?>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <?php echo $content_bottom; ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php echo $footer; ?>