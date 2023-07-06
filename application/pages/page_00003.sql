prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Download Template'
,p_step_title=>'Download Template'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230511155146'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44758332395852098018)
,p_plug_name=>'Template'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(52084042044377434417)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ORGAO_ENTIDADE,',
'       PROCESSO,',
'       JURISDICIONADO,',
'       LOCAL_FISCALIZADO,',
'       MACROTEMA,',
'       TEMA,',
'       PROBLEMA,',
'       SUBTEMA,',
'       DETALHAMENTO,',
'       OBSERVACOES,',
'       COD_ACERVO',
'  from TEMPLATE_CARGA'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(44758332509226098019)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'X03101735319'
,p_internal_uid=>7525739320806176731
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44758332684043098020)
,p_db_column_name=>'ORGAO_ENTIDADE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Orgao Entidade'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44758332750864098021)
,p_db_column_name=>'PROCESSO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Processo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44758332871337098022)
,p_db_column_name=>'JURISDICIONADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Jurisdicionado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44758332954304098023)
,p_db_column_name=>'LOCAL_FISCALIZADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Local Fiscalizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44758333033571098024)
,p_db_column_name=>'MACROTEMA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Macrotema'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44758333094881098025)
,p_db_column_name=>'TEMA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tema'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44758333214099098026)
,p_db_column_name=>'PROBLEMA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Problema'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44758333369058098027)
,p_db_column_name=>'SUBTEMA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Subtema'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44758333472843098028)
,p_db_column_name=>'DETALHAMENTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Detalhamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44758333578558098029)
,p_db_column_name=>'OBSERVACOES'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Observacoes'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45307945980767237890)
,p_db_column_name=>'COD_ACERVO'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Cod Acervo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44758379363188072962)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'75257862'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORGAO_ENTIDADE:PROCESSO:JURISDICIONADO:LOCAL_FISCALIZADO:MACROTEMA:TEMA:PROBLEMA:SUBTEMA:DETALHAMENTO:OBSERVACOES:COD_ACERVO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(37237152706703949004)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp.component_end;
end;
/
