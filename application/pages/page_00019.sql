prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>unistr('Mostrar Observa\00E7\00F5es')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Mostrar Observa\00E7\00F5es')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230522114747'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(59668364743033057581)
,p_name=>unistr('Mostrar Informa\00E7\00F5es')
,p_template=>wwv_flow_imp.id(52084021589175434436)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ST.OBSERVACOES',
'FROM TCU.VW_APEX_PROCESSO_GESTAO PG',
'LEFT JOIN TCU.VW_APEX_SITUACAO_PROCESSO SP',
'ON PG.COD_SITUACAO_ATUAL = SP.COD',
'LEFT JOIN TCU.VW_APEX_LOTE LT',
'ON PG.COD = LT.COD',
'LEFT JOIN TCU.VW_APEX_MINISTRO MN',
'ON LT.COD_MINIS_RELATORIA_LOTE_ATUAL = MN.COD',
'LEFT JOIN TCU.VW_APEX_ESTADO_PAPEL EP',
'ON LT.COD_ESTADO = EP.COD',
'LEFT JOIN TCU.VW_APEX_UNID_ORGANIZAC_TCU UT',
'ON PG.COD_UNID_RESPONSAVEL_TECNICA = UT.COD',
'LEFT JOIN TCU.VW_APEX_HIST_TIPO_LOTE HTP ',
'ON PG.COD = HTP.COD_LOTE',
'LEFT JOIN TCU.VW_APEX_TIPO_PROCESSO TP ',
'ON HTP.COD_TIPO_PROCESSO = TP.COD',
'RIGHT JOIN VW_SISAP_TEMP ST',
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV ',
'where pg.cod = :P19_COD',
'ORDER BY ST.ANO ASC',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084067387119434388)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'Nenhum dado foi encontrado'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37248148952878168705)
,p_query_column_id=>1
,p_column_alias=>'OBSERVACOES'
,p_column_display_sequence=>1
,p_column_heading=>'Observacoes'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44712020067924804449)
,p_name=>'P19_COD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59668364743033057581)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
