prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_name=>unistr('Mostrar Descri\00E7\00E3o')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Mostrar Descri\00E7\00E3o')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230215132310'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44713200339893094610)
,p_name=>unistr('Relat\00F3rio 1')
,p_template=>wwv_flow_imp.id(52084043141939434416)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EDE.DESCR, EDE.SEQ_DELIBERACAO',
'from TCU.VW_APEX_ESC_DEL_EFET_COD_APREC EDE',
'LEFT JOIN TCU.VW_APEX_TIPO_DELIBERACAO TD ',
'ON EDE.TIPO_DELIBERACAO = TD.COD',
'WHERE EDE.COD_PROCESSO = :P23_COD AND SEQ_DELIBERACAO = :P23_SEQ_DELIBERACAO',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084067387119434388)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('dados n\00E3o encontrados')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Fazer Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44713200788063094604)
,p_query_column_id=>1
,p_column_alias=>'DESCR'
,p_column_display_sequence=>1
,p_column_heading=>'Descr'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44713201106175094603)
,p_query_column_id=>2
,p_column_alias=>'SEQ_DELIBERACAO'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44712960828902794021)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44713200339893094610)
,p_button_name=>'Voltar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_image_alt=>'Voltar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44712960682774794019)
,p_name=>'P23_SEQ_DELIBERACAO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44713200339893094610)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44712960730493794020)
,p_name=>'P23_COD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44713200339893094610)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
