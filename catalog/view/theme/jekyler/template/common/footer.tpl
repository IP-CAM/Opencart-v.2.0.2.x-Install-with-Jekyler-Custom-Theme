<footer>
       <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>    
    <div class="container">   
     <?php } ?>  
    <div class="footer-information">
        <div class="container">
         <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>      
            <div class="row">
            <?php } ?>        
                <div class="f-col f-col1 col-sm-4 col-md-4 col-sms-6 col-smb-12">
                   <?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_contact_info_page_of'][$wg24options['config_language_id']]);?>
                </div>
                <div class="f-col f-col2 col-sm-4 col-md-4 col-sms-6 col-smb-12">
                    <div class="footer-static-title">
                        <h3><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_twittertitle'][$wg24options['config_language_id']]);?></h3>
                    </div>
                    <div class="footer-static-content">
                     <div id="twitter-feed"></div>
                       <!--<script type="text/javascript" charset="utf-8" src="catalog/view/theme/jekyler/image/twitteroauth/jquery.tweet.js"></script>
                        <script type="text/javascript">
                            jQuery(document).ready(function($) {
                            $('#twitter-feed').tweet({
                            modpath: 'catalog/view/theme/jekyler/image/twitteroauth/',
                            count:"<?php echo  $wg24options['wg24themeoptionpanel_tweets_tshow'];?>",
                            username:"<?php echo  $wg24options['wg24themeoptionpanel_twitter_id'];?>",
                            loading_text: 'loading twitter feed...'
                        });
                        $("#twitter-feed .tweet-content").bxSlider({
                        mode: 'vertical',
                        pager: false,
                        auto: true,
                        autoStart: true,
                        autoHover: false
                    });   
      
      
                });
                        </script>-->
                    </div>
                </div>
                <div class="f-col f-col3 col-sm-4 col-md-4 col-sms-6 col-smb-12">
                    <div class="footer-static-title">
                        <h3><?php echo  $wg24options['wg24themeoptionpanel_twitterflowus'][$wg24options['config_language_id']];?></h3>
                    </div>
                    <div class="footer-static-content">
                        <ul class="link-follow ">
                            
                             <?php if($wg24options['wg24themeoptionpanel_facebook_url']!="") { ?>
                     <li class="first"><a class="facebook fa fa-facebook" href=" <?php echo  $wg24options['wg24themeoptionpanel_facebook_url']; ?>"></a></li>
                    <?php } ?>
                    <?php if($wg24options['wg24themeoptionpanel_twitter_url']!="") { ?>
                     <li> <a class="twitter fa fa-twitter" href=" <?php echo  $wg24options['wg24themeoptionpanel_twitter_url']; ?>"></a></li>
                    <?php } ?>
                    <?php if($wg24options['wg24themeoptionpanel_google_url']!="") { ?>
                     <li> <a class="google fa fa-google-plus" href=" <?php echo  $wg24options['wg24themeoptionpanel_google_url']; ?>"></a></li>
                    <?php } ?>
                    <?php if($wg24options['wg24themeoptionpanel_rss_url']!="") { ?>
                     <li> <a class="rss fa fa-rss" href=" <?php echo  $wg24options['wg24themeoptionpanel_rss_url']; ?>"></a></li>
                    <?php } ?>
                    <?php if($wg24options['wg24themeoptionpanel_pinterest_url']!="") { ?>
                     <li> <a class="skype fa fa-skype" href=" <?php echo $wg24options['wg24themeoptionpanel_pinterest_url']; ?>"></a></li>
                    <?php } ?>
                    <?php if($wg24options['wg24themeoptionpanel_linking_url']!="") { ?>
                    <li class="last"> <a class="linkedin fa fa-linkedin" href=" <?php echo $wg24options['wg24themeoptionpanel_linking_url']; ?>"></a></li>
                    <?php } ?>

                        </ul>
                    </div>
                </div>   
           <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>   
            </div>
            <?php } ?>    
        </div>
    </div>
    <div class="footer-links">
        <div class="container">
            <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>  
            <div class="row">
                <?php } ?>      
                <div class="logo-bottom col-xs-12 col-sm-4">
                  <?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_headerlogo'][$wg24options['config_language_id']]);?>
                </div>
                <div class="links-footer col-xs-12 col-sm-8">
                    <div class="f-col f-col1 col-sm-3 col-md-3 col-sms-6 col-smb-12 box-links">
                        <div class="footer-static-title">
                            <h3><?php echo $text_service; ?></h3>
                        </div>
                        <div class="footer-static-content">
                            <ul>
                                <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                                <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                                <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="f-col f-col2 col-sm-3 col-md-3 col-sms-6 col-smb-12 box-links">
                        <?php if ($informations) { ?>
                        <div class="footer-static-title">
                            <h3><?php echo $text_information; ?></h3>
                        </div>
                        <div class="footer-static-content">
                            <ul>
                                 <?php foreach ($informations as $information) { ?>
                        <li class="item"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                        <?php } ?>
                            </ul>
                        </div>
                            <?php } ?>
                    </div>
                    <div class="f-col f-col3 col-sm-3 col-md-3 col-sms-6 col-smb-12 box-links">
                        <div class="footer-static-title">
                            <h3><?php echo $text_extra; ?></h3>
                        </div>
                        <div class="footer-static-content">
                            <ul>
                                <li class="first"><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                        <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                        <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                        <li class="last"><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="f-col f-col5 col-sm-3 col-md-3 col-sms-6 col-smb-12 box-links">
                        <div class="footer-static-title">
                            <h3><?php echo $text_account; ?></h3>
                        </div>
                        <div class="footer-static-content">
                            <ul>
                                <li class="first"><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                        <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                        </ul>
                        </div>
                    </div>
                </div>  
            <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>      
            </div>
               <?php } ?>   
        </div>
    </div>
     <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>     
        <div class="container">
             <div class="container-inner">
      <?php } ?>  
    <div class="footer-container">
     <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1") {     ?>     
        <div class="container">
      <?php } ?>       
            <div class="footer">
                 <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>  
                <div class="row">
                    <?php } ?>      
                    <div class="col-xs-12 col-sm-6">
                        <?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_copyr_text'][$wg24options['config_language_id']]);?>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <ul class="social">
                            
                           <?php if($wg24options['wg24themeoptionpanel_paypal_url']!="") { ?>
                       <li class="first"><a href="<?php echo  $wg24options['wg24themeoptionpanel_paypal_url']; ?>" onclick="target='_blank'"><img src="catalog/view/theme/jekyler/image/social5.png" alt="PayPal"  /></a>    </li>
                    <?php } ?>
                     <?php if($wg24options['wg24themeoptionpanel_visa_url']!="") { ?>
                       <li><a href="<?php echo  $wg24options['wg24themeoptionpanel_visa_url']; ?>" onclick="target='_blank'"><img src="catalog/view/theme/jekyler/image/social1.png" alt="visa"  /></a>    </li>
                    <?php } ?> 
                     <?php if($wg24options['wg24themeoptionpanel_mastercard_url']!="") { ?>
                       <li><a href="<?php echo $wg24options['wg24themeoptionpanel_mastercard_url']; ?>" onclick="target='_blank'"><img src="catalog/view/theme/jekyler/image/social2.png" alt="mastercard"  /></a>    </li>
                    <?php } ?>
                     <?php if($wg24options['wg24themeoptionpanel_maestro_url']!="") { ?>
                     <li> <a href="<?php echo  $wg24options['wg24themeoptionpanel_maestro_url']; ?>" onclick="target='_blank'"><img src="catalog/view/theme/jekyler/image/social4.png" alt="Maestro"  /></a>    </li>
                    <?php } ?> 
                     <?php if($wg24options['wg24themeoptionpanel_americanexpress_url']!="") { ?>
                      <li><a href="<?php echo  $wg24options['wg24themeoptionpanel_americanexpress_url']; ?>" onclick="target='_blank'"><img src="catalog/view/theme/jekyler/image/social3.png" alt="americanexpress"  /></a>    </li>
                    <?php } ?>  
                        </ul>                    
                    </div>
                 <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>     
                </div>
                <?php } ?>   
            </div>
      <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>  
           </div>
         <?php } ?> 
        </div>
     
    </div>
    <div class="hidden-xs" id="back-top" style="display: block;"><i class="fa fa-chevron-up"></i></div>
     <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {     ?>    
    </div>
<?php } ?> 
</footer>                

 <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {     ?>  
</div>
</div>    
<?php } ?>   
</div>
</div>
</body>
</html>