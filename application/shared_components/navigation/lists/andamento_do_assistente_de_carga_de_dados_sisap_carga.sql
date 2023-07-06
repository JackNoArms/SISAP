prompt --application/shared_components/navigation/lists/andamento_do_assistente_de_carga_de_dados_sisap_carga
begin
--   Manifest
--     LIST: Andamento do Assistente de Carga de Dados - SISAP_CARGA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5027543859619014164
,p_default_application_id=>129733
,p_default_id_offset=>29154433241069204883
,p_default_owner=>'WKSP_WORKPLACETESTES'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(44706200876365137026)
,p_name=>'Andamento do Assistente de Carga de Dados - SISAP_CARGA'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44706201266914137024)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Origem da Carga de Dados'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44706201598248137022)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Mapeamento de Dados / Tabela'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44706202060330137022)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Valida\00E7\00E3o de Dados')
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44706202409196137022)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Resultados de Carga de Dados'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
