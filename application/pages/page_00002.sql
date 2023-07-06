prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Gerenciar Macrotemas'
,p_alias=>'GERENCIAR-MACROTEMAS'
,p_step_title=>'Gerenciar Macrotemas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'LUCKAS.WK@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230706141757'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36099525534472172822)
,p_plug_name=>'Gerenciar Macrotema'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(52084042044377434417)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM SISAP_MACROTEMAS',
'where :p2_cod_acervo = cod_ACERVO',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Gerenciar Macrotema'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(36099525669027172822)
,p_name=>'Gerenciar Macrotemas'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:RP:P12_COD:\#COD#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'LUCKAS.WK@GMAIL.COM'
,p_internal_uid=>36099525669027172822
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36099526020204172823)
,p_db_column_name=>'COD'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Cod'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36099526474238172824)
,p_db_column_name=>'MACROTEMAS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Macrotemas'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(36099526841384172824)
,p_db_column_name=>'COD_ACERVO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cod Acervo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36099536172972174113)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'360995362'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD:MACROTEMAS:COD_ACERVO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(89499346870079119491)
,p_plug_name=>'Selecionar Acervo'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(52084032014915434424)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(89499348221385119504)
,p_name=>'Lista_Acervo'
,p_parent_plug_id=>wwv_flow_imp.id(89499346870079119491)
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
'       p_page => 2,',
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
 p_id=>wwv_flow_imp.id(36106628667308255724)
,p_query_column_id=>1
,p_column_alias=>'COD'
,p_column_display_sequence=>1
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36106629083984255725)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36106629493874255725)
,p_query_column_id=>3
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>3
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36106629837115255725)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>4
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36106630234560255726)
,p_query_column_id=>5
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36106630604891255726)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36106631024361255726)
,p_query_column_id=>7
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>7
,p_column_heading=>'Card Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36106631498227255726)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36106631871244255727)
,p_query_column_id=>9
,p_column_alias=>'CREATED'
,p_column_display_sequence=>9
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36106632231972255727)
,p_query_column_id=>10
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36106632616786255727)
,p_query_column_id=>11
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>11
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36106633091027255727)
,p_query_column_id=>12
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>12
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36099527344456172824)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36099525534472172822)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:12::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36106732427730268122)
,p_name=>'P2_ACERVO'
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_prompt=>'Acervo Atual'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOME_ACERVO',
'FROM SISAP_ACERVOS',
'WHERE :P1_ACERVO = NOME_ACERVO'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094610832434361)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36107337897784757228)
,p_name=>'P2_COD_ACERVO'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD',
'FROM SISAP_ACERVOS',
'WHERE :P1_ACERVO = NOME_ACERVO'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'U'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36099527616140172824)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(36099525534472172822)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36099528132533172825)
,p_event_id=>wwv_flow_imp.id(36099527616140172824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36099525534472172822)
);
wwv_flow_imp.component_end;
end;
/
