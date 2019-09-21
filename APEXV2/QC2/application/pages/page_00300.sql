prompt --application/pages/page_00300
begin
wwv_flow_api.create_page(
 p_id=>300
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Template Set Up & Maintenance Landing'
,p_step_title=>'Template Set Up & Maintenance'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(15903984505302781)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.no-close .ui-dialog-titlebar-close {',
' display: none;',
' }',
'',
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_step_template=>wwv_flow_api.id(92909427627059975)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190828155534'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30764066461283364)
,p_plug_name=>'Template Set Up & Maintenance'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31561351810439045)
,p_plug_name=>'Model Template List'
,p_region_name=>'MODEL_LIST'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''fa-sitemap'' DRAGNODE,',
'       th.plant_code                                     plant,',
'       (SELECT  BRAND_CODE || '' - '' || BRAND_NAME FROM bg_qcis.QCIS_BRAND_MASTER WHERE QCIS_BRAND_MASTER_ID =  mm.brand_id ) BRAND,',
'       mm.brand_id,',
'       mm.MODEL_MASTER_ID,',
'       th.model_year MODEL_YEAR,',
'       th.model_name           model,',
'       td.map_type                                       TYPE,',
'       insp.inspection_name                              inspection,',
'       th.acc_group,',
'       th.accessory,',
'       sm.station_code || '' - '' || sm.station_name       station,',
'       TO_NUMBER(sm.station_code) station_code,',
'       ss.substation_code || '' - '' || ss.substation_name substation,',
'       TO_NUMBER(ss.substation_code) substation_code,',
'       th.created_by,',
'       th.creation_date,',
'       th.inactive_date',
'  FROM bg_qcis.qcis_im_template_header  th,',
'       bg_qcis.qcis_im_template_draft   td,',
'       bg_qcis.qcis_plant_master        pm,',
'       bg_qcis.qcis_model_master        mm,',
'       bg_qcis.qcis_station_master      sm,',
'       bg_qcis.qcis_substation          ss,',
'       bg_qcis.qcis_inspection_names    insp',
' WHERE     th.draft_id = td.header_id',
'       AND th.PLANT_CODE = pm.PLANT_CODE',
'       AND pm.qcis_plant_master_id = :G_DEFAULT_PLANT_ID',
'       AND th.model_year = mm.model_year',
'       AND th.model_name = mm.model_name',
'       AND th.station_id = SM.station_master_id',
'       AND th.substation_id = ss.substation_id',
'       AND th.inspect_name_id = insp.inspect_name_id',
'UNION ALL',
'SELECT ''fa-sitemap'' DRAGNODE,',
'       pm.plant_code',
'           plant,',
'       (SELECT  BRAND_CODE || '' - '' || BRAND_NAME FROM bg_qcis.QCIS_BRAND_MASTER WHERE QCIS_BRAND_MASTER_ID =  mm.brand_id ) BRAND,',
'       mm.brand_id,',
'       mm.MODEL_MASTER_ID,',
'       mm.model_year MODEL_YEAR,',
'       mm.model_name  model,',
'       CASE',
'           WHEN     (EXISTS',
'                         (SELECT ''Y''',
'                            FROM bg_qcis.qcis_gs_template_detail gtd',
'                           WHERE gtd.header_id = gh.header_id))',
'                AND (EXISTS',
'                         (SELECT ''Y''',
'                            FROM bg_qcis.qcis_var_data_template_detail vtd',
'                           WHERE vtd.template_header_id = gh.header_id))',
'           THEN',
'               ''G/V''',
'           WHEN EXISTS',
'                    (SELECT ''Y''',
'                       FROM bg_qcis.qcis_var_data_template_detail vtd',
'                      WHERE vtd.template_header_id = gh.header_id)',
'           THEN',
'               ''V''',
'           ELSE',
'               ''G''',
'       END',
'           TYPE,',
'       insp.inspection_name',
'           inspection,',
'       gh.acc_group,',
'       gh.accessory,',
'       sm.station_code || '' - '' || sm.station_name',
'           station,',
'       sm.station_code,',
'       ss.substation_code || '' - '' || ss.substation_name',
'           substation,',
'       ss.substation_code,',
'       gh.created_by,',
'       gh.creation_date,',
'       gh.inactive_date',
'  FROM bg_qcis.qcis_gs_template_header  gh,',
'       bg_qcis.qcis_plant_master        pm,',
'       bg_qcis.qcis_model_master        mm,',
'       bg_qcis.qcis_station_master      sm,',
'       bg_qcis.qcis_substation          ss,',
'       bg_qcis.qcis_inspection_names    insp',
' WHERE     gh.PLANT_ID = pm.QCIS_PLANT_MASTER_ID',
'       AND gh.MODEL_ID = mm.MODEL_MASTER_ID',
'       AND gh.plant_id = :G_DEFAULT_PLANT_ID',
'       AND gh.station_id = SM.station_master_id',
'       AND gh.substation_id = ss.substation_id',
'       AND gh.gig_sheet_name = insp.inspect_name_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Model Template List</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31563204425439063)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Model Data Found'
,p_max_rows_per_page=>'25'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>20271856030105079
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26801059980543417)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26803095425543419)
,p_db_column_name=>'PLANT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25528336319003711)
,p_db_column_name=>'MODEL'
,p_display_order=>210
,p_column_identifier=>'AD'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25528409243003712)
,p_db_column_name=>'TYPE'
,p_display_order=>220
,p_column_identifier=>'AE'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(27147280408570644)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25528517036003713)
,p_db_column_name=>'INSPECTION'
,p_display_order=>230
,p_column_identifier=>'AF'
,p_column_label=>'Inspection'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25528605947003714)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>240
,p_column_identifier=>'AG'
,p_column_label=>'Acc Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25528667898003715)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>250
,p_column_identifier=>'AH'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25528833523003716)
,p_db_column_name=>'STATION'
,p_display_order=>260
,p_column_identifier=>'AI'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25528854255003717)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>270
,p_column_identifier=>'AJ'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25528986615003718)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>280
,p_column_identifier=>'AK'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25529056739003719)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>290
,p_column_identifier=>'AL'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25529165817003720)
,p_db_column_name=>'BRAND'
,p_display_order=>300
,p_column_identifier=>'AM'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25529276185003721)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>310
,p_column_identifier=>'AN'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27585522960749994)
,p_db_column_name=>'MODEL_MASTER_ID'
,p_display_order=>320
,p_column_identifier=>'AO'
,p_column_label=>'Model Master Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27586104710750000)
,p_db_column_name=>'STATION_CODE'
,p_display_order=>330
,p_column_identifier=>'AP'
,p_column_label=>'Station Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27586220814750001)
,p_db_column_name=>'SUBSTATION_CODE'
,p_display_order=>340
,p_column_identifier=>'AQ'
,p_column_label=>'Substation Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27586261242750002)
,p_db_column_name=>'DRAGNODE'
,p_display_order=>350
,p_column_identifier=>'AR'
,p_column_label=>'Dragnode'
,p_column_link=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP:P301_MODEL_MASTER_ID,P301_MODEL_NAME,P301_MODEL_YEAR:#MODEL_MASTER_ID#,#MODEL#,#MODEL_YEAR#'
,p_column_linktext=>'<span class = "fa #DRAGNODE#  fa-1x"</span>'
,p_column_link_attr=>'title="Click to see DRAGNODE of Model Template"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27588132533750020)
,p_db_column_name=>'BRAND_ID'
,p_display_order=>360
,p_column_identifier=>'AS'
,p_column_label=>'Brand Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31590388525426770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'155161'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'BRAND:MODEL_YEAR:MODEL:DRAGNODE:STATION:SUBSTATION:INSPECTION:TYPE:CREATION_DATE:CREATED_BY:'
,p_sort_column_1=>'MODEL_YEAR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MODEL'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'STATION_CODE'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'SUBSTATION_CODE'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'BRAND:MODEL_YEAR:MODEL:DRAGNODE:0:0'
,p_break_enabled_on=>'BRAND:MODEL_YEAR:MODEL:DRAGNODE:0:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(36964659831042070)
,p_report_id=>wwv_flow_api.id(31590388525426770)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81392264220708594)
,p_plug_name=>'Model Setup Action'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--small'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90718551788242455)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(26254351257265685)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(90736248200242506)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26795332238543410)
,p_name=>'P300_MODEL_MASTER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30764066461283364)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26795668306543410)
,p_name=>'P300_MODEL_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30764066461283364)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26796091538543410)
,p_name=>'P300_MODEL_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30764066461283364)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26796545012543411)
,p_name=>'P300_MODEL_YEAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30764066461283364)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36630043178630649)
,p_name=>'P300_PLANT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81392264220708594)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'RETURN :G_DEFAULT_PLANT_ID;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26845273034543451)
,p_name=>'Hide reports region'
,p_event_sequence=>160
,p_condition_element=>'P300_MODEL_MASTER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
end;
/
