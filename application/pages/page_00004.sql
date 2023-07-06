prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Criar acervos'
,p_step_title=>'Criar acervos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230424123555'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(45297121178834043609)
,p_name=>'Novo'
,p_template=>wwv_flow_imp.id(52084042044377434417)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--float'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOME_ACERVO',
'  from SISAP_ACERVOS'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(52084055071931434399)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45297123265778043630)
,p_query_column_id=>1
,p_column_alias=>'NOME_ACERVO'
,p_column_display_sequence=>1
,p_column_heading=>'Nome Acervo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:P1_ACERVO:#NOME_ACERVO#'
,p_column_linktext=>'#NOME_ACERVO#'
,p_column_link_attr=>'#NOME_ACERVO#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
