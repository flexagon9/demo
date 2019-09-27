prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Customer Service'
,p_step_title=>'Customer Service'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(4613089811094523)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINSKI'
,p_last_upd_yyyymmddhh24miss=>'20190829130954'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(86636594503228384)
,p_plug_name=>'Customer Service'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>8
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT bm.boat_master_id,',
'       pm.plant_code,',
'       br.brand_code,',
'       dm.division_code,',
'       bm.model_year,       ',
'       bm.model_name model,',
'       bm.boat_status,',
'       bm.hull_number,',
'       bm.ORDER_NUMBER,',
'       bm.SHIP_DATE',
'  FROM qcis_boat_master  bm,',
'       qcis_plant_master  pm,',
'       qcis_brand_master br,',
'       qcis_division_master dm',
' WHERE pm.qcis_plant_master_id = bm.plant_id',
'   AND br.qcis_brand_master_id = bm.brand_id',
'   AND dm.qcis_division_master_id = bm.division_id',
'   AND bm.PLANT_ID = :G_DEFAULT_PLANT_ID',
'UNION',
'SELECT bm.boat_master_id,',
'       pm.plant_code,',
'       br.brand_code,',
'       dm.division_code,',
'       bm.model_year,',
'       bm.model_name model,',
'       bm.boat_status,',
'       bm.hull_number,',
'       bm.ORDER_NUMBER,',
'       bm.SHIP_DATE',
'  FROM qcis_boat_master_HIST  bm,',
'       qcis_plant_master  pm,',
'       qcis_brand_master br,',
'       qcis_division_master dm',
' WHERE pm.qcis_plant_master_id = bm.plant_id',
'   AND br.qcis_brand_master_id = bm.brand_id',
'   AND dm.qcis_division_master_id = bm.division_id',
'   AND bm.PLANT_ID = :G_DEFAULT_PLANT_ID'))
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Customer Service Report</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25697395697757823)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP,26:P26_BOAT_MASTER_ID:#BOAT_MASTER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-pencil" alt="">'
,p_owner=>'DGRUGINS'
,p_internal_uid=>25697395697757823
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25697482412757824)
,p_db_column_name=>'BOAT_MASTER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Boat Master Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25697581567757825)
,p_db_column_name=>'PLANT_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25697680279757826)
,p_db_column_name=>'BRAND_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25697716781757827)
,p_db_column_name=>'DIVISION_CODE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Division'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25697840482757828)
,p_db_column_name=>'MODEL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25697985604757829)
,p_db_column_name=>'BOAT_STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Boat Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25698015592757830)
,p_db_column_name=>'HULL_NUMBER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Hull Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25698130079757831)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Order Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25698251331757832)
,p_db_column_name=>'SHIP_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Ship Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26494311782921414)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25842427273628275)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'258425'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PLANT_CODE:BRAND_CODE:DIVISION_CODE:MODEL_YEAR:MODEL:HULL_NUMBER:ORDER_NUMBER:BOAT_STATUS:SHIP_DATE:'
,p_sort_column_1=>'MODEL_YEAR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'HULL_NUMBER'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'PLANT_CODE:BRAND_CODE:DIVISION_CODE:0:0:0'
,p_break_enabled_on=>'PLANT_CODE:BRAND_CODE:DIVISION_CODE:0:0:0'
);
end;
/
