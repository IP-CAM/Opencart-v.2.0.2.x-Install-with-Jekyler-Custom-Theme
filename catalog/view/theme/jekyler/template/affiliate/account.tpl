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
                    <div class="account-create">
                        <div class="page-title">
                            <h1><?php echo $heading_title; ?></h1>
                        </div>
                        <div id="content"><?php echo $content_top; ?>
                            <h2><?php echo $text_my_account; ?></h2>
                            <ul class="list-unstyled">
                                <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                                <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                                <li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
                            </ul>
                            <h2><?php echo $text_my_tracking; ?></h2>
                            <ul class="list-unstyled">
                                <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
                            </ul>
                            <h2><?php echo $text_my_transactions; ?></h2>
                            <ul class="list-unstyled">
                                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                            </ul>
                            <?php echo $content_bottom; ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php echo $footer; ?>