prompt --application/pages/page_10000
begin
--   Manifest
--     PAGE: 10000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5027543859619014164
,p_default_application_id=>129733
,p_default_id_offset=>29154433241069204883
,p_default_owner=>'WKSP_WORKPLACETESTES'
);
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>unistr('Administra\00E7\00E3o de Atividades')
,p_alias=>'ADMIN'
,p_step_title=>unistr('Administra\00E7\00E3o de Atividades')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>A p\00E1gina de administra\00E7\00E3o permite que os propriet\00E1rios do aplicativo (Administradores) configurem o aplicativo e mantenham os dados comuns usados pelo aplicativo.'),
unistr('Selecionando uma das defini\00E7\00F5es dispon\00EDveis, os administradores podem alterar muito a forma pela qual o aplicativo \00E9 exibido e/ou as funcionalidades dispon\00EDveis para os usu\00E1rios finais.</p>'),
unistr('<p>O acesso a esta p\00E1gina deve ser limitado somente aos Administradores.</p>')))
,p_page_component_map=>'06'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230216151136'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44719119767546283655)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(52084052553038434405)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(52083996503521434484)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(52084096249838434355)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44719122681355283652)
,p_plug_name=>unistr('Relat\00F3rios de Atividades')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(44719120386440283654)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(52084084792639434369)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(44719064070653283732)
);
wwv_flow_imp.component_end;
end;
/
