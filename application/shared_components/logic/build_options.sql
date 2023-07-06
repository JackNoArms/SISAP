prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 129733
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5027543859619014164
,p_default_application_id=>129733
,p_default_id_offset=>29154433241069204883
,p_default_owner=>'WKSP_WORKPLACETESTES'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(44693138971106501166)
,p_build_option_name=>unistr('Recurso: Op\00E7\00F5es de Configura\00E7\00E3o')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>unistr('Permitir que os administradores de aplicativos ativem ou desativem funcionalidades espec\00EDficas, associadas a uma op\00E7\00E3o de build do Application Express, de dentro do aplicativo.')
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(44719064070653283732)
,p_build_option_name=>unistr('Recurso: Relat\00F3rio de Atividades')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>unistr('Inclua diversos relat\00F3rios e gr\00E1ficos sobre a atividade do usu\00E1rio final.')
);
wwv_flow_imp.component_end;
end;
/
