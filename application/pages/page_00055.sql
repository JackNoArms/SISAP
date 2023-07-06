prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_name=>'Origem da Carga de Dados'
,p_step_title=>'Origem da Carga de Dados'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230320150407'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44761166986711848910)
,p_plug_name=>'Andamento do Assistente de Carga de Dados'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(44761164598889848918)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(52084093452123434362)
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44761167264864848909)
,p_plug_name=>'Origem da Carga de Dados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44761168069720848906)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Pr\00F3ximo')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.uploadNonEmpty(''P55_COPY_PASTE'', ''NEXT'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44761167668208848908)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(44761184701328848878)
,p_branch_action=>'f?p=&APP_ID.:56:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(44761168069720848906)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761168570728848903)
,p_name=>'P55_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_item_default=>'PASTE'
,p_prompt=>'Importar de'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_imp.id(44706205074573137013)||'.'
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761168804839848902)
,p_name=>'P55_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_prompt=>'Nome do Arquivo'
,p_display_as=>'NATIVE_FILE'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084095266000434358)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Nome do arquivo para upload'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
,p_attribute_12=>'NATIVE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761170150155848899)
,p_name=>'P55_COPY_PASTE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_prompt=>'Copiar e Colar Dados Delimitados'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'spellcheck="false"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084095266000434358)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761170596325848898)
,p_name=>'P55_SEPARATOR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_item_default=>'\t'
,p_prompt=>'Separador'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084095266000434358)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identifique um caractere separador de coluna. Use <strong>\t</strong> para separadores de guia.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761171525606848898)
,p_name=>'P55_ENCLOSED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_item_default=>'"'
,p_prompt=>unistr('Opcionalmente Inclu\00EDdo Por')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Enter a delimiter character. You can use this character to delineate the starting and ending boundary of a data value. If you specify a delimiter character, Data Workshop ignores whitespace occurring before the starting and ending boundary of a data '
||'value. You can also use this option to enclose a data value with the specified delimiter character.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761172418061848896)
,p_name=>'P55_FIRST_ROW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_item_default=>'Y'
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:A Primeira Linha tem Nomes de Coluna;Y'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Selecione esta caixa se seus dados contiverem nomes de coluna na primeira linha.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761173293063848895)
,p_name=>'P55_SHOW_ADV_SETTINGS'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:Usar Defini\00E7\00F5es Avan\00E7adas;Y')
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Exibir defini\00E7\00F5es avan\00E7adas para carregamento de dados: S\00EDmbolo de Moeda, Caracteres Decimais, Codifica\00E7\00E3o de Arquivo ou Formatos de Data'),
''))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761176064270848889)
,p_name=>'P55_APP_DATE_FORMAT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_item_default=>'Y'
,p_prompt=>unistr('Formatos de Data / N\00FAmero a serem usados')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATE_FORMAT_OPT'
,p_lov=>'.'||wwv_flow_imp.id(44706213659966136996)||'.'
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>unistr('Escolha se vai fornecer m\00E1scaras de formato personalizado ou usar as de formato padr\00E3o')
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761176916789848886)
,p_name=>'P55_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_item_default=>'UTF-8'
,p_prompt=>'Conjunto de Caracteres do Arquivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET'
,p_lov=>'.'||wwv_flow_imp.id(44706215679584136993)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761177864797848885)
,p_name=>'P55_CURRENCY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_item_default=>'$'
,p_prompt=>unistr('S\00EDmbolo da Moeda')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value',
'  from nls_session_parameters',
' where parameter = ''NLS_CURRENCY'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>unistr('Se seus dados contiverem o s\00EDmbolo de moeda internacional, informe-o aqui. Por exemplo, se seus dados tiverem "&euro;1,234.56" ou "&yen;1,234.56", informe "&euro;" ou "&yen;". Do contr\00E1rio, os dados n\00E3o ser\00E3o carregados corretamente.')
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761178772109848884)
,p_name=>'P55_GROUP_SEPARATOR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_prompt=>'Separador de Grupo'
,p_source=>'apex_application.get_nls_group_separator'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Um separador de grupo \00E9 um caractere que separa grupos de inteiros, por exemplo, para mostrar milhares e milh\00F5es.</p>'),
unistr('<p>Qualquer caractere pode ser o separador de grupo. O caractere especificado deve ser monobyte, e o separador de grupo deve ser diferente de qualquer outro caractere de decimal. O caractere pode ser um espa\00E7o, mas n\00E3o pode ser um n\00FAmero ou um dos se')
||'guintes:</p>',
'<ul class="noIndent">',
'<li>mais (+)</li>',
unistr('<li>h\00EDfen (-)</li> '),
'<li>sinal de menor que (<)</li>',
'<li>sinal de maior que (>)</li> ',
'</ul>'))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44761179602124848884)
,p_name=>'P55_DECIMAL_CHARACTER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(44761167264864848909)
,p_prompt=>'Caractere de Decimal'
,p_source=>'apex_application.get_nls_decimal_separator'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>O caractere de decimal separa o inteiro e as partes decimais de um n\00FAmero.</p>'),
unistr('<p> Qualquer caractere pode ser o caractere de decimal. O caractere especificado deve ser monobyte, e o caractere de decimal deve ser diferente do separador de grupo. O caractere pode ser um espa\00E7o, mas n\00E3o pode ser um n\00FAmero ou um dos seguintes cara')
||'cteres:</p>',
'<ul class="noIndent">',
'<li>mais (+)</li>',
unistr('<li>h\00EDfen (-)</li> '),
'<li>sinal de menor que (<)</li>',
'<li>sinal de maior que (>)</li> ',
'</ul>'))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44761169817883848900)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P55_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# deve ter algum valor.'
,p_validation_condition=>'P55_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(44761168069720848906)
,p_associated_item=>wwv_flow_imp.id(44761168804839848902)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44761174238134848895)
,p_validation_name=>'Uploaded data is not null'
,p_validation_sequence=>20
,p_validation=>'P55_COPY_PASTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# deve ter algum valor.'
,p_validation_condition=>'P55_IMPORT_FROM'
,p_validation_condition2=>'PASTE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(44761168069720848906)
,p_associated_item=>wwv_flow_imp.id(44761170150155848899)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44761174523855848895)
,p_name=>'Show/Hide Advanced Settings'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_SHOW_ADV_SETTINGS'
,p_condition_element=>'P55_SHOW_ADV_SETTINGS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44761175081214848891)
,p_event_id=>wwv_flow_imp.id(44761174523855848895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_CURRENCY,P55_GROUP_SEPARATOR,P55_DECIMAL_CHARACTER,P55_APP_DATE_FORMAT,P55_CHAR_SET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44761175523713848890)
,p_event_id=>wwv_flow_imp.id(44761174523855848895)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_CURRENCY,P55_GROUP_SEPARATOR,P55_DECIMAL_CHARACTER,P55_APP_DATE_FORMAT,P55_CHAR_SET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44761180434454848883)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_IMPORT_FROM'
,p_condition_element=>'P55_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44761180976403848883)
,p_event_id=>wwv_flow_imp.id(44761180434454848883)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44761181401486848883)
,p_event_id=>wwv_flow_imp.id(44761180434454848883)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'\t'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44761181960748848883)
,p_event_id=>wwv_flow_imp.id(44761180434454848883)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44761182350207848883)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_IMPORT_FROM'
,p_condition_element=>'P55_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44761182852639848882)
,p_event_id=>wwv_flow_imp.id(44761182350207848883)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44761183329106848882)
,p_event_id=>wwv_flow_imp.id(44761182350207848883)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>','
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44761183817410848882)
,p_event_id=>wwv_flow_imp.id(44761182350207848883)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44761184338140848880)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_imp.id(44757339356420187237)
,p_attribute_02=>'P55_IMPORT_FROM'
,p_attribute_03=>'P55_SEPARATOR'
,p_attribute_04=>'P55_ENCLOSED_BY'
,p_attribute_05=>'P55_FIRST_ROW'
,p_attribute_06=>'P55_CURRENCY'
,p_attribute_07=>'P55_GROUP_SEPARATOR'
,p_attribute_08=>'P55_DECIMAL_CHARACTER'
,p_attribute_09=>'P55_FILE_NAME'
,p_attribute_10=>'P55_COPY_PASTE'
,p_attribute_11=>'P55_CHAR_SET'
,p_attribute_12=>'P55_APP_DATE_FORMAT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(44761168069720848906)
,p_internal_uid=>44761184338140848880
);
wwv_flow_imp.component_end;
end;
/
