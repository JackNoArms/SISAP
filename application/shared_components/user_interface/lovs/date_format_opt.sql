prompt --application/shared_components/user_interface/lovs/date_format_opt
begin
--   Manifest
--     DATE_FORMAT_OPT
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
 p_id=>wwv_flow_imp.id(44706213659966136996)
,p_lov_name=>'DATE_FORMAT_OPT'
,p_lov_query=>'.'||wwv_flow_imp.id(44706213659966136996)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706214078696136995)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('Usar m\00E1scaras de formato padr\00E3o do aplicativo')
,p_lov_return_value=>'Y'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(44706214394742136995)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Fornecer formatos personalizados para colunas submetidas a upload'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
