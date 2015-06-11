<div class="form-currency">
    <?php if (count($currencies) > 1) { ?>
    
 <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
<label class="select-currency">Currency:</label>
<ul class="drop-currency">
    <li class="currency-trigger">
        <?php foreach ($currencies as $currency) { ?>
        <?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
        <a class="level-0"><?php echo $currency['title']; ?><i class="fa fa-angle-down"></i></a>
        <?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
        <a class="level-0"><?php echo $currency['title']; ?><i class="fa fa-angle-down"></i></a>
        <?php } ?>
        <?php } ?> 
        <ul class="sub-currency">
            <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li><button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"> <?php echo $currency['title']; ?></button></li>
      <?php } else { ?>
      <li><button class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"> <?php echo $currency['title']; ?></button></li>
      <?php } ?>
      <?php } ?>
        </ul>
    </li>
</ul>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>   
<?php } ?>
</div>





