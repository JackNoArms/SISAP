prompt --application/shared_components/user_interface/lovs/data_load_option
begin
--   Manifest
--     DATA_LOAD_OPTION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5027543859619014164
,p_default_application_id=>129733
,p_default_id_offset=>29154433241069204883
,p_default_owner=>'WKSP_WORKPLACETESTES'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(44706205074573137013)
,p_lov_name=>'DATA_LOAD_OPTION'
,p_lov_query=>'.'||wwv_flow_imp.id(44706205074573137013)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706205391970137011)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('Arquivo obtido por upload, separado por v\00EDrgulas (*.csv) ou delimitado por tabula\00E7\00F5es')
,p_lov_return_value=>'UPLOAD'
);
wwv_flow_imp.component_end;
end;
/
