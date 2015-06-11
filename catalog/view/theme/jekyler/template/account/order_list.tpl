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
                            <?php if ($orders) { ?>
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <td class="text-right"><?php echo $column_order_id; ?></td>
                                            <td class="text-left"><?php echo $column_status; ?></td>
                                            <td class="text-left"><?php echo $column_date_added; ?></td>
                                            <td class="text-right"><?php echo $column_product; ?></td>
                                            <td class="text-left"><?php echo $column_customer; ?></td>
                                            <td class="text-right"><?php echo $column_total; ?></td>
                                            <td></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($orders as $order) { ?>
                                        <tr>
                                            <td class="text-right">#<?php echo $order['order_id']; ?></td>
                                            <td class="text-left"><?php echo $order['status']; ?></td>
                                            <td class="text-left"><?php echo $order['date_added']; ?></td>
                                            <td class="text-right"><?php echo $order['products']; ?></td>
                                            <td class="text-left"><?php echo $order['name']; ?></td>
                                            <td class="text-right"><?php echo $order['total']; ?></td>
                                            <td class="text-right"><a href="<?php echo $order['href']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-info"><i class="fa fa-eye"></i></a></td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="text-right"><?php echo $pagination; ?></div>
                            <?php } else { ?>
                            <p><?php echo $text_empty; ?></p>
                            <?php } ?>
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
