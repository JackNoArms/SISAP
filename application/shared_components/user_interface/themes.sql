prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 129733
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5027543859619014164
,p_default_application_id=>129733
,p_default_id_offset=>29154433241069204883
,p_default_owner=>'WKSP_WORKPLACETESTES'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(52084097631585434343)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(52084013945769434448)
,p_default_dialog_template=>wwv_flow_imp.id(52084009659356434452)
,p_error_template=>wwv_flow_imp.id(52084003236038434459)
,p_printer_friendly_template=>wwv_flow_imp.id(52084013945769434448)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(52084003236038434459)
,p_default_button_template=>wwv_flow_imp.id(52084095456161434356)
,p_default_region_template=>wwv_flow_imp.id(52084043141939434416)
,p_default_chart_template=>wwv_flow_imp.id(52084043141939434416)
,p_default_form_template=>wwv_flow_imp.id(52084043141939434416)
,p_default_reportr_template=>wwv_flow_imp.id(52084043141939434416)
,p_default_tabform_template=>wwv_flow_imp.id(52084043141939434416)
,p_default_wizard_template=>wwv_flow_imp.id(52084043141939434416)
,p_default_menur_template=>wwv_flow_imp.id(52084052553038434405)
,p_default_listr_template=>wwv_flow_imp.id(52084043141939434416)
,p_default_irr_template=>wwv_flow_imp.id(52084042044377434417)
,p_default_report_template=>wwv_flow_imp.id(52084067387119434388)
,p_default_label_template=>wwv_flow_imp.id(52084094884848434359)
,p_default_menu_template=>wwv_flow_imp.id(52084096249838434355)
,p_default_calendar_template=>wwv_flow_imp.id(52084096325993434353)
,p_default_list_template=>wwv_flow_imp.id(52084083239590434370)
,p_default_nav_list_template=>wwv_flow_imp.id(52084090855885434363)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(52084090855885434363)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(52084088849057434366)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(52084022617461434435)
,p_default_dialogr_template=>wwv_flow_imp.id(52084021589175434436)
,p_default_option_label=>wwv_flow_imp.id(52084094884848434359)
,p_default_required_label=>wwv_flow_imp.id(52084095266000434358)
,p_default_navbar_list_template=>wwv_flow_imp.id(52084088616390434366)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.2/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
