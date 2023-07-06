prompt --application/create_application
begin
--   Manifest
--     FLOW: 129733
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5027543859619014164
,p_default_application_id=>129733
,p_default_id_offset=>29154433241069204883
,p_default_owner=>'WKSP_WORKPLACETESTES'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_WORKPLACETESTES')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'SISAP')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SISAP_AMBIENTAL')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'442D90105F798A08187432E1374B339066F94A786C943FFDAECD088E06E141C6'
,p_bookmark_checksum_function=>'SH1'
,p_accept_old_checksums=>false
,p_compatibility_mode=>'5.1'
,p_session_state_commits=>'IMMEDIATE'
,p_html_escaping_mode=>'B'
,p_flow_language=>'pt-br'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>unistr('Aplicativo criado com base no assistente de cria\00E7\00E3o de aplicativos 2022.11.23.')
,p_authentication_id=>wwv_flow_imp.id(52083996212168434486)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'SISAP'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>unistr('Este aplicativo n\00E3o est\00E1 dispon\00EDvel no momento.')
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_runtime_api_usage=>'T'
,p_pass_ecid=>'N'
,p_authorize_public_pages_yn=>'Y'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_friendly_url=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'SISAP'
,p_last_updated_by=>'LUCKAS.WK@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230706142359'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'N'
);
wwv_flow_imp.component_end;
end;
/
