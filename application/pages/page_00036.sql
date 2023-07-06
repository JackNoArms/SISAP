prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_name=>'Resultados de Carga de Dados'
,p_step_title=>'Resultados de Carga de Dados'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* apply u-Report--dataLoad CSS class to Data Load Report and hide empty columns */',
'apex.jQuery("table.standardLook").addClass("u-Report u-Report--standardLook");',
'apex.jQuery("table.u-Report--standardLook tr:nth-child(1) td:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").each( function (idx, elem) { apex.jQuery("table.u-Report--standardLook tr td[headers=\""+apex.jQuery(elem).attr(''id'')+"\"]").css("display", "none");});'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230511155330'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44758219013435542603)
,p_plug_name=>'Andamento do Assistente de Carga de Dados'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(44758172441589542677)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(52084093452123434362)
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44758219381219542602)
,p_plug_name=>'Resultados de Carga de Dados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44758221772253542601)
,p_name=>'Registros com Falha'
,p_template=>wwv_flow_imp.id(52084043141939434416)
,p_display_sequence=>40
,p_region_css_classes=>'data-upload-result'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       wwv_flow_lang.system_message( ''DATA_LOAD.'' || c049 ) as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c047 in (''FAILED'') ',
' order by seq_id'))
,p_display_when_condition=>'P36_ERROR_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_lazy_loading=>false
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('dados n\00E3o encontrados')
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758222479409542599)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758222802456542599)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758223204601542598)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758223601291542598)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758224084166542598)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758224450574542598)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758224789750542597)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758225228874542597)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758225646666542597)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758226045994542597)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758226444074542597)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758226788666542597)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758227215284542597)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758227667087542596)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758228036189542596)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758228443514542596)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758228803553542596)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758229238964542596)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758229678926542595)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758230005801542595)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758230468640542595)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758230857750542595)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758231218507542595)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758231596496542595)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758232030178542594)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758232445902542594)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758232856642542593)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758233240391542593)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758233682922542593)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758234055569542593)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758234442727542592)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758234882422542592)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758235274034542592)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758235613282542592)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758236083261542592)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758236413868542592)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758236805491542591)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758237250306542591)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758237638391542591)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758238013190542591)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758238476645542590)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758238840475542590)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758239252784542590)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758239601461542590)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758240037104542590)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758240486296542589)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758240848866542589)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44758241536368542589)
,p_name=>unistr('Registros Alterados por Outro Usu\00E1rio.')
,p_template=>wwv_flow_imp.id(52084043141939434416)
,p_display_sequence=>50
,p_region_css_classes=>'data-upload-result'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       wwv_flow_lang.system_message( ''DATA_LOAD.'' || c049 ) as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''REVIEW'') ',
' order by seq_id'))
,p_display_when_condition=>'P36_REVIEW_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_lazy_loading=>false
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('dados n\00E3o encontrados')
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758242248497542587)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758242633386542586)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758243063393542586)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758243486871542586)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758243854136542585)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758244274661542585)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758244672789542585)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758245048965542585)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758245454832542584)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758245880658542584)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758246261304542584)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758246589216542584)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758247062333542584)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758247452333542583)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758247824592542583)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758248279806542583)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758248661582542583)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758249024725542583)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758249412650542583)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758249888244542582)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758250228351542582)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758250657108542582)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758251006194542582)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758251481698542581)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758251827561542581)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758252250848542581)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758252649778542581)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758252999360542581)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758253454653542581)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758253836569542580)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758254263090542580)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758254598351542580)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758254990339542580)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758255415151542580)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758255815934542580)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758256283191542580)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758256657998542579)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758257030511542579)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758257435879542579)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758257857406542579)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758258269513542579)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758258643246542579)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758259042834542578)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758259429725542578)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758259841397542578)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758260282020542578)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44758260671883542577)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44758219730746542602)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(44758219381219542602)
,p_button_name=>'FINISH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(52084095456161434356)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(37237152833590949005)
,p_branch_name=>unistr('Redirecionar para p\00E1gina 9')
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44758220237814542602)
,p_name=>'P36_INSERT_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44758219381219542602)
,p_prompt=>'Linha(s) Inserida(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44758220672706542602)
,p_name=>'P36_UPDATE_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44758219381219542602)
,p_prompt=>'Linha(s) Atualizada(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44758221030237542601)
,p_name=>'P36_ERROR_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44758219381219542602)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Linha(s) com Falha:'
,p_source=>'select count(*) c from apex_collections where collection_name = ''LOAD_CONTENT'' and c047 = ''FAILED'''
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44758221418190542601)
,p_name=>'P36_REVIEW_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44758219381219542602)
,p_prompt=>'Linhas a Serem Revisadas:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(52084094884848434359)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37237150945910948987)
,p_name=>'Gatilho para ativar o processo'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44758219730746542602)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37237151078787948988)
,p_event_id=>wwv_flow_imp.id(37237150945910948987)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37236508147374773617)
,p_process_sequence=>40
,p_process_point=>'AFTER_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Preencher acervo_1_3'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE SISAP_CARGA_TEMP',
'  SET COD_ACERVO = :P1_COD_ACERVO',
'  WHERE COD_ACERVO IS NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37236508147374773617
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37236507956332773615)
,p_process_sequence=>40
,p_process_point=>'AFTER_FOOTER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Preencher acervo_1_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE SISAP_CARGA_TEMP',
'  SET COD_ACERVO = :P1_COD_ACERVO',
'  WHERE COD_ACERVO IS NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37236507956332773615
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37236508410711773619)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Preencher acervo_1_5'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE SISAP_CARGA_TEMP',
'  SET COD_ACERVO = :P1_COD_ACERVO',
'  WHERE COD_ACERVO IS NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37236508410711773619
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37236508331003773618)
,p_process_sequence=>40
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Preencher acervo_1_4'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE SISAP_CARGA_TEMP',
'  SET COD_ACERVO = :P1_COD_ACERVO',
'  WHERE COD_ACERVO IS NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37236508331003773618
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37236508107518773616)
,p_process_sequence=>40
,p_process_point=>'BEFORE_FOOTER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Preencher acervo_1_2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE SISAP_CARGA_TEMP',
'  SET COD_ACERVO = :P1_COD_ACERVO',
'  WHERE COD_ACERVO IS NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37236508107518773616
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37236508452426773620)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Preencher acervo_1_6'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE SISAP_CARGA_TEMP',
'  SET COD_ACERVO = :P1_COD_ACERVO',
'  WHERE COD_ACERVO IS NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37236508452426773620
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37236508575112773621)
,p_process_sequence=>40
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Preencher acervo_1_7'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE SISAP_CARGA_TEMP',
'  SET COD_ACERVO = :P1_COD_ACERVO',
'  WHERE COD_ACERVO IS NULL;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>37236508575112773621
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5027543859619014164
,p_default_application_id=>129733
,p_default_id_offset=>29154433241069204883
,p_default_owner=>'WKSP_WORKPLACETESTES'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37237151170011948989)
,p_process_sequence=>10
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
,p_internal_uid=>37237151170011948989
);
null;
wwv_flow_imp.component_end;
end;
/
