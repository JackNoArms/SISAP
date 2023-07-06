prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_name=>unistr('Gr\00E1fico Tema')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Gr\00E1fico Tema')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(52084009659356434452)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'04'
,p_last_updated_by=>'X03101735319'
,p_last_upd_yyyymmddhh24miss=>'20230215183535'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44716785554146865937)
,p_plug_name=>unistr('Gr\00E1fico Tema')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(52084043141939434416)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(44716785943324865936)
,p_region_id=>wwv_flow_imp.id(44716785554146865937)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(44716787590454865933)
,p_chart_id=>wwv_flow_imp.id(44716785943324865936)
,p_seq=>10
,p_name=>'Tema'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TE.TEMA LABEL, COUNT(ST.TEMA) AS "Contagem de Processo"',
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
'ON ST.NUM_PROCESSO = PG.NUM AND ST.ANO = PG.ANO  AND ST.NUM_DV = PG.NUM_DV',
'LEFT JOIN SISAP_TEMA TE',
'ON ST.TEMA = TE.COD',
'LEFT JOIN SISAP_MACROTEMA MTE',
'ON ST.MACROTEMA = MTE.COD',
'WHERE ST.TEMA IS NOT NULL',
'GROUP BY TE.TEMA',
'ORDER BY TE.TEMA ASC',
'',
''))
,p_items_value_column_name=>'Contagem de Processo'
,p_group_short_desc_column_name=>'LABEL'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(44716786395796865935)
,p_chart_id=>wwv_flow_imp.id(44716785943324865936)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'inside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(44716787063003865934)
,p_chart_id=>wwv_flow_imp.id(44716785943324865936)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'bottom'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp.component_end;
end;
/
