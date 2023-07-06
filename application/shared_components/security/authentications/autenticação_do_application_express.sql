prompt --application/shared_components/security/authentications/autenticação_do_application_express
begin
--   Manifest
--     AUTHENTICATION: Autenticação do Application Express
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5027543859619014164
,p_default_application_id=>129733
,p_default_id_offset=>29154433241069204883
,p_default_owner=>'WKSP_WORKPLACETESTES'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(52083996212168434486)
,p_name=>unistr('Autentica\00E7\00E3o do Application Express')
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_01=>'nobody'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
