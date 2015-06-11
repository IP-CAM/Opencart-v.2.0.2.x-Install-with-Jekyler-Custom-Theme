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
                        <div id="content"><?php echo $content_top; ?>
                            <p><?php echo $text_balance; ?> <strong><?php echo $balance; ?></strong>.</p>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <td class="text-left"><?php echo $column_date_added; ?></td>
                                            <td class="text-left"><?php echo $column_description; ?></td>
                                            <td class="text-right"><?php echo $column_amount; ?></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if ($transactions) { ?>
                                        <?php foreach ($transactions  as $transaction) { ?>
                                        <tr>
                                            <td class="text-left"><?php echo $transaction['date_added']; ?></td>
                                            <td class="text-left"><?php echo $transaction['description']; ?></td>
                                            <td class="text-right"><?php echo $transaction['amount']; ?></td>
                                        </tr>
                                        <?php } ?>
                                        <?php } else { ?>
                                        <tr>
                                            <td class="text-center" colspan="5"><?php echo $text_empty; ?></td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="text-right"><?php echo $pagination; ?></div>

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