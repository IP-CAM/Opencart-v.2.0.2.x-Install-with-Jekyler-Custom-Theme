<?php echo $header; ?>
<main>
    <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>
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
 <?php } ?>
    <div class="main-container col2-left-layout">
        <div class="container">                    
            <div class="main">
                <div class="row">
                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                        <div class="col-left sidebar">
                            <?php echo $column_left; ?>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                        <div class="col-main">
                                    <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>
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
                                    <?php } ?>
                            <div class="page-title category-title">
                                <h1><?php echo $heading_title; ?></h1>
                            </div>
                            <?php if ($thumb || $description) { ?>
                            <?php if ($thumb) { ?>
                            <p class="category-image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>"  /></p>
                            <?php } ?>
                            <?php if ($description) { ?>
                            <?php echo $description; ?>
                            <?php } ?>

                            <?php } ?>
                            <?php if($wg24options['wg24themeoptionpanel_l_c_psub']=="enable") { ?> 

                            <?php if ($categories) { ?>
                            <h3><?php echo $text_refine; ?></h3>
                            <?php if (count($categories) <= 5) { ?>
                            <div class="row">
                                <div class="col-sm-3">
                                    <ul>
                                        <?php foreach ($categories as $category) { ?>
                                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            </div>
                            <?php } else { ?>
                            <div class="row">
                                <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
                                <div class="col-sm-3">
                                    <ul>
                                        <?php foreach ($categories as $category) { ?>
                                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                                        <?php } ?>
                                    </ul>
                                </div>
                                <?php } ?>
                            </div>
                            <?php } ?>
                            <?php } ?>
                            <?php }  ?>                                 
                            <?php if ($products) { ?>
                            <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
                            <div class="category-products">
                                <div class="toolbar">
                                    <div class="sorter">
                                        <p class="view-mode">
                                            <label>View as:</label>
                                            <a  class="grid active" title="<?php echo $button_grid; ?>"><?php echo $button_grid; ?></a>&nbsp;
                                            <a  class="list" title="<?php echo $button_list; ?>"><?php echo $button_list; ?></a>&nbsp;
                                        </p>
                                           <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>               
                                        <div class="sort-by hidden-xs hidden-sm">
                                            <label><?php echo $text_sort; ?></label>
                                            <select id="input-sort"  onchange="location = this.value;">
                                                <?php foreach ($sorts as $sorts) { ?>
                                                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                                                <?php } else { ?>
                                                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                                <?php } ?>
                                                <?php } ?>
                                            </select>
                                        </div>
                             <?php } ?>    
                                    </div>

                                    <div class="pager">
                                        <p class="amount">
                                            <?php echo $results; ?>             
                                        </p>
                           <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1") {     ?>               
                                        <div class="sort-by hidden-xs hidden-sm">
                                            <label><?php echo $text_sort; ?></label>
                                            <select id="input-sort"  onchange="location = this.value;">
                                                <?php foreach ($sorts as $sorts) { ?>
                                                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                                                <?php } else { ?>
                                                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                                <?php } ?>
                                                <?php } ?>
                                            </select>
                                        </div>
                             <?php } ?>           
                                        
                                        <div class="limiter hidden-xs hidden-sm">
                                            <label><?php echo $text_limit; ?></label>
                                            <select id="input-limit"  onchange="location = this.value;">
                                                <?php foreach ($limits as $limits) { ?>
                                                <?php if ($limits['value'] == $limit) { ?>
                                                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                                                <?php } else { ?>
                                                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                                                <?php } ?>
                                                <?php } ?>
                                            </select>
                                        </div>
                                        <div class="pages">
                                        </div>
                                    </div>
                                </div>
                                
                               <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>    
                                <?php $psize=count($products ); $k=0;  foreach ($products as $product) { ?>
                                <?php if($k++%4==0): ?>
                                <ul class="products-grid row">
                                    <?php endif;?>  
                                    <li class="item col-md-3 col-sm-6 col-sms-6 col-smb-12" >
                                        <div class="item-inner">
                                            <div class="box-images">
                                                <?php if ($product['thumb']) { ?>
                                                <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                                    <span class="images1">
                                                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
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
                                    <?php if($k%4==0 || $k==$psize): ?>     
                                </ul>
                                <?php endif;?>
                                <?php  } ?>
                              <?php } ?>  
                              
                                 <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>    
                                <?php $psize=count($products ); $k=0;  foreach ($products as $product) { ?>
                                <?php if($k++%4==0): ?>
                                <ul class="products-grid row">
                                    <?php endif;?>  
                                    <li class="item col-md-3 col-sm-6 col-sms-6 col-smb-12" >
                                        <div class="item-inner">
                                            <div class="box-images">
                                                <?php if ($product['thumb']) { ?>
                                                <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                                                </a> 
                                                <?php } ?>
                                                  <ul class="add-to-links">
                                                    <li><a class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $button_wishlist; ?>" ><i class="fa fa-heart"></i></a></li>
                                                    <li><span class="separator">|</span> <a class="link-compare"  onclick="compare.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $button_compare; ?>" ><i class="fa fa-refresh"></i></a></li>
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
                                                        <button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $button_cart; ?>" ><span><span><i class="fa fa fa-shopping-cart"></i></span></span></button>
                                                      
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
                                    <?php if($k%4==0 || $k==$psize): ?>     
                                </ul>
                                <?php endif;?>
                                <?php  } ?>
                              <?php } ?> 
                                <ol id="products-list" class="products-list" style="display: none;">
                                    <?php   foreach ($products as $product) { ?>
                                    <li class="item row odd" >
                                        <div class="product-images col-sm-4 col-md-4 col-sms-4 col-smb-12">
                                            <div class="box-images">
                                                <?php if ($product['thumb']) { ?>
                                                <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                                    <span >
                                                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
                                                    </span>
                                                </a> 
                                                <?php } ?>
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

                                        <div class="product-shop col-sm-8 col-md-8 col-sms-8 col-smb-12">
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
                                                <div class="desc std">
                                                <?php echo $product['description']; ?>                  
                                                   
                                                </div>

                                                <div class="actions">
                                                    <button class="button btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');" type="button" data-original-title="<?php echo $button_cart; ?>" ><span><span><?php echo $button_cart; ?></span></span></button>
                                                    <ul class="add-to-links">
                                                        <li><a class="link-wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $button_wishlist; ?>" ><i class="fa fa-heart"></i></a></li>
                                                        <li><span class="separator">|</span> <a class="link-compare"  onclick="compare.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $button_compare; ?>" ><i class="fa fa-refresh"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <?php  } ?>
                                </ol> 





                                <div class="toolbar-bottom">
                                    <div class="toolbar">


                                        <div class="sorter">
                                            <p class="view-mode">
                                                <label>View as:</label>
                                                <a  class="grid active" title="<?php echo $button_grid; ?>"><?php echo $button_grid; ?></a>&nbsp;
                                                <a  class="list" title="<?php echo $button_list; ?>"><?php echo $button_list; ?></a>&nbsp;
                                            </p>
                                    <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>               
                                        <div class="sort-by hidden-xs hidden-sm">
                                            <label></label>
                                           
                                        </div>
                             <?php } ?> 

                                        </div>
                                        <div class="pager">
                                            <p class="amount">
                                                <?php echo $results; ?>             
                                            </p>
                                    <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" ) {     ?>               
                                        <div class="sort-by hidden-xs hidden-sm">
                                            <label></label>
                                          
                                        </div>
                             <?php } ?> 
                                            <div class="limiter hidden-xs hidden-sm">
                                                <label></label>
                                              
                                            </div>
                                            <div class="pages">
                                                <?php echo $pagination; ?>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                            <?php } ?>
                            <?php if (!$categories && !$products) { ?>
                            <p><?php echo $text_empty; ?></p>
                            <div class="buttons">
                                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                            </div>
                            <?php } ?>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php echo $content_bottom; ?>
<?php echo $footer; ?>
<?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") { ?>
<style type="text/css">
nav{
  padding: 0 0 0 300px;
}
</style>
<?php } ?>