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
                    <div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
                    <?php } ?>
                    <div class="account-create">
                        <div class="page-title">
                            <h1><?php echo $heading_title; ?></h1>
                        </div>
                        <div id="content" ><?php echo $content_top; ?>
                            <h2><?php echo $text_address_book; ?></h2>
                            <?php if ($addresses) { ?>
                            <table class="table table-bordered table-hover">
                                <?php foreach ($addresses as $result) { ?>
                                <tr>
                                    <td class="text-left"><?php echo $result['address']; ?></td>
                                    <td class="text-right"><a href="<?php echo $result['update']; ?>" class="btn btn-info"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="btn btn-danger"><?php echo $button_delete; ?></a></td>
                                </tr>
                                <?php } ?>
                            </table>
                            <?php } else { ?>
                            <p><?php echo $text_empty; ?></p>
                            <?php } ?>
                            <div class="buttons buttons-set">
                                <div class="pull-left"><a href="<?php echo $back; ?>" class="btn button"><span><span><?php echo $button_back; ?></span></span></a></div>
                                <div class="pull-right"><a href="<?php echo $add; ?>" class="btn button"><span><span><?php echo $button_new_address; ?></span></span></a></div>
                            </div>
                            <?php echo $content_bottom; ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php echo $footer; ?>