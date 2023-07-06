prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_name=>'Origem da Carga de Dados'
,p_step_title=>'Origem da Carga de Dados'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'LUCKAS.WK@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230706134603'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35793784772091173531)
,p_plug_name=>'Explicacao'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>40
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35793784807245173532)
,p_plug_name=>unistr('Descri\00E7\00E3o:')
,p_parent_plug_id=>wwv_flow_imp.id(35793784772091173531)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>wwv_flow_imp.id(52084017905769434445)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>unistr('Nesta p\00E1gina do aplicativo, os usu\00E1rios t\00EAm a capacidade de realizar grandes cargas de dados. O processo envolve o download de um template que deve ser preenchido pelos usu\00E1rios. Ao fazer a carga desses dados, s\00E3o aplicadas valida\00E7\00F5es no formato do p')
||unistr('rocesso. Al\00E9m disso, h\00E1 uma verifica\00E7\00E3o para garantir a exist\00EAncia dos campos ''TEMA'', ''MACROTEMA'', ''PROCESSO'' e ''ANO'' na base de dados. Todas as outras informa\00E7\00F5es essenciais, como relator, jurisprud\00EAncia e ano, s\00E3o obtidas atrav\00E9s de consultas (SELE')
||unistr('CT) e adicionadas \00E0 tabela de acervo correspondente ao acervo selecionado.')
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44758174915378542638)
,p_plug_name=>'Andamento do Assistente de Carga de Dados'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(44758172441589542677)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(52084093452123434362)
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44758175273613542638)
,p_plug_name=>'Origem da Carga de Dados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>30
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53395354466504664017)
,p_plug_name=>'Selecionar Acervo'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(52084032014915434424)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(53395355817810664030)
,p_name=>'Lista_Acervo'
,p_parent_plug_id=>wwv_flow_imp.id(53395354466504664017)
,p_template=>wwv_flow_imp.id(52084021589175434436)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayInitials:t-Cards--3cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD,',
'       NOME_ACERVO card_title,',
'       upper(substr(NOME_ACERVO,0,2)) card_initials,',
'       null card_subtitle,',
'       null card_text,',
'       null card_subtext,',
'       null card_icon, ',
'       null created_by,',
'       null created,',
'       null updated_by,',
'       null updated,',
'       APEX_PAGE.GET_URL(',
'       p_page => 33,',
'       p_items => ''P1_ACERVO'',',
'       p_values => NOME_ACERVO,',
'       p_clear_cache => ''YES''',
'       ) CARD_LINK',
'from SISAP_ACERVOS',
'ORDER BY 2'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084058986924434396)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236496030312835323)
,p_query_column_id=>1
,p_column_alias=>'COD'
,p_column_display_sequence=>1
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236496411581835321)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236496821134835321)
,p_query_column_id=>3
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>3
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236497213860835321)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>4
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236497577829835321)
,p_query_column_id=>5
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236497996342835321)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236498351707835320)
,p_query_column_id=>7
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>7
,p_column_heading=>'Card Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236498797381835320)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236499194389835320)
,p_query_column_id=>9
,p_column_alias=>'CREATED'
,p_column_display_sequence=>9
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236499633615835319)
,p_query_column_id=>10
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236499981931835319)
,p_query_column_id=>11
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>11
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37236500369683835319)
,p_query_column_id=>12
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>12
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44758263319660522889)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(44758175273613542638)
,p_button_name=>'Download_Template'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_image_alt=>'Download Template'
,p_button_position=>'COPY'
,p_button_redirect_url=>'&P33_URL.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44758176019930542636)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(44758175273613542638)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Pr\00F3ximo')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.uploadNonEmpty(''P33_COPY_PASTE'', ''NEXT'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44758175614009542637)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44758175273613542638)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(44758192725566542622)
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(44758176019930542636)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37247558848078415202)
,p_name=>'P33_URL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
,p_use_cache_before_default=>'NO'
,p_source=>'''https://contas.tcu.gov.br/ords/f?p='' || :APP_ID || '':3:'' || :APP_SESSION || '':'' || :REQUEST || ''CSV::::'''
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44758176577983542635)
,p_name=>'P33_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
,p_item_default=>'PASTE'
,p_prompt=>'Importar de'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_imp.id(44706205074573137013)||'.'
,p_tag_attributes=>'checked'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44758176882863542634)
,p_name=>'P33_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
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
 p_id=>wwv_flow_imp.id(44758178130479542633)
,p_name=>'P33_COPY_PASTE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
,p_display_as=>'NATIVE_HIDDEN'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44758178679415542633)
,p_name=>'P33_SEPARATOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
,p_item_default=>';'
,p_prompt=>'Novo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identifique um caractere separador de coluna. Use <strong>\t</strong> para separadores de guia.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44758179572248542632)
,p_name=>'P33_ENCLOSED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
,p_item_default=>'"'
,p_display_as=>'NATIVE_HIDDEN'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Enter a delimiter character. You can use this character to delineate the starting and ending boundary of a data value. If you specify a delimiter character, Data Workshop ignores whitespace occurring before the starting and ending boundary of a data '
||'value. You can also use this option to enclose a data value with the specified delimiter character.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44758180430423542631)
,p_name=>'P33_FIRST_ROW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
,p_item_default=>'Y'
,p_display_as=>'NATIVE_HIDDEN'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Selecione esta caixa se seus dados contiverem nomes de coluna na primeira linha.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44758181331655542630)
,p_name=>'P33_SHOW_ADV_SETTINGS'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
,p_display_as=>'NATIVE_HIDDEN'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Exibir defini\00E7\00F5es avan\00E7adas para carregamento de dados: S\00EDmbolo de Moeda, Caracteres Decimais, Codifica\00E7\00E3o de Arquivo ou Formatos de Data'),
''))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44758184047033542628)
,p_name=>'P33_APP_DATE_FORMAT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
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
 p_id=>wwv_flow_imp.id(44758184986734542627)
,p_name=>'P33_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
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
 p_id=>wwv_flow_imp.id(44758185834671542626)
,p_name=>'P33_CURRENCY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
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
 p_id=>wwv_flow_imp.id(44758186729749542626)
,p_name=>'P33_GROUP_SEPARATOR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
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
 p_id=>wwv_flow_imp.id(44758187608187542625)
,p_name=>'P33_DECIMAL_CHARACTER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(44758175273613542638)
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
 p_id=>wwv_flow_imp.id(44758177856615542633)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P33_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# deve ter algum valor.'
,p_validation_condition=>'P33_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(44758176019930542636)
,p_associated_item=>wwv_flow_imp.id(44758176882863542634)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44758182189922542630)
,p_validation_name=>'Uploaded data is not null'
,p_validation_sequence=>20
,p_validation=>'P33_COPY_PASTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# deve ter algum valor.'
,p_validation_condition=>'P33_IMPORT_FROM'
,p_validation_condition2=>'PASTE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(44758176019930542636)
,p_associated_item=>wwv_flow_imp.id(44758178130479542633)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44758182537128542630)
,p_name=>'Show/Hide Advanced Settings'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_SHOW_ADV_SETTINGS'
,p_condition_element=>'P33_SHOW_ADV_SETTINGS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44758183035552542629)
,p_event_id=>wwv_flow_imp.id(44758182537128542630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_CURRENCY,P33_GROUP_SEPARATOR,P33_DECIMAL_CHARACTER,P33_APP_DATE_FORMAT,P33_CHAR_SET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44758183579577542629)
,p_event_id=>wwv_flow_imp.id(44758182537128542630)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_CURRENCY,P33_GROUP_SEPARATOR,P33_DECIMAL_CHARACTER,P33_APP_DATE_FORMAT,P33_CHAR_SET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44758188389565542624)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_IMPORT_FROM'
,p_condition_element=>'P33_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44758188898505542624)
,p_event_id=>wwv_flow_imp.id(44758188389565542624)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44758189413418542624)
,p_event_id=>wwv_flow_imp.id(44758188389565542624)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'\t'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44758189940336542624)
,p_event_id=>wwv_flow_imp.id(44758188389565542624)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44758190331183542624)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_IMPORT_FROM'
,p_condition_element=>'P33_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44758190837266542623)
,p_event_id=>wwv_flow_imp.id(44758190331183542624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44758191350219542623)
,p_event_id=>wwv_flow_imp.id(44758190331183542624)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>','
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44758191811342542623)
,p_event_id=>wwv_flow_imp.id(44758190331183542624)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44758263389336522890)
,p_name=>'OCULTAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_SEPARATOR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44758263583138522891)
,p_event_id=>wwv_flow_imp.id(44758263389336522890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P33_SEPARATOR'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44758192384022542623)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_imp.id(44757339356420187237)
,p_attribute_02=>'P33_IMPORT_FROM'
,p_attribute_03=>'P33_SEPARATOR'
,p_attribute_04=>'P33_ENCLOSED_BY'
,p_attribute_05=>'P33_FIRST_ROW'
,p_attribute_06=>'P33_CURRENCY'
,p_attribute_07=>'P33_GROUP_SEPARATOR'
,p_attribute_08=>'P33_DECIMAL_CHARACTER'
,p_attribute_09=>'P33_FILE_NAME'
,p_attribute_10=>'P33_COPY_PASTE'
,p_attribute_11=>'P33_CHAR_SET'
,p_attribute_12=>'P33_APP_DATE_FORMAT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(44758176019930542636)
,p_internal_uid=>44758192384022542623
);
wwv_flow_imp.component_end;
end;
/
