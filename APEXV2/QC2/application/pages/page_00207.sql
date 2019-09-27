prompt --application/pages/page_00207
begin
wwv_flow_api.create_page(
 p_id=>207
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Clone Models'
,p_page_mode=>'MODAL'
,p_step_title=>'Clone Models'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ',
'  IR BLOB image column dimensions ',
'*/  ',
'td[headers="IMAGE_DISPLAY"] img { width: 125px;}  '))
,p_step_template=>wwv_flow_api.id(79413403695908409)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190916110004'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11233266444716542)
,p_plug_name=>'Cloned To Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11231712616716527)
,p_plug_name=>'Clone To Models'
,p_parent_plug_id=>wwv_flow_api.id(11233266444716542)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'    <div style="font-size: 14px; color: steelblue"><b>Clone To Models',
'</b></div> ',
'</center>',
'',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45980437309274929)
,p_plug_name=>'Model  Cloned Report'
,p_parent_plug_id=>wwv_flow_api.id(11233266444716542)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>200
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
'   AND LOG_MESSAGE LIKE ''%'' || ''Clone'' || ''%''',
'    AND CREATED_BY = :APP_USER'))
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
 p_id=>wwv_flow_api.id(45980606254274930)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Clone Records Found'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>45980606254274930
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13012168964167268)
,p_db_column_name=>'MSG_DATA_SOURCE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Calling Program'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13012515675167269)
,p_db_column_name=>'SOURCE_PROCESS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Process'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13012932003167269)
,p_db_column_name=>'LOG_MESSAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Message'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13013338738167269)
,p_db_column_name=>'LOG_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Log Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13013711677167270)
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
 p_id=>wwv_flow_api.id(13014126729167270)
,p_db_column_name=>'LOG_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13014513564167271)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13014917397167271)
,p_db_column_name=>'USERNAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Username'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13789938792862216)
,p_db_column_name=>'SEQUENCE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13790074477862217)
,p_db_column_name=>'MSG_SOURCE_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Source ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(46034010219814123)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'130153'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQUENCE:CREATE_DATE:LOG_MESSAGE:'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21305311476927394)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24649464111492700)
,p_plug_name=>'Clone From Model Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34191312313327705)
,p_plug_name=>'Clone From Models'
,p_parent_plug_id=>wwv_flow_api.id(24649464111492700)
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
 p_id=>wwv_flow_api.id(35991213807435364)
,p_plug_name=>'Relationships To Clone'
,p_parent_plug_id=>wwv_flow_api.id(24649464111492700)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24649591121492701)
,p_plug_name=>'Image Relationships'
,p_region_name=>'CLONE_IMG'
,p_parent_plug_id=>wwv_flow_api.id(35991213807435364)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT apex_item.checkbox (2,i.IMAGES_ID) box,',
'       i.IMAGES_ID,',
'       i.IMAGE_NAME,',
'       i.FILE_NAME,',
'       i.IMAGES_ID IMAGE_DISPLAY',
'        FROM bg_qcis.QCIS_IMAGES i',
' WHERE i.MODEL_ID = :P207_CLONE_FROM_MODEL_ID',
'   AND i.PLANT_ID = :G_DEFAULT_PLANT_ID',
'   AND i.INACTIVE_DATE IS NULL',
'ORDER BY i.IMAGE_NAME'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P207_CLONE_FROM_MODEL_ID'
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
 p_id=>wwv_flow_api.id(24649630002492702)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Relationships Found'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>24649630002492702
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13016802045167274)
,p_db_column_name=>'BOX'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_column_html_expression=>'<span title="Check to Select Relationships to Clone">#BOX#</span> '
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
 p_id=>wwv_flow_api.id(13017272001167275)
,p_db_column_name=>'IMAGES_ID'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Images Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13017675121167276)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>30
,p_column_identifier=>'H'
,p_column_label=>'Image Name'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE:&DEBUG.::G_FILE_ID:#IMAGES_ID#'
,p_column_linktext=>'#IMAGE_NAME#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13018018503167276)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>40
,p_column_identifier=>'I'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13792488257862241)
,p_db_column_name=>'IMAGE_DISPLAY'
,p_display_order=>50
,p_column_identifier=>'K'
,p_column_label=>'Image'
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
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:QCIS_IMAGES:BLOB_CONTENT:IMAGES_ID::MIME_TYPE:FILE_NAME:LAST_UPDATE_DATE::::'
,p_static_id=>'IMAGE_DISPLAY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24819077204497119)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'130184'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:IMAGE_NAME:IMAGE_DISPLAY:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24650265177492708)
,p_plug_name=>'IM Relationships'
,p_region_name=>'CLONE_IM'
,p_parent_plug_id=>wwv_flow_api.id(35991213807435364)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_ITEM.checkbox (3, IM_DRAFT_HEADER)',
'           box,',
'       IM_DRAFT_HEADER,',
'       STATION_SUBSTATION,',
'       image,',
'       image_id,',
'       inspect_name,',
'       IM_TEMPLATE_HEADER,',
'       CASE WHEN IM_TEMPLATE_HEADER IS NULL THEN ''No'' ELSE ''Yes'' END',
'           TEMPLATE_EXISTS',
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
'                   inspect_name,',
'               (SELECT th.HEADER_ID',
'                  FROM bg_qcis.QCIS_IM_TEMPLATE_HEADER th',
'                 WHERE     dr.HEADER_ID = th.DRAFT_ID',
'                       AND th.INACTIVE_DATE IS NULL)',
'                   IM_TEMPLATE_HEADER',
'          FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT dr',
'         WHERE     dr.plant_id = :G_DEFAULT_PLANT_ID',
'               AND dr.model_id = :P207_CLONE_FROM_MODEL_ID',
'               AND dr.INACTIVE_DATE IS NULL',
'               AND MAP_TYPE = ''I''',
'              )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P207_CLONE_FROM_MODEL_ID'
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
 p_id=>wwv_flow_api.id(24650327390492709)
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
,p_internal_uid=>24650327390492709
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13023492715167284)
,p_db_column_name=>'BOX'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_column_html_expression=>'<span title="Check to Select Relationships to Clone">#BOX#</span> '
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
 p_id=>wwv_flow_api.id(13023828663167285)
,p_db_column_name=>'IM_DRAFT_HEADER'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Im Draft Header'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13024277294167285)
,p_db_column_name=>'IM_TEMPLATE_HEADER'
,p_display_order=>30
,p_column_identifier=>'H'
,p_column_label=>'Im Template Header'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13024620726167285)
,p_db_column_name=>'IMAGE'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Image'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE:&DEBUG.:RP:G_FILE_ID:#IMAGE_ID#'
,p_column_linktext=>'#IMAGE#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13025089076167286)
,p_db_column_name=>'INSPECT_NAME'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Inspect Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13025405409167286)
,p_db_column_name=>'STATION_SUBSTATION'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Station Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13025807144167287)
,p_db_column_name=>'IMAGE_ID'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Image Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13026276568167287)
,p_db_column_name=>'TEMPLATE_EXISTS'
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>'Template Exists'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24819683394497120)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'130266'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:STATION_SUBSTATION:IMAGE:INSPECT_NAME:IM_:TEMPLATE_EXISTS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24805202481476265)
,p_plug_name=>'PM Relationships'
,p_region_name=>'CLONE_PM'
,p_parent_plug_id=>wwv_flow_api.id(35991213807435364)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>140
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_ITEM.checkbox (4, IM_DRAFT_HEADER)',
'           box,',
'       IM_DRAFT_HEADER,',
'       STATION,',
'       SUBSTR(STATION,1,INSTR(STATION,''-'')-1) STATION_SEQ,',
'       SUBSTATION,',
'       SUBSTR(SUBSTATION,1,INSTR(SUBSTATION,''-'')-1) SSTATION_SEQ,',
'       image,',
'       image_id,',
'       inspect_name',
'   FROM (SELECT dr.header_id',
'                   IM_DRAFT_HEADER,',
'                  (SELECT sh.station_code || ''-'' || sh.station_name',
'                     FROM bg_qcis.QCIS_STATION_MASTER sh',
'                    WHERE sh.station_master_id = dr.station_id',
'                      AND sh.plant_id = :G_DEFAULT_PLANT_ID)',
'               STATION,',
'                (SELECT ss.substation_code || ''-'' || ss.substation_name',
'                     FROM bg_qcis.QCIS_SUBSTATION ss',
'                    WHERE ss.substation_id = dr.substation_id)',
'                  SUBSTATION,',
'               (SELECT im.image_name',
'                  FROM bg_qcis.QCIS_IMAGES im',
'                 WHERE im.images_id = dr.image_id)',
'                   image,',
'               dr.image_id,',
'               (SELECT ins.inspection_name',
'                  FROM bg_qcis.QCIS_INSPECTION_NAMES ins',
'                 WHERE ins.inspect_name_id = dr.inspect_name_id',
'                   AND ins.plant_id = :G_DEFAULT_PLANT_ID)',
'                   inspect_name',
'          FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT dr',
'         WHERE     dr.plant_id = :G_DEFAULT_PLANT_ID',
'               AND dr.model_id = :P207_CLONE_FROM_MODEL_ID',
'               AND dr.INACTIVE_DATE IS NULL',
'               AND MAP_TYPE = ''P'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P207_CLONE_FROM_MODEL_ID'
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
 p_id=>wwv_flow_api.id(24805339839476266)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Relationships Found'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>24805339839476266
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13027765134167290)
,p_db_column_name=>'BOX'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_column_html_expression=>'<span title="Check to Select Relationships to Clone">#BOX#</span> '
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
 p_id=>wwv_flow_api.id(13028193986167290)
,p_db_column_name=>'IM_DRAFT_HEADER'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Im Draft Header'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13029375615167292)
,p_db_column_name=>'IMAGE'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Image'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE:&DEBUG.:RP:G_FILE_ID:#IMAGE_ID#'
,p_column_linktext=>'#IMAGE#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13029797419167293)
,p_db_column_name=>'IMAGE_ID'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Image Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13030196997167294)
,p_db_column_name=>'INSPECT_NAME'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Inspect Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25540444569261319)
,p_db_column_name=>'STATION'
,p_display_order=>80
,p_column_identifier=>'O'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25540553221261320)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>90
,p_column_identifier=>'P'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25540806211261323)
,p_db_column_name=>'STATION_SEQ'
,p_display_order=>100
,p_column_identifier=>'Q'
,p_column_label=>'Station Seq'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25540957190261324)
,p_db_column_name=>'SSTATION_SEQ'
,p_display_order=>110
,p_column_identifier=>'R'
,p_column_label=>'Sstation Seq'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24820376177497122)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'130309'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:INSPECT_NAME:STATION:SUBSTATION:IMAGE:'
,p_sort_column_1=>'STATION_SEQ'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SSTATION_SEQ'
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
 p_id=>wwv_flow_api.id(24805982108476272)
,p_plug_name=>'GS Relationships'
,p_region_name=>'CLONE_GS'
,p_parent_plug_id=>wwv_flow_api.id(35991213807435364)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>150
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_ITEM.checkbox (5, gsth.HEADER_ID)',
'           box,',
'       gsth.HEADER_ID,',
'          sm.STATION_CODE',
'       || '' - ''',
'       || sm.STATION_NAME',
'       STATION,',
'        s.SUBSTATION_CODE',
'       || '' - ''',
'       || s.SUBSTATION_NAME',
'       SUBSTATION,',
'       gsth.SEQUENCE_NBR,',
'       (SELECT ins.inspection_name',
'          FROM qcis_inspection_names ins',
'         WHERE ins.inspect_name_id = gsth.gig_sheet_name)',
'           GIG_SHEET_NAME,',
'        TO_NUMBER(s.SUBSTATION_CODE) SS_CODE,',
'        TO_NUMBER(sm.STATION_CODE) S_CODE',
'  FROM bg_qcis.qcis_gs_template_header  gsth',
'       JOIN qcis_station_master sm ON sm.station_master_id = gsth.station_id',
'       JOIN qcis_substation s ON s.substation_id = gsth.substation_id',
' WHERE     GSTH.MODEL_ID = :P207_CLONE_FROM_MODEL_ID',
'       --  AND GSTH.GIG_SHEET_TYPE = ''G''',
'       AND GSTH.PLANT_ID = :G_DEFAULT_PLANT_ID',
'       AND GSTH.INACTIVE_DATE IS NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P207_CLONE_FROM_MODEL_ID'
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
 p_id=>wwv_flow_api.id(24806028810476273)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Relationships Found'
,p_max_rows_per_page=>'25'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>24806028810476273
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13032068893167298)
,p_db_column_name=>'BOX'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_column_html_expression=>'<span title="Check to Select Relationships to Clone">#BOX#</span> '
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
 p_id=>wwv_flow_api.id(13032440843167298)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13033500378167300)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Seq #'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13033923561167300)
,p_db_column_name=>'GIG_SHEET_NAME'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Gig Sheet Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13790948573862226)
,p_db_column_name=>'SS_CODE'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Substation Sequence'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13791064703862227)
,p_db_column_name=>'S_CODE'
,p_display_order=>80
,p_column_identifier=>'M'
,p_column_label=>'Station Sequence'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25540616269261321)
,p_db_column_name=>'STATION'
,p_display_order=>90
,p_column_identifier=>'N'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25540738038261322)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>100
,p_column_identifier=>'O'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24821053327497123)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'130343'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'BOX:GIG_SHEET_NAME:SEQUENCE_NBR:STATION:SUBSTATION:'
,p_sort_column_1=>'S_CODE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SS_CODE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'SEQUENCE_NBR'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36394092120044222)
,p_plug_name=>'Station Relationships'
,p_region_name=>'CLONE_ST'
,p_parent_plug_id=>wwv_flow_api.id(35991213807435364)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT apex_item.checkbox (1,sm.STATION_MASTER_ID) Box,',
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
'   AND  MODEL_ID = :P207_CLONE_FROM_MODEL_ID',
'   AND sm.INACTIVE_DATE IS NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID,P207_CLONE_FROM_MODEL_ID'
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
end;
/
begin
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(36394175117044223)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Relationships Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_owner=>'DGRUGINS'
,p_internal_uid=>36394175117044223
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13019512800167279)
,p_db_column_name=>'STATION_PARENT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Station Parent Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13019950556167280)
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
 p_id=>wwv_flow_api.id(13020377397167280)
,p_db_column_name=>'STATION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13020720152167280)
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
 p_id=>wwv_flow_api.id(13021195991167281)
,p_db_column_name=>'STATION_MASTER_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Station Master Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13021547641167281)
,p_db_column_name=>'BOX'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_column_html_expression=>'<span title="Check to Select Relationships to Clone">#BOX#</span> '
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
 p_id=>wwv_flow_api.id(13021983306167281)
,p_db_column_name=>'STATION_CODE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(36403069261206503)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'130223'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11637819300325417)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21305311476927394)
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
 p_id=>wwv_flow_api.id(2586743475968681)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(21305311476927394)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11487063500592501)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(35991213807435364)
,p_button_name=>'CLONE_ALL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'BODY'
,p_icon_css_classes=>'fa-clone'
,p_button_cattributes=>'title="Clone All atrributes to another Model(s)."'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>11
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13018886851167277)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24649591121492701)
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
 p_id=>wwv_flow_api.id(13022739648167282)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36394092120044222)
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
 p_id=>wwv_flow_api.id(13027096838167289)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24650265177492708)
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
 p_id=>wwv_flow_api.id(13031301185167296)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24805202481476265)
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
 p_id=>wwv_flow_api.id(13034717002167301)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24805982108476272)
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2494611592711008)
,p_branch_name=>'After Cancel'
,p_branch_action=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:RP:P207_FROM_MODEL_YR:'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(2586743475968681)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11231870460716528)
,p_name=>'P207_CLONE_TO_MODEL_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11231712616716527)
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
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'G_DEFAULT_PLANT_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'title="Select  Model Year of Model to Clone To"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11231969894716529)
,p_name=>'P207_CLONE_TO_MODEL_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11231712616716527)
,p_prompt=>'Clone To Models'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT MODEL_YEAR || '' - '' || MODEL_NAME d, MODEL_MASTER_ID r',
'    FROM bg_qcis.QCIS_MODEL_MASTER ',
'   WHERE     PLANT_ID = :G_DEFAULT_PLANT_ID',
'         AND BRAND_ID = :P207_BRAND_ID',
'         AND MODEL_YEAR = :P207_CLONE_TO_MODEL_YEAR         ',
'         AND INACTIVE_DATE IS NULL',
'         AND MODEL_NAME||MODEL_YEAR NOT IN (SELECT fm.MODEL_NAME||fm.MODEL_YEAR ',
'                                       FROM bg_qcis.QCIS_MODEL_MASTER fm',
'                                      WHERE fm.MODEL_MASTER_ID = :P207_CLONE_FROM_MODEL_ID',
'                                        AND PLANT_ID = :G_DEFAULT_PLANT_ID )',
'                                     ',
' ORDER BY 1'))
,p_lov_cascade_parent_items=>'P207_CLONE_TO_MODEL_YEAR,P207_BRAND_ID,P207_CLONE_FROM_MODEL_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
,p_item_comment=>'The clone_from_model_id LOV looks at the staging table and the model master to return models that have yet to be created for the new model year and and are not in staging to be created.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11232174046716531)
,p_name=>'P207_CLONE_TO_BRAND'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11231712616716527)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'input type="text" readonly="readonly" style="background:white;" '
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13009925754167262)
,p_name=>'P207_FROM_MODEL_YR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(34191312313327705)
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
 p_id=>wwv_flow_api.id(13010368360167264)
,p_name=>'P207_CLONE_FROM_MODEL_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(34191312313327705)
,p_prompt=>'Clone From Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT MODEL_YEAR || '' - '' || MODEL_NAME d, MODEL_MASTER_ID r',
'    FROM bg_qcis.QCIS_MODEL_MASTER ',
'   WHERE     PLANT_ID = :G_DEFAULT_PLANT_ID',
'         AND BRAND_ID = :P207_BRAND_ID',
'         AND MODEL_YEAR = :P207_FROM_MODEL_YR',
'         AND INACTIVE_DATE IS NULL',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P207_FROM_MODEL_YR,P207_BRAND_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_cattributes_element=>'title="Select Model to Clone From"'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>'The clone_from_model_id LOV looks at the staging table and the model master to return models that have yet to be created for the new model year and and are not in staging to be created.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13011046758167265)
,p_name=>'P207_SELECT_RELATIONSHIP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35991213807435364)
,p_prompt=>'Relationship'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d, r',
'    FROM (SELECT 0 seq, ''All'' d, ''A'' r FROM DUAL ',
'           WHERE :P207_CLONE_FROM_MODEL_ID IS NOT NULL',
'          UNION',
'          SELECT 1 seq, ''Stations'' d, ''S'' r',
'            FROM DUAL',
'           WHERE EXISTS',
'                     (SELECT 1',
'                        FROM bg_qcis.QCIS_STATION_MASTER',
'                       WHERE     MODEL_ID = :P207_CLONE_FROM_MODEL_ID',
'                             AND INACTIVE_DATE IS NULL)',
'          UNION',
'          SELECT 2 seq, ''Images'' d, ''I'' r',
'            FROM DUAL',
'           WHERE EXISTS',
'                     (SELECT 1',
'                        FROM bg_qcis.QCIS_IMAGES',
'                       WHERE     MODEL_ID = :P207_CLONE_FROM_MODEL_ID',
'                             AND INACTIVE_DATE IS NULL)',
'          UNION',
'          SELECT 3 seq, ''IM Drafts'' d, ''IM'' r',
'            FROM DUAL',
'           WHERE EXISTS',
'                     (SELECT 1',
'                        FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT',
'                       WHERE     MODEL_ID = :P207_CLONE_FROM_MODEL_ID',
'                             AND MAP_TYPE = ''I'')',
'          UNION',
'          SELECT 4 seq, ''PM Drafts'' d, ''PM'' r',
'            FROM DUAL',
'           WHERE EXISTS',
'                     (SELECT 1',
'                        FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT',
'                       WHERE     MODEL_ID = :P207_CLONE_FROM_MODEL_ID',
'                             AND MAP_TYPE = ''P'')',
'          UNION',
'          SELECT 5 seq, ''Gig Sheets'' d, ''GS'' r',
'            FROM DUAL',
'           WHERE EXISTS',
'                     (SELECT 1',
'                        FROM bg_qcis.QCIS_GS_TEMPLATE_HEADER',
'                       WHERE MODEL_ID = :P207_CLONE_FROM_MODEL_ID))',
'   WHERE :P207_CLONE_FROM_MODEL_ID IS NOT NULL',
'ORDER BY SEQ'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P207_CLONE_FROM_MODEL_ID,P207_CLONE_TO_MODEL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_cattributes_element=>'title="Relationships to Clone"'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13081473222540304)
,p_name=>'P207_BRAND_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(34191312313327705)
,p_item_default=>'RETURN :G_DEFAULT_BRAND_ID;'
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
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
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13118013399319427)
,p_name=>'P207_CLONE_FROM_DIVISION'
,p_item_sequence=>39
,p_item_plug_id=>wwv_flow_api.id(34191312313327705)
,p_prompt=>'Division'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13791191104862228)
,p_name=>'P207_INCLUDE_VAR_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35991213807435364)
,p_item_default=>'Y'
,p_prompt=>'Include Var Data'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(2494775045711009)
,p_validation_name=>'Clone From Model Is Not Null'
,p_validation_sequence=>10
,p_validation=>'P207_CLONE_FROM_MODEL_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Clone From Model must have a value'
,p_validation_condition=>':REQUEST NOT IN ( ''CANCEL'' )'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(13010368360167264)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(2495119943711013)
,p_validation_name=>'Clone To Model is not Null'
,p_validation_sequence=>20
,p_validation=>'P207_CLONE_TO_MODEL_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Error - Clone To Model must have a value'
,p_validation_condition=>':REQUEST NOT IN ( ''CANCEL'', ''BACK'' )'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(11231969894716529)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11502085452592584)
,p_name=>'Close Dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(11637819300325417)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11502578969592585)
,p_event_id=>wwv_flow_api.id(11502085452592584)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11232481382716534)
,p_name=>'Populate CLONE_TO_BRAND_ID'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_BRAND_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11232558232716535)
,p_event_id=>wwv_flow_api.id(11232481382716534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_CLONE_TO_BRAND,P207_CLONE_FROM_DIVISION,G_DEFAULT_BRAND_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BRAND_CODE || '' - '' || BRAND_NAME brand, d.DIVISION_NAME, b.QCIS_BRAND_MASTER_ID',
'  FROM bg_qcis.QCIS_BRAND_MASTER b, bg_qcis.QCIS_DIVISION_MASTER d',
' WHERE QCIS_BRAND_MASTER_ID = :P207_BRAND_ID ',
'   AND  d.QCIS_DIVISION_MASTER_ID = b.DIVISION_MASTER_ID'))
,p_attribute_07=>'P207_BRAND_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13041808069191344)
,p_name=>'H/S Station Relationship'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_SELECT_RELATIONSHIP'
,p_condition_element=>'P207_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13042245667191345)
,p_event_id=>wwv_flow_api.id(13041808069191344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(36394092120044222)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13043293998191345)
,p_event_id=>wwv_flow_api.id(13041808069191344)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(36394092120044222)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13042778178191345)
,p_event_id=>wwv_flow_api.id(13041808069191344)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(36394092120044222)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12253944376324534)
,p_name=>'H/S Image Relationship'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_SELECT_RELATIONSHIP'
,p_condition_element=>'P207_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'I'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12254063257324535)
,p_event_id=>wwv_flow_api.id(12253944376324534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24649591121492701)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12254222108324537)
,p_event_id=>wwv_flow_api.id(12253944376324534)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24649591121492701)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12254133971324536)
,p_event_id=>wwv_flow_api.id(12253944376324534)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24649591121492701)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12254340978324538)
,p_name=>'H/S Image Map Relationship'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_SELECT_RELATIONSHIP'
,p_condition_element=>'P207_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'IM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12254406124324539)
,p_event_id=>wwv_flow_api.id(12254340978324538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24650265177492708)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12254646378324541)
,p_event_id=>wwv_flow_api.id(12254340978324538)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24650265177492708)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12254527533324540)
,p_event_id=>wwv_flow_api.id(12254340978324538)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24650265177492708)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12254777149324542)
,p_name=>'H/S Pin Map Relationship'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_SELECT_RELATIONSHIP'
,p_condition_element=>'P207_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12254870474324543)
,p_event_id=>wwv_flow_api.id(12254777149324542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24805202481476265)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12255054295324545)
,p_event_id=>wwv_flow_api.id(12254777149324542)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24805202481476265)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12254912239324544)
,p_event_id=>wwv_flow_api.id(12254777149324542)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24805202481476265)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12255187999324546)
,p_name=>'H/S Gig Sheet Relationship'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_SELECT_RELATIONSHIP'
,p_condition_element=>'P207_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'GS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12255286923324547)
,p_event_id=>wwv_flow_api.id(12255187999324546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24805982108476272)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12255407099324549)
,p_event_id=>wwv_flow_api.id(12255187999324546)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24805982108476272)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12255397283324548)
,p_event_id=>wwv_flow_api.id(12255187999324546)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24805982108476272)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13125832510690301)
,p_name=>'H/S Clone All Button'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_SELECT_RELATIONSHIP'
,p_condition_element=>'P207_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13126125990690304)
,p_event_id=>wwv_flow_api.id(13125832510690301)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(11487063500592501)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13126088951690303)
,p_event_id=>wwv_flow_api.id(13125832510690301)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(11487063500592501)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13791267658862229)
,p_name=>'H/S Include Var Data '
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_SELECT_RELATIONSHIP'
,p_condition_element=>'P207_SELECT_RELATIONSHIP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'GS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13791312545862230)
,p_event_id=>wwv_flow_api.id(13791267658862229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_INCLUDE_VAR_DATA'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13791445445862231)
,p_event_id=>wwv_flow_api.id(13791267658862229)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_INCLUDE_VAR_DATA'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13050889485234533)
,p_name=>'SELECT_UNSELECT Stations'
,p_event_sequence=>140
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#CLONE_ST'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13051224134234534)
,p_event_id=>wwv_flow_api.id(13050889485234533)
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
 p_id=>wwv_flow_api.id(13051600787251353)
,p_name=>'SELECT_UNSELECT Images'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#CLONE_IMG'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13052046287251353)
,p_event_id=>wwv_flow_api.id(13051600787251353)
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
end;
/
begin
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13052452861255001)
,p_name=>'SELECT_UNSELECT Image Maps'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#CLONE_IM'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13052856956255002)
,p_event_id=>wwv_flow_api.id(13052452861255001)
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
 p_id=>wwv_flow_api.id(13053249322258304)
,p_name=>'SELECT_UNSELECT Pin Maps'
,p_event_sequence=>170
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#CLONE_PM'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13053691890258306)
,p_event_id=>wwv_flow_api.id(13053249322258304)
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
 p_id=>wwv_flow_api.id(13054042813262719)
,p_name=>'SELECT_UNSELECT Gig Sheets'
,p_event_sequence=>180
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#CLONE_GS'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13054442060262720)
,p_event_id=>wwv_flow_api.id(13054042813262719)
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
 p_id=>wwv_flow_api.id(13789761154862214)
,p_name=>'Refresh Relationships'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P207_CLONE_FROM_MODEL_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13789800422862215)
,p_event_id=>wwv_flow_api.id(13789761154862214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(36394092120044222)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13790554913862222)
,p_event_id=>wwv_flow_api.id(13789761154862214)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24649591121492701)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13790643218862223)
,p_event_id=>wwv_flow_api.id(13789761154862214)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24650265177492708)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13790728035862224)
,p_event_id=>wwv_flow_api.id(13789761154862214)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24805202481476265)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13790835296862225)
,p_event_id=>wwv_flow_api.id(13789761154862214)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24805982108476272)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11501664593592582)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Stations To Model'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/16/2019 11:00:51 AM (QP5 v5.336) */',
'DECLARE',
'    v_to_models       apex_application_global.vc_arr2;',
'    v_out_err_msg     VARCHAR2 (500);',
'BEGIN',
'    --v_from_stations := APEX_UTIL.string_to_table (:p207_clone_station_id);',
'    v_to_models := APEX_UTIL.string_to_table ( :P207_CLONE_TO_MODEL_ID);',
'',
'',
'',
'    FOR i IN 1 .. v_to_models.COUNT',
'    LOOP',
'        FOR j IN 1 .. APEX_APPLICATION.g_f01.COUNT',
'        LOOP',
'            v_out_err_msg :=',
'                BG_QCIS.qc2_cloning_utilities.clone_selected_stations_ind (',
'                    TO_NUMBER (v_to_models (i)),',
'                    :APP_USER,',
'                    TO_NUMBER (APEX_APPLICATION.g_f01 (j)));',
'        END LOOP;                                                  -- STATIONS',
'    END LOOP;                                                      --TO_MODELS',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13022739648167282)
,p_process_success_message=>'Station Clone Processing Completed '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13792267372862239)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone All'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_to_models     apex_application_global.vc_arr2;',
'    v_out_err_msg   VARCHAR2 (500);',
'BEGIN',
'    v_to_models := APEX_UTIL.string_to_table ( :P207_CLONE_TO_MODEL_ID);',
'',
'',
'',
'    FOR i IN 1 .. v_to_models.COUNT',
'    LOOP',
'        BG_QCIS.qc2_cloning_utilities.clone_all (',
'            :G_DEFAULT_PLANT_ID,',
'            TO_NUMBER ( :P207_CLONE_FROM_MODEL_ID),',
'            TO_NUMBER (v_to_models (i)),',
'            ''QC2_CLONE_ALL'',',
'            :APP_USER,',
'            v_out_err_msg);',
'    END LOOP;',
'END;'))
,p_process_error_message=>'Error Clone All - #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11487063500592501)
,p_process_success_message=>'Clone All Processing Completed '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13790182271862218)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Images To Models'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   ',
'    v_to_models       apex_application_global.vc_arr2;',
'    v_out_err_msg     VARCHAR2 (500);',
'BEGIN',
'    --v_from_stations := APEX_UTIL.string_to_table (:p207_clone_station_id);',
'    v_to_models := APEX_UTIL.string_to_table (:P207_CLONE_TO_MODEL_ID);',
'',
'',
'',
'    FOR i IN 1 .. v_to_models.COUNT',
'    LOOP',
'        FOR j IN 1 .. APEX_APPLICATION.g_f02.COUNT',
'        LOOP',
'          ',
'            v_out_err_msg :=',
'                BG_QCIS.qc2_cloning_utilities.clone_selected_images_ind (',
'                    TO_NUMBER (v_to_models (i)),',
'                    :APP_USER,',
'                    TO_NUMBER(APEX_APPLICATION.g_f02 (j)));',
'        END LOOP;                                                  -- IMAGES',
'    END LOOP;                                                      --TO_MODELS',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13018886851167277)
,p_process_success_message=>'Images Clone Processing Completed  '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13790230550862219)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Image Maps To Models'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_to_models       apex_application_global.vc_arr2;',
'    v_out_err_msg     VARCHAR2 (500);',
'BEGIN',
'    --v_from_stations := APEX_UTIL.string_to_table (:p207_clone_station_id);',
'    v_to_models := APEX_UTIL.string_to_table (:P207_CLONE_TO_MODEL_ID);',
'',
'',
'',
'    FOR i IN 1 .. v_to_models.COUNT',
'    LOOP',
'        FOR j IN 1 .. APEX_APPLICATION.g_f03.COUNT',
'        LOOP',
'           ',
'            v_out_err_msg :=',
'                BG_QCIS.qc2_cloning_utilities.clone_selected_drafts_ind (',
'                    :G_DEFAULT_PLANT_ID,',
'                    TO_NUMBER (v_to_models (i)),',
'                    :APP_USER,',
'                    TO_NUMBER(APEX_APPLICATION.g_f03 (j)));',
'        END LOOP;                                                  -- DRAFTS',
'    END LOOP;                                                      --TO_MODELS',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13027096838167289)
,p_process_success_message=>'Image Clone Processing Completed '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13790318628862220)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Pin Maps To Models'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_from_drafts     apex_application_global.vc_arr2;',
'    v_to_models       apex_application_global.vc_arr2;',
'    v_out_err_msg     VARCHAR2 (500);',
'BEGIN',
'    --v_from_stations := APEX_UTIL.string_to_table (:p207_clone_station_id);',
'    v_to_models := APEX_UTIL.string_to_table (:P207_CLONE_TO_MODEL_ID);',
'',
'',
'',
'    FOR i IN 1 .. v_to_models.COUNT',
'    LOOP',
'        FOR j IN 1 .. APEX_APPLICATION.g_f04.COUNT',
'        LOOP',
'            v_from_drafts :=',
'                APEX_UTIL.string_to_table (APEX_APPLICATION.g_f04 (j));',
'',
'            v_out_err_msg :=',
'                BG_QCIS.qc2_cloning_utilities.clone_selected_drafts (',
'                    :G_DEFAULT_PLANT_ID,',
'                    TO_NUMBER (v_to_models (i)),',
'                    :APP_USER,',
'                    v_from_drafts);',
'        END LOOP;                                                  -- DRAFTS',
'    END LOOP;                                                      --TO_MODELS',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13031301185167296)
,p_process_success_message=>'Pin Clone Processing Completed  '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13790426492862221)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Gig SheetsTo Models'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/16/2019 10:03:41 AM (QP5 v5.336) */',
'--Pg 207',
'',
'DECLARE',
'    v_from_headers   apex_application_global.vc_arr2;',
'    v_to_models      apex_application_global.vc_arr2;',
'    v_out_err_msg    VARCHAR2 (500);',
'BEGIN',
'    --v_from_stations := APEX_UTIL.string_to_table (:p207_clone_station_id);',
'    v_to_models := APEX_UTIL.string_to_table ( :P207_CLONE_TO_MODEL_ID);',
'',
'',
'',
'    FOR i IN 1 .. v_to_models.COUNT',
'    LOOP',
'        FOR j IN 1 .. APEX_APPLICATION.g_f05.COUNT',
'        LOOP',
'            ',
'',
'            v_out_err_msg :=',
'                BG_QCIS.qc2_cloning_utilities.clone_selected_template_detail_ind (',
'                    TO_NUMBER ( :P207_CLONE_FROM_MODEL_ID),',
'                    TO_NUMBER(APEX_APPLICATION.g_f05 (j)),',
'                    ''A'',                                             -- Status',
'                    :APP_USER,',
'                    :P207_INCLUDE_VAR_DATA,',
'                    ''Y'',                                 -- include gig sheets',
'                    TO_NUMBER(v_to_models (i)));',
'        END LOOP;                                                    -- DRAFTS',
'    END LOOP;                                                      --TO_MODELS',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13034717002167301)
,p_process_success_message=>'Gig Sheets Clone Processing Completed  '
);
end;
/
