prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'Inserir Processos'
,p_step_title=>'Inserir Processos'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'function formatar_mascara(src,mascara){',
'  var campo = src.value.length;',
'  var saida = mascara.substring(0,1);',
'  var texto = mascara.substring(campo);',
'  if(texto.substring(0,1) != saida) {',
'  src.value+=texto.substring(0,1);',
'  }',
'}',
'//-->',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'LUCKAS.WK@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230706133420'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44704408447440596495)
,p_plug_name=>'Tudo'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44696117154104828301)
,p_plug_name=>'Buscador'
,p_parent_plug_id=>wwv_flow_imp.id(44704408447440596495)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(52084021589175434436)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35793784681131173530)
,p_plug_name=>unistr('Descri\00E7\00E3o:')
,p_parent_plug_id=>wwv_flow_imp.id(44696117154104828301)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(52084017905769434445)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_HELP_TEXT'
,p_plug_header=>unistr('Essa p\00E1gina pesquisava no banco de dados do TCU chamada de LabContas e verificava se o processo que o usu\00E1rio queria adicionar j\00E1 existia nesse acervo.')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52128252114620386970)
,p_plug_name=>'Relatorio'
,p_parent_plug_id=>wwv_flow_imp.id(44704408447440596495)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(52084042044377434417)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM SISAP_ACERVOS',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(52128252187583386971)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>unistr('f?p=&APP_ID.:18:&SESSION.::&DEBUG.::P18_PROCESSO,P18_ANO,P18_ASSUNTO,P18_UT,P18_ESTADO,P18_RELATOR,P18_SITUA\00C7\00C3O_DO_PROCESSO,P18_TIPO:&P5_PROCESSO.,#ANO#,#TEXTO_COMPLEMENTO_ASSUNTO#,#SIGLA#,#ESTADO#,#RELATOR#,#SITUACAO_PROCESSO#,#TIPO#')
,p_detail_link_text=>'<h1>&#43;</h1>'
,p_detail_link_attr=>'title="Adicionar Processo"'
,p_owner=>'X03101735319'
,p_internal_uid=>7437912513941657818
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52128252343433386972)
,p_db_column_name=>'COD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35793781737758173501)
,p_db_column_name=>'NOME_ACERVO'
,p_display_order=>20
,p_column_identifier=>'Q'
,p_column_label=>'Nome Acervo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52128421736196699356)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'74380821'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45313292353142033565)
,p_plug_name=>'Selecionar Acervo'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(52084032014915434424)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(45313293704448033578)
,p_name=>'Lista_Acervo'
,p_parent_plug_id=>wwv_flow_imp.id(45313292353142033565)
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
'       p_page => 5,',
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
 p_id=>wwv_flow_imp.id(37233925987373750547)
,p_query_column_id=>1
,p_column_alias=>'COD'
,p_column_display_sequence=>1
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233926378355750547)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233926753688750547)
,p_query_column_id=>3
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>3
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233927183128750546)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>4
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233927638667750546)
,p_query_column_id=>5
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233927991868750546)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233928425023750546)
,p_query_column_id=>7
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>7
,p_column_heading=>'Card Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233928832925750546)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233929158728750545)
,p_query_column_id=>9
,p_column_alias=>'CREATED'
,p_column_display_sequence=>9
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233929558337750545)
,p_query_column_id=>10
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233929961174750545)
,p_query_column_id=>11
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>11
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(37233930430461750545)
,p_query_column_id=>12
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>12
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52114482985033884365)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(44696117154104828301)
,p_button_name=>'Pesquisar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(52084095282997434358)
,p_button_image_alt=>'Pesquisar'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-search'
,p_grid_column_attributes=>'style ="top:12px; right:5px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45297123809343043636)
,p_name=>'P5_COD_ACERVO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(44696117154104828301)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD',
'FROM SISAP_ACERVOS',
'WHERE :P1_ACERVO = NOME_ACERVO'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'U'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45299454759190842867)
,p_name=>'P5_ACERVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44696117154104828301)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ACERVO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOME_ACERVO',
'FROM SISAP_ACERVOS',
'WHERE :P1_ACERVO = NOME_ACERVO'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(52084094610832434361)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52114482825002884363)
,p_name=>'P5_PROCESSO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44696117154104828301)
,p_prompt=>'Processo'
,p_placeholder=>'XXX.XXX/XXXX-X'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>14
,p_tag_attributes=>'mask: onkeyPress="javascript:{formatar_mascara(this, ''###.###/####-#''); }" onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52114482958661884364)
,p_name=>'P5_COD_PROCESSO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44696117154104828301)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(44696439186867144318)
,p_validation_name=>'Verificar'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from VW_SISAP_TEMP',
'where :P5_PROCESSO = PROCESSO and COD_ACERVO = :P5_COD_ACERVO'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Processo j\00E1 existe no acervo selecionado.')
,p_validation_condition=>'P5_PROCESSO'
,p_validation_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44695424087803011990)
,p_name=>'Verificar'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(52128252114620386970)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44695424111155011991)
,p_event_id=>wwv_flow_imp.id(44695424087803011990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Obt\00E9m os valores dos itens da p\00E1gina'),
'var valorProcesso = $v("P5_PROCESSO");',
'var valorCodAcervo = $v("P5_COD_ACERVO");',
'',
unistr('// Verifica se as colunas s\00E3o iguais aos valores dos itens'),
'if (apex.item("P5_PROCESSO").getValue() === $v("sisap_carga_temp.PROCESSO") && apex.item("P5_COD_ACERVO").getValue() === $v("sisap_carga_temp.COD_ACERVO")) {',
unistr('  // As colunas s\00E3o iguais aos valores dos itens'),
unistr('  console.log("As colunas s\00E3o iguais aos valores dos itens.");'),
'',
unistr('  // Submete a p\00E1gina'),
'  apex.page.submit();',
'} else {',
unistr('  // As colunas n\00E3o s\00E3o iguais aos valores dos itens'),
unistr('  console.log("As colunas n\00E3o s\00E3o iguais aos valores dos itens.");'),
'}',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52114482721186884362)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pesquisa  Processo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('-- Precisa fazer a pesquisa por numero, ano e NUM_DV, esse regex separa a string informada pelo usu\00E1rio nesses 3 valores e faz uma consulta para achar o COD'),
'BEGIN',
'    SELECT MAX(COD) INTO :P5_COD_PROCESSO',
'    FROM TCU.VW_APEX_PROCESSO_GESTAO',
'    WHERE',
'      REGEXP_LIKE   (LPAD(:P5_PROCESSO, 14, ''0''), ''^(\d{3})\.(\d{3})\/(\d{4})\-(\d)$'') AND',
'      REGEXP_REPLACE(LPAD(:P5_PROCESSO, 14, ''0''), ''^(\d{3})\.(\d{3})\/.*''            , ''\1\2'') = NUM AND',
'      REGEXP_REPLACE(:P5_PROCESSO,                ''.*\/(\d{4})\-.*''   , ''\1'') = ANO AND',
'      REGEXP_REPLACE(:P5_PROCESSO,                         ''.*\-(\d)$'', ''\1'') = NUM_DV;',
'      ',
'       ',
'EXCEPTION WHEN NO_DATA_FOUND THEN',
'    APEX_ERROR.ADD_ERROR(',
unistr('        ''O processo buscado n\00E3o foi encontrado'','),
'        p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'    );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Processo n\00E3o encontrado ou n\00E3o existe!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(52114482985033884365)
,p_internal_uid=>52114482721186884362
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37243710592704892317)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Preencher Cod_Acervo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE sisap_carga_temp',
'SET cod_acervo = (SELECT COD FROM SISAP_ACERVOS WHERE NOME_ACERVO = :P1_ACERVO)',
'WHERE cod_acervo IS NULL;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37243710592704892317
);
wwv_flow_imp.component_end;
end;
/
