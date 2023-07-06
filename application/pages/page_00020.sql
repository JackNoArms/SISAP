prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_name=>'teste relatorio'
,p_step_title=>'teste relatorio'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230210145209'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44712135951551246796)
,p_plug_name=>'teste relatorio'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(52084042044377434417)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PG.COD, ST.PROCESSO, PG.ANO, SP.NOME AS SITUACAO_PROCESSO, UT.SIGLA UT',
unistr(',MN.NOME_REDUZIDO RELATOR, EP.DESCR ESTADO, LT.TEXTO_COMPLEMENTO_ASSUNTO, ST.DECIS\00D5ESPROPOSTAS, ST.JURISDICIONADO, ST.LOCAL_FISCALIZADO, ST.MACROTEMA'),
unistr(',ST.TEMA ,ST.PROBLEMA ,ST.SUBTEMA ,ST.DETALHAMENTO ,ST.OBSERVA\00C7\00D5ES'),
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
'ORDER BY ST.ANO ASC',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(44712136063483246796)
,p_name=>'teste relatorio'
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
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_PROCESSO,P3_ANO,P3_MACROTEMA,P3_TEMA:#PROCESSO#,#ANO#,#MACROTEMA#,#TEMA#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'X03101735319'
,p_internal_uid=>7479542875063325508
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712136428667246786)
,p_db_column_name=>'COD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712136863551246783)
,p_db_column_name=>'PROCESSO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Processo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712137188888246783)
,p_db_column_name=>'ANO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ano'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712137659851246782)
,p_db_column_name=>'SITUACAO_PROCESSO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Situacao Processo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712138051104246782)
,p_db_column_name=>'UT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ut'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712138484175246782)
,p_db_column_name=>'RELATOR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Relator'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712138796387246782)
,p_db_column_name=>'ESTADO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712139257254246781)
,p_db_column_name=>'TEXTO_COMPLEMENTO_ASSUNTO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Texto Complemento Assunto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712139660061246781)
,p_db_column_name=>unistr('DECIS\00D5ESPROPOSTAS')
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>unistr('Decis\00F5espropostas')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712140050195246781)
,p_db_column_name=>'JURISDICIONADO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Jurisdicionado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712140460445246781)
,p_db_column_name=>'LOCAL_FISCALIZADO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Local Fiscalizado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712140839444246781)
,p_db_column_name=>'MACROTEMA'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Macrotema'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712141236929246780)
,p_db_column_name=>'TEMA'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Tema'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712141627607246780)
,p_db_column_name=>'PROBLEMA'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Problema'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712142058011246780)
,p_db_column_name=>'SUBTEMA'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Subtema'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712142463140246780)
,p_db_column_name=>'DETALHAMENTO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Detalhamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44712142867962246779)
,p_db_column_name=>unistr('OBSERVA\00C7\00D5ES')
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>unistr('Observa\00E7\00F5es')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44712143231382246425)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'74795501'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('COD:PROCESSO:ANO:SITUACAO_PROCESSO:UT:RELATOR:ESTADO:TEXTO_COMPLEMENTO_ASSUNTO:DECIS\00D5ESPROPOSTAS:JURISDICIONADO:LOCAL_FISCALIZADO:MACROTEMA:TEMA:PROBLEMA:SUBTEMA:DETALHAMENTO:OBSERVA\00C7\00D5ES')
);
wwv_flow_imp.component_end;
end;
/
