<?php
class ControllerCommonWg24themeoptionpanel extends Controller {
	public function index($setting) {
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
           'wg24themeoptionpanel_header_hot_linenumberboxe',
           'wg24themeoptionpanel_homebigslideronoff1',
           'wg24themeoptionpanel_homebigslider1',
            'wg24themeoptionpanel_header2type',
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
            'wg24themeoptionpanel_headerlogoonoff',
            'wg24themeoptionpanel_headerlogo',
             'wg24themeoptionpanel_topm_custom_bonoff',
            'wg24themeoptionpanel_topm_custom_bcontent',
            'wg24themeoptionpanel_topm_customcontentonoff',
            'wg24themeoptionpanel_topm_customcontent',
           'wg24themeoptionpanel_home_promo_onoff',
           'wg24themeoptionpanel_home_promo_content',
            'wg24themeoptionpanel_header_custom_menu',
            'wg24themeoptionpanel_bigsliderbottom_shippin',
            'wg24themeoptionpanel_homemiddlesessionsaletext',
            'wg24themeoptionpanel_homemiddleshopinfobanners',
           'wg24themeoptionpanel_homepage12',
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
            'wg24themeoptionpanel_shownewproduct',
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
    foreach ($save_value as $loadvalue) {
      if ($this->config->get($loadvalue)) {
           $data[$loadvalue] = $this->config->get($loadvalue);
        }else{
                $data[$loadvalue] = '';
        } 
        }
       	$this->load->language('module/featured');
        $data['button_cart'] = $this->language->get('button_cart');
        $data['button_wishlist'] = $this->language->get('button_wishlist');
        $data['button_compare'] = $this->language->get('button_compare');   
        
        
       $data['config_language_id']=$this->config->get('config_language_id'); 
       
      
       
        $filter_data = array(
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' =>$this->config->get('wg24themeoptionpanel_shownewproduct')
		);
             $this->load->model('catalog/product');
             
            $results = $this->model_catalog_product->getProducts($filter_data);
            if ($results){
			foreach ($results as $result) {
				$data['is_new'][] = array(
					'product_id'  => $result['product_id'],
				);
			}	
		} 
          // Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();
		$categories = $this->model_catalog_category->getCategories(0);
		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 1
				$data['categories'][] = array(
					'name'=>$category['name'],
					'category_id'=>$category['category_id']
				);
			}
		}      
                
		$this->load->model('tool/image');
		$data['products'] = array();
		$allfilter_data = array(
                         'order' => 'DESC',
			'start' => 0,
			'limit' => 20
		);

		$allresults = $this->model_catalog_product->getProducts($allfilter_data);
		if ($allresults) {
			foreach ($allresults as $allresult) {
                            $mouse_hover = $this->db->query("SELECT * FROM `" . DB_PREFIX . "product_image` WHERE product_id = '" . (int)$allresult['product_id'] . "' and sort_order='2' ");
                       foreach ($mouse_hover as $hover_image) {
                           if ($hover_image) {
				if (isset($hover_image['image'])) {
					$mouse_hover_image = $this->model_tool_image->resize($hover_image['image'],$this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                                      
				} else {
					$mouse_hover_image = false;
				}
                              
                                if (isset($hover_image['product_id'])) {
					$hover_id = $hover_image['product_id'];
                                      
				} else {
					$hover_id = false;
				}
                                $data['image'][] = array(
                                            'mousehover' => $mouse_hover_image,
                                           'hover_id' => $hover_id,
					
				);  
                           }
                           
                      	
				
                           
                       } 
                            
                            
				if ($allresult['image']) {
					$image = $this->model_tool_image->resize($allresult['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $allresult['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$allresult['special']) {
					$special = $this->currency->format($this->tax->calculate($allresult['special'], $allresult['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$allresult['special'] ? $allresult['special'] : $allresult['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $allresult['rating'];
				} else {
					$rating = false;
				}

				$data['allproducts'][] = array(
					'product_id'  => $allresult['product_id'],
					'thumb'       => $image,
					'name'        => $allresult['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($allresult['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $allresult['product_id']),
				);
			}  
       
                
                }else{
                 $data['allproducts']="test";   
                    
                }
                
                
              
               $categories1 = $this->model_catalog_category->getCategories(0);
               $catelop=1;
		foreach ($categories1 as $category1) {
			if ($category1['top']) {
                                if(isset($catelop)==1):
                                $catid1=$category1['category_id'];
                                elseif(isset($catelop)==2):
                                $catid2=$category1['category_id'];
                                elseif(isset($catelop)==3):
                                $catid3=$category1['category_id'];
                                endif;  
                                
                            }   
			
                   $catelop=$catelop+1;      
		} 

     if(isset($catid1)){ $catid1; }else{$catid1='';}
     if(isset($catid2)){ $catid2; }else{$catid2='';}
    if(isset($catid3)){ $catid3; }else{$catid3='';}
      
                
            $filter_data1 = array(
                         'filter_category_id' =>$catid1,
                         'order' => 'ASE',
			'start' => 0,
			'limit' => 20
		);
            
            $results1 = $this->model_catalog_product->getProducts($filter_data1);
                
            if ($results1) {
			foreach ($results1 as $result) {
                             $mouse_hover = $this->db->query("SELECT * FROM `" . DB_PREFIX . "product_image` WHERE product_id = '" . (int)$result['product_id'] . "' and sort_order='2' ");
                       foreach ($mouse_hover as $hover_image) {
                           if ($hover_image) {
				if (isset($hover_image['image'])) {
					$mouse_hover_image = $this->model_tool_image->resize($hover_image['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                                      
				} else {
					$mouse_hover_image = false;
				}
                              
                                if (isset($hover_image['product_id'])) {
					$hover_id = $hover_image['product_id'];
                                      
				} else {
					$hover_id = false;
				}
                                $data['image'][] = array(
                                            'mousehover' => $mouse_hover_image,
                                           'hover_id' => $hover_id,
					
				);  
                           }
                           
                      	
				
                           
                       }
                            
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}

				$data['products1'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				);
			}  
       
                
                }else{
                 $data['products1']="test";   
                    
                }
            $filter_data2 = array(
                         'filter_category_id' =>$catid2,
                          'order' => 'ASE',
			'start' => 0,
			'limit' => 8
		);
            
            $results2 = $this->model_catalog_product->getProducts($filter_data2);
                
            if ($results2) {
			foreach ($results2 as $result) {
                             $mouse_hover = $this->db->query("SELECT * FROM `" . DB_PREFIX . "product_image` WHERE product_id = '" . (int)$result['product_id'] . "' and sort_order='2' ");
                       foreach ($mouse_hover as $hover_image) {
                           if ($hover_image) {
				if (isset($hover_image['image'])) {
					$mouse_hover_image = $this->model_tool_image->resize($hover_image['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                                      
				} else {
					$mouse_hover_image = false;
				}
                              
                                if (isset($hover_image['product_id'])) {
					$hover_id = $hover_image['product_id'];
                                      
				} else {
					$hover_id = false;
				}
                                $data['image'][] = array(
                                            'mousehover' => $mouse_hover_image,
                                           'hover_id' => $hover_id,
					
				);  
                           }
                           
                      	
				
                           
                       }
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}

				$data['products2'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				);
			}  
       
                
                } 
                else{
                 $data['products2']="test";   
                    
                }
                
              
            $filter_data3 = array(
                         'filter_category_id' =>$catid3,
                          'order' => 'ASE',
			'start' => 0,
			'limit' => 8
		);
            
            $results3 = $this->model_catalog_product->getProducts($filter_data3);
                
            if ($results3) {
			foreach ($results3 as $result) {
                             $mouse_hover = $this->db->query("SELECT * FROM `" . DB_PREFIX . "product_image` WHERE product_id = '" . (int)$result['product_id'] . "' and sort_order='2' ");
                       foreach ($mouse_hover as $hover_image) {
                           if ($hover_image) {
				if (isset($hover_image['image'])) {
					$mouse_hover_image = $this->model_tool_image->resize($hover_image['image'],$this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
                                      
				} else {
					$mouse_hover_image = false;
				}
                              
                                if (isset($hover_image['product_id'])) {
					$hover_id = $hover_image['product_id'];
                                      
				} else {
					$hover_id = false;
				}
                                $data['image'][] = array(
                                            'mousehover' => $mouse_hover_image,
                                           'hover_id' => $hover_id,
					
				);  
                           }
                           
                      	
				
                           
                       }
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}
                                

				$data['products3'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				);
			}  
       
                
                }else{
                 $data['products3']="test";   
                    
                }
                
                
               
              $resultstop = $this->model_catalog_product->getProducts();
                
            if ($resultstop) {
			foreach ($resultstop as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], 90, 90);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', 90, 90);
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}
                                

				$data['productstop'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				);
			}  
       
                
                }else{
                 $data['productstop']="test";   
                    
                }
              
                  
                $bestsale = $this->model_catalog_product->getBestSellerProducts(24);
		if ($bestsale) {
			foreach ($bestsale as $result) {
                            
                               $mouse_hover = $this->db->query("SELECT * FROM `" . DB_PREFIX . "product_image` WHERE product_id = '" . (int)$result['product_id'] . "' and sort_order='2' ");
                       foreach ($mouse_hover as $hover_image) {
                           if ($hover_image) {
				if (isset($hover_image['image'])) {
					$mouse_hover_image = $this->model_tool_image->resize($hover_image['image'], 100, 100);
                                      
				} else {
					$mouse_hover_image = false;
				}
                              
                                if (isset($hover_image['product_id'])) {
					$hover_id = $hover_image['product_id'];
                                      
				} else {
					$hover_id = false;
				}
                                $data['image'][] = array(
                                            'mousehover' => $mouse_hover_image,
                                           'hover_id' => $hover_id,
					
				);  
                           }
                           
                      	
				
                           
                       }
                       
                                if ($result['image']) {
                                        $bsingleimage = $this->model_tool_image->resize($result['image'],228,228);
                                } else {
                                        $bsingleimage = $this->model_tool_image->resize('placeholder.png',228,128);
                                }
                            if ($result['image']) {
                                      $bsthome3 = $this->model_tool_image->resize($result['image'],210,210);
                              } else {
                                      $bsthome3 = $this->model_tool_image->resize('placeholder.png',210,210);
                              }
                       
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'],100,100);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png',100,100);
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}

				$data['bsproducts'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
                                        'single_image'=>$bsingleimage,
                                        'thumb3'=>$bsthome3,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				);
			}
                }
                else{
                 $data['bsproducts']="test";   
                    
                }
                $sfilter_data = array(
			'sort'  => 'pd.name',
			'order' => 'ASC',
			'start' => 0,
			'limit' => 10
		);

		$specail = $this->model_catalog_product->getProductSpecials($sfilter_data);

		if ($specail) {
			foreach ($specail as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], 90,90);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', 90,90);
				}
                                if ($result['image']) {
					$imageon = $this->model_tool_image->resize($result['image'], 270,270);
				} else {
					$imageon = $this->model_tool_image->resize('placeholder.png', 270,270);
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}

				$data['speciproducts'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
                                        'thumbon'=>$imageon,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}
                
                }   else{
                 $data['speciproducts']="test";   
                    
                }
                
                $product_data = array();
		
		$query = $this->db->query("SELECT p.product_id FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) WHERE p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "' ORDER BY p.viewed DESC LIMIT " . (int)4);
		
		foreach ($query->rows as $result) { 		
			$product_data[$result['product_id']] = $this->model_catalog_product->getProduct($result['product_id']);
		}
					 	 		
		$topviewd = $product_data;
                if ($topviewd) {
			foreach ($topviewd as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], 100,100);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png',100,100);
				}
                               

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}

				$data['topviwed'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}
                
                }   else{
                 $data['topviwed']="test";   
                    
                }
                
                
                
       
        
                
                
       
           return $data;	
	}
        
        
        
}