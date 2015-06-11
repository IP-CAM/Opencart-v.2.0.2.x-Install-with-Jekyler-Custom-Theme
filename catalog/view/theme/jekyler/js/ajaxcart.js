
// Effect function

function slideEffectAjax() {
      jQuery('.topcart-mini-container').mouseenter(function() {
            jQuery(this).find(".top-cart-content").stop(true, true).slideDown();
        });
        //hide submenus on exit
        jQuery('.topcart-mini-container').mouseleave(function() {
            jQuery(this).find(".top-cart-content").stop(true, true).slideUp();
        });
}


