prompt --application/pages/page_10012
begin
--   Manifest
--     PAGE: 10012
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
 p_id=>10012
,p_name=>'Log de Erros do Aplicativo'
,p_page_mode=>'MODAL'
,p_step_title=>'Log de Erros do Aplicativo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(44719064070653283732)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Esta p\00E1gina fornece um relat\00F3rio interativo de todos os erros inesperados registrados por este aplicativo.</p>'),
unistr('<p>Clique nos cabe\00E7alhos da coluna para classificar e filtrar os dados ou clique no bot\00E3o <strong>A\00E7\00F5es</strong> para personalizar a exibi\00E7\00E3o da coluna e muitas funcionalidades adicionais avan\00E7adas. Clique no bot\00E3o <strong>Redefinir</strong> para red')
||unistr('efinir o relat\00F3rio interativo de volta \00E0s defini\00E7\00F5es padr\00E3o.</p>')))
,p_page_component_map=>'18'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230216151135'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44719102815590283682)
,p_plug_name=>'Log de Erros do Aplicativo'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_imp.id(52084042044377434417)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    step_id,',
'    userid,',
'    time_stamp err_time,',
'    sqlerrm,',
'    sqlerrm_component_type,',
'    sqlerrm_component_name',
'from apex_activity_log',
'where flow_id = :app_id',
'and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(44719103802945283681)
,p_name=>'Log de Erros do Aplicativo'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'X03101735319'
,p_internal_uid=>7486510614525362393
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44719103931981283681)
,p_db_column_name=>'STEP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('P\00E1gina')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44719104374141283681)
,p_db_column_name=>'USERID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Usu\00E1rio')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44719104727327283680)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Ocorr\00EAncia')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44719105099089283680)
,p_db_column_name=>'SQLERRM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mensagem'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44719105533251283680)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Contexto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44719105976859283679)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nome do Componente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44719106680016283679)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'74865135'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44719107529692283678)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(44719102815590283682)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(52084095505941434356)
,p_button_image_alt=>'Redefinir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp.component_end;
end;
/
