prompt --application/shared_components/user_interface/lovs/situacao_processo
begin
--   Manifest
--     SITUACAO_PROCESSO
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
 p_id=>wwv_flow_imp.id(52128259155450321530)
,p_lov_name=>'SITUACAO_PROCESSO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOME AS D',
'      ,COD AS RETURN',
'from TCU.VW_APEX_SITUACAO_PROCESSO',
'ORDER BY COD ASC'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
