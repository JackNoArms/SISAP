prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_name=>unistr('Gerenciar \00D3rg\00E3os/Entidades')
,p_step_title=>unistr('Gerenciar \00D3rg\00E3os/Entidades')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230316133350'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44756980333702193470)
,p_plug_name=>unistr('Relat\00F3rio 1')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(52084042044377434417)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "COD", ',
'"ORGAO_ENTIDADE"',
'from "#OWNER#"."ORGAO_ENTIDADE" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(44756980781496193469)
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
,p_detail_link=>'f?p=&APP_ID.:32:&APP_SESSION.::::P32_COD:#COD#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Editar">'
,p_owner=>'X03101735319'
,p_internal_uid=>7524387593076272181
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44756980855469193466)
,p_db_column_name=>'COD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44756981201797193465)
,p_db_column_name=>'ORGAO_ENTIDADE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Orgao Entidade'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44756983905139191914)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'75243908'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD:ORGAO_ENTIDADE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44756982568171193464)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(44756980333702193470)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Criar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44756981612745193465)
,p_name=>unistr('Editar Relat\00F3rio - Caixa de Di\00E1logo Fechada')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(44756980333702193470)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44756982167079193464)
,p_event_id=>wwv_flow_imp.id(44756981612745193465)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44756980333702193470)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44756982965658193464)
,p_name=>unistr('Criar Bot\00E3o - Caixa de Di\00E1logo Fechada')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44756982568171193464)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44756983414844193463)
,p_event_id=>wwv_flow_imp.id(44756982965658193464)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44756980333702193470)
);
wwv_flow_imp.component_end;
end;
/
