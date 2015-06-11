 <div class="block block-layered-nav">
     <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage1" || $wg24options['wg24themeoptionpanel_homepage12']=="homepage3") {  ?>
        <div class="block-title">
            <strong><span><?php echo  $wg24options['wg24themeoptionpanel_catmenutext'][$wg24options['config_language_id']];?></span></strong>
        </div>
     <?php } ?>
        <div class="block-content">
            <div class="nav-vcontainer hidden-xs hidden-sm">
              <?php if($wg24options['wg24themeoptionpanel_homepage12']=="homepage2") {  ?>  
                <div class="vmegamenu-title"><h2><i class="fa fa-bars"></i><?php echo  $wg24options['wg24themeoptionpanel_catmenutext'][$wg24options['config_language_id']];?></h2></div>
            <?php } ?>
            
            
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
        </div>
    </div>                  
<?php if ($modules) { ?>
<column id="column-left">
    <?php foreach ($modules as $module) { ?>
    <?php echo $module; ?>
    <?php } ?>
</column>
<?php } ?>
<?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_latestdealhotproducts'][$wg24options['config_language_id']]);?>