prompt --application/shared_components/navigation/lists/menu_de_navegação_da_área_de_trabalho
begin
--   Manifest
--     LIST: Menu de Navegação da Área de Trabalho
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
 p_id=>wwv_flow_imp.id(52083996995632434479)
,p_name=>unistr('Menu de Navega\00E7\00E3o da \00C1rea de Trabalho')
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(52084129440060434235)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('In\00EDcio')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(52084130997324434230)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Acervo'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(52111740270115103882)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Inserir Processo'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44703801386676651057)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Estat\00EDsticas')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-percent'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44706203105955137020)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Carga de Dados'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-arrow-circle-o-down'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,33,33,33'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45299278488850061417)
,p_list_item_display_sequence=>55
,p_list_item_link_text=>'Gerenciar Acervos'
,p_list_item_link_target=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layers'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44707858810961830287)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Gerenciar Tema'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tag'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44707859131035823514)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Gerenciar Macrotema'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tags'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44756979599601193477)
,p_list_item_display_sequence=>75
,p_list_item_link_text=>unistr('Gerenciar \00D3rg\00E3os/Entidades')
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-building-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31,32'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44719119256053283657)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Administra\00E7\00E3o de Atividades')
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-user-wrench'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10000'
);
wwv_flow_imp.component_end;
end;
/
