
jQuery(document).ready(function(){

	jQuery("#back-top").hide();
	// fade in #back-top
	jQuery(function () {
		jQuery(window).scroll(function () {
			if (jQuery(this).scrollTop() > 100) {
				jQuery('#back-top').fadeIn();
			} else {
				jQuery('#back-top').fadeOut();
			}
		});
		// scroll body to 0px on click
		jQuery('#back-top').click(function () {
			jQuery('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});

});
  jQuery(document).ready(function($){
      
      $(".producttabs-products").fadeIn();
        $(".producttabs-products #all1,.producttabs-products #all2,.producttabs-products #all3").fadeOut();
      
        $("ul li.item0").click(function(e) {
        $(".producttabs-products #all").fadeIn();
        $(".producttabs-products #all1").fadeOut();
        $(".producttabs-products #all2").fadeOut();
        $(".producttabs-products #all3").fadeOut();
        $(this).addClass('active');
        $("ul li.item1,ul li.item2,ul li.item3").removeClass('active');
        
    
        });
        $("ul li.item1").click(function(e) {
         $(".producttabs-products #all").fadeOut();
        $(".producttabs-products #all1").fadeIn();
        $(".producttabs-products #all2").fadeOut();
        $(".producttabs-products #all3").fadeOut();
        $(this).addClass('active');
        $("ul li.item0,ul li.item2,ul li.item3").removeClass('active');
        });
           $("ul li.item2").click(function(e) {
        $(".producttabs-products #all").fadeOut();
        $(".producttabs-products #all1").fadeOut();
        $(".producttabs-products #all2").fadeIn();
        $(".producttabs-products #all3").fadeOut();
           $(this).addClass('active');
        $("ul li.item1,ul li.item0,ul li.item3").removeClass('active');
    
        });
        $("ul li.item3").click(function(e) {
         $(".producttabs-products #all").fadeOut();
        $(".producttabs-products #all1").fadeOut();
        $(".producttabs-products #all2").fadeOut();
        $(".producttabs-products #all3").fadeIn();
           $(this).addClass('active');
        $("ul li.item1,ul li.item2,ul li.item0").removeClass('active');
        });
        
        })