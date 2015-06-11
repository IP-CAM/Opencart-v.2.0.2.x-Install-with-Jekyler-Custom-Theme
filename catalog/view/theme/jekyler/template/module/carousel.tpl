<section>
    <div class="brandlogo-contain">
        <div class="container">
            <div class="bx-title brand-title"><h2><?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_newarivaltitletext'][$wg24options['config_language_id']]);?></h2></div>
            <div class="bx-wrapper">
                <div class="bx-viewport">
                    <ul class="bxslider">
                        <?php foreach ($banners as $banner) { ?>
                        <li class="item bx-clone">	
                            <?php if ($banner['link']) { ?>
                            <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
                            <?php } else { ?>
                            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                            <?php } ?>
                        </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            //&lt;![CDATA[
            jQuery(document).ready(function($){
            $('.brandlogo-contain .bxslider').bxSlider(
                {
                    speed: 600,
                    pause: 3000,			  
                    minSlides: 1,
                    //infiniteLoop: false,
                    maxSlides: 6,
                    slideWidth: 170,
                    slideMargin: 30,
                    autoHover: true,
                    moveSlides:1,
		      
                    pager:false, 
                    controls: true,
                }
            );
            });
            //]]&gt;
        </script>
    </div>
</section>