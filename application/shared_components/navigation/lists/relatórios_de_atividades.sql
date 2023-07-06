prompt --application/shared_components/navigation/lists/relatórios_de_atividades
begin
--   Manifest
--     LIST: Relatórios de Atividades
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
 p_id=>wwv_flow_imp.id(44719120386440283654)
,p_name=>unistr('Relat\00F3rios de Atividades')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(44719064070653283732)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44719120700734283653)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Painel de Controle'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>unistr('Exibir m\00E9tricas de atividade do aplicativo')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44719121165649283653)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Principais Usu\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.:10011:::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>unistr('Relat\00F3rio de views de p\00E1gina agregadas por usu\00E1rio')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44719121550406283653)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Log de Erros do Aplicativo'
,p_list_item_link_target=>'f?p=&APP_ID.:10012:&SESSION.::&DEBUG.:10012:::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>unistr('Relat\00F3rio de erros registrados por este aplicativo')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44719121960841283653)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Desempenho da P\00E1gina')
,p_list_item_link_target=>'f?p=&APP_ID.:10013:&SESSION.::&DEBUG.:10013:::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>unistr('Relat\00F3rio de atividade e desempenho por p\00E1gina do aplicativo')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44719122293388283652)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Views de P\00E1gina')
,p_list_item_link_target=>'f?p=&APP_ID.:10014:&SESSION.::&DEBUG.:RIR,10014:::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>unistr('Relat\00F3rio de cada visualiza\00E7\00E3o de p\00E1gina por usu\00E1rio, incluindo a data de acesso e o tempo decorrido')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
