prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_name=>unistr('Gr\00E1fico Macrotema/Tema')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Gr\00E1fico Macrotema/Tema')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230215183104'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44716906183048130516)
,p_plug_name=>unistr('Tabela Din\00E2mica')
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(52084049936845434407)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44716904855779130503)
,p_name=>unistr('Governan\00E7a e Gest\00E3o')
,p_parent_plug_id=>wwv_flow_imp.id(44716906183048130516)
,p_template=>wwv_flow_imp.id(52084021589175434436)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT TE.TEMA AS "Governan\00E7a e Gest\00E3o", COUNT(ST.TEMA) AS "Contagem de Processo"'),
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%GG-%''',
'GROUP BY TE.TEMA',
'ORDER BY TE.TEMA ASC',
'',
'',
'',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084067387119434388)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716905635108130511)
,p_query_column_id=>1
,p_column_alias=>unistr('Governan\00E7a e Gest\00E3o')
,p_column_display_sequence=>1
,p_column_heading=>unistr('Governan\00E7a E Gest\00E3o')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716905104354130506)
,p_query_column_id=>2
,p_column_alias=>'Contagem de Processo'
,p_column_display_sequence=>2
,p_column_heading=>'Contagem De Processo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44716905370035130508)
,p_name=>unistr('Desenvolvimento e Consolida\00E7\00E3o')
,p_parent_plug_id=>wwv_flow_imp.id(44716906183048130516)
,p_template=>wwv_flow_imp.id(52084021589175434436)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT TE.TEMA AS "Desenvolvimento e Consolida\00E7\00E3o", COUNT(ST.TEMA) AS "Contagem de Processo"'),
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%DC-%''',
'GROUP BY TE.TEMA',
'ORDER BY TE.TEMA ASC',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084067387119434388)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716966132569731694)
,p_query_column_id=>1
,p_column_alias=>unistr('Desenvolvimento e Consolida\00E7\00E3o')
,p_column_display_sequence=>1
,p_column_heading=>unistr('Desenvolvimento E Consolida\00E7\00E3o')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716905477900130509)
,p_query_column_id=>2
,p_column_alias=>'Contagem de Processo'
,p_column_display_sequence=>2
,p_column_heading=>'Contagem De Processo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44716907298777130528)
,p_name=>'Outros'
,p_parent_plug_id=>wwv_flow_imp.id(44716906183048130516)
,p_template=>wwv_flow_imp.id(52084021589175434436)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TE.TEMA AS "Outros", COUNT(ST.TEMA) AS "Contagem de Processo"',
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%Ou-%''',
'GROUP BY TE.TEMA',
'ORDER BY TE.TEMA ASC',
'',
'',
'',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084067387119434388)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716907595630130531)
,p_query_column_id=>1
,p_column_alias=>'Outros'
,p_column_display_sequence=>1
,p_column_heading=>'Outros'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716907403336130529)
,p_query_column_id=>2
,p_column_alias=>'Contagem de Processo'
,p_column_display_sequence=>2
,p_column_heading=>'Contagem De Processo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44716907689635130532)
,p_name=>unistr('Regulariza\00E7\00E3o Fundi\00E1ria')
,p_parent_plug_id=>wwv_flow_imp.id(44716906183048130516)
,p_template=>wwv_flow_imp.id(52084021589175434436)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT TE.TEMA AS "Regulariza\00E7\00E3o Fundi\00E1ria", COUNT(ST.TEMA) AS "Contagem de Processo"'),
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%RF-%''',
'GROUP BY TE.TEMA',
'ORDER BY TE.TEMA ASC',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084067387119434388)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716908079683130535)
,p_query_column_id=>1
,p_column_alias=>unistr('Regulariza\00E7\00E3o Fundi\00E1ria')
,p_column_display_sequence=>1
,p_column_heading=>unistr('Regulariza\00E7\00E3o Fundi\00E1ria')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716907843674130533)
,p_query_column_id=>2
,p_column_alias=>'Contagem de Processo'
,p_column_display_sequence=>2
,p_column_heading=>'Contagem De Processo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44716908169578130536)
,p_name=>'Sob sigilo'
,p_parent_plug_id=>wwv_flow_imp.id(44716906183048130516)
,p_template=>wwv_flow_imp.id(52084021589175434436)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TE.TEMA AS "Sob sigilo", COUNT(ST.TEMA) AS "Contagem de Processo"',
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%Sob sigilo%''',
'GROUP BY TE.TEMA',
'ORDER BY TE.TEMA ASC',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084067387119434388)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716965670794731689)
,p_query_column_id=>1
,p_column_alias=>'Sob sigilo'
,p_column_display_sequence=>1
,p_column_heading=>'Sob Sigilo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716908246023130537)
,p_query_column_id=>2
,p_column_alias=>'Contagem de Processo'
,p_column_display_sequence=>2
,p_column_heading=>'Contagem De Processo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44716965811032731691)
,p_name=>unistr('Acesso \00E0 Terra')
,p_parent_plug_id=>wwv_flow_imp.id(44716906183048130516)
,p_template=>wwv_flow_imp.id(52084021589175434436)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT TE.TEMA AS "Acesso \00E0 terra", COUNT(ST.TEMA) AS "Contagem de Processo"'),
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%AT-%''',
'GROUP BY TE.TEMA',
'ORDER BY TE.TEMA ASC',
'',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084067387119434388)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716966048724731693)
,p_query_column_id=>1
,p_column_alias=>unistr('Acesso \00E0 terra')
,p_column_display_sequence=>1
,p_column_heading=>unistr('Acesso \00C0 Terra')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44716965948996731692)
,p_query_column_id=>2
,p_column_alias=>'Contagem de Processo'
,p_column_display_sequence=>2
,p_column_heading=>'Contagem De Processo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44716966231151731695)
,p_name=>'P25_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44716905370035130508)
,p_prompt=>'Total'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(ST.TEMA) AS "Total"',
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%DC-%'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44716966293655731696)
,p_name=>'P25_TOTAL_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44716965811032731691)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(ST.TEMA) AS "Total"',
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%AT-%'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44716966430134731697)
,p_name=>'P25_TOTAL_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44716904855779130503)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(ST.TEMA) AS "Total"',
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%GG-%'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44716966511348731698)
,p_name=>'P25_TOTAL_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44716907298777130528)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(ST.TEMA) AS "Total"',
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%Ou-%'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44716966635933731699)
,p_name=>'P25_TOTAL_1_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44716907689635130532)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(ST.TEMA) AS "Total"',
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%RF-%'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44716966708057731700)
,p_name=>'P25_TOTAL_1_1_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44716908169578130536)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(ST.TEMA) AS "Contagem de Processo"',
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL AND TE.TEMA LIKE ''%Sob sigilo%'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
