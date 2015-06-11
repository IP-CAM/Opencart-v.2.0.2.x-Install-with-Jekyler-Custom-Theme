<div class="block block-layered-nav extrapadding">
    <div class="block-title">
        <strong><span><?php echo $heading_title; ?></span></strong>
    </div>
    <div class="block-content">
        <dl><dd>
                <ol>
                    <?php foreach ($informations as $information) { ?>
                    <li>
                        <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                    </li>
                    <?php } ?>
                    <li>
                        <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
                    </li>

                    <li>
                        <a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a>
                    </li>
                </ol>
            </dd></dl>     
    </div>
</div>