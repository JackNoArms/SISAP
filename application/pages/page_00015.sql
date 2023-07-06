prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>unistr('Mostrar Decis\00F5es/Propostas')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Mostrar Decis\00F5es/Propostas')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'span h6 {',
'    width:100px',
'}',
'',
'td a {',
'display: block;',
'  height: 67px;',
'  overflow: hidden;',
'text-align: justify;',
'align-items: center;',
'    justify-content: center;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230426110333'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44709524702326256689)
,p_name=>unistr('Mostrar Informa\00E7\00F5es')
,p_template=>wwv_flow_imp.id(52084042044377434417)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EDE.SEQ_DELIBERACAO, TD.DESCR TIPO_DELIBERACAO,EDE.NUMDELIB NUM_DELIB, EDE.APRECIADOR, EDE.DESCR, EDE.COD_PROCESSO',
'from TCU.VW_APEX_ESC_DEL_EFET_COD_APREC EDE',
'LEFT JOIN TCU.VW_APEX_TIPO_DELIBERACAO TD ',
'ON EDE.TIPO_DELIBERACAO = TD.COD',
'WHERE EDE.COD_PROCESSO = :P15_COD',
'order by SEQ_DELIBERACAO',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084067387119434388)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>unistr('N\00E3o existe dados no banco de dados.')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44712959363087794006)
,p_query_column_id=>1
,p_column_alias=>'SEQ_DELIBERACAO'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44712958831802794001)
,p_query_column_id=>2
,p_column_alias=>'TIPO_DELIBERACAO'
,p_column_display_sequence=>1
,p_column_heading=>'Tipo Deliberacao'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44712958931752794002)
,p_query_column_id=>3
,p_column_alias=>'NUM_DELIB'
,p_column_display_sequence=>2
,p_column_heading=>'Num Delib'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span><h6>#NUM_DELIB#</h6></span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44712959031174794003)
,p_query_column_id=>4
,p_column_alias=>'APRECIADOR'
,p_column_display_sequence=>3
,p_column_heading=>'Apreciador'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44712959173056794004)
,p_query_column_id=>5
,p_column_alias=>'DESCR'
,p_column_display_sequence=>4
,p_column_heading=>unistr('Descri\00E7\00E3o')
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_COD,P23_SEQ_DELIBERACAO:#COD_PROCESSO#,#SEQ_DELIBERACAO#'
,p_column_linktext=>'#DESCR#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44712959237405794005)
,p_query_column_id=>6
,p_column_alias=>'COD_PROCESSO'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44710950327134901395)
,p_name=>'P15_COD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44709524702326256689)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
