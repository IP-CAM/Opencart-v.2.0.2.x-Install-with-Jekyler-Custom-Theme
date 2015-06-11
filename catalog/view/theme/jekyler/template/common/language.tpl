
<div class="form-language"> 
    <?php if (count($languages) > 1) { ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
        <label class="select-language">Language:</label>
        <ul class="drop-lang">
            <li class="drop-trigger">
                <?php foreach ($languages as $language) { ?>
                <?php if ($language['code'] == $code) { ?>
                <a href="<?php echo $language['code']; ?>" ><?php echo $language['name']; ?><i class="fa fa-angle-down"></i></a>
                <?php } ?>
                <?php } ?>
                <ul class="sub-lang">
                    <?php foreach ($languages as $language) { ?>
                    <li><a href="<?php echo $language['code']; ?>"> <?php echo $language['name']; ?></a></li>
                    <?php } ?>
                </ul>
            </li>
        </ul>
        <input type="hidden" name="code" value="" />
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </form>
    <?php } ?>                                      
</div>




