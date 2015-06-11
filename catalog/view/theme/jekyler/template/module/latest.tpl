<?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1") {     ?> 
<section>
    <div class="newproductslider">
        <div class="container">
            <div class="bx-title new-title"><h2><?php echo $heading_title; ?></h2></div>		                                     
            <div class="bx-wrapper" >
                <div class="bx-viewport" >
                    <ul class="products-grid pdt-list zoomOut play first odd" >
                        <?php foreach ($products as $product) { ?>
                        <li class="item  item-animate" >
                            <div class="box-images">
                                <?php if ($product['thumb']) { ?>
                                <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                    <span class="images1">
                                        <img class="images1" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                                    </span>
                                    <?php 
                                    if(isset($image)){   ?>
                                    <?php $show_24wg=1; foreach ($image as $hover) {
                                    if($product['product_id']==$hover['hover_id'])
                                    { ?>
                                    <span class="images2">
                                        <img  src="<?php echo $hover['mousehover'] ?>" alt="<?php echo $product['name']; ?>"> 
                                    </span>
                                    <?php 
                                    }
                                    else{ if($show_24wg==1){ ?>
                                    <span class="images2">
                                        <img  src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                                    </span>
                                    <?php }
                                    }
                                    $show_24wg=$show_24wg+1;
                                    }

                                    } else{ ?>
                                    <span class="images2">
                                        <img  src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                                    </span>
                                    <?php  }
                                    ?>  
                                </a> 
                                <?php } ?>
                            </div>
                            <div class="product-shop">
                                <div class="f-fix">
                                    <h2 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
                                    <div class="ratings">
                                        <div class="rating-box">
                                            <?php if ($product['rating']) { ?>
                                            <div class="rating">
                                                <?php for ($i = 1; $i <= 5; $i++) { ?>
                                                <?php if ($product['rating'] < $i) { ?>
                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                <?php } else { ?>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                <?php } ?>
                                                <?php } ?>
                                            </div>
                                            <?php } ?>
                                        </div>
                                    </div>

                                    <div class="price-box">
                                        <?php if ($product['price']) { ?>
                                        <?php if (!$product['special']) { ?>
                                        <p class="special-price">
                                            <span class="price-label">Special Price</span>
                                            <span class="price">
                                                <?php echo $product['price']; ?>
                                            </span>
                                        </p>
                                        <?php } else { ?>
                                        <p class="old-price">
                                            <span class="price-label">Special Price</span>
                                            <span class="price">
                                                <?php echo $product['price']; ?>
                                            </span>
                                        </p>
                                        <p class="special-price">
                                            <span class="price-label">Special Price</span>
                                            <span class="price">
                                                <?php echo $product['special']; ?>
                                            </span>
                                        </p>


                                        <?php } ?>
                                        <?php if ($product['tax']) { ?>
                                        <p class="special-price price">
                                            <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                        </p>
                                        <?php } ?>

                                        <?php } ?> 

                                    </div>


                                    <div class="actions">
                                        <button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $button_cart; ?>" ><span><span><?php echo $button_cart; ?></span></span></button>
                                        <ul class="add-to-links">
                                            <li><a class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $button_wishlist; ?>" ><i class="fa fa-heart"></i></a></li>
                                            <li><span class="separator">|</span> <a class="link-compare"  onclick="compare.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $button_compare; ?>" ><i class="fa fa-refresh"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <?php if ($product['price'] && $product['special']) { ?>
                                <span class="icon-sale"><?php echo  $wg24options['wg24themeoptionpanel_saletext'][$wg24options['config_language_id']];?> </span>
                                <?php } ?>
                                <?php foreach ($wg24options['is_new'] as $isnew) { 
                                if($isnew['product_id']==$product['product_id']){ ?>

                                <span class="icon-new">
                                    <?php echo  $wg24options['wg24themeoptionpanel_newtext'][$wg24options['config_language_id']];?>
                                </span>

                                <?php } } ?>   
                            </div>

                        </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div> 

        <script type="text/javascript">
            jQuery(document).ready(function($){
            (function(selector){
            var $content = $(selector);
            var $slider  = $('.products-grid', $content);
            var slider 	 = $slider.bxSlider({
            auto: 0,
            speed: 600,
            controls: 1,
            pager: 0,
            maxSlides: 4,
            slideWidth: 270, 			
            infiniteLoop: false,
            moveSlides:1,
            slideMargin: 30,
            autoHover: true, // stop while hover &lt;=&gt; slider.stopAuto(); + slider.startAuto();
        })

    })(".newproductslider");
});
        </script>

    </div>
</section>  


<?php } ?>


<?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>
<section>
    <div class="featuredproduct">
        <div class="bx-title featured-title"><div class="bg-title"><h2>       <?php echo $heading_title; ?>      </h2></div></div>	
        <ul class="products-grid">
            <?php foreach ($products as $product) { ?>
            <li class="item  item-animate" >
                <div class="item-inner">
                    <div class="box-images">
                        <?php if ($product['thumb']) { ?>
                        <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                            <span class="images1">
                                <img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                            </span>
                            <?php 
                            if(isset($image)){   ?>
                            <?php $show_24wg=1; foreach ($image as $hover) {
                            if($product['product_id']==$hover['hover_id'])
                            { ?>
                            <span class="images2">
                                <img class="img-responsive" src="<?php echo $hover['mousehover'] ?>" alt="<?php echo $product['name']; ?>"> 
                            </span>
                            <?php 
                            }
                            else{ if($show_24wg==1){ ?>
                            <span class="images2">
                                <img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                            </span>
                            <?php }
                            }
                            $show_24wg=$show_24wg+1;
                            }

                            } else{ ?>
                            <span class="images2">
                                <img  class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                            </span>
                            <?php  }
                            ?>  
                        </a> 
                        <?php } ?>
                    </div>
                    <div class="product-shop">
                        <div class="f-fix">
                            <h2 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
                            <div class="ratings">
                                <div class="rating-box">
                                    <?php if ($product['rating']) { ?>
                                    <div class="rating">
                                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                                        <?php if ($product['rating'] < $i) { ?>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <?php } else { ?>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <?php } ?>
                                        <?php } ?>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>

                            <div class="price-box">
                                <?php if ($product['price']) { ?>
                                <?php if (!$product['special']) { ?>
                                <p class="special-price">
                                    <span class="price-label">Special Price</span>
                                    <span class="price">
                                        <?php echo $product['price']; ?>
                                    </span>
                                </p>
                                <?php } else { ?>
                                <p class="old-price">
                                    <span class="price-label">Special Price</span>
                                    <span class="price">
                                        <?php echo $product['price']; ?>
                                    </span>
                                </p>
                                <p class="special-price">
                                    <span class="price-label">Special Price</span>
                                    <span class="price">
                                        <?php echo $product['special']; ?>
                                    </span>
                                </p>
                                <?php } ?>
                                <?php } ?> 

                            </div>


                            <div class="actions">
                                <button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $button_cart; ?>" ><span><span><?php echo $button_cart; ?></span></span></button>
                                <ul class="add-to-links">
                                    <li><a class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $button_wishlist; ?>" ><i class="fa fa-heart"></i></a></li>
                                    <li><span class="separator">|</span> <a class="link-compare"  onclick="compare.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $button_compare; ?>" ><i class="fa fa-refresh"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <?php if ($product['price'] && $product['special']) { ?>
                        <span class="icon-sale"><?php echo  $wg24options['wg24themeoptionpanel_saletext'][$wg24options['config_language_id']];?> </span>
                        <?php } ?>
                        <?php foreach ($wg24options['is_new'] as $isnew) { 
                        if($isnew['product_id']==$product['product_id']){ ?>

                        <span class="icon-new">
                            <?php echo  $wg24options['wg24themeoptionpanel_newtext'][$wg24options['config_language_id']];?>
                        </span>

                        <?php } } ?>   
                    </div>
                </div>
            </li>
            <?php } ?>
        </ul>
        <script type="text/javascript">
jQuery(document).ready(function($){
(function(selector){
var $content = $(selector);
var $slider  = $('.products-grid', $content);
var slider 	 = $slider.bxSlider({
auto: 0, speed: 600, controls: 1, pager: 0, maxSlides: 4, slideWidth: 195, 							//infiniteLoop: false,
moveSlides:1,
slideMargin: 30,
autoHover: true, // stop while hover <=> slider.stopAuto(); + slider.startAuto();
})

})(".featuredproduct");
});
        </script>
    </div>
</section>
<?php } ?>
<?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>
<div class="col-sm-6">
    <div class="newproductslider">
        <div class="bx-title"><h2 class="title"><?php echo $heading_title; ?>  </h2></div>	
        <ul class="products-grid pdt-list zoomOut play">
            <?php foreach ($products as $product) { ?>
            <li class="item  item-animate" >

                <div class="product-images">
                    <?php if ($product['thumb']) { ?>
                    <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                    </a> 
                    <?php } ?>
                    <ul class="add-to-links">
                        <li><a class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $button_wishlist; ?>" rel="tooltip"><i class="fa fa-heart"></i></a></li>
                        <li><span class="separator">|</span> <a class="link-compare"  onclick="compare.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $button_compare; ?>" rel="tooltip"><i class="fa fa-refresh"></i></a></li>
                    </ul>
                </div>
                <div class="product-shop">
                    <div class="f-fix">
                        <h2 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
                        <div class="box-button">
                            <button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $button_cart; ?>" rel="tooltip"><span><span><?php echo $button_cart; ?></span></span></button>
                        </div>
                        <div class="box-des">
                            <div class="ratings">
                                <div class="rating-box">
                                    <?php if ($product['rating']) { ?>
                                    <div class="rating">
                                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                                        <?php if ($product['rating'] < $i) { ?>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <?php } else { ?>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <?php } ?>
                                        <?php } ?>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="price-box">
                                <?php if ($product['price']) { ?>
                                <?php if (!$product['special']) { ?>
                                <p class="special-price">
                                    <span class="price-label">Special Price</span>
                                    <span class="price">
                                        <?php echo $product['price']; ?>
                                    </span>
                                </p>
                                <?php } else { ?>
                                <p class="old-price">
                                    <span class="price-label">Special Price</span>
                                    <span class="price">
                                        <?php echo $product['price']; ?>
                                    </span>
                                </p>
                                <p class="special-price">
                                    <span class="price-label">Special Price</span>
                                    <span class="price">
                                        <?php echo $product['special']; ?>
                                    </span>
                                </p>
                                <?php } ?>
                                <?php } ?> 

                            </div>
                        </div>
                    </div>
                    <?php if ($product['price'] && $product['special']) { ?>
                    <span class="icon-sale"><?php echo  $wg24options['wg24themeoptionpanel_saletext'][$wg24options['config_language_id']];?> </span>
                    <?php } ?>
                    <?php foreach ($wg24options['is_new'] as $isnew) { 
                    if($isnew['product_id']==$product['product_id']){ ?>

                    <span class="icon-new">
                        <?php echo  $wg24options['wg24themeoptionpanel_newtext'][$wg24options['config_language_id']];?>
                    </span>

                    <?php } } ?>   
                </div>

            </li>
            <?php } ?>                                                 
        </ul>
    </div> 

    <script type="text/javascript">
    jQuery(document).ready(function($){
    (function(selector){
    var $content = $(selector);
    var $slider  = $('.products-grid', $content);
    var slider 	 = $slider.bxSlider({
    auto: 0,
    speed: 1800, 
    controls: 1, 
    pager: 0,
    maxSlides: 2,
    slideWidth: 270, 
    infiniteLoop: false,
    moveSlides:1,
    slideMargin: 30,
    autoHover: true, // stop while hover <=> slider.stopAuto(); + slider.startAuto();
    })

    })(".newproductslider");
    });
    </script>
</div>
<?php } ?>

