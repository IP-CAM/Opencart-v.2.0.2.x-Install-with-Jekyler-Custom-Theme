
<div class="form-search"  >
    <!-- <label for="search"></label>-->
    <div class="box-input" id="search">
        <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="input-text" />
          <?php if ($categories) { ?>   
               <select class="ddslick"  id="cat" name="cat">
                 <option value=""><?php echo  $wg24options['wg24themeoptionpanel_catmenutext'][$wg24options['config_language_id']];?></option>
                <?php foreach ($categories as $category) { ?> 
                   <option value="<?php echo $category['href']; ?>"> <?php echo $category['name']; ?></option>
                <?php foreach ($category['children'] as $child) { ?>
                 <option value="<?php echo $child['href']; ?>">-<?php echo $child['name']; ?></option>
                <?php } ?>
                <?php } ?> 
              </select>
         <?php } ?>   
     
     <button class="button" type="button" data-original-title="Search" rel="tooltip"><span><span><i class="fa fa-search"></i></span></span></button>
    </div>
   
</div>

<script type="text/javascript">
jQuery('.ddslick').ddslick({
width: 124,
});
jQuery(document).ready(function(){
jQuery(".form-search button").click(function(){
jQuery(".box-input").toggle();
});
});
</script>


