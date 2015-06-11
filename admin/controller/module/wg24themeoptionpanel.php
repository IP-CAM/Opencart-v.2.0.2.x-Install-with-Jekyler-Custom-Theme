<?php

class ControllerModuleWg24ThemeOptionPanel extends Controller {

    private $error = array();

    public function index() {
        
               $language=$this->load->language('module/wg24themeoptionpanel');
        	$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();
		$this->document->setTitle($this->language->get('heading_title'));
		$this->load->model('setting/setting');
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('wg24themeoptionpanel', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

	 $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['help_product'] = $this->language->get('help_product');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_module_add'] = $this->language->get('button_module_add');
		$data['button_remove'] = $this->language->get('button_remove');
                $data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
                $data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
                
// Heading
$data['resent_text']=$this->language->get('resent_text');
$data['upload_text']= $this->language->get('upload_text');
$data['button_save_setting']= $this->language->get('button_save_setting');
$data['text_module']= $this->language->get('text_module');
//  main tab  //
$data['wg24themeoptionpanel_tab_general']= $this->language->get('wg24themeoptionpanel_tab_general');
$data['wg24themeoptionpanel_tab_color']= $this->language->get('wg24themeoptionpanel_tab_color');
$data['wg24themeoptionpanel_tab_background']= $this->language->get('wg24themeoptionpanel_tab_background');
$data['wg24themeoptionpanel_tab_slider']= $this->language->get('wg24themeoptionpanel_tab_slider');
$data['wg24themeoptionpanel_tab_font']= $this->language->get('wg24themeoptionpanel_tab_font');
$data['wg24themeoptionpanel_tab_menu']= $this->language->get('wg24themeoptionpanel_tab_menu');
$data['wg24themeoptionpanel_tab_footer']= $this->language->get('wg24themeoptionpanel_tab_footer');
$data['wg24themeoptionpanel_tab_custom']= $this->language->get('wg24themeoptionpanel_tab_custom');
//general tab //
$data['wg24themeoptionpanel_layout']= $this->language->get('wg24themeoptionpanel_layout');
$data['wg24themeoptionpanel_responsive']= $this->language->get('wg24themeoptionpanel_responsive');
$data['wg24themeoptionpanel_facebook']= $this->language->get('wg24themeoptionpanel_facebook');
$data['wg24themeoptionpanel_qucik']= $this->language->get('wg24themeoptionpanel_qucik');
$data['wg24themeoptionpanel_rating']= $this->language->get('wg24themeoptionpanel_rating');
$data['wg24themeoptionpanel_hover']= $this->language->get('wg24themeoptionpanel_hover');
$data['wg24themeoptionpanel_show_scroll']= $this->language->get('wg24themeoptionpanel_show_scroll');
$data['wg24themeoptionpanel_sale'] = $this->language->get('wg24themeoptionpanel_sale');
$data['wg24themeoptionpanel_h_b_f_cb'] = $this->language->get('wg24themeoptionpanel_h_b_f_cb');
$data['wg24themeoptionpanel_h_b_f_cbc']= $this->language->get('wg24themeoptionpanel_h_b_f_cbc');
$data['wg24themeoptionpanel_category']= $this->language->get('wg24themeoptionpanel_category');
$data['wg24themeoptionpanel_sidebar']= $this->language->get('wg24themeoptionpanel_sidebar');
$data['wg24themeoptionpanel_c_psub']= $this->language->get('wg24themeoptionpanel_c_psub');
$data['wg24themeoptionpanel_c_pvm']= $this->language->get('wg24themeoptionpanel_c_pvm');
$data['wg24themeoptionpanel_p_page']= $this->language->get('wg24themeoptionpanel_p_page');
$data['wg24themeoptionpanel_side']= $this->language->get('wg24themeoptionpanel_side');
$data['wg24themeoptionpanel_sideb_cc']= $this->language->get('wg24themeoptionpanel_sideb_cc');
$data['wg24themeoptionpanel_custom_tab']= $this->language->get('wg24themeoptionpanel_custom_tab');
$data['wg24themeoptionpanel_tabt']= $this->language->get('wg24themeoptionpanel_tabt');
$data['wg24themeoptionpanel_tabc']= $this->language->get('wg24themeoptionpanel_tabc');

//tab color//
$data['wg24themeoptionpanel_load_color_skin']= $this->language->get('wg24themeoptionpanel_load_color_skin');
$data['wg24themeoptionpanel_body_background']= $this->language->get('wg24themeoptionpanel_body_background');
$data['wg24themeoptionpanel_body_tbc']= $this->language->get('wg24themeoptionpanel_body_tbc');
$data['wg24themeoptionpanel_body_fc']= $this->language->get('wg24themeoptionpanel_body_fc');
$data['wg24themeoptionpanel_link_color']= $this->language->get('wg24themeoptionpanel_link_color');
$data['wg24themeoptionpanel_link_hcolor'] = $this->language->get('wg24themeoptionpanel_link_hcolor');
$data['wg24themeoptionpanel_headers_color']= $this->language->get('wg24themeoptionpanel_headers_color');
$data['wg24themeoptionpanel_header_borderc']= $this->language->get('wg24themeoptionpanel_header_borderc');
$data['wg24themeoptionpanel_header_bclr']= $this->language->get('wg24themeoptionpanel_header_bclr');
$data['wg24themeoptionpanel_fld_bg']= $this->language->get('wg24themeoptionpanel_fld_bg');
$data['wg24themeoptionpanel_fld_tx']= $this->language->get('wg24themeoptionpanel_fld_tx');
$data['wg24themeoptionpanel_fld_bdr']= $this->language->get('wg24themeoptionpanel_fld_bdr');
$data['wg24themeoptionpanel_extrabdr_clr']= $this->language->get('wg24themeoptionpanel_extrabdr_clr');
$data['wg24themeoptionpanel_l_category_dbb']= $this->language->get('wg24themeoptionpanel_l_category_dbb');
$data['wg24themeoptionpanel_l_category_des_bbc']= $this->language->get('wg24themeoptionpanel_l_category_des_bbc');
$data['wg24themeoptionpanel_l_category_descolor'] = $this->language->get('wg24themeoptionpanel_l_category_descolor');
$data['wg24themeoptionpanel_l_header']= $this->language->get('wg24themeoptionpanel_l_header');
$data['wg24themeoptionpanel_l_header_bgcolor']= $this->language->get('wg24themeoptionpanel_l_header_bgcolor');
$data['wg24themeoptionpanel_l_header_menulcolor']= $this->language->get('wg24themeoptionpanel_l_header_menulcolor');
$data['wg24themeoptionpanel_l_header_menulhcolor']= $this->language->get('wg24themeoptionpanel_l_header_menulhcolor');
$data['wg24themeoptionpanel_l_header_menulrbcolor']= 'Header Menu link right border colors';
$data['wg24themeoptionpanel_l_header_menuclcolor']= $this->language->get('wg24themeoptionpanel_l_header_menuclcolor');
$data['wg24themeoptionpanel_l_header_menuclhcolor']= $this->language->get('wg24themeoptionpanel_l_header_menuclhcolor');
$data['wg24themeoptionpanel_l_header_menuctcolor']= $this->language->get('wg24themeoptionpanel_l_header_menuctcolor');
$data['wg24themeoptionpanel_l_serchbbcolor']= $this->language->get('wg24themeoptionpanel_l_serchbbcolor');
$data['wg24themeoptionpanel_l_searchbbg_color']= $this->language->get('wg24themeoptionpanel_l_searchbbg_color');
$data['wg24themeoptionpanel_l_main_menu']= $this->language->get('wg24themeoptionpanel_l_main_menu');
$data['wg24themeoptionpanel_l_mainm']= $this->language->get('wg24themeoptionpanel_l_mainm');
$data['wg24themeoptionpanel_l_mainm_bscolor']= $this->language->get('wg24themeoptionpanel_l_mainm_bscolor');
$data['wg24themeoptionpanel_l_mainm_btcolor']= $this->language->get('wg24themeoptionpanel_l_mainm_btcolor');
$data['wg24themeoptionpanel_l_mainm_bbcolor']= $this->language->get('wg24themeoptionpanel_l_mainm_bbcolor');
$data['wg24themeoptionpanel_l_mainm_brcolor']= $this->language->get('wg24themeoptionpanel_l_mainm_brcolor');
$data['wg24themeoptionpanel_l_mainm_brcolor']= $this->language->get('wg24themeoptionpanel_l_mainm_brcolor');
$data['wg24themeoptionpanel_l_menum_lcolor'] = $this->language->get('wg24themeoptionpanel_l_menum_lcolor');
$data['wg24themeoptionpanel_l_mainm_lhcolor']= $this->language->get('wg24themeoptionpanel_l_mainm_lhcolor');
$data['wg24themeoptionpanel_l_menu_hbgcolor']= $this->language->get('wg24themeoptionpanel_l_menu_hbgcolor');
$data['wg24themeoptionpanel_l_menua_bgcolor']= $this->language->get('wg24themeoptionpanel_l_menua_bgcolor');
$data['wg24themeoptionpanel_l_mainm_lacolor']= $this->language->get('button_remove');
$data['wg24themeoptionpanel_l_mainm_2lbgcolor']= $this->language->get('wg24themeoptionpanel_l_mainm_2lbgcolor');
$data['wg24themeoptionpanel_l_mainm_2lbcolor']= $this->language->get('wg24themeoptionpanel_l_mainm_2lbcolor');
$data['wg24themeoptionpanel_l_mainm_3lbgcolor']= $this->language->get('wg24themeoptionpanel_l_mainm_3lbgcolor');
$data['wg24themeoptionpanel_l_mainm_3lbcolor']= $this->language->get('wg24themeoptionpanel_l_mainm_3lbcolor');
$data['wg24themeoptionpanel_l_mainm_scolor']= $this->language->get('wg24themeoptionpanel_l_mainm_scolor');
$data['wg24themeoptionpanel_l_mainm_shcolor']= $this->language->get('wg24themeoptionpanel_l_mainm_shcolor');
$data['wg24themeoptionpanel_l_home_slider']= $this->language->get('wg24themeoptionpanel_l_home_slider');
$data['wg24themeoptionpanel_l_home_sclr']= $this->language->get('wg24themeoptionpanel_l_home_sclr');
$data['wg24themeoptionpanel_l_home_sdec']= $this->language->get('wg24themeoptionpanel_l_home_sdec');
$data['wg24themeoptionpanel_l_home_btn_clr']= $this->language->get('wg24themeoptionpanel_l_home_btn_clr');
$data['wg24themeoptionpanel_l_home_btn_hbr_bgclr']= $this->language->get('wg24themeoptionpanel_l_home_btn_hbr_bgclr');
$data['wg24themeoptionpanel_l_home_btn_hbr_txclr']= $this->language->get('wg24themeoptionpanel_l_home_btn_hbr_txclr');
$data['wg24themeoptionpanel_l_product']= $this->language->get('wg24themeoptionpanel_l_product');
$data['wg24themeoptionpanel_l_product_bx_bgclr']= $this->language->get('wg24themeoptionpanel_l_product_bx_bgclr');
$data['wg24themeoptionpanel_l_product_bx_bdrclr']= $this->language->get('wg24themeoptionpanel_l_product_bx_bdrclr');
$data['wg24themeoptionpanel_l_product_bx_bgclr2']= $this->language->get('wg24themeoptionpanel_l_product_bx_bgclr2');
$data['wg24themeoptionpanel_l_product_bx_hvr_bgclr']= $this->language->get('wg24themeoptionpanel_l_product_bx_hvr_bgclr');
$data['wg24themeoptionpanel_l_product_bx_nibgc']= $this->language->get('wg24themeoptionpanel_l_product_bx_nibgc');
$data['wg24themeoptionpanel_l_product_box_sicon_bgcolor']= $this->language->get('wg24themeoptionpanel_l_product_box_sicon_bgcolor');
$data['wg24themeoptionpanel_l_product_box_sale_nicontcolor?']= $this->language->get('wg24themeoptionpanel_l_product_box_sale_nicontcolor?');
//tab slider//
$data['wg24themeoptionpanel_add_slider'] = $this->language->get('wg24themeoptionpanel_add_slider');

//tab menu//
$data['wg24themeoptionpanel_company_hdlink']= $this->language->get('wg24themeoptionpanel_company_hdlink');
$data['wg24themeoptionpanel_show_custom_htmlm']= $this->language->get('wg24themeoptionpanel_show_custom_htmlm');
$data['wg24themeoptionpanel_custom_bmenu']= $this->language->get('wg24themeoptionpanel_custom_bmenu');
//tab custom code//
$data['wg24themeoptionpanel_add_tcode']= $this->language->get('wg24themeoptionpanel_add_tcode');
$data['wg24themeoptionpanel_add_custom_css']= $this->language->get('wg24themeoptionpanel_add_custom_css');
$data['wg24themeoptionpanel_add_custom_jss']= $this->language->get('wg24themeoptionpanel_add_custom_jss');
//tab footer//
$data['wg24themeoptionpanel_l_facebook_lbox']= $this->language->get('wg24themeoptionpanel_l_facebook_lbox');
$data['wg24themeoptionpanel_l_facebook_purl']= $this->language->get('wg24themeoptionpanel_l_facebook_purl');
$data['wg24themeoptionpanel_l_twitter_fbox']= $this->language->get('wg24themeoptionpanel_l_twitter_fbox');
$data['wg24themeoptionpanel_l_twitter_id']= $this->language->get('wg24themeoptionpanel_l_twitter_id');
$data['wg24themeoptionpanel_l_tweets_tshow']= $this->language->get('wg24themeoptionpanel_l_tweets_tshow');
$data['wg24themeoptionpanel_l_consumer_key']= $this->language->get('wg24themeoptionpanel_l_consumer_key');
$data['wg24themeoptionpanel_l_consumer_sec'] = $this->language->get('wg24themeoptionpanel_l_consumer_sec');
$data['wg24themeoptionpanel_l_access_token']= $this->language->get('wg24themeoptionpanel_l_access_token');
$data['wg24themeoptionpanel_l_access_token_sec']= $this->language->get('wg24themeoptionpanel_l_access_token_sec');
$data['wg24themeoptionpanel_l_footer_logo']= $this->language->get('wg24themeoptionpanel_l_footer_logo');
$data['wg24themeoptionpanel_l_logo_image'] = $this->language->get('wg24themeoptionpanel_l_logo_image');
$data['wg24themeoptionpanel_l_footer_coninfo']= $this->language->get('wg24themeoptionpanel_l_footer_coninfo');
$data['wg24themeoptionpanel_l_contact_info_page_of']= $this->language->get('wg24themeoptionpanel_l_contact_info_page_of');
$data['wg24themeoptionpanel_l_social_ico']= $this->language->get('wg24themeoptionpanel_l_social_ico');
$data['wg24themeoptionpanel_l_facebook_url']= $this->language->get('wg24themeoptionpanel_l_facebook_url');
$data['wg24themeoptionpanel_l_twitter_url']= $this->language->get('wg24themeoptionpanel_l_twitter_url');
$data['wg24themeoptionpanel_l_youtube_url']= $this->language->get('wg24themeoptionpanel_l_youtube_url');
$data['wg24themeoptionpanel_l_skype_url'] = $this->language->get('wg24themeoptionpanel_l_skype_url');
$data['wg24themeoptionpanel_l_google_url'] = $this->language->get('wg24themeoptionpanel_l_google_url');
$data['wg24themeoptionpanel_l_pinterest_url']= $this->language->get('wg24themeoptionpanel_l_pinterest_url');
$data['wg24themeoptionpanel_l_rss_url']= $this->language->get('wg24themeoptionpanel_l_rss_url');
$data['wg24themeoptionpanel_l_powered_by'] = $this->language->get('wg24themeoptionpanel_l_powered_by');
$data['wg24themeoptionpanel_l_copyr_text']= $this->language->get('wg24themeoptionpanel_l_copyr_text');
$data['wg24themeoptionpanel_l_payment_ilinks']= $this->language->get('wg24themeoptionpanel_l_payment_ilinks');    
$data['wg24themeoptionpanel_l_paypal_url']=   $this->language->get('wg24themeoptionpanel_l_paypal_url');  
$data['wg24themeoptionpanel_l_visa_ele_url'] = $this->language->get('wg24themeoptionpanel_l_visa_ele_url');   
$data['wg24themeoptionpanel_l_discover_url']=$this->language->get('wg24themeoptionpanel_l_discover_url');   
$data['wg24themeoptionpanel_l_visa_url']  = $this->language->get('wg24themeoptionpanel_l_visa_url');   
$data['wg24themeoptionpanel_l_mastercard_url']=  $this->language->get('wg24themeoptionpanel_l_mastercard_url'); 
    
                
        $save_value = array(
            'wg24themeoptionpanel_rtllanguae',
             'wg24themeoptionpanel_l_linkc2',
            'wg24themeoptionpanel_l_hcolor2',
            'wg24themeoptionpanel_containerinnerbg2',
            'wg24themeoptionpanel_header_tmbgcolor2',
           'wg24themeoptionpanel_header_menulcolor2',
           'wg24themeoptionpanel_header_menulhcolor2',
            'wg24themeoptionpanel_menum_bgcolor',
            'wg24themeoptionpanel_menum_lcolor2',
            'wg24themeoptionpanel_mainm_lhcolor2',
            'wg24themeoptionpanel_mainm_2lbgcolor2',
            'wg24themeoptionpanel_mainm_2lbcolor2',
            'wg24themeoptionpanel_mainm_scolor2',
            'wg24themeoptionpanel_mainm_shcolor2',
            'wg24themeoptionpanel_btn_1bg_col2',
            'wg24themeoptionpanel_btn_hbg_col2',
            'wg24themeoptionpanel_product_box_sicon_bgcolor2',
            'wg24themeoptionpanel_btn_hbg2_col2',
            'wg24themeoptionpanel_btn_textcolor_col2',
            'wg24themeoptionpanel_fotlin_h_col2',
            'wg24themeoptionpanel_header_tmbgcolor3',  
'wg24themeoptionpanel_header_menulcolor3',
'wg24themeoptionpanel_header_menulhcolor3',  
'wg24themeoptionpanel_heade_tmsearchcartborder3',
            'wg24themeoptionpanel_menum_bgcolor3',  
'wg24themeoptionpanel_menum_lcolor23',
'wg24themeoptionpanel_mainm_lhcolor23', 
            'wg24themeoptionpanel_btn_1bg_col23',
           'wg24themeoptionpanel_header_hotlinenumber',
            'wg24themeoptionpanel_header2type',
           'wg24themeoptionpanel_header_hot_linenumberboxe',
           'wg24themeoptionpanel_homebigslideronoff1',
           'wg24themeoptionpanel_homebigslider1',
            'wg24themeoptionpanel_product_light_zomme',
            'wg24themeoptionpanel_productsidebarcustomban',
           'wg24themeoptionpanel_homebigsliderbanneronoff1',
           'wg24themeoptionpanel_homebigsliderbottombanner1',
             'wg24themeoptionpanel_homebigsliderbanneronoff4',
           'wg24themeoptionpanel_homebigsliderbottombanner4',
            'wg24themeoptionpanel_homemessagebox',
            'wg24themeoptionpanel_latestdealhotproducts',
            'wg24themeoptionpanel_latestdealhotproductsonoff',
            'wg24themeoptionpanel_homePromotionsslideronoff',
            'wg24themeoptionpanel_homePromotionsslider',
            'wg24themeoptionpanel_homeReviewbanneronoff',
            'wg24themeoptionpanel_homeReviewbanner',
           'wg24themeoptionpanel_homebigbanneronoff1',
           'wg24themeoptionpanel_homebigbanner2',
              'wg24themeoptionpanel_homebigbanneronoff3',
           'wg24themeoptionpanel_homebigbanner3',
              'wg24themeoptionpanel_homebigbanneronoff4',
           'wg24themeoptionpanel_homebigbanner4',
           'wg24themeoptionpanel_homebottomblogonoff1',
           'wg24themeoptionpanel_homefromourblog',
            'wg24themeoptionpanel_homebottomblogonoff2',
           'wg24themeoptionpanel_homefromourblog2',
             'wg24themeoptionpanel_homebottomblogonoff4',
           'wg24themeoptionpanel_homefromourblog4',
            'wg24themeoptionpanel_bigsofferbanneronoff5',
            'wg24themeoptionpanel_homebigbanner5',
            'wg24themeoptionpanel_home5messageboxonoff',
            'wg24themeoptionpanel_home5messagebox',
            'wg24themeoptionpanel_home5undeproductbanneronoff',
            'wg24themeoptionpanel_home5undeproductbanner',
            'wg24themeoptionpanel_home5whatcustomeronoff',
            'wg24themeoptionpanel_home5whatcustomer',
            'wg24themeoptionpanel_home6lbbbanneronoff',
            'wg24themeoptionpanel_home6lbbbanner',
            'wg24themeoptionpanel_home6bsbbanneronoff',
            'wg24themeoptionpanel_home6bsbbanner',
            'wg24themeoptionpanel_home7lpbbanneronoff',
            'wg24themeoptionpanel_home7lpbbanner',
           'wg24themeoptionpanel_bigsliderbottom_shippin',
           'wg24themeoptionpanel_homemiddlesessionsaletext',
            'wg24themeoptionpanel_homemiddleshopinfobanners',
           'wg24themeoptionpanel_homepage12',
             'wg24themeoptionpanel_topm_custom_bonoff',
            'wg24themeoptionpanel_topm_custom_bcontent',
            'wg24themeoptionpanel_topm_customcontentonoff',
            'wg24themeoptionpanel_topm_customcontent',
           'wg24themeoptionpanel_home_promo_onoff',
           'wg24themeoptionpanel_home_promo_content',
            'wg24themeoptionpanel_boxfullwidht',
            'wg24themeoptionpanel_faceb',
           'wg24themeoptionpanel_faceleft_right',
           'wg24themeoptionpanel_scrol_to_top',
           'wg24themeoptionpanel_l_sale_icon_style',
            'wg24themeoptionpanel_l_c_psub',
           'wg24themeoptionpanel_cate_list_grid',
           'wg24themeoptionpanel_p_pag_sidebar',
           'wg24themeoptionpanel_l_custom_tab',
           'wg24themeoptionpanel_l_tab_title',
           'wg24themeoptionpanel_header_fullbgcolor',
           'wg24themeoptionpanel_headerlogoonoff',
            'wg24themeoptionpanel_headerlogo',
            'wg24themeoptionpanel_header_custom_menu',
           'wg24themeoptionpanel_header_topmenubordercolor',
           'wg24themeoptionpanel_l_tabc',
           'wg24themeoptionpanel_wrappper_bgcolor',
           'wg24themeoptionpanel_l_load_color',
           'wg24themeoptionpanel_l_bodyb',
           'wg24themeoptionpanel_l_body_tbc',
           'wg24themeoptionpanel_l_body_fc',
           'wg24themeoptionpanel_l_linkc',
           'wg24themeoptionpanel_l_hcolor',
           'wg24themeoptionpanel_l_header_color',
           'wg24themeoptionpanel_topsearch_bbg_colo',
           'wg24themeoptionpanel_topsearch_bg_colo',
           'wg24themeoptionpanel_mm_bor_bottom_col',
           'wg24themeoptionpanel_product_bx_imge_bgclr',
           'wg24themeoptionpanel_header_b_color',
           'wg24themeoptionpanel_l_fld_bg',
           'wg24themeoptionpanel_l_fld_tx',
           'wg24themeoptionpanel_l_fld_bdr',
           'wg24themeoptionpanel_l_extra_bcolor',
           'wg24themeoptionpanel_category_dbb',
           'wg24themeoptionpanel_category_des_bbc',
           'wg24themeoptionpanel_category_descolor',
           'wg24themeoptionpanel_header_sb_color',
           'wg24themeoptionpanel_header_bgcolor',
            'wg24themeoptionpanel_header_tmbgcolor',
           'wg24themeoptionpanel_header_menulcolor',
           'wg24themeoptionpanel_header_menulhcolor',
            'wg24themeoptionpanel_heade_tmsearchcartborder',
           'wg24themeoptionpanel_heade_m_lin_bg_c',
           'wg24themeoptionpanel_head_m_curlan_lin_colo',
           'wg24themeoptionpanel_header_cur_lan_lhco',
           'wg24themeoptionpanel_h_curlan_lin_hbgc',
           'wg24themeoptionpanel_top_cart_bgcol',
           'wg24themeoptionpanel_topcart_te_colo',
           'wg24themeoptionpanel_mainm_brcol',
           'wg24themeoptionpanel_menum_lcolor',
           'wg24themeoptionpanel_mainm_lhcolor',
           'wg24themeoptionpanel_mainm_2lbgcolor',
           'wg24themeoptionpanel_mainm_2lbcolor',
           'wg24themeoptionpanel_mainm_3lbbgcolor',
           'wg24themeoptionpanel_mainm_scolor',
           'wg24themeoptionpanel_mainm_shcolor',
           'wg24themeoptionpanel_homsheding1_co',
           'wg24themeoptionpanel_homsheding2_co',
           'wg24themeoptionpanel_product_bx_bgclr',
           'wg24themeoptionpanel_product_bx_bdrclr',
           'wg24themeoptionpanel_product_bx_hvr_bgclr',
           'wg24themeoptionpanel_product_box_sicon_bgcolor',
           'wg24themeoptionpanel_product_box_sale_nicontcolor',
           'wg24themeoptionpanel_product_box_n_col',
           'wg24themeoptionpanel_product_box_nhov_col',
           'wg24themeoptionpanel_product_box_price_col',
           'wg24themeoptionpanel_product_box_oldprce_col',
           'wg24themeoptionpanel_btn_1bg_col',
           'wg24themeoptionpanel_btn_2bg_col',
           'wg24themeoptionpanel_btn_hbg_col',
           'wg24themeoptionpanel_btn_text_col',
           'wg24themeoptionpanel_footer_bg_col',
           'wg24themeoptionpanel_fotheadin_col',
           'wg24themeoptionpanel_fotaout_des_col',
           'wg24themeoptionpanel_fotlin_col',
           'wg24themeoptionpanel_fotlin_h_col',
           'wg24themeoptionpanel_fot_flow_iconbg_col',
           'wg24themeoptionpanel_fot_addre_iconbg_col',
           'wg24themeoptionpanel_fot_bbg_col',
           'wg24themeoptionpanel_fot_powerred_col',
           'wg24themeoptionpanel_backgroun_image_show',
           'wg24themeoptionpanel_body_cus_pattan',
          'wg24themeoptionpanel_default_parttern',
           'wg24themeoptionpanel_bg_repeat',
           'wg24themeoptionpanel_bg_attachment',
           'wg24themeoptionpanel_bg_positin',
           'wg24themeoptionpanel_body_font_source',
           'wg24themeoptionpanel_body_fontto_google',
           'wg24themeoptionpanel_body_fontto_system',
           'wg24themeoptionpanel_body_font_size',
           'wg24themeoptionpanel_header_font_source',
           'wg24themeoptionpanel_header_fontto_system',
           'wg24themeoptionpanel_header_fontto_google',
            'wg24themeoptionpanel_shownewproduct',
           'wg24themeoptionpanel_heading_transfrom',
           'wg24themeoptionpanel_produt_h_font_size',
           'wg24themeoptionpanel_page_h_font_size',
           'wg24themeoptionpanel_hom_fe_boxitem_icncol',
           'wg24themeoptionpanel_header_bg_color',
           'wg24themeoptionpanel_header_topbgcolor',
            'wg24themeoptionpanel_headermedal_bcolor',
           'wg24themeoptionpanel_btn_htext_col',
           'wg24themeoptionpanel_left_rig_h_font_size',
           'wg24themeoptionpanel_footer_h_font_size',
           'wg24themeoptionpanel_scrol_to+top_custom_htmlm',
           'wg24themeoptionpanel_l_custom_bmenu',
           'wg24themeoptionpanel_l_add_tcode',
           'wg24themeoptionpanel_l_add_custom_css',
           'wg24themeoptionpanel_l_add_custom_jss',
           'wg24themeoptionpanel_facebook_lbox',
           'wg24themeoptionpanel_facebook_purl',
           'wg24themeoptionpanel_twitter_fbox',
           'wg24themeoptionpanel_twitter_id',
           'wg24themeoptionpanel_tweets_tshow',
           'wg24themeoptionpanel_logo_image',
           'wg24themeoptionpanel_footer_coninfo',
           'wg24themeoptionpanel_contact_info_page_of',
           'wg24themeoptionpanel_facebook_url',
           'wg24themeoptionpanel_twitter_url',
           'wg24themeoptionpanel_google_url',
           'wg24themeoptionpanel_rss_url',
           'wg24themeoptionpanel_pinterest_url',
           'wg24themeoptionpanel_linking_url',
           'wg24themeoptionpanel_youtub_url',
           'wg24themeoptionpanel_copyr_text',
           'wg24themeoptionpanel_facebook_like',
           'wg24themeoptionpanel_paypal_url',
           'wg24themeoptionpanel_visaelectron_ur',
           'wg24themeoptionpanel_discover_url',
           'wg24themeoptionpanel_visa_url',
           'wg24themeoptionpanel_mastercard_url',
           'wg24themeoptionpanel_maestro_url',
           'wg24themeoptionpanel_americanexpress_url',
           'wg24themeoptionpanel_homemenutext',
           'wg24themeoptionpanel_catmenutext',
            'wg24themeoptionpanel_saletext',
            'wg24themeoptionpanel_newtext',
            'wg24themeoptionpanel_twittertitle',
            'wg24themeoptionpanel_twitterflowus',
            'wg24themeoptionpanel_homecatalltext',
            'wg24themeoptionpanel_toprateptitle',
            'wg24themeoptionpanel_newarivaltitletext',
            'wg24themeoptionpanel_besttitle',
            'wg24themeoptionpanel_specialtext',
            'wg24themeoptionpanel_homecontacttext',
            'wg24themeoptionpanel_footerpaymenttext',
            'wg24themeoptionpanel_listtext',
            'wg24themeoptionpanel_quickview',
        );

        
        
        if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['image'])) {
			$data['error_image'] = $this->error['image'];
		} else {
			$data['error_image'] = array();
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/wg24themeoptionpanel', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['action'] = $this->url->link('module/wg24themeoptionpanel', 'token=' . $this->session->data['token'], 'SSL');

		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		$data['token'] = $this->session->data['token'];
                     $this->load->model('tool/image');
               $this->load->model('design/layout');
          
		
	
				
	
		
		foreach ($save_value as $loadvalue) {
                    if (isset($this->request->post[$loadvalue])) {
			$data[$loadvalue] = $this->request->post[$loadvalue];
		}else{
		   	$data[$loadvalue] = $this->config->get($loadvalue);
		} 
		}
                 $this->load->model('design/layout');
                if (isset($this->request->post['wg24themeoptionpanel_body_cus_pattan'])) {
			$data['wg24themeoptionpanel_body_cus_pattan'] = $this->request->post['wg24themeoptionpanel_body_cus_pattan'];
		} else {
			$data['wg24themeoptionpanel_body_cus_pattan'] = $this->config->get('wg24themeoptionpanel_body_cus_pattan');
		}
                $this->load->model('tool/image');

		if (isset($this->request->post['wg24themeoptionpanel_body_cus_pattan']) && is_file(DIR_IMAGE . $this->request->post['wg24themeoptionpanel_body_cus_pattan'])) {
			$data['wg24themeoptionpanel_body_sub_class_thumb'] = $this->model_tool_image->resize($this->request->post['wg24themeoptionpanel_body_cus_pattan'], 100, 100);
		} elseif ($this->config->get('wg24themeoptionpanel_body_cus_pattan') && is_file(DIR_IMAGE . $this->config->get('wg24themeoptionpanel_body_cus_pattan'))) {
			$data['wg24themeoptionpanel_body_sub_class_thumb'] = $this->model_tool_image->resize($this->config->get('wg24themeoptionpanel_body_cus_pattan'), 100, 100);
		} else {
			$data['wg24themeoptionpanel_body_sub_class_thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
                 $data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
				
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/wg24themeoptionpanel.tpl', $data));
        
           


       

    }

   	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/wg24themeoptionpanel')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (isset($this->request->post['wg24themeoptionpanel_module'])) {
			foreach ($this->request->post['wg24themeoptionpanel_module'] as $key => $value) {
				if (!$value['width'] || !$value['height']) {
					$this->error['image'][$key] = $this->language->get('error_image');
				}
			}
		}

		return !$this->error;
	} 
    

}

?>