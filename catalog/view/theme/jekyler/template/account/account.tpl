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
                            <h2><?php echo $text_my_account; ?></h2>
                            <ul class="list-unstyled">
                                <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                                <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                                <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                                <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                            </ul>
                            <h2><?php echo $text_my_orders; ?></h2>
                            <ul class="list-unstyled">
                                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                <?php if ($reward) { ?>
                                <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
                                <?php } ?>
                                <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
                            </ul>
                            <h2><?php echo $text_my_newsletter; ?></h2>
                            <ul class="list-unstyled">
                                <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                            </ul>
                            <?php echo $content_bottom; ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php echo $footer; ?>