prompt --application/shared_components/navigation/lists/navegação_por_página
begin
--   Manifest
--     LIST: Navegação por Página
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
 p_id=>wwv_flow_imp.id(52084200349927434029)
,p_name=>unistr('Navega\00E7\00E3o por P\00E1gina')
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(52084200734233434028)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Acervo'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(52111740936588101430)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Inserir Processo'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44703928766506136961)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Estat\00EDsticas')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-percent'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44706305496412127119)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Carga de Dados'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-arrow-circle-o-down'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45299279014619052900)
,p_list_item_display_sequence=>55
,p_list_item_link_text=>'Gerenciar Acervos'
,p_list_item_link_target=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layers'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44707860386160817846)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Gerenciar Tema'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tag'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44707860807271815593)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Gerenciar Macrotema'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tags'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44756989764692971875)
,p_list_item_display_sequence=>75
,p_list_item_link_text=>unistr('Gerenciador \00D3rg\00E3os/Entidades')
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-building-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44719124640305274440)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Administra\00E7\00E3o de Atividades')
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
