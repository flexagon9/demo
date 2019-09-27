prompt --application/pages/page_00204
begin
wwv_flow_api.create_page(
 p_id=>204
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Model Maintenance'
,p_page_mode=>'MODAL'
,p_step_title=>'Model Maintenance'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'/* ',
'  IR BLOB image column dimensions ',
'*/  ',
'td[headers="IMAGE_DISPLAY"] img { width: 125px;} '))
,p_step_template=>wwv_flow_api.id(79413403695908409)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1300'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190916105612'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9819003498334915)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11640070690325439)
,p_plug_name=>'Model Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21181918892160444)
,p_plug_name=>'Clone From Models'
,p_parent_plug_id=>wwv_flow_api.id(11640070690325439)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'    <div style="font-size: 14px; color: steelblue"><b>Clone From Model  </b></div> ',
'</center>',
'',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22981820386268103)
,p_plug_name=>'Relationships To Clone'
,p_parent_plug_id=>wwv_flow_api.id(11640070690325439)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11640197700325440)
,p_plug_name=>'Image Relationships'
,p_region_name=>'CLONE_IMG'
,p_parent_plug_id=>wwv_flow_api.id(22981820386268103)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT apex_item.checkbox (2,i.IMAGES_ID) box,',
'       i.IMAGES_ID,',
'       i.IMAGES_ID IMAGE,',
'       i.IMAGE_NAME,',
'       i.FILE_NAME',
'        FROM bg_qcis.QCIS_IMAGES i',
' WHERE i.MODEL_ID = :P204_CLONE_FROM_MODEL_ID',
'   AND i.PLANT_ID = :G_DEFAULT_PLANT_ID',
'   AND i.INACTIVE_DATE IS NULL',
'   AND i.IMAGE_NAME NOT IN (SELECT nm.IMAGE_NAME ',
'                            FROM bg_qcis.QCIS_IMAGES nm ',
'                            WHERE MODEL_ID = :P204_MODEL_MASTER_ID  )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P204_CLONE_FROM_MODEL_ID,P204_MODEL_MASTER_ID,G_DEFAULT_PLANT_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br></b>',
'<center>',
'    <div style="font-size: 12px; color: black"><b>Image Relationships </b></div> ',
'</center>',
'',
''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11640236581325441)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Relationships Found'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_owner=>'DGRUGINS'
,p_internal_uid=>11640236581325441
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11799120163309037)
,p_db_column_name=>'BOX'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11799283071309038)
,p_db_column_name=>'IMAGES_ID'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Images Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11799339787309039)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>30
,p_column_identifier=>'H'
,p_column_label=>'Image Name'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE:&DEBUG.::G_FILE_ID:#IMAGES_ID#'
,p_column_linktext=>'#IMAGE_NAME#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11799473248309040)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>40
,p_column_identifier=>'I'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13792847711862245)
,p_db_column_name=>'IMAGE'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'IMAGE:QCIS_IMAGES:BLOB_CONTENT:IMAGES_ID::MIME_TYPE:FILE_NAME:LAST_UPDATE_DATE::::'
,p_static_id=>'IMAGE_DISPLAY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11809683783329858)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'118097'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:IMAGE_NAME:FILE_NAME:IMAGE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11640871756325447)
,p_plug_name=>'IM Relationships'
,p_region_name=>'CLONE_IM'
,p_parent_plug_id=>wwv_flow_api.id(22981820386268103)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>140
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_ITEM.checkbox (3, IM_DRAFT_HEADER)',
'           box,',
'       IM_DRAFT_HEADER,',
'       STATION_SUBSTATION,',
'       image,',
'       image_id,',
'       inspect_name',
'  FROM (SELECT dr.header_id',
'                   IM_DRAFT_HEADER,',
'                  (SELECT sh.station_code || ''-'' || sh.station_name',
'                     FROM bg_qcis.QCIS_STATION_MASTER sh',
'                    WHERE sh.station_master_id = dr.station_id)',
'               || ''/''',
'               || (SELECT ss.substation_code || ''-'' || ss.substation_name',
'                     FROM bg_qcis.QCIS_SUBSTATION ss',
'                    WHERE ss.substation_id = dr.substation_id)',
'                   STATION_SUBSTATION,',
'               (SELECT im.image_name',
'                  FROM bg_qcis.QCIS_IMAGES im',
'                 WHERE im.images_id = dr.image_id)',
'                   image,',
'               dr.image_id,',
'               (SELECT ins.inspection_name',
'                  FROM bg_qcis.QCIS_INSPECTION_NAMES ins',
'                 WHERE ins.inspect_name_id = dr.inspect_name_id)',
'                   inspect_name',
'          FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT dr',
'         WHERE     dr.plant_id = :G_DEFAULT_PLANT_ID',
'               AND dr.model_id = :P204_CLONE_FROM_MODEL_ID',
'               AND dr.INACTIVE_DATE IS NULL',
'               AND MAP_TYPE = ''I''',
'               AND NOT EXISTS',
'                       (SELECT 1',
'                          FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT td',
'                         WHERE     td.MODEL_ID = TO_NUMBER(:P204_MODEL_MASTER_ID)',
'                               AND td.PLANT_ID = :G_DEFAULT_PLANT_ID',
'                               AND td.ACC_GROUP = dr.ACC_GROUP',
'                               AND td.ACCESSORY = dr.ACCESSORY',
'                               AND td.STATION_ID = dr.STATION_ID',
'                               AND td.SUBSTATION_ID = dr.SUBSTATION_ID',
'                               AND td.IMAGE_ID = dr.IMAGE_ID',
'                               AND td.INSPECT_NAME_ID = dr.INSPECT_NAME_ID',
'                               AND td.MAP_TYPE = dr.MAP_TYPE',
'                               AND td.INACTIVE_DATE IS NULL))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID,P204_CLONE_FROM_MODEL_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br></b>',
'<center>',
'    <div style="font-size: 12px; color: black"><b>Image Map Relationships </b></div> ',
'</center>',
'',
''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11640933969325448)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Relationships Found'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_owner=>'DGRUGINS'
,p_internal_uid=>11640933969325448
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12050152133714301)
,p_db_column_name=>'BOX'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'CLONE_IM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12050210856714302)
,p_db_column_name=>'IM_DRAFT_HEADER'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Im Draft Header'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12050587130714305)
,p_db_column_name=>'IMAGE'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Image'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE:&DEBUG.:RP:G_FILE_ID:#IMAGE_ID#'
,p_column_linktext=>'#IMAGE#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12050618008714306)
,p_db_column_name=>'INSPECT_NAME'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Inspect Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12051046851714310)
,p_db_column_name=>'STATION_SUBSTATION'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Station Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12051355088714313)
,p_db_column_name=>'IMAGE_ID'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Image Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11810289973329859)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'118103'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:STATION_SUBSTATION:IMAGE:INSPECT_NAME:IM_'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11795809060309004)
,p_plug_name=>'PM Relationships'
,p_region_name=>'CLONE_PM'
,p_parent_plug_id=>wwv_flow_api.id(22981820386268103)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>150
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_ITEM.checkbox (4, IM_DRAFT_HEADER)',
'           box,',
'       IM_DRAFT_HEADER,',
'       STATION_SUBSTATION,',
'       image,',
'       image_id,',
'       inspect_name',
'  FROM (SELECT dr.header_id',
'                   IM_DRAFT_HEADER,',
'                  (SELECT sh.station_code || ''-'' || sh.station_name',
'                     FROM bg_qcis.QCIS_STATION_MASTER sh',
'                    WHERE sh.station_master_id = dr.station_id',
'                     AND sh.PLANT_ID = TO_NUMBER(:G_DEFAULT_PLANT_ID)',
'                     AND INACTIVE_DATE IS NULL)',
'               || ''/''',
'               || (SELECT ss.substation_code || ''-'' || ss.substation_name',
'                     FROM bg_qcis.QCIS_SUBSTATION ss',
'                    WHERE ss.substation_id = dr.substation_id)',
'                   STATION_SUBSTATION,',
'               (SELECT im.image_name',
'                  FROM bg_qcis.QCIS_IMAGES im',
'                 WHERE im.images_id = dr.image_id',
'                  AND PLANT_ID = TO_NUMBER(:G_DEFAULT_PLANT_ID)',
'                  AND INACTIVE_DATE IS NULL)',
'                   image,',
'               dr.image_id,',
'               (SELECT ins.inspection_name',
'                  FROM bg_qcis.QCIS_INSPECTION_NAMES ins',
'                 WHERE ins.inspect_name_id = dr.inspect_name_id',
'                   AND INACTIVE_DATE IS NULL)',
'                   inspect_name',
'          FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT dr',
'         WHERE     dr.plant_id = TO_NUMBER(:G_DEFAULT_PLANT_ID)',
'               AND dr.model_id = TO_NUMBER(:P204_CLONE_FROM_MODEL_ID)',
'               AND dr.INACTIVE_DATE IS NULL',
'               AND MAP_TYPE = ''P''',
'               AND NOT EXISTS',
'                       (SELECT 1',
'                          FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT td',
'                         WHERE     td.MODEL_ID = TO_NUMBER(:P204_MODEL_MASTER_ID)',
'                               AND td.PLANT_ID = TO_NUMBER(:G_DEFAULT_PLANT_ID)',
'                               AND td.ACC_GROUP = dr.ACC_GROUP',
'                               AND td.ACCESSORY = dr.ACCESSORY',
'                               AND td.STATION_ID = dr.STATION_ID',
'                               AND td.SUBSTATION_ID = dr.SUBSTATION_ID',
'                               AND td.IMAGE_ID = dr.IMAGE_ID',
'                               AND td.INSPECT_NAME_ID = dr.INSPECT_NAME_ID',
'                               AND td.MAP_TYPE = dr.MAP_TYPE',
'                               AND td.INACTIVE_DATE IS NULL))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID,P204_CLONE_FROM_MODEL_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br></b>',
'<center>',
'    <div style="font-size: 12px; color: black"><b>Pin Map Relationships </b></div> ',
'</center>',
'',
''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11795946418309005)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Relationships Found'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_display_row_count=>'Y'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_owner=>'DGRUGINS'
,p_internal_uid=>11795946418309005
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12051753900714317)
,p_db_column_name=>'BOX'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'CLONE_PM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12051862093714318)
,p_db_column_name=>'IM_DRAFT_HEADER'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Im Draft Header'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12052081437714320)
,p_db_column_name=>'STATION_SUBSTATION'
,p_display_order=>40
,p_column_identifier=>'I'
,p_column_label=>'Station Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12052175979714321)
,p_db_column_name=>'IMAGE'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Image'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE:&DEBUG.:RP:G_FILE_ID:#IMAGE_ID#'
,p_column_linktext=>'#IMAGE#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12052278701714322)
,p_db_column_name=>'IMAGE_ID'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Image Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12052304270714323)
,p_db_column_name=>'INSPECT_NAME'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Inspect Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11810982756329861)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'118110'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:STATION_SUBSTATION:IMAGE:INSPECT_NAME'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11796588687309011)
,p_plug_name=>'GS Relationships'
,p_region_name=>'CLONE_GS'
,p_parent_plug_id=>wwv_flow_api.id(22981820386268103)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>160
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT box,',
'       HEADER_ID,       ',
'       STATION,',
'       SUBSTATION,',
'       INSPECTOR_ID,',
'       SEQUENCE_NBR,',
'       GIG_SHEET_NAME,',
'       TO_NUMBER(SUBSTR(STATION,1,(INSTR(STATION,''-'')-1))) STAT_SEQ,',
'       TO_NUMBER(SUBSTR(SUBSTATION,1,(INSTR(SUBSTATION,''-'')-1))) SUBSTAT_SEQ',
'   FROM',
'   (',
'SELECT APEX_ITEM.checkbox (5, gsth.HEADER_ID)',
'           box,',
'       gsth.HEADER_ID,',
'          (SELECT sh.station_code || ''-'' || sh.station_name',
'             FROM qcis_station_master sh',
'            WHERE sh.station_master_id = gsth.station_id)',
'       STATION,',
'        (SELECT ss.substation_code || ''-'' || ss.substation_name',
'             FROM qcis_substation ss',
'            WHERE ss.substation_id = gsth.substation_id)',
'        SUBSTATION,',
'       gsth.INSPECTOR_ID,',
'       gsth.SEQUENCE_NBR,',
'       (SELECT ins.inspection_name',
'          FROM qcis_inspection_names ins',
'         WHERE ins.inspect_name_id = gsth.gig_sheet_name)',
'           GIG_SHEET_NAME',
'  FROM bg_qcis.qcis_gs_template_header gsth',
' WHERE     GSTH.MODEL_ID = TO_NUMBER(:P204_CLONE_FROM_MODEL_ID)',
'       AND GSTH.GIG_SHEET_TYPE = ''G''',
'       AND GSTH.PLANT_ID = :G_DEFAULT_PLANT_ID',
'       AND GSTH.INACTIVE_DATE IS NULL',
'       AND NOT EXISTS',
'               (SELECT 1',
'                  FROM bg_qcis.qcis_gs_template_header th',
'                 WHERE     th.MODEL_ID = :P204_MODEL_MASTER_ID',
'                       AND th.PLANT_ID = :G_DEFAULT_PLANT_ID',
'                       AND th.ACC_GROUP = GSTH.ACC_GROUP',
'                       AND th.ACCESSORY = GSTH.ACCESSORY',
'                       AND th.STATION_ID = GSTH.STATION_ID',
'                       AND th.SUBSTATION_ID = GSTH.SUBSTATION_ID',
'                       AND th.INSPECTOR_ID = gsth.INSPECTOR_ID',
'                       AND th.SEQUENCE_NBR = gsth.SEQUENCE_NBR',
'                       AND th.GIG_SHEET_TYPE = GSTH.GIG_SHEET_TYPE',
'                       AND th.GIG_SHEET_NAME = gsth.GIG_SHEET_NAME',
'                       AND th.INACTIVE_DATE IS NULL))',
'ORDER BY TO_NUMBER(SUBSTR(STATION,1,(INSTR(STATION,''-'')-1)))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P204_CLONE_FROM_MODEL_ID,G_DEFAULT_PLANT_ID,P204_MODEL_MASTER_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br></b>',
'<center>',
'    <div style="font-size: 12px; color: black"><b>Gig Sheet Relationships </b></div> ',
'</center>',
'',
''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11796635389309012)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Relationships Found'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_owner=>'DGRUGINS'
,p_internal_uid=>11796635389309012
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12052495020714324)
,p_db_column_name=>'BOX'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'CLONE_GS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12052522071714325)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12052712520714327)
,p_db_column_name=>'INSPECTOR_ID'
,p_display_order=>40
,p_column_identifier=>'I'
,p_column_label=>'Inspector Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12052811928714328)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Seq #'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12052934560714329)
,p_db_column_name=>'GIG_SHEET_NAME'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Gig Sheet Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25540062263261315)
,p_db_column_name=>'STATION'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25540135609261316)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>80
,p_column_identifier=>'M'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25540235958261317)
,p_db_column_name=>'STAT_SEQ'
,p_display_order=>90
,p_column_identifier=>'N'
,p_column_label=>'Stat Seq'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25540319280261318)
,p_db_column_name=>'SUBSTAT_SEQ'
,p_display_order=>100
,p_column_identifier=>'O'
,p_column_label=>'Substat Seq'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11811659906329862)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'118117'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:GIG_SHEET_NAME:SEQUENCE_NBR:STATION:SUBSTATION:'
,p_sort_column_1=>'STAT_SEQ'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SUBSTAT_SEQ'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'GIG_SHEET_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'SEQUENCE_NBR'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23384698698876961)
,p_plug_name=>'Station Relationships'
,p_region_name=>'CLONE_ST'
,p_parent_plug_id=>wwv_flow_api.id(22981820386268103)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  apex_item.checkbox (1,sm.STATION_MASTER_ID) box,',
'       sm.STATION_MASTER_ID,',
'       sm.STATION_PARENT_ID,       ',
'       sm.STATION_CODE || '' - '' || sm.STATION_NAME STATION,',
'       TO_NUMBER(sm.STATION_CODE) STATION_CODE,',
'       sm.QCIS_USAGE_FLAG,',
'       (SELECT sp.USAGE_CODE',
'          FROM bg_qcis.QCIS_STATION_PARENT sp',
'         WHERE sm.STATION_PARENT_ID = sp.ID)',
'           USAGE_CODE',
'  FROM bg_qcis.QCIS_STATION_MASTER sm',
' WHERE PLANT_ID = :G_DEFAULT_PLANT_ID',
'   AND  MODEL_ID = :P204_CLONE_FROM_MODEL_ID',
'   AND sm.INACTIVE_DATE IS NULL',
'   AND TRIM(UPPER(sm.STATION_CODE || sm.STATION_NAME)) NOT IN ( SELECT TRIM(UPPER(nm.STATION_CODE || nm.STATION_NAME))',
'                                                                      FROM bg_qcis.QCIS_STATION_MASTER nm',
'                                                                     WHERE PLANT_ID = :G_DEFAULT_PLANT_ID',
'                                                                       AND  MODEL_ID = :P204_MODEL_MASTER_ID )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P204_CLONE_FROM_MODEL_ID,G_DEFAULT_PLANT_ID,P204_MODEL_MASTER_ID'
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
'<br></b>',
'<center>',
'    <div style="font-size: 12px; color: black"><b>Station Relationships </b></div> ',
'</center>',
'',
''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23384781695876962)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Relationships Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>23384781695876962
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11749084647551566)
,p_db_column_name=>'STATION_PARENT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Station Parent Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11749832771551568)
,p_db_column_name=>'USAGE_CODE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Usage Code'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(10491175294351533)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11750204161551568)
,p_db_column_name=>'STATION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11750620510551569)
,p_db_column_name=>'QCIS_USAGE_FLAG'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'QCIS Usage'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(4685285324311780)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11798581788309031)
,p_db_column_name=>'STATION_MASTER_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Station Master Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11798633477309032)
,p_db_column_name=>'BOX'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12250818748324503)
,p_db_column_name=>'STATION_CODE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Station Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23393675840039242)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'117510'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:STATION:USAGE_CODE:QCIS_USAGE_FLAG:'
,p_sort_column_1=>'STATION_CODE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16229269801047586)
,p_plug_name=>'Models'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'    <div style="font-size: 14px; color: steelblue"><b>Model Maintenance  </b></div> ',
'</center>',
'',
'<br></br>'))
,p_plug_footer=>'<br></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
end;
/
begin
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16234675810057255)
,p_plug_name=>'Audit Info'
,p_parent_plug_id=>wwv_flow_api.id(16229269801047586)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P204_MODEL_MASTER_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32971043888107668)
,p_plug_name=>'Model  Cloned Report'
,p_parent_plug_id=>wwv_flow_api.id(16229269801047586)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM SEQUENCE,',
'       LOG_ID,',
'       MSG_DATA_SOURCE,',
'       MSG_SOURCE_ID,',
'       SOURCE_PROCESS,',
'       LOG_MESSAGE,',
'       LOG_TYPE,',
'       CREATE_DATE,',
'       CREATED_BY,',
'       :APP_USER USERNAME ',
'  FROM bg_qcis.QCIS_MSG_LOG',
' WHERE TRUNC(CREATE_DATE) BETWEEN TRUNC(SYSDATE-1) AND TRUNC(SYSDATE)',
'  AND UPPER(LOG_MESSAGE) LIKE ''%'' || ''CLONE'' || ''%''',
'  AND CREATED_BY = :APP_USER'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM bg_qcis.QCIS_MSG_LOG',
' WHERE TRUNC(CREATE_DATE) BETWEEN TRUNC(SYSDATE-1) AND TRUNC(SYSDATE)',
'  AND LOG_MESSAGE LIKE ''%'' || ''Clone'' || ''%''',
'  AND CREATED_BY = :APP_USER'))
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(32971212833107669)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>32971212833107669
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12142667459641052)
,p_db_column_name=>'MSG_DATA_SOURCE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Calling Program'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12143016710641053)
,p_db_column_name=>'SOURCE_PROCESS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Process'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12143407550641053)
,p_db_column_name=>'LOG_MESSAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Message'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12143821270641054)
,p_db_column_name=>'LOG_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Log Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12144243233641054)
,p_db_column_name=>'CREATE_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12144699144641054)
,p_db_column_name=>'LOG_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12145077823641055)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12145442572641055)
,p_db_column_name=>'USERNAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Username'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13792915006862246)
,p_db_column_name=>'SEQUENCE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13793041771862247)
,p_db_column_name=>'MSG_SOURCE_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Msg Source Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33024616798646862)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121458'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CREATE_DATE:LOG_MESSAGE:SEQUENCE:SOURCE_PROCESS:'
,p_sort_column_1=>'LOG_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9934425541024373)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9819003498334915)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11637933578325418)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(9819003498334915)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-times-circle'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9934807390024374)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(9819003498334915)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-save'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13847062237438077)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(9819003498334915)
,p_button_name=>'CREATE_ANOTHER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Create Another'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:RP,201::'
,p_button_condition=>':P201_NEW_MODEL_ID IS NOT NULL'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-repeat'
,p_button_cattributes=>'title="Refresh and Create Another Model."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14062147817651372)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(22981820386268103)
,p_button_name=>'CLONE_ALL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-clone'
,p_button_cattributes=>'title="Clone All atrributes to another Model(s)."'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>11
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11798903217309035)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23384698698876961)
,p_button_name=>'CLONE_ST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-clone'
,p_button_cattributes=>'Title="Clone Relationship."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11799983820309045)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11640197700325440)
,p_button_name=>'CLONE_IMG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-clone'
,p_button_cattributes=>'Title="Clone Relationship."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12053369411714333)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11640871756325447)
,p_button_name=>'CLONE_IM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-clone'
,p_button_cattributes=>'Title="Clone Relationship."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12053464438714334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11795809060309004)
,p_button_name=>'CLONE_PM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-clone'
,p_button_cattributes=>'Title="Clone Relationship."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12053585607714335)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11796588687309011)
,p_button_name=>'CLONE_GS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-clone'
,p_button_cattributes=>'Title="Clone Relationship."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9819107907334916)
,p_name=>'P204_INACTIVE_DATE'
,p_item_sequence=>161
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9936391781024378)
,p_name=>'P204_MODEL_MASTER_ID'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_NAME display_value, MODEL_MASTER_ID return_value ',
'  from bg_qcis.QCIS_MODEL_MASTER ',
'where PLANT_ID = :G_DEFAULT_PLANT_ID',
'  --and INACTIVE_DATE IS NULL',
'  and MODEL_YEAR = :P204_MODEL_YEAR',
'  and BRAND_ID = :P204_BRAND_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P204_MODEL_YEAR,P204_BRAND_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9936756964024379)
,p_name=>'P204_INITIAL_INACTIVE_DATE'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9937130120024380)
,p_name=>'P204_PLANT_ID'
,p_is_required=>true
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN :G_DEFAULT_PLANT_ID;',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9937500544024380)
,p_name=>'P204_PLANT_CODE'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9937956935024381)
,p_name=>'P204_BRAND_ID'
,p_is_required=>true
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_prompt=>'Brand:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BRAND_CODE||'' - ''||BRAND_NAME display_value, ',
'       QCIS_BRAND_MASTER_ID return_value ',
'from QCIS_BRAND_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID ',
'  and INACTIVE_DATE IS NULL ',
'  order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Brand -'
,p_lov_cascade_parent_items=>'G_DEFAULT_PLANT_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P204_MODEL_MASTER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9938337870024381)
,p_name=>'P204_BRAND_CODE'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9938790759024381)
,p_name=>'P204_DIVISION'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9939171041024382)
,p_name=>'P204_MODEL_YEAR'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_item_default=>'TO_NUMBER(TO_CHAR(SYSDATE,''YYYY''))'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Model Year:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) r FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 r',
'  FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_read_only_when=>'P204_MODEL_MASTER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9939528805024382)
,p_name=>'P204_MODEL_NAME'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MODEL d, MODEL r',
'    FROM bg_shared_admin.SHARED_OBMS_BOAT_MODELS_ALL_MV',
'   WHERE     (MODEL_YEAR) =  :P204_MODEL_YEAR',
'         AND PLANT = :P204_PLANT_CODE',
'         AND BRAND = :P204_BRAND_CODE',
'         AND MODEL NOT IN',
'                 (SELECT MODEL_NAME',
'                    FROM bg_qcis.QCIS_MODEL_MASTER',
'                   WHERE     MODEL_YEAR = :P204_MODEL_YEAR',
'                         AND PLANT_ID = :P204_PLANT_ID',
'                         AND BRAND_ID = :P204_BRAND_ID) ',
'         OR MODEL = :P204_MODEL_NAME',
'ORDER BY 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9939906013024382)
,p_name=>'P204_MODEL_DESC'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_prompt=>'Model Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'input type="text" readonly="readonly" style="background:white;" '
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>'readonly="true" tabindex=-1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9940347953024383)
,p_name=>'P204_REWORK_TIME_MANDATORY'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_item_default=>'N'
,p_prompt=>'Rework Time'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_cattributes_element=>'TITLE="Is the selection of Rework Time mandatory on defects entered for this model?"'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9941289210024384)
,p_name=>'P204_PDE_MODEL_NAME'
,p_item_sequence=>171
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9941995499024385)
,p_name=>'P204_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(16234675810057255)
,p_prompt=>'Update Date'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9942397507024386)
,p_name=>'P204_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(16234675810057255)
,p_prompt=>'Updated By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9942744975024386)
,p_name=>'P204_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(16234675810057255)
,p_prompt=>'Creation Date'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9943165382024386)
,p_name=>'P204_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(16234675810057255)
,p_prompt=>'Created By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11639675451325435)
,p_name=>'P204_SELECT_RELATIONSHIP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22981820386268103)
,p_prompt=>'Relationship'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d, r',
'  FROM (SELECT 0 seq, ''All'' d, ''A'' r FROM DUAL',
'        UNION',
'        SELECT 1 seq, ''Stations'' d, ''S'' r',
'          FROM DUAL',
'         WHERE EXISTS',
'                   (SELECT 1',
'                      FROM bg_qcis.QCIS_STATION_MASTER',
'                     WHERE     MODEL_ID = :P204_CLONE_FROM_MODEL_ID',
'                           AND INACTIVE_DATE IS NULL)',
'        UNION',
'        SELECT 2 seq, ''Images'' d, ''I'' r',
'          FROM DUAL',
'         WHERE EXISTS',
'                   (SELECT 1',
'                      FROM bg_qcis.QCIS_IMAGES',
'                     WHERE     MODEL_ID = :P204_CLONE_FROM_MODEL_ID',
'                           AND INACTIVE_DATE IS NULL)',
'        UNION',
'        SELECT 3 seq, ''IM Drafts'' d, ''IM'' r',
'          FROM DUAL',
'         WHERE EXISTS',
'                   (SELECT 1',
'                      FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT',
'                     WHERE     MODEL_ID = :P204_CLONE_FROM_MODEL_ID',
'                           AND MAP_TYPE = ''I'')',
'        UNION',
'        SELECT 4 seq, ''PM Drafts'' d, ''PM'' r',
'          FROM DUAL',
'         WHERE EXISTS',
'                   (SELECT 1',
'                      FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT',
'                     WHERE     MODEL_ID = :P204_CLONE_FROM_MODEL_ID',
'                           AND MAP_TYPE = ''P'')',
'        UNION',
'        SELECT 5 seq, ''Gig Sheets'' d, ''GS'' r',
'          FROM DUAL',
'         WHERE EXISTS',
'                   (SELECT 1',
'                      FROM bg_qcis.QCIS_GS_TEMPLATE_HEADER',
'                     WHERE MODEL_ID = :P204_CLONE_FROM_MODEL_ID))'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P204_CLONE_FROM_MODEL_ID,P204_MODEL_MASTER_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_cattributes_element=>'title="Relationships to Clone"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(5463968683342782)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11713410386311798)
,p_name=>'P204_FROM_MODEL_YR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21181918892160444)
,p_prompt=>'Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER(MODEL_YEAR) d, TO_NUMBER(MODEL_YEAR) r',
'FROM bg_qcis.QCIS_MODEL_MASTER',
'WHERE PLANT_ID = :G_DEFAULT_PLANT_ID',
'  AND INACTIVE_DATE IS NULL',
'GROUP BY MODEL_YEAR',
'Order By 1 DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_tag_attributes=>'title="Select Previous Model Year"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hey David,',
'',
unistr('I\2019ve been brainstorming with Otis and the \201Cprevious MY\201D should list all the model years that do not have an inactive date, and the \201Cnew MY\201D should be like current QCIS where it is a freeform text that they can add any model year. Thinking forward to ')
||'the other cloning tabs, they should behave the same way also. ',
''))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11714256984311799)
,p_name=>'P204_CLONE_FROM_MODEL_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21181918892160444)
,p_prompt=>'Clone From Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT MODEL_YEAR || '' - '' || MODEL_NAME d, MODEL_MASTER_ID r',
'    FROM bg_qcis.QCIS_MODEL_MASTER ',
'   WHERE     PLANT_ID = :G_DEFAULT_PLANT_ID',
'         AND BRAND_ID = :P204_BRAND_ID',
'         AND MODEL_YEAR = :P204_FROM_MODEL_YR',
'         AND INACTIVE_DATE IS NULL',
'         AND MODEL_MASTER_ID <> TO_NUMBER(:P204_MODEL_MASTER_ID)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P204_FROM_MODEL_YR,P204_MODEL_YEAR,P204_BRAND_ID,P204_MODEL_MASTER_ID'
,p_ajax_items_to_submit=>':G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_cattributes_element=>'title="Select Model to Clone From"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'The clone_from_model_id LOV looks at the staging table and the model master to return models that have yet to be created for the new model year and and are not in staging to be created.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12251483421324509)
,p_name=>'P204_ORIGIN_PAGE'
,p_item_sequence=>181
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12251534864324510)
,p_name=>'P204_STATUS'
,p_item_sequence=>151
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_item_default=>'A'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(12406872612044732)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12253191966324526)
,p_name=>'P204_DIVISION_ID'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_prompt=>'Division Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.DIVISION_NAME d, d.QCIS_DIVISION_MASTER_ID r',
'  FROM bg_qcis.QCIS_BRAND_MASTER b, bg_qcis.QCIS_DIVISION_MASTER d',
' WHERE     b.QCIS_BRAND_MASTER_ID = :P204_BRAND_ID',
'       AND b.DIVISION_MASTER_ID = d.QCIS_DIVISION_MASTER_ID',
'       AND b.QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_lov_cascade_parent_items=>'P204_BRAND_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14062426964657204)
,p_name=>'P204_INCLUDE_VAR_DATA'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(22981820386268103)
,p_item_default=>'Y'
,p_prompt=>'Include Var Data'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445814206908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14238217209669740)
,p_name=>'P204_XREF_MODEL_ID'
,p_item_sequence=>191
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26055577205603716)
,p_name=>'P204_READY_FOR_INSPECTION'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_api.id(16229269801047586)
,p_item_default=>'N'
,p_prompt=>'Ready For Inspections'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_cattributes_element=>'TITLE="Is the are inspections ready to be assigned to this model?"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(26495149622921422)
,p_validation_name=>'FROM MODEL NOT NULL'
,p_validation_sequence=>10
,p_validation=>'P204_CLONE_FROM_MODEL_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'From Model IS required When Cloning'
,p_validation_condition=>':REQUEST IN(''CLONE_ALL'',''CLONE_ST'',''CLONE_IMG'',''CLONE_IM'',''CLONE_PM'',''CLONE_GS'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(11714256984311799)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9951633105024405)
,p_name=>'POPULATE PLANT_CODE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_PLANT_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9952113543024407)
,p_event_id=>wwv_flow_api.id(9951633105024405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P204_PLANT_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PLANT_CODE',
'FROM bg_qcis.QCIS_PLANT_MASTER',
'WHERE QCIS_PLANT_MASTER_ID = :P204_PLANT_ID'))
,p_attribute_07=>'P204_PLANT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12251608779324511)
,p_name=>'POPULATE INACTIVE_DATE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_STATUS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12251794612324512)
,p_event_id=>wwv_flow_api.id(12251608779324511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P204_INACTIVE_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE WHEN :P204_STATUS = ''A'' THEN NULL',
'            WHEN :P204_STATUS = ''I'' THEN SYSDATE',
'        END',
'FROM DUAL'))
,p_attribute_07=>'P204_STATUS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'N'
);
end;
/
begin
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9952545703024407)
,p_name=>'POPULATE BRAND CODE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_BRAND_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9953063213024407)
,p_event_id=>wwv_flow_api.id(9952545703024407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P204_BRAND_CODE,P204_DIVISION,G_DEFAULT_BRAND_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BRAND_CODE, d.DIVISION_NAME, b.QCIS_BRAND_MASTER_ID',
'FROM bg_qcis.QCIS_BRAND_MASTER b, bg_qcis.QCIS_DIVISION_MASTER d',
'WHERE b.QCIS_BRAND_MASTER_ID =:P204_BRAND_ID',
'  AND b.DIVISION_MASTER_ID = d.QCIS_DIVISION_MASTER_ID'))
,p_attribute_07=>'P204_BRAND_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9953481511024408)
,p_name=>'POPUALTE MODEL DESCRIPTION'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_MODEL_MASTER_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9953953753024408)
,p_event_id=>wwv_flow_api.id(9953481511024408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P204_MODEL_DESC,P204_MODEL_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MODEL_DESC, MODEL_NAME',
'FROM bg_qcis. QCIS_MODEL_MASTER',
'WHERE MODEL_YEAR = :P204_MODEL_YEAR',
'  AND MODEL_MASTER_ID = :P204_MODEL_MASTER_ID',
'  ORDER BY MODEL_NAME'))
,p_attribute_07=>'P204_MODEL_YEAR,P204_MODEL_MASTER_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11639782003325436)
,p_name=>'H/S Station Relationship'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_SELECT_RELATIONSHIP'
,p_condition_element=>'P204_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11639998552325438)
,p_event_id=>wwv_flow_api.id(11639782003325436)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(23384698698876961)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11798483165309030)
,p_event_id=>wwv_flow_api.id(11639782003325436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(23384698698876961)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11639848995325437)
,p_event_id=>wwv_flow_api.id(11639782003325436)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(23384698698876961)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11797293514309018)
,p_name=>'H/S Image Relationship'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_SELECT_RELATIONSHIP'
,p_condition_element=>'P204_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'I'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11797480278309020)
,p_event_id=>wwv_flow_api.id(11797293514309018)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11640197700325440)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11800045790309046)
,p_event_id=>wwv_flow_api.id(11797293514309018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11640197700325440)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11797329592309019)
,p_event_id=>wwv_flow_api.id(11797293514309018)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11640197700325440)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11797568886309021)
,p_name=>'H/S Image Map Relationship'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_SELECT_RELATIONSHIP'
,p_condition_element=>'P204_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'IM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11797741611309023)
,p_event_id=>wwv_flow_api.id(11797568886309021)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11640871756325447)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12050738886714307)
,p_event_id=>wwv_flow_api.id(11797568886309021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11640871756325447)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11797616966309022)
,p_event_id=>wwv_flow_api.id(11797568886309021)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11640871756325447)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11797854206309024)
,p_name=>'H/S Pin Map Relationship'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_SELECT_RELATIONSHIP'
,p_condition_element=>'P204_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11798035919309026)
,p_event_id=>wwv_flow_api.id(11797854206309024)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11795809060309004)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12051430383714314)
,p_event_id=>wwv_flow_api.id(11797854206309024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11795809060309004)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11797941635309025)
,p_event_id=>wwv_flow_api.id(11797854206309024)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11795809060309004)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11798163808309027)
,p_name=>'H/S Gig Sheet Relationship'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_SELECT_RELATIONSHIP'
,p_condition_element=>'P204_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'GS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11798376772309029)
,p_event_id=>wwv_flow_api.id(11798163808309027)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11796588687309011)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12053072123714330)
,p_event_id=>wwv_flow_api.id(11798163808309027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11796588687309011)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11798237453309028)
,p_event_id=>wwv_flow_api.id(11798163808309027)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11796588687309011)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11798756398309033)
,p_name=>'SELECT_UNSELECT Stations'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#CLONE_ST'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11798824014309034)
,p_event_id=>wwv_flow_api.id(11798756398309033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#CLONE_ST #selectunselectall'' ).is('':checked'') ) {',
'  $(''#CLONE_ST  input[type=checkbox][name=f01]'').prop(''checked'',true);',
'} else {',
'  $(''#CLONE_ST  input[type=checkbox][name=f01]'').prop(''checked'',false);',
'}'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11800176569309047)
,p_name=>'SELECT_UNSELECT Images'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#CLONE_IMG'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11800259264309048)
,p_event_id=>wwv_flow_api.id(11800176569309047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#CLONE_IMG #selectunselectall'' ).is('':checked'') ) {',
'  $(''#CLONE_IMG  input[type=checkbox][name=f02]'').prop(''checked'',true);',
'} else {',
'  $(''#CLONE_IMG  input[type=checkbox][name=f02]'').prop(''checked'',false);',
'}'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12051196177714311)
,p_name=>'SELECT_UNSELECT Image Maps'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#CLONE_IM'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12051244008714312)
,p_event_id=>wwv_flow_api.id(12051196177714311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#CLONE_IM #selectunselectall'' ).is('':checked'') ) {',
'  $(''#CLONE_IM  input[type=checkbox][name=f03]'').prop(''checked'',true);',
'} else {',
'  $(''#CLONE_IM  input[type=checkbox][name=f03]'').prop(''checked'',false);',
'}'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12051501919714315)
,p_name=>'SELECT_UNSELECT Pin Maps'
,p_event_sequence=>140
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#CLONE_PM'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12051621339714316)
,p_event_id=>wwv_flow_api.id(12051501919714315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#CLONE_PM #selectunselectall'' ).is('':checked'') ) {',
'  $(''#CLONE_PM  input[type=checkbox][name=f04]'').prop(''checked'',true);',
'} else {',
'  $(''#CLONE_PM  input[type=checkbox][name=f04]'').prop(''checked'',false);',
'}'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12053163042714331)
,p_name=>'SELECT_UNSELECT Gig Sheets'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#CLONE_GS'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12053242893714332)
,p_event_id=>wwv_flow_api.id(12053163042714331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#CLONE_GS #selectunselectall'' ).is('':checked'') ) {',
'  $(''#CLONE_GS  input[type=checkbox][name=f05]'').prop(''checked'',true);',
'} else {',
'  $(''#CLONE_GS  input[type=checkbox][name=f05]'').prop(''checked'',false);',
'}'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12251893360324513)
,p_name=>'CLOSE DIALOG'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9934425541024373)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12251921504324514)
,p_event_id=>wwv_flow_api.id(12251893360324513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14062946719662929)
,p_name=>'H/S Clone All Button'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_SELECT_RELATIONSHIP'
,p_condition_element=>'P204_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14063840600662931)
,p_event_id=>wwv_flow_api.id(14062946719662929)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14062147817651372)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14063384967662930)
,p_event_id=>wwv_flow_api.id(14062946719662929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14062147817651372)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13792552167862242)
,p_name=>'H/S Include Var Data'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_SELECT_RELATIONSHIP'
,p_condition_element=>'P204_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'GS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13792667714862243)
,p_event_id=>wwv_flow_api.id(13792552167862242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P204_INCLUDE_VAR_DATA'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13792746800862244)
,p_event_id=>wwv_flow_api.id(13792552167862242)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P204_INCLUDE_VAR_DATA'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9950466157024402)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch Model Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT MODEL_MASTER_ID,',
'           BRAND_ID,',
'           DIVISION_ID,',
'           PLANT_ID,',
'           MODEL_YEAR,',
'           MODEL_NAME,',
'           MODEL_DESC,',
'           REWORK_TIME_MANDATORY,',
'           CREATED_BY,',
'           TO_CHAR(CREATION_DATE,''DD-MON-RRRR''),',
'           TO_CHAR(LAST_UPDATE_DATE,''DD-MON-RRRR''),',
'           LAST_UPDATED_BY,',
'           INACTIVE_DATE,           ',
'           INACTIVE_DATE,',
'           CASE WHEN INACTIVE_DATE IS NULL THEN ''A''',
'                ELSE ''I''',
'            END STATUS,',
'          READY_FOR_INSPECTIONS',
'      INTO :P204_MODEL_MASTER_ID,',
'           :P204_BRAND_ID,',
'           :P204_DIVISION_ID,',
'           :P204_PLANT_ID,',
'           :P204_MODEL_YEAR,',
'           :P204_MODEL_NAME,',
'           :P204_MODEL_DESC,',
'           :P204_REWORK_TIME_MANDATORY,',
'           :P204_CREATED_BY,',
'           :P204_CREATION_DATE,',
'           :P204_LAST_UPDATE_DATE,',
'           :P204_LAST_UPDATED_BY,',
'           :P204_INACTIVE_DATE,',
'           :P204_INITIAL_INACTIVE_DATE,',
'           :P204_STATUS,',
'           :P204_READY_FOR_INSPECTION',
'      FROM BG_QCIS.QCIS_MODEL_MASTER',
'     WHERE MODEL_MASTER_ID = :P204_MODEL_MASTER_ID;',
'END;'))
,p_process_error_message=>'Error on Fetch Model Info - #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P204_MODEL_MASTER_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14238379658669741)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch Xref Model Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT MODEL_XREF_ID',
'      INTO :P204_XREF_MODEL_ID',
'      FROM BG_QCIS.QCIS_ALT_MODEL_XREF',
'     WHERE MODEL_MASTER_ID = :P204_MODEL_MASTER_ID;',
'END;'))
,p_process_error_message=>'Error on Fetch Xref Model Info - #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'G_MARINE_DIVISION_TYPE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'BME'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9949654509024401)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Model Master record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE BG_QCIS.QCIS_MODEL_MASTER',
'       SET DIVISION_ID = :P204_DIVISION_ID,',
'           MODEL_YEAR = :P204_MODEL_YEAR,',
'           MODEL_NAME = :P204_MODEL_NAME,',
'           MODEL_DESC = :P204_MODEL_DESC,',
'           REWORK_TIME_MANDATORY = :P204_REWORK_TIME_MANDATORY,',
'           INACTIVE_DATE = :P204_INACTIVE_DATE,',
'           READY_FOR_INSPECTIONS = :P204_READY_FOR_INSPECTION',
'     WHERE MODEL_MASTER_ID = :P204_MODEL_MASTER_ID;',
'END;'))
,p_process_error_message=>'Unable to process row of table QCIS_MODEL_MASTER.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9934807390024374)
,p_process_success_message=>'Model &P204_MODEL_NAME. has been updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9950052458024402)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Inactivate Templates'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_return_value varchar2(500);',
'',
'BEGIN',
'',
'  -- Call the funtion to see if things need to be inactivated.  Or reactivated!',
'  v_return_value := apex_page_utilities.check_model_status (:P204_MODEL_MASTER_ID,',
'                                                            :P204_INACTIVE_DATE,',
'                                                            :P204_INITIAL_INACTIVE_DATE);',
'    ',
'',
'END;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9934807390024374)
,p_process_when=>':P204_INACTIVE_DATE <> :P204_INITIAL_INACTIVE_DATE'
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25539911173261314)
,p_process_sequence=>65
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Stations To Model'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 8/13/2019 1:02:29 AM (QP5 v5.313) */',
'DECLARE',
'    v_from_stations   apex_application_global.vc_arr2;',
'    v_to_models       NUMBER;',
'    v_out_err_msg     VARCHAR2 (500);',
'BEGIN',
'    v_to_models := TO_NUMBER (:P204_MODEL_MASTER_ID);',
'',
'',
'',
'    FOR i IN 1 .. APEX_APPLICATION.G_f01.COUNT',
'    LOOP',
'        v_out_err_msg :=',
'            BG_QCIS.qc2_cloning_utilities.clone_selected_stations_ind (',
'                v_to_models,',
'                :APP_USER,',
'                TO_NUMBER (APEX_APPLICATION.G_f01 (i)));',
'    END LOOP;                                                      -- stations',
'END;'))
,p_process_error_message=>'Error - Clone Stations To Model_ind #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11798903217309035)
,p_process_success_message=>'Stations have been cloned from Model &P204_MODEL_NAME. '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14060029569601241)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Images To Models'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE  ',
'    v_to_models       NUMBER;',
'    v_out_err_msg     VARCHAR2 (500);',
'BEGIN',
'   ',
'   v_to_models := TO_NUMBER(:P204_MODEL_MASTER_ID);',
'',
'    ',
'        FOR j IN 1 .. APEX_APPLICATION.G_f02.COUNT',
'        LOOP',
'        ',
'            v_out_err_msg :=',
'                BG_QCIS.qc2_cloning_utilities.clone_selected_images_ind (',
'                    v_to_models, ',
'                    :APP_USER,',
'                    TO_NUMBER (APEX_APPLICATION.G_f02 (j)));',
'        END LOOP;                                                  -- IMAGES',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11799983820309045)
,p_process_success_message=>'Images have been cloned. '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14060395002603770)
,p_process_sequence=>80
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Image Maps To Models'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_to_models       NUMBER;',
'    v_out_err_msg     VARCHAR2 (500);',
'BEGIN',
'   ',
'',
'        v_to_models := TO_NUMBER(:P204_MODEL_MASTER_ID);',
'    ',
'        FOR j IN 1 .. APEX_APPLICATION.G_f03.COUNT',
'        LOOP',
'                      ',
'            v_out_err_msg :=',
'                BG_QCIS.qc2_cloning_utilities.clone_selected_drafts_ind (',
'                    :G_DEFAULT_PLANT_ID,',
'                    v_to_models,',
'                    :APP_USER,',
'                     TO_NUMBER(APEX_APPLICATION.G_f03 (j)));',
'        END LOOP;                                                  -- DRAFTS',
'    ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12053369411714333)
,p_process_success_message=>'Image Maps have been cloned. '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14060657104605810)
,p_process_sequence=>90
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Pin Maps To Models'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_to_models       NUMBER;',
'    v_out_err_msg     VARCHAR2 (500);',
'BEGIN',
'   ',
'',
'        v_to_models := TO_NUMBER(:P204_MODEL_MASTER_ID);',
'    ',
'        FOR j IN 1 .. APEX_APPLICATION.G_f04.COUNT',
'        LOOP',
'                      ',
'            v_out_err_msg :=',
'                BG_QCIS.qc2_cloning_utilities.clone_selected_drafts_ind (',
'                    :G_DEFAULT_PLANT_ID,',
'                    v_to_models,',
'                    :APP_USER,',
'                     TO_NUMBER(APEX_APPLICATION.G_f04 (j)));',
'        END LOOP;                                                  -- DRAFTS',
'    ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12053464438714334)
,p_process_success_message=>'Pin Maps have been cloned. '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14060915793607548)
,p_process_sequence=>100
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Gig SheetsTo Models'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_to_models     NUMBER;',
'    v_from_model    NUMBER;',
'    v_out_err_msg   VARCHAR2 (500);',
'BEGIN',
'    v_to_models := TO_NUMBER (:P204_MODEL_MASTER_ID);',
'    v_from_model := TO_NUMBER (:P204_CLONE_FROM_MODEL_ID);',
'',
'',
'    FOR j IN 1 .. APEX_APPLICATION.G_f05.COUNT',
'    LOOP',
'        v_out_err_msg :=',
'            BG_QCIS.qc2_cloning_utilities.clone_selected_template_detail_ind (',
'                v_from_model,',
'                TO_NUMBER (APEX_APPLICATION.G_f05 (j)),',
'                ''A'',                                                 -- Status',
'                :APP_USER,',
'                :P204_INCLUDE_VAR_DATA,',
'                ''Y'',                                     -- include gig sheets',
'                v_to_models);',
'    END LOOP;                                                        -- DRAFTS',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12053585607714335)
,p_process_success_message=>'Pin Maps have been cloned. '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14061266532610402)
,p_process_sequence=>110
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone All'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_out_err_msg   VARCHAR2 (500);',
'BEGIN',
'    BG_QCIS.qc2_cloning_utilities.clone_all (',
'        :G_DEFAULT_PLANT_ID,',
'        TO_NUMBER (:P204_CLONE_FROM_MODEL_ID),',
'        TO_NUMBER (:P204_MODEL_MASTER_ID),',
'        ''QC2_CLONE_ALL'',',
'        :APP_USER,',
'        v_out_err_msg);                                            ',
'END;',
''))
,p_process_error_message=>'Error Clone All - #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14062147817651372)
,p_process_success_message=>'Model has been cloned. '
);
end;
/
