jQuery(document).ready(function($) {
    $('#wg24_body_fontto_system').change(function(){ 
        var bodygolefont = $("option:selected", this).val();
        var bodygolefontid = bodygolefont.split(':');
        if ($('head').find('link#bodygolefontl').length < 1){
            $('head').append('<link id="bodygolefontl" href="" type="text/css" rel="stylesheet"/>');
        }
        $('link#bodygolefontl').attr({
            href:'http://fonts.googleapis.com/css?family=' + bodygolefontid
            }); 
        $("style#bodygolefontdemo").remove();
        $('head').append('<style id="bodygolefontdemo" type="text/css">#wg24_demo_body_to_google  h3{ font-family:' + bodygolefont + ' !important; }</style>'); 
    }); 
    $('#wg24_body_fontto_system').change(function(){ 
        var  bodysystfont = $("option:selected", this).val();
        $("style#bodysystfontdemo").remove();
        $('head').append('<style id="bodysystfontdemo"  type="text/css">#wg24_demo_body_to_system h3{ font-family:' + bodysystfont + ' !important; }</style>'); 
    });  

    /* heading font */

    $('#wg24_header_fontto_google').change(function(){ 
        var headinggolefont = $("option:selected", this).val();
        var idheadinggolefont = headinggolefont.split(':');
        if ($('head').find('link#hedinggolefontdemo').length < 1){
            $('head').append('<link id="hedinggolefontdemo" href="" type="text/css" rel="stylesheet"/>');
        }
        $('link#hedinggolefontdemo').attr({
            href:'http://fonts.googleapis.com/css?family=' + idheadinggolefont
            }); 
        $("style#hedinggolefontdemo2").remove();
        $('head').append('<style id="hedinggolefontdemo2" type="text/css">#wg24_demo_heading_to_google h3{ font-family:' + headinggolefont + ' !important; }</style>'); 
    }); 
    $('#wg24_header_fontto_system').change(function(){ 
        var headingsystfont = $("option:selected", this).val();
        $("style#headingsystfontdemo").remove();
        $('head').append('<style id="headingsystfontdemo"  type="text/css">#wg24_demo_header_to_system h3{ font-family:' + headingsystfont + ' !important; }</style>'); 
    });  
                 

}); 

                
              