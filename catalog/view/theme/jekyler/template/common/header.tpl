<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
    <!--<![endif]-->
    <head>
         
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?php echo $title; ?></title>
        <base href="<?php echo $base; ?>" />
        <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>" />
        <?php } ?>
        <?php if ($keywords) { ?>
        <meta name="keywords" content= "<?php echo $keywords; ?>" />
        <?php } ?>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <?php if ($icon) { ?>
        <link href="<?php echo $icon; ?>" rel="icon" />
        <?php } ?>
        <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
        <?php } ?>
        <link href="catalog/view/theme/jekyler/stylesheet/bootstrap/bootstrap.css" rel="stylesheet" media="screen" />
        <script type="text/javascript">
            var MEGAMENU_EFFECT = 0;
        </script>
        <link href="catalog/view/theme/jekyler/stylesheet/stylesheet.css" rel="stylesheet">
        <link href="catalog/view/theme/jekyler/stylesheet/css1/font-awesome.css" rel="stylesheet" media="all">
        <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1") {     ?>   
        <link href="catalog/view/theme/jekyler/stylesheet/css1/bootstrap-theme.css" rel="stylesheet" media="screen" />
         <link href="catalog/view/theme/jekyler/stylesheet/css1/jquery.bxslider.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css1/styles.css" rel="stylesheet" media="all" >
        <link href="catalog/view/theme/jekyler/stylesheet/css1/vmegamenu.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css1/megamenu.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css1/mobileresponsive.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css1/imageslider.css" rel="stylesheet" media="all"> 
        <?php }       
        if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?> 
        <link href="catalog/view/theme/jekyler/stylesheet/css2/bootstrap-theme.css" rel="stylesheet" media="screen" />
          <link href="catalog/view/theme/jekyler/stylesheet/css2/jquery.bxslider.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css2/styles.css" rel="stylesheet" media="all" >
           <link href="catalog/view/theme/jekyler/stylesheet/css2/vmegamenu.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css2/megamenu.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css2/mobileresponsive.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css2/imageslider.css" rel="stylesheet" media="all"> 
        <?php } 
        if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?> 
        <link href="catalog/view/theme/jekyler/stylesheet/css3/bootstrap-theme.css" rel="stylesheet" media="screen" />
         <link href="catalog/view/theme/jekyler/stylesheet/css3/jquery.bxslider.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css3/styles.css" rel="stylesheet" media="all" >
        <link href="catalog/view/theme/jekyler/stylesheet/css3/vmegamenu.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css3/megamenu.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css3/mobileresponsive.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css3/imageslider.css" rel="stylesheet" media="all"> 
        <?php } ?>
        <link href="catalog/view/theme/jekyler/stylesheet/css1/ajaxcart.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css1/blog.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css1/testimonial.css" rel="stylesheet" media="all">
        <link href="catalog/view/theme/jekyler/stylesheet/css1/print.css" rel="stylesheet" media="print" >
        <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="catalog/view/theme/jekyler/js/bootstrap/bootstrap-tooltip.js" type="text/javascript"></script>
        <script src="catalog/view/theme/jekyler/js/plugin/jquery.flexslider.js" type="text/javascript"></script>
        <script src="catalog/view/theme/jekyler/js/plugin/jquery.elevatezoom.js" type="text/javascript"></script>
        <script src="catalog/view/theme/jekyler/js/plugin/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="catalog/view/theme/jekyler/js/plugin/jquery.bxslider.js" type="text/javascript"></script>
        <script src="catalog/view/theme/jekyler/js/plugin/jquery.ddslick.min.js" type="text/javascript"></script>
        <script src="catalog/view/theme/jekyler/js/themevast.js" type="text/javascript"></script>
       <script src="catalog/view/theme/jekyler/js/megamenu.js" type="text/javascript"></script>
        <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
        <?php } ?>
        <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
        <?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>" type="text/javascript"></script>
        <?php } ?>
        <?php echo $google_analytics; ?>
    <script type="text/javascript">

jQuery(document).ready(function($){
$(".view-mode a.grid").click(function(e) {
$('a.grid').addClass('active');
$('a.list').removeClass('active');
$('.row.products-grid').fadeIn();
$('.products-list').fadeOut();
       
e.preventDefault();
});
$(".view-mode a.list").click(function(e) {
$('a.grid').removeClass('active');
$('a.list').addClass('active');
$('.row.products-grid').fadeOut();
$('.products-list').fadeIn();
e.preventDefault(); });
})


<?php if($wg24options['wg24themeoptionpanel_cate_list_grid']=="grid_view") { ?>
jQuery(document).ready(function($){
$('a.grid').addClass('active');
$('a.list').removeClass('active');
$('.row.products-grid').fadeIn();
$('.products-list').fadeOut();
});
        
<?php } else {  ?> 
jQuery(document).ready(function($){
$('a.grid').removeClass('active');
$('a.list').addClass('active');
$('.row.products-grid').fadeOut();
$('.products-list').fadeIn();
});
<?php }   ?>    
        </script>    
        
  <style type="text/css">

            <?php if($wg24options['wg24themeoptionpanel_scrol_to_top']=="disable") { ?>      
               #back-top { background:none !important; opacity: 0 !important;  display:none; }
            <?php } ?>
            body{   
                <?php if($wg24options['wg24themeoptionpanel_l_load_color']=="customeskin") { ?>
                color: <?php echo  $wg24options['wg24themeoptionpanel_l_body_fc'];?>;
                <?php }  ?>
             font: <?php echo  $wg24options['wg24themeoptionpanel_body_font_size'];?>px/1.55 <?php if($wg24options['wg24themeoptionpanel_body_font_source']=="google") { echo $wg24options['wg24themeoptionpanel_body_fontto_google'];?>,Helvetica,sans-serif <?php }else{  echo  $wg24options['wg24themeoptionpanel_body_fontto_system']; } ?>;
            <?php if($wg24options['wg24themeoptionpanel_backgroun_image_show']=="enable") {
                if($wg24options['wg24themeoptionpanel_body_cus_pattan']) { ?>
                background: url("<?php  echo  $base.'image/'.$wg24options['wg24themeoptionpanel_body_cus_pattan']?>") <?php echo  $wg24options['wg24themeoptionpanel_bg_repeat'];?> <?php echo  $wg24options['wg24themeoptionpanel_bg_attachment'];?> <?php echo  $wg24options['wg24themeoptionpanel_bg_positin'];?> <?php echo  $wg24options['wg24themeoptionpanel_l_bodyb'];?>;
                <?php } else{ ?>
                          background: url("catalog/view/theme/jekyler/image/theme_patterns/<?php echo  $wg24options['wg24themeoptionpanel_default_parttern'];?>.png") <?php echo  $wg24options['wg24themeoptionpanel_bg_repeat'];?> <?php echo  $wg24options['wg24themeoptionpanel_bg_attachment'];?> <?php echo  $wg24options['wg24themeoptionpanel_bg_positin'];?> <?php echo  $wg24options['wg24themeoptionpanel_l_bodyb'];?>;
                          <?php 
            }
            } 
            else{ }
            ?>

            <?php if($wg24options['wg24themeoptionpanel_l_load_color']=="customeskin") { ?>
                background-color: <?php echo  $wg24options['wg24themeoptionpanel_l_bodyb'];?>;
                <?php }  ?>
            }   
            /****       all header fontfamily and transfrom              ***/ 
            .bx-title h2,.page-title h1, .page-title h2,.block .block-title strong span,.footer-links .footer-static-title h3{
                font-family: <?php if($wg24options['wg24themeoptionpanel_header_font_source']=="google") { echo $wg24options['wg24themeoptionpanel_header_fontto_google'];?>,sans-serif <?php }else{ echo  $wg24options['wg24themeoptionpanel_header_fontto_system'];} ?>;
            text-transform: <?php echo  $wg24options['wg24themeoptionpanel_heading_transfrom'];?>;
            }    
        </style>        
    <?php if($wg24options['wg24themeoptionpanel_l_load_color']=="customeskin") { ?>
        <style type="text/css">  
            /******  link color  *****/
<?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1") {     ?>          
        a{
          color: <?php echo  $wg24options['wg24themeoptionpanel_l_linkc'];?>;
        }
        a:hover,.block-layered-nav dd li:hover a{
             color: <?php echo  $wg24options['wg24themeoptionpanel_l_hcolor'];?>;
        }
        /* input field */
        .form-control{ 
           border-color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_bdr'];?>;
           background-color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_bg'];?> ;
           color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_tx'];?>;    
       }
       .form-control:focus {
                border-color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_bdr'];?>;     
       }
       /* header color */
       .header{
            background-color:<?php echo  $wg24options['wg24themeoptionpanel_header_bgcolor'];?> ;
       }
       .header-quick-access{
           background-color:<?php echo  $wg24options['wg24themeoptionpanel_header_tmbgcolor'];?> ;
       }
       .form-search input.input-text,.form-search button.button span,.mini_cart_ajax .shopping-cart span,.drop-lang li a,.drop-currency li a,p.welcome-msg,.header-toplinks .links li a,.form-search .dd-selected{
           color:<?php echo  $wg24options['wg24themeoptionpanel_header_menulcolor'];?> ;
       }
        span.dd-pointer.dd-pointer-down {
        border-top: 5px solid <?php echo  $wg24options['wg24themeoptionpanel_header_menulcolor'];?>;
        }
         .form-search button.button:hover span,.mini_cart_ajax .shopping-cart span:hover, .mini_cart_ajax .shopping-cart:hover span,.drop-lang .sub-lang li a:hover, .header-toplinks .dropdown-menu a:hover, .drop-lang li a:hover,.drop-currency li a:hover,.drop-currency .sub-currency li a:hover i, .drop-currency .sub-currency li button:hover, .drop-currency .sub-currency li a:hover,.header-toplinks .links li a:hover {
            color:<?php echo  $wg24options['wg24themeoptionpanel_header_menulhcolor'];?> ;
        }
     /* search and cart border */
     .form-search,.form-search .dd-selected,.form-search input.input-text,.header-cart-mini .cart-mini-title{
         border-color:<?php echo  $wg24options['wg24themeoptionpanel_heade_tmsearchcartborder'];?> ;
     }
    /* main menu */
    .nav_megamenu div.megamenu .level-top a, .nav_megamenu div.megamenu .level-top span.block-title{
    color:<?php echo  $wg24options['wg24themeoptionpanel_menum_lcolor'];?> ;
    }
   .sorter .view-mode a.active, .sorter .view-mode a.list:hover,.nav_megamenu div.megamenu.active .level-top a, .nav_megamenu div.megamenu.act .level-top a, .nav_megamenu div.megamenu.active .level-top span.block-title, .nav_megamenu div.megamenu .level-top a:hover, .nav_megamenu div.megamenu .level-top span.block-title:hover, .nav_megamenu #megamenu_link ul li a.act, .nav_megamenu #megamenu_link ul li a:hover, .nav_megamenu div.megamenu.act{
     color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_lhcolor'];?> ;
    }
   /* lavel 2 */
   .nav_megamenu div.megamenu div.dropdown{
        border-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_2lbcolor'];?> ;
        background-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_2lbgcolor'];?> ;
   }
  .nav_vmegamenu .itemMenu h4.level1 > span, .nav_vmegamenu .itemMenu a.level1 > span,.nav_megamenu .itemMenu h4.level1 > span, .nav_megamenu .itemMenu a.level1 > span,#megamenu_extra .custom-menu-wrapper h3{
      border-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_2lbcolor'];?> ;
  }  
  .nav_vmegamenu .itemSubMenu h4.level2, .nav_vmegamenu .itemSubMenu a.level2, .nav_vmegamenu .itemSubMenu h4.level3, .nav_vmegamenu .itemSubMenu a.level3, .nav_vmegamenu .itemMenu a.level1.nochild,.nav_vmegamenu .itemMenu h4.level1, .nav_vmegamenu .itemMenu a.level1,.nav_megamenu .itemSubMenu h4.level2, .nav_megamenu .itemSubMenu a.level2, .nav_megamenu .itemSubMenu h4.level3, .nav_megamenu .itemSubMenu a.level3, .nav_megamenu .itemMenu a.level1.nochild,.nav_megamenu .itemMenu h4.level1, .nav_megamenu .itemMenu a.level1,#megamenu_extra .custom-menu-wrapper h3{
     color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_scolor'];?> ; 
  }
  .nav_megamenu .itemMenu a.level2:before, .nav_megamenu .itemMenu a.level3:before, .nav_megamenu .itemMenu a.level4:before{
       background-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_scolor'];?> ;
  }
  .nav_megamenu .itemMenu a.level2:hover:before, .nav_megamenu .itemMenu a.level3:hover:before, .nav_megamenu .itemMenu a.level4:hover:before{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_shcolor'];?> ;
  }
  .nav_vmegamenu div.column a.level2:hover,.nav_vmegamenu .itemSubMenu a.level2:hover, .nav_vmegamenu .itemMenu a.level1.nochild:hover,.nav_vmegamenu .itemMenu a.level2:hover:before, .nav_vmegamenu .itemMenu a.level3:hover:before, .nav_vmegamenu .itemMenu a.level4:hover:before,.nav_vmegamenu .itemMenu h4.level1:hover, .nav_vmegamenu .itemMenu a.level1:hover,.nav_megamenu .itemMenu h4.level1:hover, .nav_megamenu .itemMenu a.level1:hover,.nav_megamenu .itemSubMenu a.level2:hover, .nav_megamenu .itemMenu a.level1.nochild:hover,.nav_megamenu .column a.level2:hover{
  color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_shcolor'];?> ;
  }
 /* slider  */
 .imageslider-title h3,.imageslider-des{
     color:<?php echo  $wg24options['wg24themeoptionpanel_homsheding1_co'];?> ; 
 }
  .imageslider-readmore a,.nivo-controlNav a{
    border-color:<?php echo  $wg24options['wg24themeoptionpanel_homsheding1_co'];?> ;
     color:<?php echo  $wg24options['wg24themeoptionpanel_homsheding1_co'];?> ; 
  }
  .nivo-controlNav a:hover:after, .nivo-controlNav a.active:after{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_homsheding1_co'];?> ;
  }
  /* promo color  */
  .banner-box2 .mask h2{
   color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col'];?> ; 
  }
  .banner-box2 .mask p span,.banner-box2:hover .mask h2{
        color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col'];?> ; 
  }
  /* product */
  .old-price .price,.product-name a,.block-tags .actions a:after, .bx-wrapper .bx-controls-direction a.bx-prev:before, .bx-wrapper .bx-controls-direction a.bx-next:after{
         color:<?php echo  $wg24options['wg24themeoptionpanel_l_body_fc'];?> ; 
  
  }
  .bx-wrapper .bx-controls-direction a:hover, .bx-wrapper .bx-controls-direction a:hover:before, .bx-wrapper .bx-controls-direction a:hover:after{
    color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col'];?> ; 
  }
  .upsellslider .bx-wrapper .bx-controls-direction a:before, .upsellslider .bx-wrapper .bx-controls-direction a:after{
   background:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col'];?> ; 
    color: #fff;
  }
  /* ratting color */
  .rating .fa-star + .fa-star-o,.product-name a:hover{
     color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col'];?> ;   
  }
 .special-price .price,.special-price .price-tax,.products-list .regular-price .price, .products-list .special-price .price{
   color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col'];?> ;   
 }   
 /* button */
 #back-top,button.button span,#tabs-title li h3,a.button span,.btn-primary{
  background-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col'];?> ;
 }
 .btn-primary{
 border-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col'];?> ;
 }
 /* hover  */
 .btn-primary:hover,#back-top:after,a.button:hover > span,button.btn-cart > span:after,button.button:hover > span,.block-tags .block-content .tags-list a:after, .pager .pages li:after, .add-to-links li a:after{
background-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col'];?> ;
 }
.pager .pages li:hover, .add-to-links li a:hover{
 border-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col'];?> ;
 }
 /* secend color */
 .breadcrumbs a:hover,.product-view .product-shop .availability span,.blog-content li.item p.author,.blog-content li.item h3.title:hover{
 color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col'];?> ;
 }
 /* tab color */
 #tabs-title li.active h3, #tabs-title li:hover h3{
 background-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col'];?> ;
 }
 .product-tabs a{
  background-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col'];?> ;
 }
 
 .add-to-links li a,.product-view .add-to-links a{
 color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col'];?> ; 
 border-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col'];?> ;
 }
 .icon-new{
     background-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col'];?> ; 
 }
  span.icon-new:after{
    border-top:5px solid <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col'];?> ; 
  }
 .icon-sale{
 background-color:<?php echo  $wg24options['wg24themeoptionpanel_product_box_sicon_bgcolor'];?> ;
 color:<?php echo  $wg24options['wg24themeoptionpanel_product_box_sale_nicontcolor'];?> ;
 } 
 span.icon-sale:after{
  border-top:5px solid <?php echo  $wg24options['wg24themeoptionpanel_product_box_sicon_bgcolor'];?> ; 
 } 
 /* vartical mgega menu */
 /* footer  */
 .footer-information,.footer-links{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_footer_bg_col'];?> ; 
 }
 #twitter-feed,.link-follow{
  border-bottom: 1px solid <?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col'];?> ; 
 }
 .footer-static-title h3,.footer-links .footer-static-title h3{
  color:<?php echo  $wg24options['wg24themeoptionpanel_fotheadin_col'];?> ;   
 }
 .footer-links .footer-static-content ul li a,.footer-static-content p,.footer-links .logo-bottom h1{
 color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_col'];?> ;  
 }
 .footer-links .footer-static-content ul li a:before{
  background-color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_col'];?> ;
 }
 .footer-links .footer-static-content ul li a:hover:before{
 background-color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_h_col'];?> ;
 }
 .footer-links .footer-static-content ul li a:hover{
  color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_h_col'];?> ; 
 }
 .link-follow a{
   border-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col'];?> ; 
 }
 .link-follow a:before{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col'];?> ; 
 }
 .link-follow a:hover{
    border-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col'];?> ; 
 }
 .footer-container{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_fot_bbg_col'];?> ; 
 }
 .footer address{
 color:<?php echo  $wg24options['wg24themeoptionpanel_fot_powerred_col'];?> ;
 }
 <?php } ?>
 
 /* end  home page 1 */
<?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>                                                                         
.container-inner{
    background-color:<?php echo  $wg24options['wg24themeoptionpanel_containerinnerbg2'];?>;
}                                                                           
   a{
    color: <?php echo  $wg24options['wg24themeoptionpanel_l_linkc2'];?>;
  }
  a:hover,.block-layered-nav dd li:hover a{
       color: <?php echo  $wg24options['wg24themeoptionpanel_l_hcolor2'];?>;
  }
  /* input field */
  .form-control{ 
     border-color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_bdr'];?>;
     background-color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_bg'];?> ;
     color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_tx'];?>;    
 }
 .form-control:focus {
          border-color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_bdr'];?>;     
}                                                                           
/* header color */
  .header-quick-access{
      background-color:<?php echo  $wg24options['wg24themeoptionpanel_header_tmbgcolor2'];?> ;
  }
.header-currency .fa, .header-language .fa,.drop-lang li a,.drop-currency li a,p.welcome-msg,.header-toplinks .links li a{
      color:<?php echo  $wg24options['wg24themeoptionpanel_header_menulcolor2'];?> ;
  }
    .form-search button.button:hover span,.mini_cart_ajax .shopping-cart span:hover, .mini_cart_ajax .shopping-cart:hover span,.drop-lang .sub-lang li a:hover, .header-toplinks .dropdown-menu a:hover, .drop-lang li a:hover,.drop-currency li a:hover,.drop-currency .sub-currency li a:hover i, .drop-currency .sub-currency li button:hover, .drop-currency .sub-currency li a:hover,.header-toplinks .links li a:hover {
       color:<?php echo  $wg24options['wg24themeoptionpanel_header_menulhcolor2'];?> ;
   }                                                                            
    /* main menu */
    .vmegamenu-title h2,.nav_megamenu{
        background-color:<?php echo  $wg24options['wg24themeoptionpanel_menum_bgcolor'];?> ;       
    }
    .vmegamenu-title h2,.nav_megamenu div.megamenu .level-top a, .nav_megamenu div.megamenu .level-top span.block-title{
    color:<?php echo  $wg24options['wg24themeoptionpanel_menum_lcolor2'];?> ;
    }
  .nav_vmegamenu div.megamenu .level-top a:hover, .nav_vmegamenu div.megamenu .level-top span.block-title:hover, .nav_vmegamenu #pt_menu_link ul li a.act, .nav_vmegamenu #pt_menu_link ul li a:hover, .nav_vmegamenu div.megamenu.act, .nav_megamenu div.megamenu.active .level-top span.block-title:hover,
.nav_megamenu div.megamenu.active .level-top a:hover,.sorter .view-mode a.active, .sorter .view-mode a.list:hover,.nav_megamenu div.megamenu.active .level-top a, .nav_megamenu div.megamenu.act .level-top a, .nav_megamenu div.megamenu.active .level-top span.block-title, .nav_megamenu div.megamenu .level-top a:hover, .nav_megamenu div.megamenu .level-top span.block-title:hover, .nav_megamenu #megamenu_link ul li a.act, .nav_megamenu #megamenu_link ul li a:hover, .nav_megamenu div.megamenu.act{
     color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_lhcolor2'];?> ;
    }
   /* lavel 2 */
   .nav_vmegamenu div.megamenu div.dropdown,.nav_megamenu div.megamenu div.dropdown{
        border-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_2lbcolor2'];?> ;
        background-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_2lbgcolor2'];?> ;
   }
  .nav_product .products-grid li.item .item-inner,.nav_vmegamenu .itemMenu h4.level1 > span, .nav_vmegamenu .itemMenu a.level1 > span,.nav_megamenu .itemMenu h4.level1 > span, .nav_megamenu .itemMenu a.level1 > span,#megamenu_extra .custom-menu-wrapper h3{
      border-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_2lbcolor2'];?> ;
  }
  .nav_product .products-grid li.item:hover .item-inner{
       border-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_shcolor2'];?> ;
  }
  .nav_vmegamenu .itemSubMenu h4.level2, .nav_vmegamenu .column a.level2, .nav_vmegamenu .itemSubMenu a.level2, .nav_vmegamenu .itemSubMenu h4.level3, .nav_vmegamenu .itemSubMenu a.level3, .nav_vmegamenu .itemMenu a.level1.nochild,.nav_vmegamenu .itemSubMenu h4.level2, .nav_vmegamenu .itemSubMenu a.level2, .nav_vmegamenu .itemSubMenu h4.level3, .nav_vmegamenu .itemSubMenu a.level3, .nav_vmegamenu .itemMenu a.level1.nochild,.nav_vmegamenu .itemMenu h4.level1, .nav_vmegamenu .itemMenu a.level1,.nav_megamenu .itemSubMenu h4.level2, .nav_megamenu .itemSubMenu a.level2, .nav_megamenu .itemSubMenu h4.level3, .nav_megamenu .itemSubMenu a.level3, .nav_megamenu .itemMenu a.level1.nochild,.nav_megamenu .itemMenu h4.level1, .nav_megamenu .itemMenu a.level1,#megamenu_extra .custom-menu-wrapper h3{
     color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_scolor2'];?> ; 
  }
 .nav_vmegamenu .itemMenu a.level2:before, .nav_vmegamenu .itemMenu a.level3:before, .nav_vmegamenu .itemMenu a.level4:before ,.nav_megamenu .itemMenu a.level2:before, .nav_megamenu .itemMenu a.level3:before, .nav_megamenu .itemMenu a.level4:before{
       background-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_scolor2'];?> ;
  }
  .nav_vmegamenu .itemMenu a:hover:before,.nav_megamenu .itemMenu a.level2:hover:before, .nav_megamenu .itemMenu a.level3:hover:before, .nav_megamenu .itemMenu a.level4:hover:before{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_shcolor2'];?> ;
  }
  .nav_vmegamenu div.column a.level2:hover,.nav_vmegamenu .itemSubMenu a.level2:hover, .nav_vmegamenu .itemMenu a.level1.nochild:hover,.nav_vmegamenu .itemMenu a.level2:hover:before, .nav_vmegamenu .itemMenu a.level3:hover:before, .nav_vmegamenu .itemMenu a.level4:hover:before,.nav_vmegamenu .itemMenu h4.level1:hover, .nav_vmegamenu .itemMenu a.level1:hover,.nav_megamenu .itemMenu h4.level1:hover, .nav_megamenu .itemMenu a.level1:hover,.nav_megamenu .itemSubMenu a.level2:hover, .nav_megamenu .itemMenu a.level1.nochild:hover,.nav_megamenu .column a.level2:hover{
  color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_shcolor2'];?> ;
  }    
  
  /* product */
  .nivo-directionNav a:hover {
    background-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col2'];?> ;
}
 .featuredproduct .featured-title h2, .newproductslider .newproduct-title h2,.bestseller-title h2{
  background-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col2'];?> ;
 } 
  /* ratting color */
  .rating .fa-star + .fa-star-o,.rating .fa-star,.product-name a:hover{
  color: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?> ;
  }
   span.icon-new{
  background-color: <?php echo  $wg24options['wg24themeoptionpanel_product_box_sicon_bgcolor2'];?> ;
  } 
 span.icon-new:before{ border-top:5px solid <?php echo  $wg24options['wg24themeoptionpanel_product_box_sicon_bgcolor2'];?> ;}
  span.icon-sale{
    background-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?> ;    
  }
span.icon-sale:before{
border-top:5px solid <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?> !important;
}
/* button primary */
.btn-primary,.product-view .add-to-links a,button.button span,.products-grid .add-to-links li a, .products-list .add-to-links li a,a.button span{
    color: <?php echo  $wg24options['wg24themeoptionpanel_btn_textcolor_col2'];?> ;   
 background-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col2'];?> ;    
}
.btn-primary{
border-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col2'];?> ; 
}
/* button secendy primary */
.product-tabs li.active a, .product-tabs li.active a:hover,.product-tabs a:hover,.btn-primary:hover,a.button:hover span,.product-view .add-to-links a:hover,button.button:hover span,.products-grid .add-to-links li a:hover, .products-list .add-to-links li a:hover{
 background-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col2'];?> ; 
}
.btn-primary:hover{
border-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col2'];?> ; 
}
#back-top{
background-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col2'];?> ; 
}
#back-top:hover{
background-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?> ; 
}
.sorter .view-mode a.active, .sorter .view-mode a.list:hover{
color: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?> ; 
}
/* footer  */
 .footer-information,.footer-links{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_footer_bg_col'];?> ; 
 }
 #twitter-feed,.link-follow{
  border-bottom: 1px solid <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col2'];?> ; 
 }
 .footer-static-title h3,.footer-links .footer-static-title h3{
  color:<?php echo  $wg24options['wg24themeoptionpanel_fotheadin_col'];?> ;   
 }
 .footer-links .footer-static-content ul li a,.footer-static-content p,.footer-links .logo-bottom h1{
 color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_col'];?> ;  
 }
 .footer-links .footer-static-content ul li a:before{
  background-color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_col'];?> ;
 }
 .footer-links .footer-static-content ul li a:hover:before{
 background-color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_h_col2'];?> ;
 }
 .footer-links .footer-static-content ul li a:hover{
  color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_h_col2'];?> ; 
 }
 .link-follow a{
   border-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col2'];?> ; 
 }
 .link-follow a:before{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_h_col2'];?> ; 
 }
 .link-follow a:hover{
    border-color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_h_col2'];?> ; 
 }
 .footer-container{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_fot_bbg_col'];?> ; 
 }
 .footer address{
 color:<?php echo  $wg24options['wg24themeoptionpanel_fot_powerred_col'];?> ;
 }
 /* end of home page 2 */
<?php } ?>
 
 <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>                                                                         

     a{
          color: <?php echo  $wg24options['wg24themeoptionpanel_l_linkc2'];?>;
        }
        a:hover,.block-layered-nav dd li:hover a,.blog-content li.item h3.title:hover,.breadcrumbs a:hover{
             color: <?php echo  $wg24options['wg24themeoptionpanel_l_hcolor2'];?>;
        }
        /* input field */
        .form-control{ 
           border-color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_bdr'];?>;
           background-color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_bg'];?> ;
           color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_tx'];?>;    
       }
       .form-control:focus {
                border-color:<?php echo  $wg24options['wg24themeoptionpanel_l_fld_bdr'];?>;     
       }
       /* header color */
       .header-quick-access .header-container,.drop-lang .drop-trigger .sub-lang,.drop-currency .currency-trigger .sub-currency,.header-toplinks .dropdown-menu{
       background-color:<?php echo  $wg24options['wg24themeoptionpanel_header_tmbgcolor3'];?> ;
       }
      .header-cart-mini a.shopping-cart, .form-search input.input-text,.form-search button.button span,.mini_cart_ajax .shopping-cart span,.drop-lang li a,.drop-currency li a,p.welcome-msg,.header-toplinks .links li a,.form-search .dd-selected{
           color:<?php echo  $wg24options['wg24themeoptionpanel_header_menulcolor3'];?> ;
       }
       .form-search button.button span{ background:none !important; }
        span.dd-pointer.dd-pointer-down {
        border-top: 5px solid <?php echo  $wg24options['wg24themeoptionpanel_header_menulcolor3'];?>;
        }
        .form-search button.button:hover span,.mini_cart_ajax .shopping-cart span:hover, .mini_cart_ajax .shopping-cart:hover span,.drop-lang .sub-lang li a:hover, .header-toplinks .dropdown-menu a:hover, .drop-lang li a:hover,.drop-currency li a:hover,.drop-currency .sub-currency li a:hover i, .drop-currency .sub-currency li button:hover, .drop-currency .sub-currency li a:hover,.header-toplinks .links li a:hover {
            color:<?php echo  $wg24options['wg24themeoptionpanel_header_menulhcolor3'];?> ;
        }
     /* search and cart border */
     .header-cart-mini,.form-search,.form-search .dd-selected,.form-search input.input-text,.header-cart-mini .cart-mini-title{
         border-color:<?php echo  $wg24options['wg24themeoptionpanel_heade_tmsearchcartborder3'];?> ;
     }                                                                           
     .form-search #cat a.dd-option:hover{
       background-color:<?php echo  $wg24options['wg24themeoptionpanel_header_menulhcolor3'];?> ;
     }                                                                         
  /* menu */
  .nav_megamenu,.nav_megamenu div.megamenu .level-top a:hover, .nav_megamenu div.megamenu .level-top span.block-title:hover, .nav_megamenu #megamenu_link ul li a.act, .nav_megamenu #megamenu_link ul li a:hover, .nav_megamenu div.megamenu.act{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_menum_bgcolor3'];?> ;    
  }
  .nav_megamenu div.megamenu .level-top a, .nav_megamenu div.megamenu .level-top span.block-title{
  color:<?php echo  $wg24options['wg24themeoptionpanel_menum_lcolor23'];?> ;
  }                                                                            
  .nav_vmegamenu div.megamenu .level-top span.block-title:hover, .nav_vmegamenu #pt_menu_link ul li a.act, .nav_vmegamenu #pt_menu_link ul li a:hover, .nav_vmegamenu div.megamenu.act,.nav_megamenu div.megamenu.active .level-top a, .nav_megamenu div.megamenu.active .level-top span.block-title{
   color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_lhcolor23'];?> ;
  }                                                                            
    /* lavel 2 */
   .nav_vmegamenu div.megamenu div.dropdown,.nav_megamenu div.megamenu div.dropdown{
        border-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_2lbcolor2'];?> ;
        background-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_2lbgcolor2'];?> ;
   }
  .nav_product .products-grid li.item .item-inner,.nav_vmegamenu .itemMenu h4.level1 > span, .nav_vmegamenu .itemMenu a.level1 > span,.nav_megamenu .itemMenu h4.level1 > span, .nav_megamenu .itemMenu a.level1 > span,#megamenu_extra .custom-menu-wrapper h3{
      border-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_2lbcolor2'];?> ;
  }
  .nav_product .products-grid li.item:hover .item-inner{
       border-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_shcolor2'];?> ;
  }
  .nav_vmegamenu .itemSubMenu h4.level2, .nav_vmegamenu .column a.level2, .nav_vmegamenu .itemSubMenu a.level2, .nav_vmegamenu .itemSubMenu h4.level3, .nav_vmegamenu .itemSubMenu a.level3, .nav_vmegamenu .itemMenu a.level1.nochild,.nav_vmegamenu .itemSubMenu h4.level2, .nav_vmegamenu .itemSubMenu a.level2, .nav_vmegamenu .itemSubMenu h4.level3, .nav_vmegamenu .itemSubMenu a.level3, .nav_vmegamenu .itemMenu a.level1.nochild,.nav_vmegamenu .itemMenu h4.level1, .nav_vmegamenu .itemMenu a.level1,.nav_megamenu .itemSubMenu h4.level2, .nav_megamenu .itemSubMenu a.level2, .nav_megamenu .itemSubMenu h4.level3, .nav_megamenu .itemSubMenu a.level3, .nav_megamenu .itemMenu a.level1.nochild,.nav_megamenu .itemMenu h4.level1, .nav_megamenu .itemMenu a.level1,#megamenu_extra .custom-menu-wrapper h3{
     color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_scolor2'];?> ; 
  }
 .nav_vmegamenu .itemMenu a.level2:before, .nav_vmegamenu .itemMenu a.level3:before, .nav_vmegamenu .itemMenu a.level4:before ,.nav_megamenu .itemMenu a.level2:before, .nav_megamenu .itemMenu a.level3:before, .nav_megamenu .itemMenu a.level4:before{
       background-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_scolor2'];?> ;
  }
  .nav_vmegamenu .itemMenu a:hover:before,.nav_megamenu .itemMenu a.level2:hover:before, .nav_megamenu .itemMenu a.level3:hover:before, .nav_megamenu .itemMenu a.level4:hover:before{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_shcolor2'];?> ;
  }
   .nav_vmegamenu div.megamenu .level-top a:hover,.nav_vmegamenu div.column a.level2:hover,.nav_vmegamenu .itemSubMenu a.level2:hover, .nav_vmegamenu .itemMenu a.level1.nochild:hover,.nav_vmegamenu .itemMenu a.level2:hover:before, .nav_vmegamenu .itemMenu a.level3:hover:before, .nav_vmegamenu .itemMenu a.level4:hover:before,.nav_vmegamenu .itemMenu h4.level1:hover, .nav_vmegamenu .itemMenu a.level1:hover,.nav_megamenu .itemMenu h4.level1:hover, .nav_megamenu .itemMenu a.level1:hover,.nav_megamenu .itemSubMenu a.level2:hover, .nav_megamenu .itemMenu a.level1.nochild:hover,.nav_megamenu .column a.level2:hover{
  color:<?php echo  $wg24options['wg24themeoptionpanel_mainm_shcolor2'];?> ;
  } 
 /* global color */
 .flexslider .nivo-directionNav a:hover,.bx-wrapper .bx-controls-direction a:hover{
 background-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col23'];?> ;
 color:#fff !important;
 }
 .banner-top-right .banner-des p.link:hover {
    background-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?> ;
    border-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?> ;
}
 .bx-title h2{
      border-bottom: 3px solid <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?>;
 } 
 span.icon-sale:after {
    border-top: 5px solid <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?>;
} 
/* primairy bg color */
.products-list .add-to-links li a{
background-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col23'];?> !important;
}
.products-grid .add-to-links li a,.btn-primary,.product-view .add-to-links a,#back-top,a.button span,button.button span,.featuredproduct .products-grid button.button span,.products-list .add-to-links li a, .newproductslider .products-grid .add-to-links li a{
background-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col23'];?> ;
}
.btn-primary{
border-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_1bg_col23'];?>;
}
/* sencdy primary bg */
.products-grid .add-to-links li a:hover, .products-list .add-to-links li a:hover,.btn-primary:hover,.product-tabs a:hover,.product-tabs li.active a, .product-tabs li.active a:hover,.product-view .add-to-links a:hover,#back-top:hover,a.button:hover span,.icon-sale,.featuredproduct .products-grid button.button:hover span,button.button:hover span,.newproductslider .products-grid .add-to-links li a:hover{
background-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?> ;
}
.products-list .add-to-links li a:hover{
background-color:: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?> !important;
}
.btn-primary:hover{
border-color: <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?>;
}
.rating .fa-star + .fa-star-o,.product-name:hover a,.product-name a:hover,.sorter .view-mode a.active, .sorter .view-mode a.list:hover{
color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg2_col2'];?> ;
}
.icon-new{
background-color:<?php echo  $wg24options['wg24themeoptionpanel_product_box_sicon_bgcolor2'];?> ;
}
 span.icon-new:after {
    border-top: 5px solid <?php echo  $wg24options['wg24themeoptionpanel_product_box_sicon_bgcolor2'];?>;
} 
.newproductslider .bx-title h2{
border-color: <?php echo  $wg24options['wg24themeoptionpanel_product_box_sicon_bgcolor2'];?>;
}
/* footer  */
 .footer-information,.footer-links{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_footer_bg_col'];?> ; 
 }
 #twitter-feed,.link-follow{
  border-bottom: 1px solid <?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col2'];?> ; 
 }
 .footer-static-title h3,.footer-links .footer-static-title h3{
  color:<?php echo  $wg24options['wg24themeoptionpanel_fotheadin_col'];?> ;   
 }
 .footer-links .footer-static-content ul li a,.footer-static-content p,.footer-links .logo-bottom h1{
 color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_col'];?> ;  
 }
 .footer-links .footer-static-content ul li a:before{
  background-color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_col'];?> ;
 }
 .footer-links .footer-static-content ul li a:hover:before{
 background-color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_h_col2'];?> ;
 }
 .footer-links .footer-static-content ul li a:hover{
  color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_h_col2'];?> ; 
 }
 .link-follow a{
   border-color:<?php echo  $wg24options['wg24themeoptionpanel_btn_hbg_col2'];?> ; 
 }
 .link-follow a:before{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_h_col2'];?> ; 
 }
 .link-follow a:hover{
    border-color:<?php echo  $wg24options['wg24themeoptionpanel_fotlin_h_col2'];?> ; 
 }
 .footer-container{
   background-color:<?php echo  $wg24options['wg24themeoptionpanel_fot_bbg_col'];?> ; 
 }
 .footer address{
 color:<?php echo  $wg24options['wg24themeoptionpanel_fot_powerred_col'];?> ;
 }
 /* end of home page 2 */
<?php } ?>
        </style>  
        <?php  } ?> 
    </head>
    <body class="<?php echo $class;  if($class=='common-home'):?> cms-index-index <?php endif; ?>">

        <div class="wrapper">
            <div class="page">
                <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>  
                <div class="container">
                    <div class="container-inner">      
                        <?php } ?>         

                        <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage3" ) {     ?>   
                        <header>
                            <?php }else{ ?>              
                            <header class="header-wrapper">   
                                <?php } ?>         
                                <div class="header-quick-access">
                                    <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1") {     ?>    
                                    <div class="container">
                                        <?php } ?>    
                                        <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3" ) {     ?>    
                                        <div class="container header-container">
                                            <?php } ?>    
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-4 col-md-6 col-lg-7 col-sms-12">
                                                    <div class="language-currency">
                                                        <div class="header-language">
                                                            <?php echo $language; ?>
                                                        </div>
                                                        <div class="header-currency">
                                                            <?php echo $currency; ?>
                                                        </div>
                                                    </div>
                                                    <p class="welcome-msg"><?php echo $telephone; ?> </p>
                                                </div>
                                                <div class="col-xs-12 col-sm-8 col-md-6 col-lg-5 col-sms-12">
                                                    <div class="header-toplinks">
                                                        <ul class="list-inline links">
                                                            <li class="dropdown first"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $text_account; ?> <i class="fa fa-angle-down"></i></a>
                                                                <ul class="dropdown-menu dropdown-menu-right">
                                                                    <?php if ($logged) { ?>
                                                                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                                                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                                                    <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                                                    <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                                                    <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                                                                    <?php } else { ?>
                                                                    <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                                                                    <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                                                                    <?php } ?>
                                                                </ul>
                                                            </li>
                                                            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                                                            <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
                                                            <li class=" last"><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><?php echo $text_checkout; ?></a></li>
                                                        </ul>


                                                    </div>
                                                </div>
                                            </div>
                                            <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage3" ) {     ?>    
                                        </div>
                                        <?php } ?>  
                                    </div>
                                    <div class="header">
                                        <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1") {     ?>    
                                        <div class="container">
                                            <?php } ?> 
                                            <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?> 
                                                     <script type="text/javascript">
                                        jQuery(window).scroll(function () {
                                        if (jQuery(this).scrollTop() > 150) {
                                        jQuery('.header').addClass("fix-nav");
                                    } else {
                                    jQuery('.header').removeClass("fix-nav");
                                }
                            });
                                    </script>
                                            <div class="page-header-content">
                                                <div class="row">
                                                    <div class="col-xs-12  col-sm-3 header-logo">
                                                        <?php if ($logo) { ?>
                                                        <a href="<?php echo $home; ?>" class="logo"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"  /></a>
                                                        <?php } else { ?>
                                                        <h1 class="logo"><a  class="logo" href="<?php echo $home; ?>"><strong><?php echo $name; ?></strong></a></h1>
                                                        <?php } ?>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 header-search">
                                                        <?php echo $search; ?>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-3 header-cart">
                                                        <?php echo $cart; ?>

                                                    </div>
                                                    <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1") {     ?>  
                                                    <nav>
                                                        <div class="nav-mobilemenu-container visible-xs">
                                                            <div class="navbar">
                                                                <div id="navbar-inner" class="navbar-inner navbar-inactive" >
                                                                    <div class="menu-mobile">
                                                                        <a class="btn btn-navbar navbar-toggle" title="<?php echo  $wg24options['wg24themeoptionpanel_catmenutext'][$wg24options['config_language_id']];?>" >
                                                                            <span class="icon-bar"></span>
                                                                            <span class="icon-bar"></span>
                                                                            <span class="icon-bar"></span>
                                                                        </a>
                                                                        <span class="brand navbar-brand"><?php echo  $wg24options['wg24themeoptionpanel_catmenutext'][$wg24options['config_language_id']];?></span>
                                                                    </div>
                                                                    <ul id="nav-mobilemenu" class="mobilemenu nav-collapse collapse" >
                                                                        <?php  foreach ($categories as $category) { ?>   
                                                                        <?php if ($category['children']) { ?>  
                                                                        <li class="level0 nav-1 level-top parent">
                                                                            <a class="level-top" href="<?php echo $category['href']; ?>">  <span><?php echo $category['name']; ?></span></a>
                                                                            <ul class="level0">
                                                                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                                                <?php  foreach($children as $child) {  ?> 
                                                                                <?php if ($child['children']) { ?> 
                                                                                <li class="level1 nav-1-1 first parent">
                                                                                    <a href="<?php echo $child['href']; ?>" class="level-top"><span><?php echo $child['name']; ?></span></a>
                                                                                    <ul class="level1">
                                                                                        <?php  foreach ($child['children'] as $child2) { ?>  
                                                                                        <li class="level2 nav-1-1-1 ">
                                                                                            <a href="<?php echo $child2['href']; ?>"><span><?php echo $child2['name']; ?></span></a>
                                                                                        </li>
                                                                                        <?php   }  ?>  
                                                                                    </ul>
                                                                                    <span class="head"><a href="javascript:void(0)"></a></span>
                                                                                </li>
                                                                                <?php } else{ ?>
                                                                                <li class="level1 nav-1-1 first">
                                                                                    <a href="<?php echo $child['href']; ?>" class="level-top"><span><?php echo $child['name']; ?></span></a>
                                                                                </li>
                                                                                <?php } ?>

                                                                                <?php    } }    ?>

                                                                            </ul>
                                                                            <span class="head"><a href="javascript:void(0)"></a></span>
                                                                        </li>
                                                                        <?php } else { ?>
                                                                        <li class="level0 nav-1 level-top">
                                                                            <a class="level-top" href="<?php echo $category['href']; ?>">  <span><?php echo $category['name']; ?></span></a>
                                                                        </li>
                                                                        <?php } ?>
                                                                        <?php  } ?>    
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="nav_megamenu visible-lg visible-md" id="nav_megamenu">
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
                                                                        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                                        <?php $i=1; foreach($children as $child) {  ?>
                                                                       <?php if ($child['children']) { ?>   
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
                                                                      <?php   } else {  ?>
                                                                        <div class="column">
                                                                            <div class="itemMenu level2">

                                                                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                                                <?php  foreach ($children as $child) {  ?>

                                                                                <a href="<?php echo $child['href']; ?>" class="itemMenuName level2"><span><?php echo $child['name']; ?></span></a>

                                                                                <?php } } ?>
                                                                            </div>
                                                                        </div>
                                                                        <?php  }  ?> 
                                                                        
                                                                        <?php  $i=$i+1;  } } if( $fistc_id==1){ 

                                                                        if($wg24options['wg24themeoptionpanel_topm_custom_bonoff']=='enable'){
                                                                        echo  html_entity_decode($wg24options['wg24themeoptionpanel_topm_custom_bcontent'][$wg24options['config_language_id']]); 
                                                                        }
                                                                        ?>
                                                                        <?php }  ?>
                                                                        
                                                                        
                                                                       
                                                                    </div>  
                                                                </div>
                                                            </div>
                                                            <?php } else { ?>
                                                            <div class="megamenu">
                                                                <div class="level-top"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
                                                            </div>                
                                                            <?php } ?>
                                                            <?php  $fistc_id=$fistc_id+1; } ?>   

                                                            <?php  if($wg24options['wg24themeoptionpanel_topm_customcontentonoff']=='enable'){      
                                                            echo  html_entity_decode($wg24options['wg24themeoptionpanel_topm_customcontent'][$wg24options['config_language_id']]); 
                                                            }  ?>     
                                                        </div>
                                                    </nav>
                                                    <?php } ?>             

                                                </div>
                                            </div>
                                            <?php } ?>   
                                            <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1") {     ?>    
                                        </div>
                                        <?php } ?> 
                                        <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>                            
                                        <div class="container">
                                            <div class="row">
                                                <div class="page-header-content">
                                                    <div id="logo-header" class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
                                                        <?php if ($logo) { ?>
                                                        <a href="<?php echo $home; ?>" class="logo"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"  /></a>
                                                        <?php } else { ?>
                                                        <h1 class="logo"><a  class="logo" href="<?php echo $home; ?>"><strong><?php echo $name; ?></strong></a></h1>
                                                        <?php } ?>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
                                                        <?php echo $search; ?>  
                                                    </div>
                                                    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                                                        <?php echo $cart; ?>  
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <?php } ?>  
                                    </div>
                            </header>
                            <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>  
                            <nav>
                                <div class="nav-mobilemenu-container visible-xs">
                                    <div class="navbar">
                                        <div class="navbar-inner navbar-inactive" id="navbar-inner">
                                            <div class="menu-mobile">
                                                <a class="btn btn-navbar navbar-toggle" data-original-title="<?php echo  $wg24options['wg24themeoptionpanel_catmenutext'][$wg24options['config_language_id']];?>" rel="tooltip">
                                                    <span class="icon-bar"></span>
                                                    <span class="icon-bar"></span>
                                                    <span class="icon-bar"></span>
                                                </a>
                                                <span class="brand navbar-brand"><?php echo  $wg24options['wg24themeoptionpanel_catmenutext'][$wg24options['config_language_id']];?></span>
                                            </div>
                                            <ul class="mobilemenu nav-collapse collapse" id="nav-mobilemenu">
                                                <?php  foreach ($categories as $category) { ?>   
                                                <?php if ($category['children']) { ?>  
                                                <li class="level0 nav-1 level-top parent">
                                                    <a class="level-top" href="<?php echo $category['href']; ?>">  <span><?php echo $category['name']; ?></span></a>
                                                    <ul class="level0">
                                                        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                        <?php  foreach($children as $child) {  ?> 
                                                        <?php if ($child['children']) { ?> 
                                                        <li class="level1 nav-1-1 first parent">
                                                            <a href="<?php echo $child['href']; ?>" class="level-top"><span><?php echo $child['name']; ?></span></a>
                                                            <ul class="level1">
                                                                <?php  foreach ($child['children'] as $child2) { ?>  
                                                                <li class="level2 nav-1-1-1 ">
                                                                    <a href="<?php echo $child2['href']; ?>"><span><?php echo $child2['name']; ?></span></a>
                                                                </li>
                                                                <?php   }  ?>  
                                                            </ul>
                                                            <span class="head"><a href="javascript:void(0)"></a></span>
                                                        </li>
                                                        <?php } else{ ?>
                                                        <li class="level1 nav-1-1 first">
                                                            <a href="<?php echo $child['href']; ?>" class="level-top"><span><?php echo $child['name']; ?></span></a>
                                                        </li>
                                                        <?php } ?>
                                                        <?php    } }    ?>
                                                    </ul>
                                                    <span class="head"><a href="javascript:void(0)"></a></span>
                                                </li>
                                                <?php } else { ?>
                                                <li class="level0 nav-1 level-top">
                                                    <a class="level-top" href="<?php echo $category['href']; ?>">  <span><?php echo $category['name']; ?></span></a>
                                                </li>
                                                <?php } ?>
                                                <?php  } ?>    
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="nav_megamenu visible-lg visible-md" id="nav_megamenu">
                                    <div class="megamenu act">
                                        <div class="level-top"><a href="<?php echo $home; ?>"><span><?php echo  $wg24options['wg24themeoptionpanel_homemenutext'][$wg24options['config_language_id']];?></span></a></div>
                                    </div>   
                                    <div class="megamenu nav_product nav_newproduct">
                                        <div class="level-top">
                                            <a href="#">
                                                <span><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_toprateptitle'][$wg24options['config_language_id']]);?></span>
                                                <i class="fa fa-angle-down"></i>
                                            </a>
                                        </div>
                                        <div class="dropdown">
                                            <div class="newproduct">
                                                <ul class="products-grid row">
                                                    <?php  if($wg24options['productstop']!='test'){  $k=1; foreach ($wg24options['productstop'] as $product) { 
                                                    if($product['rating']==5 &&  $k<7){ 
                                                    ?>  
                                                    <li class="item col-md-4 col-sm-6 col-sms-6 col-smb-12  first">
                                                        <div class="item-inner">
                                                            <?php if ($product['thumb']) { ?>
                                                            <a class="product-image" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                                                <img  src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
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
                                                            </div>
                                                        </div> 
                                                    </li>
                                                    <?php $k++;  }  }  } ?>  
                                                </ul>
                                            </div> 
                                        </div>
                                    </div>
                                    <div class="megamenu nav_product nav_bestproduct">
                                        <div class="level-top">
                                            <a href="#">
                                                <span><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_besttitle'][$wg24options['config_language_id']]);?></span>
                                                <i class="fa fa-angle-down"></i>
                                            </a>
                                        </div>
                                        <div class="dropdown">
                                            <div class="newproduct">
                                                <ul class="products-grid row">

                                                    <?php if($wg24options['bsproducts']!='test'){ $k=1; foreach ($wg24options['bsproducts'] as $product) { 
                                                    if($k<7){ 
                                                    ?>  
                                                    <li class="item col-md-4 col-sm-6 col-sms-6 col-smb-12  first">
                                                        <div class="item-inner">
                                                            <?php if ($product['thumb']) { ?>
                                                            <a class="product-image" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                                                <img  width='90' height="90" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
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
                                                            </div>
                                                        </div> 
                                                    </li>
                                                    <?php $k++;  }  }  } ?>  
                                                </ul>
                                            </div> 
                                        </div>
                                    </div>
                                    <div class="megamenu nav_product nav_bestproduct">
                                        <div class="level-top">
                                            <a href="#">
                                                <span><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_specialtext'][$wg24options['config_language_id']]);?></span>
                                                <i class="fa fa-angle-down"></i>
                                            </a>
                                        </div>
                                        <div class="dropdown">
                                            <div class="newproduct">
                                                <ul class="products-grid row">
                                                    <?php if($wg24options['speciproducts']!='test'){ $k=1;  foreach ($wg24options['speciproducts'] as $product) { 
                                                    if($k<7){ 
                                                    ?>  
                                                    <li class="item col-md-4 col-sm-6 col-sms-6 col-smb-12  first">
                                                        <div class="item-inner">
                                                            <?php if ($product['thumb']) { ?>
                                                            <a class="product-image" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image">
                                                                <img  width='90' height="90" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> 
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
                                                            </div>
                                                        </div> 
                                                    </li>
                                                    <?php $k++;  }  }  } ?>  
                                                </ul>
                                            </div> 
                                        </div>
                                    </div>
                                    <?php  if($wg24options['wg24themeoptionpanel_topm_customcontentonoff']=='enable'){      
                                    echo  html_entity_decode($wg24options['wg24themeoptionpanel_topm_customcontent'][$wg24options['config_language_id']]); 
                                    }  ?>     
                                </div>
                            </nav>
                            <?php } ?>  
                            <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>  
                            <nav>
                                <div class="container">
                                    <div class="nav-mobilemenu-container visible-xs">
                                        <div class="navbar">
                                            <div class="navbar-inner navbar-inactive" id="navbar-inner">
                                                <div class="menu-mobile">
                                                    <a class="btn btn-navbar navbar-toggle" data-original-title="<?php echo  $wg24options['wg24themeoptionpanel_catmenutext'][$wg24options['config_language_id']];?>" rel="tooltip">
                                                        <span class="icon-bar"></span>
                                                        <span class="icon-bar"></span>
                                                        <span class="icon-bar"></span>
                                                    </a>
                                                    <span class="brand navbar-brand"><?php echo  $wg24options['wg24themeoptionpanel_catmenutext'][$wg24options['config_language_id']];?></span>
                                                </div>
                                                <ul class="mobilemenu nav-collapse collapse" id="nav-mobilemenu">
                                                    <?php  foreach ($categories as $category) { ?>   
                                                    <?php if ($category['children']) { ?>  
                                                    <li class="level0 nav-1 level-top parent">
                                                        <a class="level-top" href="<?php echo $category['href']; ?>">  <span><?php echo $category['name']; ?></span></a>
                                                        <ul class="level0">
                                                            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                            <?php  foreach($children as $child) {  ?> 
                                                            <?php if ($child['children']) { ?> 
                                                            <li class="level1 nav-1-1 first parent">
                                                                <a href="<?php echo $child['href']; ?>" class="level-top"><span><?php echo $child['name']; ?></span></a>
                                                                <ul class="level1">
                                                                    <?php  foreach ($child['children'] as $child2) { ?>  
                                                                    <li class="level2 nav-1-1-1 ">
                                                                        <a href="<?php echo $child2['href']; ?>"><span><?php echo $child2['name']; ?></span></a>
                                                                    </li>
                                                                    <?php   }  ?>  
                                                                </ul>
                                                                <span class="head"><a href="javascript:void(0)"></a></span>
                                                            </li>
                                                            <?php } else{ ?>
                                                            <li class="level1 nav-1-1 first">
                                                                <a href="<?php echo $child['href']; ?>" class="level-top"><span><?php echo $child['name']; ?></span></a>
                                                            </li>
                                                            <?php } ?>

                                                            <?php    } }    ?>

                                                        </ul>
                                                        <span class="head"><a href="javascript:void(0)"></a></span>
                                                    </li>
                                                    <?php } else { ?>
                                                    <li class="level0 nav-1 level-top">
                                                        <a class="level-top" href="<?php echo $category['href']; ?>">  <span><?php echo $category['name']; ?></span></a>
                                                    </li>
                                                    <?php } ?>
                                                    <?php  } ?>    


                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="nav_megamenu visible-lg visible-md" id="nav_megamenu">

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
                                                   
                                                    <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                    <?php $i=1; foreach($children as $child) {  ?>
                                                     <?php if($child['children']){ ?>
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
                                                   <?php   } else {  ?>
                                                    <div class="column">
                                                        <div class="itemMenu level2">
                                                            <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                                            <?php  foreach ($children as $child) {  ?>
                                                            <a href="<?php echo $child['href']; ?>" class="itemMenuName level2"><span><?php echo $child['name']; ?></span></a>
                                                            <?php } } ?>
                                                        </div>
                                                    </div>
                                                    <?php  }  ?> 
                                                    
                                                    <?php  $i=$i+1;  } } if( $fistc_id==1){ 

                                                    if($wg24options['wg24themeoptionpanel_topm_custom_bonoff']=='enable'){
                                                    echo  html_entity_decode($wg24options['wg24themeoptionpanel_topm_custom_bcontent'][$wg24options['config_language_id']]); 
                                                    }
                                                    ?>
                                                    <?php } ?>
                                                </div>  
                                            </div>
                                        </div>
                                        <?php } else { ?>
                                        <div class="megamenu ">
                                            <div class="level-top"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
                                        </div>                
                                        <?php } ?>
                                        <?php  $fistc_id=$fistc_id+1; } ?>   

                                        <?php  if($wg24options['wg24themeoptionpanel_topm_customcontentonoff']=='enable'){      
                                        echo  html_entity_decode($wg24options['wg24themeoptionpanel_topm_customcontent'][$wg24options['config_language_id']]); 
                                        }  ?>     
                                    </div>
                                </div>
                            </nav>
                            <?php } ?>  








