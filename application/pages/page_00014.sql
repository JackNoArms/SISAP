prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>unistr('Mostrar informa\00E7\00F5es')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Mostrar informa\00E7\00F5es')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230208152639'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44708085679181853801)
,p_plug_name=>unistr('Informa\00E7\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(52084021589175434436)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44708086183871853806)
,p_name=>'P14_VISUALIZADOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44708085679181853801)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Texto Adicional'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
