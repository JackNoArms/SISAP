prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5027543859619014164
,p_default_application_id=>129733
,p_default_id_offset=>29154433241069204883
,p_default_owner=>'WKSP_WORKPLACETESTES'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>unistr('In\00EDcio')
,p_alias=>'HOME'
,p_step_title=>'SISAP 1.0'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230509134053'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37233800167795487900)
,p_plug_name=>'Selecionar Acervo'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(52084032014915434424)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(37233801519101487913)
,p_name=>'Lista_Acervo'
,p_parent_plug_id=>wwv_flow_imp.id(37233800167795487900)
,p_template=>wwv_flow_imp.id(52084021589175434436)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayInitials:t-Cards--3cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD,',
'       NOME_ACERVO card_title,',
'       upper(substr(NOME_ACERVO,0,2)) card_initials,',
'       null card_subtitle,',
'       null card_text,',
'       null card_subtext,',
'       null card_icon, ',
'       null created_by,',
'       null created,',
'       null updated_by,',
'       null updated,',
'       APEX_PAGE.GET_URL(',
'       p_page => 1,',
'       p_items => ''P1_ACERVO'',',
'       p_values => NOME_ACERVO,',
'       p_clear_cache => ''YES''',
'       ) CARD_LINK',
'from SISAP_ACERVOS',
'ORDER BY 2'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084058986924434396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233801594861487914)
,p_query_column_id=>1
,p_column_alias=>'COD'
,p_column_display_sequence=>1
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233801676296487915)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233801780650487916)
,p_query_column_id=>3
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>3
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233801889358487917)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>4
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233802026017487918)
,p_query_column_id=>5
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233802116705487919)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233802197990487920)
,p_query_column_id=>7
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>7
,p_column_heading=>'Card Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233802258310487921)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233802367617487922)
,p_query_column_id=>9
,p_column_alias=>'CREATED'
,p_column_display_sequence=>9
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233802522061487923)
,p_query_column_id=>10
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233802616248487924)
,p_query_column_id=>11
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>11
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233802648510487925)
,p_query_column_id=>12
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>12
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52084130467361434231)
,p_plug_name=>'SISAP'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(52084038423037434419)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52084201428081434027)
,p_plug_name=>unistr('Navega\00E7\00E3o por P\00E1gina')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_imp.id(52084021589175434436)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(52084200349927434029)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(52084078238747434374)
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37233798547199487884)
,p_name=>'P1_COD_ACERVO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52084130467361434231)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD',
'FROM SISAP_ACERVOS',
'WHERE :P1_ACERVO = NOME_ACERVO'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45297120082896043598)
,p_name=>'P1_ACERVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52084130467361434231)
,p_use_cache_before_default=>'NO'
,p_source=>'NOME_ACERVO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45297123921993043637)
,p_name=>'P1_ACERVO_ATUAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52084130467361434231)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ACERVO ATUAL'
,p_source=>'SELECT :P1_TEXTO || '' '' || :P1_ACERVO as resultado FROM sisap_acervos;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094610832434361)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45297124024444043638)
,p_name=>'P1_TEXTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52084130467361434231)
,p_use_cache_before_default=>'NO'
,p_source=>'Acervo Atual:'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
