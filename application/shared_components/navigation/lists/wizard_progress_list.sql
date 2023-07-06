prompt --application/shared_components/navigation/lists/wizard_progress_list
begin
--   Manifest
--     LIST: Wizard Progress List
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
 p_id=>wwv_flow_imp.id(44760980063439599718)
,p_name=>'Wizard Progress List'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44760991845992599703)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Etapa 3'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
