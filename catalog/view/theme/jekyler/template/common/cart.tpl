<div class="btn-group btn-block">
    <div class="header-cart-mini">
        <div class="topcart-mini-container">
            <div id="mini_cart_block">
                <div class="block-cart mini_cart_ajax">
                    <div class="block-cart" id="cart" >
                      <button type="button" data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>" class="dropdown-toggle top_cart_button"><i class="fa fa-shopping-cart"></i> <span id="cart-total"><?php echo $text_items; ?></span></button>
                        <ul class="mini-products-list top-cart-content" id="cart-sidebar" style="display: none;">
                            <?php if ($products || $vouchers) { ?>

                            <?php foreach ($products as $product) { ?>
                            <li class="item odd">
                                <?php if ($product['thumb']) { ?>      
                                <a class="product-image" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>"><img width="50" height="50" alt="<?php echo $product['name']; ?>" src="<?php echo $product['thumb']; ?>"></a>     
                                <?php } ?>
                                <div class="product-details">   
                                    <a class="btn-remove" onclick="cart.remove('<?php echo $product['key']; ?>');" title="<?php echo $button_remove; ?>" ><?php echo $button_remove; ?></a>
                                    <p class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                        <?php if ($product['option']) { ?>
                                        <?php foreach ($product['option'] as $option) { ?>
                                        <br />
                                        - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                                        <?php } ?>
                                        <?php } ?>
                                        <?php if ($product['recurring']) { ?>
                                        <br />
                                        - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
                                        <?php } ?>
                                    </p>
                                    <strong><?php echo $product['quantity']; ?></strong> x
                                    <span class="price"><?php echo $product['total']; ?></span> 
                                </div>   
                            </li>
                            <?php } ?>

                            <?php foreach ($vouchers as $voucher) { ?>
                            <li class="item odd">
                                <div class="product-details">  
                                    <p class="product-name"><?php echo $voucher['description']; ?></p>
                                    <strong>1</strong> x
                                    <span class="price"><?php echo $voucher['amount']; ?></span 
                                    <a class="btn-remove" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" ><?php echo $button_remove; ?></a>
                                </div>
                            </li>
                            <?php } ?>
                            <li class="item odd">
                                <div class="top-subtotal">
                                    <?php foreach ($totals as $total) { ?>
                                    <?php echo $total['title']; ?>: <span class="price"><?php echo $total['text']; ?></span><br>
                                    <?php } ?>
                                </div>
                                <div class="actions">
                                    <a href="<?php echo $cart; ?>" class="button f-left"><span><span><?php echo $text_cart; ?></span></span></a><a href="<?php echo $checkout; ?>" class="button  f-right"><span><span><?php echo $text_checkout; ?></span></span></a>
                                </div>
                            </li>
                            <?php } else { ?>
                            <li class="item odd">
                                <p class="text-center empty"><?php echo $text_empty; ?></p>
                            </li>
                            <?php } ?> 

                        </ul>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
