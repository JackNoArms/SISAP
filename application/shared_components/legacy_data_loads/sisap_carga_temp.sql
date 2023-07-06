prompt --application/shared_components/legacy_data_loads/sisap_carga_temp
begin
--   Manifest
--     SISAP_CARGA_TEMP
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5027543859619014164
,p_default_application_id=>129733
,p_default_id_offset=>29154433241069204883
,p_default_owner=>'WKSP_WORKPLACETESTES'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(44757339356420187237)
,p_name=>'SISAP_CARGA'
,p_owner=>'#OWNER#'
,p_table_name=>'SISAP_CARGA_TEMP'
,p_unique_column_1=>'ORGAO_ENTIDADE'
,p_is_uk1_case_sensitive=>'N'
,p_unique_column_2=>'PROCESSO'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp_shared.create_load_table_lookup(
 p_id=>wwv_flow_imp.id(37233813169712391027)
,p_load_table_id=>wwv_flow_imp.id(44757339356420187237)
,p_load_column_name=>'COD_ACERVO'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'SISAP_ACERVOS'
,p_key_column=>'COD'
,p_display_column=>'NOME_ACERVO'
,p_where_clause=>'cod_acervo IS NULL or cod_acervo is not null'
,p_insert_new_value=>'N'
);
wwv_flow_imp_shared.create_load_table_lookup(
 p_id=>wwv_flow_imp.id(44757469183445140248)
,p_load_table_id=>wwv_flow_imp.id(44757339356420187237)
,p_load_column_name=>'TEMA'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'SISAP_TEMA'
,p_key_column=>'COD'
,p_display_column=>'TEMA'
,p_where_clause=>'TEMA IS not NULL'
,p_insert_new_value=>'N'
,p_error_message=>unistr('TEMA com valor inv\00E1lido ou n\00E3o cadastrado.')
);
wwv_flow_imp_shared.create_load_table_lookup(
 p_id=>wwv_flow_imp.id(44761146138701922497)
,p_load_table_id=>wwv_flow_imp.id(44757339356420187237)
,p_load_column_name=>'ORGAO_ENTIDADE'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'ORGAO_ENTIDADE'
,p_key_column=>'COD'
,p_display_column=>'ORGAO_ENTIDADE'
,p_where_clause=>'ORGAO_ENTIDADE IS not NULL'
,p_insert_new_value=>'N'
,p_error_message=>unistr('ORGAO_ENTIDADE com valor inv\00E1lido ou n\00E3o cadastrado.')
);
wwv_flow_imp_shared.create_load_table_lookup(
 p_id=>wwv_flow_imp.id(44757339598070187235)
,p_load_table_id=>wwv_flow_imp.id(44757339356420187237)
,p_load_column_name=>'MACROTEMA'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'SISAP_MACROTEMA'
,p_key_column=>'COD'
,p_display_column=>'MACROTEMA'
,p_where_clause=>'MACROTEMA IS not NULL'
,p_insert_new_value=>'N'
,p_error_message=>unistr('MACROTEMA com valor inv\00E1lido ou n\00E3o cadastrado.')
);
wwv_flow_imp.component_end;
end;
/
