prompt --application/shared_components/user_interface/lovs/complemento_assunto
begin
--   Manifest
--     COMPLEMENTO_ASSUNTO
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
 p_id=>wwv_flow_imp.id(52128276068257143020)
,p_lov_name=>'COMPLEMENTO_ASSUNTO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TEXTO_COMPLEMENTO_ASSUNTO as d',
'       ,COD as r',
'from TCU.VW_APEX_LOTE',
'ORDER BY COD ASC'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
