<?php echo $header; ?>
<!-- home page 1 start -->
<?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1") {     ?>
<?php   if($wg24options['wg24themeoptionpanel_homebigslideronoff1']=="enable") { ?> 
<figure>
    <div class="imageslider-wrappper">
        <div class="flexslider tv-nivoslider image-effect">
            <div class="ajax_loading">
                <i class="fa fa-spinner fa-spin"></i>
            </div>
            <?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_homebigslider1'][$wg24options['config_language_id']]);?>
            <?php for($sl=3; $sl>7; $sl++){ ?>    
            <div id="imageslider-caption<?php echo $sl;?>" class="imageslider-caption nivo-html-caption nivo-caption">
            </div>						
            <?php } ?>					
            <script type="text/javascript">
                jQuery( document ).ready(function($) {
                $('#tv-inivoslider').nivoSlider({
                effect: 'random',
                slices: 15,
                boxCols: 8,
                boxRows: 4,
                animSpeed: 300,
                pauseTime: 5000,
                startSlide: 0,
                directionNav: false,
                controlNavThumbs: false,
                pauseOnHover: true,
                manualAdvance: false,
                prevText: 'Prev',
                nextText: 'Next',
                afterLoad: function(){
                $('.ajax_loading').css("display","none");
								
            }  
						
        });
    });
            </script>
        </div>
    </div>
</figure>
<?php }?>
<main>
    <?php
    if($wg24options['wg24themeoptionpanel_home_promo_onoff']=="enable"){   ?>
    <section>
        <div class="top-banner-static banner-effect">
            <div class="container">
                <?php                       
                $defalut_lang_id=$wg24options['config_language_id'];
                $home_promo_content=$wg24options['wg24themeoptionpanel_home_promo_content'];
                echo  html_entity_decode($home_promo_content[$defalut_lang_id]);
                ?> 
            </div>
        </div>
    </section>   
    <?php   } ?> 
    <?php echo $content_top; ?>


    <div class="main-container col1-layout">
        <div class="container">
            <div class="main">
                <div class="col-main">
                    <div class="std">
                        <div class="home-content">
                            <div class="producttabs-container">
                                <div class="producttabs-title bx-title">
                                    <?php if ($wg24options['categories']) { ?>
                                    <ul id="tabs-title">
                                        <li data-type="newproduct" class="item0 active"><h3 class="title swing animated "><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_homecatalltext'][$wg24options['config_language_id']]);?></h3></li>
                                        <?php   $a=1;  foreach ($wg24options['categories'] as $category) {  if($a<4){ ?>
                                        <li class="item<?php echo $a; ?> "><h3 class="title swing animated "><?php echo $category['name']; ?></h3></li>
                                        <?php } $a++; } ?>  

                                    </ul>
                                    <?php  } ?>       
                                </div>
                                <div style="display: none;" class="ajax_loading">
                                    <i class="fa fa-spinner fa-spin"></i>
                                </div>
                                <div class="producttabs-products">
                                    <div class="st-products-wrap">
                                        <div class="bx-wrapper" id="all">
                                            <div class="bx-viewport">
                                                <ul class="products-grid even" >
                                                    <?php if($wg24options['allproducts']!='test'){ foreach ($wg24options['allproducts'] as $product) { ?>  
                                                    <li class="item last bx-clone" >
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
                                                                    <?php } ?> 

                                                                </div>
                                                                <div class="actions">
                                                                    <button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $wg24options['button_cart']; ?>" ><span><span><?php echo $wg24options['button_cart']; ?></span></span></button>
                                                                    <ul class="add-to-links">
                                                                        <li><a class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $wg24options['button_wishlist']; ?>" ><i class="fa fa-heart"></i></a></li>
                                                                        <li><span class="separator">|</span> <a class="link-compare"  onclick="compare.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $wg24options['button_compare']; ?>" ><i class="fa fa-refresh"></i></a></li>
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

                                                    <?php } } ?>   
                                                </ul>
                                            </div>

                                        </div>
                                        <div class="bx-wrapper" id="all1">
                                            <div class="bx-viewport">  
                                                <ul class="products-grid even" >
                                                    <?php if($wg24options['products1']!='test'){ foreach ($wg24options['products1'] as $product) { ?>  
                                                    <li class="item last bx-clone" >
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
                                                                    <?php } ?> 

                                                                </div>
                                                                <div class="actions">
                                                                    <button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $wg24options['button_cart']; ?>" ><span><span><?php echo $wg24options['button_cart']; ?></span></span></button>
                                                                    <ul class="add-to-links">
                                                                        <li><a class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $wg24options['button_wishlist']; ?>" ><i class="fa fa-heart"></i></a></li>
                                                                        <li><span class="separator">|</span> <a class="link-compare"  onclick="compare.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $wg24options['button_compare']; ?>" ><i class="fa fa-refresh"></i></a></li>
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
                                                    <?php } } ?>   
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bx-wrapper" id="all2">
                                            <div class="bx-viewport">  
                                                <ul class="products-grid even" >
                                                    <?php if($wg24options['products2']!='test'){ foreach ($wg24options['products2'] as $product) { ?>  
                                                    <li class="item last bx-clone" >
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
                                                                    <?php } ?> 
                                                                </div>
                                                                <div class="actions">
                                                                    <button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $wg24options['button_cart']; ?>" ><span><span><?php echo $wg24options['button_cart']; ?></span></span></button>
                                                                    <ul class="add-to-links">
                                                                        <li><a class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $wg24options['button_wishlist']; ?>" ><i class="fa fa-heart"></i></a></li>
                                                                        <li><span class="separator">|</span> <a class="link-compare"  onclick="compare.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $wg24options['button_compare']; ?>" ><i class="fa fa-refresh"></i></a></li>
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
                                                    <?php } } ?>   
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bx-wrapper" id="all3">
                                            <div class="bx-viewport">   
                                                <ul class="products-grid even" >
                                                    <?php if($wg24options['products3']!='test'){ foreach ($wg24options['products3'] as $product) { ?>  
                                                    <li class="item last bx-clone" >
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
                                                                    <?php } ?> 

                                                                </div>
                                                                <div class="actions">
                                                                    <button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $wg24options['button_cart']; ?>" ><span><span><?php echo $wg24options['button_cart']; ?></span></span></button>
                                                                    <ul class="add-to-links">
                                                                        <li><a class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $wg24options['button_wishlist']; ?>" ><i class="fa fa-heart"></i></a></li>
                                                                        <li><span class="separator">|</span> <a class="link-compare"  onclick="compare.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $wg24options['button_compare']; ?>" ><i class="fa fa-refresh"></i></a></li>
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

                                                    <?php } } ?>   
                                                </ul>
                                            </div>
                                        </div>
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
                    maxSlides: 5,
                    slideWidth: 210, 			
                    infiniteLoop: false,
                    moveSlides:1,
                    slideMargin: 30,
                    autoHover: true, // stop while hover &lt;=&gt; slider.stopAuto(); + slider.startAuto();
                })

            })(".producttabs-container");
        });
                            </script>         
                        </div>
                    </div>                        
                </div>
            </div>
        </div>
    </div>
    <section>
        <div id="block-subcribe">
            <div class="block block-subscribe fix-subcribe">
                <section>
                    <div class="top-banner-static banner-effect">
                        <div class="container">
                            <?php                       
                            $defalut_lang_id=$wg24options['config_language_id'];
                            $home_message_content=$wg24options['wg24themeoptionpanel_homemessagebox'];
                            echo  html_entity_decode($home_message_content[$defalut_lang_id]);
                            ?> 
                        </div>
                    </div>
                </section>   
                <script type="text/javascript">
jQuery(window).scroll(function () {
if (jQuery(this).scrollTop() > 1650) {
jQuery('.block-subscribe').addClass("fix-subcribe");
} else {
jQuery('.block-subscribe').removeClass("fix-subcribe");
}
});

                </script>
            </div>
        </div>
    </section>           
    <section>
        <!--<div class="bestsellerslider">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3 bestseller1">
                        <div class="bestseller-title">
                            <h2><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_besttitle'][$wg24options['config_language_id']]);?></h2>					
                            <div class="bestseller">
                                <?php if($wg24options['bsproducts']!='test'){
                                $k=1; foreach ($wg24options['bsproducts'] as $product) {
                                if($k==1): ?>  
                                <img alt="<?php echo $product['name']; ?>" width="228" height="130" src="<?php echo $product['single_image']; ?>">
                                <?php endif;
                                $k=$k+1; }
                                } ?> 
                            </div>					
                        </div>
                    </div>
                    <div class="col-sm-9 right-bestseller">
                        <div class="bx-wrapper">
                            <div class="slide-multirows" >
                                <?php if($wg24options['bsproducts']!='test'){
                                $_size =count($wg24options['bsproducts']); 
                                $bsti=0; foreach ($wg24options['bsproducts'] as $product) {
                                if($bsti++%2==0): ?>
                                <ul class="products-grid pdt-list zoomOut play  odd">
                                    <?php endif; ?>
                                    <li class="item <?php if(($bsti-1)%2==0): ?> first<?php elseif($bsti%2==0): ?> last<?php endif; ?> item-animate" >
                                        <div class="item-inner">
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
                                                        <?php } ?> 

                                                    </div>
                                                    <div class="actions">

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

                                <?php if ($bsti%2==0 || $bsti==$_size): ?>
                                </ul>
                                <?php endif ?>  


                                <?php  }
                                } ?>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
        <script type="text/javascript">
jQuery(document).ready(function($){
(function(selector){
var $content = $(selector);
var $slider  = $('.slide-multirows', $content);
var slider 	 = $slider.bxSlider({
auto: 0,
speed: 600,
controls: 1, 
pager: 0,
maxSlides: 3,
slideWidth: 270, 					//infiniteLoop: false,
moveSlides:1,
slideMargin: 30,
autoHover: true, // stop while hover &lt;=&gt; slider.stopAuto(); + slider.startAuto();
})

})(".bestsellerslider");
});
        </script>
    </section>


    <?php
    if($wg24options['wg24themeoptionpanel_homebottomblogonoff1']=="enable"){   ?>
    <section>
        <div class="blog-testimonial">
            <?php                       
            $defalut_lang_id=$wg24options['config_language_id'];
            $home_blog=$wg24options['wg24themeoptionpanel_homefromourblog'];
            echo  html_entity_decode($home_blog[$defalut_lang_id]);
            ?> 
            <script>
jQuery(document).ready(function($){
$('.blog-content .bxslider').bxSlider({
minSlides: 2,
maxSlides: 3,
slideWidth: 370,
slideMargin: 30,
auto: 1,
moveSlides:1,
pager: false,
controls: true,
mode: 'horizontal',
speed: 450,
pause: 3000,
easing: 'jswing',
autoHover: true,
});
});
            </script>
        </div>
    </section>
    <?php   } ?>   

    <?php echo $content_bottom; ?>
</main>
<!-- end of home page 1 -->
<?php } ?>
<!-- start home  page 2 -->
<?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {  ?>
<main class="main-wrapper">
    <section class="main-page">
        <div class="main-container col2-left-layout">                    
            <div class="main">
                <div class="row">
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 col-left-1">
                        <div class="col-left sidebar">
                            <div class="nav-vcontainer hidden-xs hidden-sm">
                                <div class="vmegamenu-title"><h2><i class="fa fa-bars"></i><?php echo  $wg24options['wg24themeoptionpanel_catmenutext'][$wg24options['config_language_id']];?></h2></div>
                                <div id="nav_vmegamenu" class="nav_vmegamenu">
                                    <div class="megamenu act">
                                        <div class="level-top"><a href="<?php echo $home; ?>"><span><?php echo  $wg24options['wg24themeoptionpanel_homemenutext'][$wg24options['config_language_id']];?></span></a></div>
                                    </div>   
                                    <?php $fistc_id=1; foreach ($categories as $category) { ?>
                                    <?php if ($category['children']) { ?>
                                    <div class="megamenu nav-1" >
                                        <div class="level-top">
                                            <a href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span><i class="fa fa-angle-down"></i></a>
                                        </div>
                                        <div class="dropdown">
                                            <div  class="block1"> 
                                                <?php if($category['children']){ ?>
                                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                <?php $i=1; foreach($children as $child) {  ?>
                                                <div class="column col<?php echo $i; ?>">
                                                    <div class="itemMenu level1">
                                                        <a href="<?php echo $child['href']; ?>" class="itemMenuName level1"><span><?php echo $child['name']; ?></span></a>
                                                        <?php if ($child['children']) { ?> 
                                                        <div class="itemSubMenu level1">
                                                            <div class="itemMenu level2">
                                                                <?php  foreach ($child['children'] as $child2) { ?>  
                                                                <a href="<?php echo $child2['href']; ?>" class="itemMenuName level2"><span><?php echo $child2['name']; ?></span></a>
                                                                <?php   }  ?>   
                                                            </div>
                                                        </div>
                                                        <?php }  ?>
                                                    </div>
                                                </div>
                                                <?php  $i=$i+1;  } } if( $fistc_id==1){ 
                                                if($wg24options['wg24themeoptionpanel_topm_custom_bonoff']=='enable'){
                                                echo  html_entity_decode($wg24options['wg24themeoptionpanel_topm_custom_bcontent'][$wg24options['config_language_id']]); 
                                                }
                                                ?>
                                                <?php }  } else {  ?>
                                                <div class="column">
                                                    <div class="itemMenu level2">
                                                        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                        <?php  foreach ($children as $child) {  ?>
                                                        <a href="<?php echo $child['href']; ?>" class="itemMenuName level2"><span><?php echo $child['name']; ?></span></a>
                                                        <?php } } ?>
                                                    </div>
                                                </div>
                                                <?php  }  ?> 
                                            </div>  
                                        </div>
                                    </div>
                                    <?php } else { ?>
                                    <div class="megamenu act">
                                        <div class="level-top"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
                                    </div>                
                                    <?php } ?>
                                    <?php  $fistc_id=$fistc_id+1; } ?>                              
                                </div>                                     
                            </div>

                            <div class="onsaleslider">
                                <h2 class="title"><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_specialtext'][$wg24options['config_language_id']]);?></h2>		                                      
                                <ul class="products-grid pdt-list zoomOut play">
                                    <?php if($wg24options['speciproducts']!='test'){ $k=1;  foreach ($wg24options['speciproducts'] as $product) { 
                                    if($k<4){ 
                                    ?>  
                                    <li class="col-md-3 col-sm-6 col-sms-6 col-smb-12 item first item-animate">
                                        <div class="item-inner">
                                            <?php if ($product['thumb']) { ?>
                                            <a class="product-image" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                                <img  width='270' height="270" src="<?php echo $product['thumbon']; ?>" alt="<?php echo $product['name']; ?>"> 
                                            </a> 
                                            <?php } ?>
                                            <div class="product-shop">
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
                                                <p><button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $wg24options['button_cart']; ?>" ><span><span><?php echo $wg24options['button_cart']; ?></span></span></button></p>
                                            </div>
                                        </div> 
                                    </li>
                                    <?php $k++;  }  }  } ?>  
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
controls: 0, 
pager: 1, 
maxSlides: 1,
slideWidth: 270, 				
infiniteLoop: false,
moveSlides:1,
slideMargin: 0,
autoHover: true, // stop while hover <=> slider.stopAuto(); + slider.startAuto();
})

})(".onsaleslider");
});
                            </script>


                            <div class="mostviewed">
                                <div class="bx-title mostviewed-title"><h2><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_homecontacttext'][$wg24options['config_language_id']]);?></h2></div>	   
                                <ul class="products-grid">
                                    <?php if($wg24options['topviwed']!='test'){ $j=1;  foreach ($wg24options['topviwed'] as $product) { 
                                    if($j<5){ 
                                    ?>  
                                    <li class="item first">
                                        <?php if ($product['thumb']) { ?>
                                        <a  href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                            <img  width='100' height="100" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                                        </a> 
                                        <?php } ?>
                                        <div class="product-shop">
                                            <h2 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
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
                                            <p><button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $wg24options['button_cart']; ?>" ><span><span><i style="font-size: 16px; vertical-align:middle;" class="fa fa-shopping-cart"></i></span></span></button></p>
                                        </div>
                                    </li>
                                    <?php $j++;  }  }  } ?>  
                                </ul>
                            </div> 
                            <?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_latestdealhotproducts'][$wg24options['config_language_id']]);?>
                            <?php
                            if($wg24options['wg24themeoptionpanel_homebottomblogonoff2']=="enable"){   ?>    
                            <section>
                                <div class="blog-content">
                                    <?php                       
                                    $defalut_lang_id=$wg24options['config_language_id'];
                                    $home_blog2=$wg24options['wg24themeoptionpanel_homefromourblog2'];
                                    echo  html_entity_decode($home_blog2[$defalut_lang_id]);
                                    ?> 
                                    <script>
jQuery(document).ready(function($){
$('.blog-content .bxslider').bxSlider({
minSlides: 2,
maxSlides: 1,
slideWidth: 270,
slideMargin: 30,
auto: 1,
moveSlides:1,
pager: false,
controls: true,
mode: 'horizontal',
speed: 300,
pause: 3000,
easing: 'jswing',
autoHover: true,
});
});
                                    </script>
                                </div>
                            </section>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 col-right-1">
                        <div class="col-main">
                            <?php if($wg24options['wg24themeoptionpanel_homebigbanneronoff1']=="enable") {  ?>
                            <div class="images-slider">
                                <div class="flexslider tv-nivoslider image-effect">
                                    <div class="ajax_loading">
                                        <i class="fa fa-spinner fa-spin"></i>
                                    </div>
                                    <?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_homebigbanner2'][$wg24options['config_language_id']]);?>
                                    <script type="text/javascript">
jQuery( document ).ready(function($) {
$('#tv-inivoslider').nivoSlider({
effect: 'random',
slices: 15,
boxCols: 8,
boxRows: 4,
animSpeed: 300,
pauseTime: 5000,
startSlide: 0,
controlNav: false,
controlNavThumbs: false,
pauseOnHover: true,
manualAdvance: false,
afterLoad: function(){
$('.ajax_loading').css("display","none");
},     
beforeChange: function(){ 
$('.imageslider-title').css("top","-500px" );
$('.imageslider-des').css("top","-1000px"); 
$('.imageslider-readmore').css("top","-2000px"); 
}, 
afterChange: function(){ 
$('.imageslider-title').css("top","160px");
$('.imageslider-des').css("top","190px");
$('.imageslider-readmore').css("top","250px");
}
});
});
                                    </script>
                                </div>
                            </div>
                            <?php } ?>
                            <?php echo $content_top; ?> 

                            <section>
                                <div id="block-subcribe">
                                    <div class="block block-subscribe">
                                        <?php                       
                                        $defalut_lang_id=$wg24options['config_language_id'];
                                        $home_message_content=$wg24options['wg24themeoptionpanel_homemessagebox'];
                                        echo  html_entity_decode($home_message_content[$defalut_lang_id]);
                                        ?>   
                                        <script type="text/javascript">jQuery(window).scroll(function () {
if (jQuery(this).scrollTop() > 1650) {
jQuery('.block-subscribe').addClass("fix-subcribe");
} else {
jQuery('.block-subscribe').removeClass("fix-subcribe");
}
});   
                                        </script>
                                    </div>
                                </div>
                            </section>                                       
                            <section>
                                <div class="bestsellerslider">
                                    <div class="bx-title bestseller-title"><div class="bg-title"><h2><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_besttitle'][$wg24options['config_language_id']]);?></h2></div></div>							<div class="slide-multirows">

                                        <?php if($wg24options['bsproducts']!='test'){
                                        $_size =count($wg24options['bsproducts']); 
                                        $bsti=0; foreach ($wg24options['bsproducts'] as $product) {

                                        if($bsti++%2==0): ?>
                                        <ul class="products-grid pdt-list zoomOut play">
                                            <?php endif; ?>
                                            <li class="item <?php if(($bsti-1)%2==0): ?> first<?php elseif($bsti%2==0): ?> last<?php endif; ?> item-animate" >

                                                <div class="item-inner">
                                                    <div class="box-images">

                                                        <?php if ($product['thumb']) { ?>
                                                        <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                                            <span class="images1">
                                                                <img  src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                                                            </span>
                                                            <?php 
                                                            if(isset($image)){   ?>
                                                            <?php $show_24wg=1; foreach ($image as $hover) {
                                                            if($product['product_id']==$hover['hover_id'])
                                                            { ?>
                                                            <span class="images2">
                                                                <img  class="img-responsive" src="<?php echo $hover['mousehover'] ?>" alt="<?php echo $product['name']; ?>"> 
                                                            </span>
                                                            <?php 
                                                            }
                                                            else{ if($show_24wg==1){ ?>
                                                            <span class="images2">
                                                                <img class="img-responsive"  src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                                                            </span>
                                                            <?php }
                                                            }
                                                            $show_24wg=$show_24wg+1;
                                                            }

                                                            } else{ ?>
                                                            <span class="images2">
                                                                <img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
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
                                                                <button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $wg24options['button_cart']; ?>" ><span><span><i class="fa fa-shopping-cart" style="font-size: 16px; vertical-align:middle;"></i></span></span></button>
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

                                            <?php if ($bsti%2==0 ||  $bsti==$_size): ?>
                                        </ul>
                                        <?php endif ?>  


                                        <?php  }
                                        } ?>
                                    </div>

                                    <script type="text/javascript">
jQuery(document).ready(function($){
(function(selector){
var $content = $(selector);
var $slider  = $('.slide-multirows', $content);
var slider 	 = $slider.bxSlider({
auto: 0,
speed: 600,
controls: 1, 
pager: 0,
maxSlides: 3,
slideWidth: 270, 					//infiniteLoop: false,
moveSlides:1,
slideMargin: 30,
autoHover: true, // stop while hover <=> slider.stopAuto(); + slider.startAuto();
})

})(".bestsellerslider");
});
                                    </script>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php echo $content_bottom; ?>
</main>
<?php } ?>
<!-- end of home page 2 -->
<!-- home page 1 start -->
<?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>
<?php  if($wg24options['wg24themeoptionpanel_homebigbanneronoff3']=="enable"){   ?>
<figure>
    <div class="images-slider">
        <div class="container images-slider-container">
            <?php                       
            $defalut_lang_id=$wg24options['config_language_id'];
            $home_slider3=$wg24options['wg24themeoptionpanel_homebigbanner3'];
            echo  html_entity_decode($home_slider3[$defalut_lang_id]);
            ?> 
            <script type="text/javascript">
jQuery( document ).ready(function($) {
$('#tv-inivoslider').nivoSlider({
effect: 'random',
slices: 15,
boxCols: 8,
boxRows: 4,
animSpeed: 300,
pauseTime: 5000,
startSlide: 0,
controlNav: false,
controlNavThumbs: false,
pauseOnHover: true,
manualAdvance: false,
prevText: 'Prev',
nextText: 'Next',
afterLoad: function(){
$('.ajax_loading').css("display","none");
								
},     
beforeChange: function(){ 
$('.imageslider-title').css("top","-500px" );
$('.imageslider-des').css("top","-1000px"); 
$('.imageslider-readmore').css("top","-1500px");
}, 
afterChange: function(){ 
$('.imageslider-title').css("top","55%");
$('.imageslider-des').css("top","58%");
$('.imageslider-readmore').css("top","73%");
}
});
});
            </script>
        </div>
    </div>
</figure>
<?php   } ?> 

<main>
    <div class="main-container col1-layout">
        <div class="container">
            <div class="main">
                <div class="col-main">
                    <div class="std">
                        <div class="home-content">
                            <section>
                                <div class="row">
                                    <?php echo $content_top; ?>
                                </div>
                            </section>
                        </div>
                    </div>                                
                </div>
            </div>
        </div>
    </div>
</main>
<?php  if($wg24options['wg24themeoptionpanel_homeReviewbanneronoff']=="enable"){   ?>  
<div class="banner-center-home3">
    <div class="container">
        <?php                       
        $defalut_lang_id=$wg24options['config_language_id'];
        $home_bannercenter=$wg24options['wg24themeoptionpanel_homeReviewbanner'];
        echo  html_entity_decode($home_bannercenter[$defalut_lang_id]);
        ?> 
    </div>
</div>  
<?php   } ?> 
<?php if($wg24options['bsproducts']!='test'){ ?>
<section>
    <div class="bestsellerslider">
        <div class="container">
            <div class="bx-title bestseller-title"><h2><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_besttitle'][$wg24options['config_language_id']]);?></h2></div>
            <ul class="products-grid pdt-list zoomOut play">
                <?php   foreach ($wg24options['bsproducts'] as $product) { ?>
                <li class="item first item-animate">
                    <div class="item-inner">
                        <div class="box-images">
                            <?php if ($product['thumb']) { ?>
                            <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                <img  src="<?php echo $product['thumb3']; ?>" alt="<?php echo $product['name']; ?>"> 
                            </a> 
                            <?php } ?>
                            <ul class="add-to-links">
                                <li><a class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $wg24options['button_wishlist']; ?>" ><i class="fa fa-heart"></i></a></li>
                                <li><span class="separator">|</span> <a class="link-compare"  onclick="compare.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $wg24options['button_compare']; ?>" ><i class="fa fa-refresh"></i></a></li>
                            </ul>
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
                                    <button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $wg24options['button_cart']; ?>" ><span><span><i class="fa fa-shopping-cart" style="font-size: 16px; vertical-align:middle;"></i></span></span></button>
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
                <?php  } ?> 
            </ul>
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
maxSlides: 5,
slideWidth: 210, 					//infiniteLoop: false,
moveSlides:1,
slideMargin: 30,
autoHover: true, // stop while hover <=> slider.stopAuto(); + slider.startAuto();
})

})(".bestsellerslider");
});
        </script>
    </div>
</section>
<?php } ?>
<?php if($wg24options['wg24themeoptionpanel_homebottomblogonoff2']=="enable"){   ?>  
<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <section>
                <div class="blog-content">
                    <?php                       
                    $defalut_lang_id=$wg24options['config_language_id'];
                    $home_blog2=$wg24options['wg24themeoptionpanel_homefromourblog2'];
                    echo  html_entity_decode($home_blog2[$defalut_lang_id]);
                    ?> 
                    <script>
jQuery(document).ready(function($){
$('.blog-content .bxslider').bxSlider({
minSlides: 2,
maxSlides: 2,
slideWidth: 270,
slideMargin: 30,
auto: 1,
moveSlides:1,
pager: false,
controls: true,
mode: 'horizontal',
speed: 450,
pause: 3000,
easing: 'jswing',
autoHover: true,
});
});
                    </script>
                </div>
            </section>

        </div>
        <div class="col-sm-6">
            <div class="block block-subscribe">
                <?php                       
                $defalut_lang_id=$wg24options['config_language_id'];
                $home_customcolumtn=$wg24options['wg24themeoptionpanel_homePromotionsslider'];
                echo  html_entity_decode($home_customcolumtn[$defalut_lang_id]);
                ?> 


            </div>
        </div> 
    </div>
</div>
<?php } ?>


<?php echo $content_bottom; ?>
<?php } ?>


<?php echo $footer; ?>