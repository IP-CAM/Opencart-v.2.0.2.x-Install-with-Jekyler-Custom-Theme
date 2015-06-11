
<?php echo  html_entity_decode($wg24options['wg24themeoptionpanel_latestdealhotproducts'][$wg24options['config_language_id']]);?>
<?php if ($modules) { ?>
<column id="column-right" class="col-sm-3 hidden-xs">
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
</column>
<?php } ?>
