prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Gerenciar Temas'
,p_step_title=>'Gerenciar Temas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'LUCKAS.WK@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230705184532'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44717995334792371592)
,p_plug_name=>unistr('Relat\00F3rio 1')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(52084042044377434417)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * ',
'FROM SISAP_TEMAS',
'WHERE :P26_COD_ACERVO = COD_ACERVO ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(44717995730032371592)
,p_name=>unistr('Relat\00F3rio 1')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:27:&APP_SESSION.::::P27_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Editar">'
,p_owner=>'X03101735319'
,p_internal_uid=>7485402541612450304
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44717996276206371590)
,p_db_column_name=>'COD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44717996633247371589)
,p_db_column_name=>'TEMA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tema'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35793781825935173502)
,p_db_column_name=>'COD_ACERVO'
,p_display_order=>13
,p_column_identifier=>'D'
,p_column_label=>'Cod Acervo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44718001520074350956)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'74854084'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD:TEMA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53392718784838863775)
,p_plug_name=>'Selecionar Acervo'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(52084032014915434424)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(53392720136144863788)
,p_name=>'Lista_Acervo'
,p_parent_plug_id=>wwv_flow_imp.id(53392718784838863775)
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
'       p_page => 26,',
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
 p_id=>wwv_flow_imp.id(37233915744533774062)
,p_query_column_id=>1
,p_column_alias=>'COD'
,p_column_display_sequence=>1
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233916167596774062)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233916625788774062)
,p_query_column_id=>3
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>3
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233917022210774062)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>4
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233917433070774061)
,p_query_column_id=>5
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233917806575774061)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233918183478774061)
,p_query_column_id=>7
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>7
,p_column_heading=>'Card Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233918597072774061)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233918971519774061)
,p_query_column_id=>9
,p_column_alias=>'CREATED'
,p_column_display_sequence=>9
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233919361045774061)
,p_query_column_id=>10
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233919766050774061)
,p_query_column_id=>11
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>11
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233920219898774060)
,p_query_column_id=>12
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>12
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44717997070004371589)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(44717995334792371592)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Criar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:27'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45297123483510043632)
,p_name=>'P26_ACERVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44717995334792371592)
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
 p_id=>wwv_flow_imp.id(45297123548633043633)
,p_name=>'P26_COD_ACERVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44717995334792371592)
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
wwv_flow_imp.component_end;
end;
/
