prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_name=>'Mapeamento de Dados / Tabela'
,p_step_title=>'Mapeamento de Dados / Tabela'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'.rc-content-main {height: 400px; overflow: auto !important;}'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'06'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230317100830'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44758193512498542621)
,p_plug_name=>'Andamento do Assistente de Carga de Dados'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(44758172441589542677)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(52084093452123434362)
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44758193880576542620)
,p_plug_name=>'Mapeamento de Dados / Tabela'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_DATA_UPLOAD_COLUMN_MAPPING'
,p_attribute_01=>wwv_flow_imp.id(44757339356420187237)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44758195022682542620)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(44758193880576542620)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Pr\00F3ximo')
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44758194771953542620)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44758193880576542620)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_image_alt=>'Anterior'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44758194194290542620)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(44758193880576542620)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(44758195941334542619)
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(44758195022682542620)
,p_branch_sequence=>10
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
'                                      where name = ''SISAP_CARGA'' and application_id = apex_application.g_flow_id )',
'                            loop',
'                                if c1.skip_validation = ''N'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(44758196385042542619)
,p_branch_action=>'f?p=&APP_ID.:36:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(44758195022682542620)
,p_branch_sequence=>20
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
'                                      where name = ''SISAP_CARGA'' and application_id = apex_application.g_flow_id )',
'                            loop',
'                                if c1.skip_validation = ''Y'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44758195549506542620)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PREPARE_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_imp.id(44757339356420187237)
,p_attribute_02=>'P36_INSERT_COUNT'
,p_attribute_03=>'P36_UPDATE_COUNT'
,p_attribute_04=>'P36_ERROR_COUNT'
,p_attribute_05=>'P36_REVIEW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(44758195022682542620)
,p_internal_uid=>44758195549506542620
);
wwv_flow_imp.component_end;
end;
/
