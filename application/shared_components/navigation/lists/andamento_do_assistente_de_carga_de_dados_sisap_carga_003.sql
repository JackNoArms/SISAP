prompt --application/shared_components/navigation/lists/andamento_do_assistente_de_carga_de_dados_sisap_carga_003
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
 p_id=>wwv_flow_imp.id(44758172441589542677)
,p_name=>'Andamento do Assistente de Carga de Dados - SISAP_CARGA'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44758172738656542675)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Origem da Carga de Dados'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44758173139380542674)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Mapeamento de Dados / Tabela'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44758173522999542674)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Valida\00E7\00E3o de Dados')
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44758173922506542674)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Resultados de Carga de Dados'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
