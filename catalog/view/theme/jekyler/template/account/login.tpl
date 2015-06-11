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
                <?php if ($success) { ?>
                <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
                <?php } ?>
                <?php if ($error_warning) { ?>
                <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
                <?php } ?>
                <div class="col-main">
                    <div class="account-login">
                        <div class="page-title">
                            <h1><?php echo $heading_title; ?></h1>
                        </div>
                        <div class="col2-set">
                            <div class="col-1 new-users">
                                <div class="content">
                                    <h2><?php echo $text_new_customer; ?></h2>
                                    <p><strong><?php echo $text_register; ?></strong></p>
                                    <p><?php echo $text_register_account; ?></p>
                                </div>
                                <div class="new-users">
                                    <div class="buttons-set">
                                        <button onclick="window.location='<?php echo $register; ?>';" class="button" title="<?php echo $button_continue; ?>" type="button"><span><span><?php echo $button_continue; ?></span></span></button>
                                    </div>
                                </div>
                            </div>
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">  
                                <div class="col-2 registered-users">
                                    <div class="content">
                                        <h2><?php echo $text_returning_customer; ?></h2>
                                        <p><?php echo $text_i_am_returning_customer; ?></p>

                                        <div class="form-group">
                                            <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                                            <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
                                            <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="registered-users">
                                        <div class="buttons-set">
                                            <a  class="f-left" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
                                            <?php if ($redirect) { ?>
                                            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                                            <?php } ?>
                                            <button class="button" type="submit"><span><span><?php echo $button_login; ?></span></span></button>
                                        </div>
                                    </div>
                                </div>
                            </form>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php echo $content_bottom; ?>
</main>
<?php echo $footer; ?>