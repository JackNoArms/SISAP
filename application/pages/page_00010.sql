prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Editar Processos Acervos'
,p_page_mode=>'MODAL'
,p_step_title=>'Editar Processos Acervos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230522145418'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45301571369140445947)
,p_plug_name=>'Editar Processos Acervos'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45301571802982445946)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'CHANGE'
,p_button_condition=>'P10_PROCESSO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45301572054403445946)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45301571694249445946)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Criar'
,p_button_position=>'CREATE'
,p_button_condition=>'P10_PROCESSO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45301571910733445946)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_image_alt=>'Excluir'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_PROCESSO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301446408317023819)
,p_name=>'P10_ACERVO_ATUAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Acervo Atual'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOME_ACERVO',
'FROM SISAP_ACERVOS',
'WHERE :P10_COD_ACERVO = COD'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094610832434361)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301446572733023820)
,p_name=>'P10_ANO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ano'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PG.ANO',
'FROM TCU.VW_APEX_PROCESSO_GESTAO PG',
'LEFT JOIN TCU.VW_APEX_SITUACAO_PROCESSO SP',
'ON PG.COD_SITUACAO_ATUAL = SP.COD',
'LEFT JOIN TCU.VW_APEX_LOTE LT',
'ON PG.COD = LT.COD',
'LEFT JOIN TCU.VW_APEX_MINISTRO MN',
'ON LT.COD_MINIS_RELATORIA_LOTE_ATUAL = MN.COD',
'LEFT JOIN TCU.VW_APEX_ESTADO_PAPEL EP',
'ON LT.COD_ESTADO = EP.COD',
'LEFT JOIN TCU.VW_APEX_UNID_ORGANIZAC_TCU UT',
'ON PG.COD_UNID_RESPONSAVEL_TECNICA = UT.COD',
'LEFT JOIN TCU.VW_APEX_HIST_TIPO_LOTE HTP ',
'ON PG.COD = HTP.COD_LOTE',
'LEFT JOIN TCU.VW_APEX_TIPO_PROCESSO TP ',
'ON HTP.COD_TIPO_PROCESSO = TP.COD',
'RIGHT JOIN VW_SISAP_TEMP ST',
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV ',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'LEFT JOIN ORGAO_ENTIDADE OE ',
'ON ST.ORGAO_ENTIDADE = OE.COD',
'LEFT JOIN SISAP_ACERVOS SSA',
'ON SSA.COD = ST.COD_ACERVO',
'where :p10_processo = st.processo and :p10_cod_acervo = st.cod_acervo'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301446601311023821)
,p_name=>'P10_TIPO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TP.DESCR TIPO',
'FROM TCU.VW_APEX_PROCESSO_GESTAO PG',
'LEFT JOIN TCU.VW_APEX_SITUACAO_PROCESSO SP',
'ON PG.COD_SITUACAO_ATUAL = SP.COD',
'LEFT JOIN TCU.VW_APEX_LOTE LT',
'ON PG.COD = LT.COD',
'LEFT JOIN TCU.VW_APEX_MINISTRO MN',
'ON LT.COD_MINIS_RELATORIA_LOTE_ATUAL = MN.COD',
'LEFT JOIN TCU.VW_APEX_ESTADO_PAPEL EP',
'ON LT.COD_ESTADO = EP.COD',
'LEFT JOIN TCU.VW_APEX_UNID_ORGANIZAC_TCU UT',
'ON PG.COD_UNID_RESPONSAVEL_TECNICA = UT.COD',
'LEFT JOIN TCU.VW_APEX_HIST_TIPO_LOTE HTP ',
'ON PG.COD = HTP.COD_LOTE',
'LEFT JOIN TCU.VW_APEX_TIPO_PROCESSO TP ',
'ON HTP.COD_TIPO_PROCESSO = TP.COD',
'RIGHT JOIN VW_SISAP_TEMP ST',
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV ',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'LEFT JOIN ORGAO_ENTIDADE OE ',
'ON ST.ORGAO_ENTIDADE = OE.COD',
'LEFT JOIN SISAP_ACERVOS SSA',
'ON SSA.COD = ST.COD_ACERVO',
'where :p10_processo = st.processo and :p10_cod_acervo = st.cod_acervo'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301446778135023822)
,p_name=>'P10_RELATOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Relator'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MN.NOME_REDUZIDO RELATOR',
'FROM TCU.VW_APEX_PROCESSO_GESTAO PG',
'LEFT JOIN TCU.VW_APEX_SITUACAO_PROCESSO SP',
'ON PG.COD_SITUACAO_ATUAL = SP.COD',
'LEFT JOIN TCU.VW_APEX_LOTE LT',
'ON PG.COD = LT.COD',
'LEFT JOIN TCU.VW_APEX_MINISTRO MN',
'ON LT.COD_MINIS_RELATORIA_LOTE_ATUAL = MN.COD',
'LEFT JOIN TCU.VW_APEX_ESTADO_PAPEL EP',
'ON LT.COD_ESTADO = EP.COD',
'LEFT JOIN TCU.VW_APEX_UNID_ORGANIZAC_TCU UT',
'ON PG.COD_UNID_RESPONSAVEL_TECNICA = UT.COD',
'LEFT JOIN TCU.VW_APEX_HIST_TIPO_LOTE HTP ',
'ON PG.COD = HTP.COD_LOTE',
'LEFT JOIN TCU.VW_APEX_TIPO_PROCESSO TP ',
'ON HTP.COD_TIPO_PROCESSO = TP.COD',
'RIGHT JOIN VW_SISAP_TEMP ST',
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV ',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'LEFT JOIN ORGAO_ENTIDADE OE ',
'ON ST.ORGAO_ENTIDADE = OE.COD',
'LEFT JOIN SISAP_ACERVOS SSA',
'ON SSA.COD = ST.COD_ACERVO',
'where :p10_processo = st.processo and :p10_cod_acervo = st.cod_acervo'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301446815193023823)
,p_name=>'P10_UT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ut'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UT.SIGLA UT',
'FROM TCU.VW_APEX_PROCESSO_GESTAO PG',
'LEFT JOIN TCU.VW_APEX_SITUACAO_PROCESSO SP',
'ON PG.COD_SITUACAO_ATUAL = SP.COD',
'LEFT JOIN TCU.VW_APEX_LOTE LT',
'ON PG.COD = LT.COD',
'LEFT JOIN TCU.VW_APEX_MINISTRO MN',
'ON LT.COD_MINIS_RELATORIA_LOTE_ATUAL = MN.COD',
'LEFT JOIN TCU.VW_APEX_ESTADO_PAPEL EP',
'ON LT.COD_ESTADO = EP.COD',
'LEFT JOIN TCU.VW_APEX_UNID_ORGANIZAC_TCU UT',
'ON PG.COD_UNID_RESPONSAVEL_TECNICA = UT.COD',
'LEFT JOIN TCU.VW_APEX_HIST_TIPO_LOTE HTP ',
'ON PG.COD = HTP.COD_LOTE',
'LEFT JOIN TCU.VW_APEX_TIPO_PROCESSO TP ',
'ON HTP.COD_TIPO_PROCESSO = TP.COD',
'RIGHT JOIN VW_SISAP_TEMP ST',
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV ',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'LEFT JOIN ORGAO_ENTIDADE OE ',
'ON ST.ORGAO_ENTIDADE = OE.COD',
'LEFT JOIN SISAP_ACERVOS SSA',
'ON SSA.COD = ST.COD_ACERVO',
'where :p10_processo = st.processo and :p10_cod_acervo = st.cod_acervo'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301446925399023824)
,p_name=>'P10_ESTADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estado'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EP.DESCR ESTADO',
'FROM TCU.VW_APEX_PROCESSO_GESTAO PG',
'LEFT JOIN TCU.VW_APEX_SITUACAO_PROCESSO SP',
'ON PG.COD_SITUACAO_ATUAL = SP.COD',
'LEFT JOIN TCU.VW_APEX_LOTE LT',
'ON PG.COD = LT.COD',
'LEFT JOIN TCU.VW_APEX_MINISTRO MN',
'ON LT.COD_MINIS_RELATORIA_LOTE_ATUAL = MN.COD',
'LEFT JOIN TCU.VW_APEX_ESTADO_PAPEL EP',
'ON LT.COD_ESTADO = EP.COD',
'LEFT JOIN TCU.VW_APEX_UNID_ORGANIZAC_TCU UT',
'ON PG.COD_UNID_RESPONSAVEL_TECNICA = UT.COD',
'LEFT JOIN TCU.VW_APEX_HIST_TIPO_LOTE HTP ',
'ON PG.COD = HTP.COD_LOTE',
'LEFT JOIN TCU.VW_APEX_TIPO_PROCESSO TP ',
'ON HTP.COD_TIPO_PROCESSO = TP.COD',
'RIGHT JOIN VW_SISAP_TEMP ST',
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV ',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'LEFT JOIN ORGAO_ENTIDADE OE ',
'ON ST.ORGAO_ENTIDADE = OE.COD',
'LEFT JOIN SISAP_ACERVOS SSA',
'ON SSA.COD = ST.COD_ACERVO',
'where :p10_processo = st.processo and :p10_cod_acervo = st.cod_acervo'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301573675374445934)
,p_name=>'P10_PROCESSO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Processo'
,p_source=>'PROCESSO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301574048408445931)
,p_name=>'P10_COD_ACERVO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_source=>'COD_ACERVO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301574389077445928)
,p_name=>'P10_JURISDICIONADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Jurisdicionado'
,p_source=>'JURISDICIONADO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301574851666445927)
,p_name=>'P10_LOCAL_FISCALIZADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Local Fiscalizado'
,p_source=>'LOCAL_FISCALIZADO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301575271667445926)
,p_name=>'P10_MACROTEMA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Macrotema'
,p_source=>'MACROTEMA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MACROTEMA R, COD V',
'FROM SISAP_MACROTEMA'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301575594551445926)
,p_name=>'P10_TEMA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tema'
,p_source=>'TEMA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TEMA R, COD V',
'FROM SISAP_TEMA',
'ORDER BY TEMA ASC'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301576041215445925)
,p_name=>'P10_PROBLEMA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Problema'
,p_source=>'PROBLEMA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301576461663445924)
,p_name=>'P10_SUBTEMA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subtema'
,p_source=>'SUBTEMA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301576804314445923)
,p_name=>'P10_DETALHAMENTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Detalhamento'
,p_source=>'DETALHAMENTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301577665379445922)
,p_name=>'P10_OBSERVACOES'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Observacoes'
,p_source=>'OBSERVACOES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45301578076271445921)
,p_name=>'P10_ORGAO_ENTIDADE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45301571369140445947)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Orgao Entidade'
,p_source=>'ORGAO_ENTIDADE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGAO_ENTIDADE R, COD V',
'FROM ORGAO_ENTIDADE',
'ORDER BY ORGAO_ENTIDADE ASC'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(52084095266000434358)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45301582182686445916)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SISAP_CARGA_TEMP'
,p_attribute_02=>'SISAP_CARGA_TEMP'
,p_attribute_03=>'P10_PROCESSO'
,p_attribute_04=>'PROCESSO'
,p_attribute_05=>'P10_COD_ACERVO'
,p_attribute_06=>'COD_ACERVO'
,p_internal_uid=>45301582182686445916
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45301582501746445915)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SISAP_CARGA_TEMP'
,p_attribute_02=>'SISAP_CARGA_TEMP'
,p_attribute_03=>'P10_PROCESSO'
,p_attribute_04=>'PROCESSO'
,p_attribute_05=>'P10_COD_ACERVO'
,p_attribute_06=>'COD_ACERVO'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('A\00E7\00E3o Processada.')
,p_internal_uid=>45301582501746445915
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45301582954973445915)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(45301571910733445946)
,p_internal_uid=>45301582954973445915
);
wwv_flow_imp.component_end;
end;
/
