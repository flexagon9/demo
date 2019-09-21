prompt --application/pages/page_00205
begin
wwv_flow_api.create_page(
 p_id=>205
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Model Station Maintenance'
,p_page_mode=>'MODAL'
,p_step_title=>'Model Station Maintenance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(15904210384314369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1400'
,p_dialog_css_classes=>'no-close'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190830135055'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21801250518673533)
,p_plug_name=>'Station Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19741134019332568)
,p_plug_name=>'Stations'
,p_parent_plug_id=>wwv_flow_api.id(21801250518673533)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>QC Stations</b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22098420542217426)
,p_plug_name=>'Current Station Relationships'
,p_parent_plug_id=>wwv_flow_api.id(19741134019332568)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>15
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.STATION_CODE || '' - '' || s.STATION_NAME STATION,',
'       CASE WHEN s.INACTIVE_DATE IS NULL THEN ''A''',
'             ELSE ''I''',
'        END STATUS,',
'       s.QCIS_USAGE_FLAG,',
'       s.STATION_PARENT_ID,',
'       s.STATION_MASTER_ID',
'  FROM bg_qcis.QCIS_STATION_MASTER s',
' WHERE s.MODEL_ID = :P205_MODEL_ID',
' ORDER BY TO_NUMBER(s.STATION_CODE)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P205_MODEL_ID'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24723890291905100)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Station Relationships Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_show_detail_link=>'C'
,p_detail_link=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:RP:P205_STATION_MASTER_ID:#STATION_MASTER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'DGRUGINS'
,p_internal_uid=>13432541896571116
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24724025314905101)
,p_db_column_name=>'STATION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24724054361905102)
,p_db_column_name=>'STATUS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24724174365905103)
,p_db_column_name=>'QCIS_USAGE_FLAG'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'QCIS Usage'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24724311712905104)
,p_db_column_name=>'STATION_PARENT_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Station Parent Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24724530967905106)
,p_db_column_name=>'STATION_MASTER_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Station Master Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24755164219464256)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'134639'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATION:STATUS:QCIS_USAGE_FLAG:STATION_PARENT_ID:STATION_MASTER_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24474054073535990)
,p_plug_name=>'Audit Info'
,p_parent_plug_id=>wwv_flow_api.id(19741134019332568)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24724412286905105)
,p_plug_name=>'Add New Stations'
,p_parent_plug_id=>wwv_flow_api.id(19741134019332568)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>25
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Add New QC Stations</b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21801354922673534)
,p_plug_name=>'SubStations Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>15
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P205_STATION_MASTER_ID'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 14px; color: steelblue"><b> SubStation Relationships</b></div> ',
'<br></br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21864687634094800)
,p_plug_name=>'Add SubStations'
,p_parent_plug_id=>wwv_flow_api.id(21801354922673534)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT 1',
'    FROM bg_qcis.QCIS_SUBSTATION_PARENT sp',
'   WHERE     sp.STATION_PARENT_ID = :P205_STATION_MASTER_PARENT_ID',
'         AND sp.INACTIVE_DATE IS NULL',
'         AND NOT EXISTS (SELECT 1',
'                          FROM bg_qcis.QCIS_SUBSTATION ss',
'                         WHERE ss.STATION_MASTER_ID = :P205_STATION_MASTER_ID',
'                           AND ss.SUBSTATION_PARENT_ID = sp.ID)'))
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br></br>',
'<div style="font-size: 14px; color: steelblue"><b>Available SubStations to Add</b></div> '))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24726154816905123)
,p_plug_name=>'SubStation List'
,p_parent_plug_id=>wwv_flow_api.id(21801354922673534)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    APEX_ITEM.HIDDEN (1, SUBSTATION_ID)',
'       || SUBSTATION_CODE',
'       || '' - ''',
'       || SUBSTATION_NAME',
'           SUBSTATIONS,',
'       SUBSTATION_ID,',
'       STATION_MASTER_ID,',
'       INACTIVE_DATE,',
'       LAST_UPDATE_DATE,',
'       LAST_UPDATED_BY,',
'       CREATION_DATE,',
'       CREATED_BY,',
'       APEX_ITEM.SELECT_LIST_FROM_LOV (',
'           10,',
'           CASE WHEN INACTIVE_DATE IS NULL THEN ''A'' ELSE ''I'' END,',
'           ''A_I_STATUS'',',
'           NULL,',
'           ''NO'') STATUS',
'  FROM bg_qcis.QCIS_SUBSTATION',
' WHERE STATION_MASTER_ID = :P205_STATION_MASTER_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P205_STATION_MASTER_ID'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24726259579905124)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Substation Relationships Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>13434911184571140
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24801276201601299)
,p_db_column_name=>'SUBSTATIONS'
,p_display_order=>10
,p_column_identifier=>'O'
,p_column_label=>'Sequence - Substation'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24726358635905125)
,p_db_column_name=>'SUBSTATION_ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Substation Id'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24726471111905126)
,p_db_column_name=>'STATION_MASTER_ID'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Station Master Id'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24726777134905129)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24727240852905133)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24801386262601300)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>80
,p_column_identifier=>'P'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24726974756905131)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24801461367601301)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>100
,p_column_identifier=>'Q'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24801909020601305)
,p_db_column_name=>'STATUS'
,p_display_order=>110
,p_column_identifier=>'U'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24799125350557905)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'135078'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LAST_UPDATED_BY:CREATED_BY:SUBSTATIONS:STATUS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22177994092517747)
,p_plug_name=>'Model Inspection Stations'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23542580915658491)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22177994092517747)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18144425327777719)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22177994092517747)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-times-circle'
,p_button_cattributes=>'&G_TT_CAN_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18144790482777720)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22177994092517747)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'title="Save Station  Changes"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18145228280777720)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24724412286905105)
,p_button_name=>'ADD_STATIONS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Stations'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create Station from Parent Station"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24800289521601289)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(21864687634094800)
,p_button_name=>'ADD_SUBSTATIONS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add SubStations'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create SubStation to Parent Station"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22168293009407217)
,p_branch_name=>'Go To Page 205'
,p_branch_action=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:RP,205::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37786310603255404)
,p_branch_action=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:RP,205::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(18144425327777719)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18124054233744351)
,p_name=>'P205_STATION_MASTER_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18124867068744354)
,p_name=>'P205_MODEL_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_NAME display_value, MODEL_MASTER_ID return_value ',
'  from bg_qcis.QCIS_MODEL_MASTER ',
'where (PLANT_ID = :P205_PLANT_ID ',
'  and INACTIVE_DATE IS NULL',
'  and MODEL_YEAR = :P205_MODEL_YEAR)',
'  OR MODEL_MASTER_ID = :P205_MODEL_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P205_PLANT_ID,P205_MODEL_YEAR'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P205_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18125305058744355)
,p_name=>'P205_NEW_STATION_PARENT_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24724412286905105)
,p_prompt=>'Available Stations'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT QCIS_STATION_CODE || '' - '' || STATION_NAME ',
'                                    || ''  Usage Code - '' ',
'                                    || CASE WHEN USAGE_CODE = ''B'' THEN ''Both''',
'                                            WHEN USAGE_CODE = ''Q'' THEN ''QCIS''',
'                                            WHEN USAGE_CODE = ''S'' THEN ''SFM''',
'                                            END d, ',
'         ID r',
'    FROM bg_qcis.QCIS_STATION_PARENT sp',
'   WHERE     sp.PLANT_ID = :G_DEFAULT_PLANT_ID',
'         AND sp.INACTIVE_DATE IS NULL',
'         AND  sp.id NOT IN',
'                 (SELECT sm.STATION_PARENT_ID',
'                    FROM bg_qcis.QCIS_STATION_MASTER sm',
'                   WHERE     sm.PLANT_ID = :G_DEFAULT_PLANT_ID',
'                         AND MODEL_ID = :P205_MODEL_ID)',
'         AND :P205_MODEL_ID IS NOT NULL',
'ORDER BY QCIS_STATION_CODE'))
,p_lov_cascade_parent_items=>'P205_MODEL_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID,P205_MODEL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>4
,p_colspan=>10
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18126538357744358)
,p_name=>'P205_INACTIVE_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18147868578793424)
,p_name=>'P205_PLANT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN :G_DEFAULT_PLANT_ID;',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18152260986919227)
,p_name=>'P205_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
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
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P205_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18173029720503089)
,p_name=>'P205_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(24474054073535990)
,p_prompt=>'Update Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18173366572503090)
,p_name=>'P205_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24474054073535990)
,p_prompt=>'Updated By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18173805336503090)
,p_name=>'P205_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(24474054073535990)
,p_prompt=>'Create Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18174238013503091)
,p_name=>'P205_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(24474054073535990)
,p_prompt=>'Created By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20957540535971128)
,p_name=>'P205_PLANT_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'RETURN :G_DEFAULT_LOC_CODE;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21676178824844723)
,p_name=>'P205_STATION_MASTER_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21676294615844724)
,p_name=>'P205_STATION_MASTER_CODE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21676755986844729)
,p_name=>'P205_SUBSTATION_MASTER_CODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_use_cache_before_default=>'NO'
,p_source=>'SUBSTATION_MASTER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21676851439844730)
,p_name=>'P205_QCIS_USAGE_FLAG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_prompt=>'QCIS Usage'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15976633719645764)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>'P205_STATION_MASTER_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21677067610844732)
,p_name=>'P205_PARENT_STATION_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21864753154094801)
,p_name=>'P205_PARENT_SUBSTATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21864687634094800)
,p_prompt=>'Sequence - Substations'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT sp.QCIS_SUBSTATION_CODE || '' - '' || sp.QCIS_SUBSTATION_NAME d, sp.ID r',
'    FROM bg_qcis.QCIS_SUBSTATION_PARENT sp',
'   WHERE     sp.STATION_PARENT_ID = :P205_STATION_MASTER_PARENT_ID',
'         AND sp.INACTIVE_DATE IS NULL',
'         AND NOT EXISTS (SELECT 1',
'                          FROM bg_qcis.QCIS_SUBSTATION ss',
'                         WHERE ss.STATION_MASTER_ID = :P205_STATION_MASTER_ID',
'                           AND ss.SUBSTATION_PARENT_ID = sp.ID) '))
,p_lov_cascade_parent_items=>'P205_STATION_MASTER_PARENT_ID,P205_STATION_MASTER_ID'
,p_ajax_items_to_submit=>'P205_STATION_MASTER_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21865904003094812)
,p_name=>'P205_QC_SEQ_STATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_prompt=>'Sequence - Station'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'input type="text" readonly="readonly" style="background:white;" '
,p_display_when=>'P205_STATION_MASTER_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when=>'P205_STATION_MASTER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24125701320692286)
,p_name=>'P205_BRAND_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'RETURN :G_DEFAULT_BRAND_ID;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BRAND_CODE||'' - ''||BRAND_NAME display_value, ',
'       QCIS_BRAND_MASTER_ID return_value ',
'from QCIS_BRAND_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID and INACTIVE_DATE IS NULL order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Brand -'
,p_lov_cascade_parent_items=>'P201_PLANT_ID'
,p_ajax_items_to_submit=>'P201_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P205_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24418522680024298)
,p_name=>'P205_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(23698221007378716)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_cattributes_element=>'TITLE="Set Station to Inactive or Active"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P205_STATION_MASTER_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24724558240905107)
,p_name=>'P205_STATION_MASTER_PARENT_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(19741134019332568)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24800237390601288)
,p_name=>'P205_NEW_QCIS_USAGE_FLAG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(24724412286905105)
,p_prompt=>'QCIS Usage'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15976633719645764)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25083076928196218)
,p_name=>'P205_COLLASPE_EXPAND_FLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22098420542217426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21370953847190190)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(23542580915658491)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21371063912190191)
,p_event_id=>wwv_flow_api.id(21370953847190190)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25083195258196219)
,p_name=>'COLLASPE_EXPAND'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25083416061196221)
,p_event_id=>wwv_flow_api.id(25083195258196219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P205_COLLASPE_EXPAND_FLAG'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CASE WHEN :P205_STATION_MASTER_ID IS NULL THEN 1',
'            ELSE 0',
'         END',
'FROM DUAL;'))
,p_attribute_07=>'P205_STATION_MASTER_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25083293317196220)
,p_event_id=>wwv_flow_api.id(25083195258196219)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(22098420542217426)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var numEntries = $v("P205_COLLASPE_EXPAND_FLAG")',
'   , $region = $(this.affectedElements[0]);',
'  ',
' if (numEntries > 0 && $region.hasClass(''is-collapsed'') ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
'  ',
' if (numEntries < 1 && $region.hasClass(''is-expanded'') ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
''))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25525870247003687)
,p_name=>'Refresh Curret Station'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P205_MODEL_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25525995894003688)
,p_event_id=>wwv_flow_api.id(25525870247003687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(22098420542217426)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37347453042937706)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch Model Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT m.MODEL_MASTER_ID, m.MODEL_YEAR, m.BRAND_ID',
'  INTO :P205_MODEL_ID, :P205_MODEL_YEAR, :P205_BRAND_ID',
'  FROM bg_qcis.QCIS_MODEL_MASTER m',
' WHERE m.MODEL_MASTER_ID = :P205_MODEL_ID ;',
' ',
' ',
' END;'))
,p_process_error_message=>'Error Fetching Model Information - #SQLERRRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P205_MODEL_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24724727500905108)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch Station Master Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'  ',
'  SELECT s.STATION_CODE || '' - '' || s.STATION_NAME             STATION,',
'         CASE WHEN s.INACTIVE_DATE IS NULL THEN ''A'' ELSE ''I'' END STATUS,',
'         s.QCIS_USAGE_FLAG,',
'         s.STATION_PARENT_ID,',
'         TO_CHAR(s.LAST_UPDATE_DATE,''DD-MON-RRRR''),',
'         TO_CHAR(s.CREATION_DATE,''DD-MON-RRRR''),',
'         s.LAST_UPDATED_BY,',
'         s.CREATED_BY',
'    INTO :P205_QC_SEQ_STATION,',
'         :P205_STATUS,',
'         :P205_QCIS_USAGE_FLAG,',
'         :P205_STATION_MASTER_PARENT_ID,         ',
'         :P205_LAST_UPDATE_DATE,',
'         :P205_CREATION_DATE,',
'         :P205_LAST_UPDATED_BY,',
'         :P205_CREATED_BY',
'    FROM bg_qcis.QCIS_STATION_MASTER s',
'   WHERE s.MODEL_ID = :P205_MODEL_ID',
'     AND s.STATION_MASTER_ID = :P205_STATION_MASTER_ID',
'     AND s.PLANT_ID = :G_DEFAULT_PLANT_ID;',
'   ',
'   ',
'   ',
'   END;'))
,p_process_error_message=>'Error - Fetch Station Master Info - #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P205_STATION_MASTER_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22165464256407189)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Into Station Master'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 7/5/2019 5:00:57 PM */',
'DECLARE',
'    v_new_parent_stations   apex_application_global.vc_arr2;',
'    v_station_master_id     NUMBER;',
'    v_log_message           bg_qcis.QCIS_MSG_LOG.log_message%TYPE;',
'    v_program               bg_qcis.QCIS_MSG_LOG.created_by%TYPE',
'                                := ''QC2_ADD_STATIONS'';',
'    v_process               bg_qcis.QCIS_MSG_LOG.source_process%TYPE;',
'    v_log_type              bg_qcis.QCIS_MSG_LOG.log_type%TYPE := ''I'';',
'    v_out_err_msg           VARCHAR2 (500);',
'    v_created_by            bg_qcis.QCIS_MSG_LOG.created_by%TYPE;',
'BEGIN',
'    v_new_parent_stations :=',
'        APEX_UTIL.string_to_table (:P205_NEW_STATION_PARENT_ID);',
'',
'     ',
'    FOR i IN 1 .. v_new_parent_stations.COUNT',
'    LOOP',
'        BEGIN',
'            v_process := ''QCIS_STATION_MASTER_SEQ.NEXTVAL next_val'';',
'',
'            SELECT QCIS_STATION_MASTER_SEQ.NEXTVAL next_val',
'              INTO v_station_master_id',
'              FROM DUAL;',
'',
'',
'            v_process := ''INSERT INTO STATION_MASTER'';',
'',
'            INSERT INTO bg_qcis.QCIS_STATION_MASTER (STATION_MASTER_ID,',
'                                                     PLANT_ID,',
'                                                     MODEL_ID,',
'                                                     STATION_NAME,',
'                                                     STATION_CODE,',
'                                                     SUBSTATION_CODE,',
'                                                     QCIS_USAGE_FLAG,',
'                                                     STATION_PARENT_ID)',
'                (SELECT v_station_master_id,',
'                        :G_DEFAULT_PLANT_ID,',
'                        :P205_MODEL_ID,',
'                        STATION_NAME,',
'                        QCIS_STATION_CODE,',
'                        NULL,',
'                        :P205_NEW_QCIS_USAGE_FLAG,',
'                        ID',
'                   FROM bg_qcis.QCIS_STATION_PARENT sp',
'                  WHERE     sp.ID = v_new_parent_stations (i)',
'                        AND PLANT_ID = :G_DEFAULT_PLANT_ID',
'                        AND sp.INACTIVE_DATE IS NULL);',
'                        ',
'            ',
'               ',
'        EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'                v_log_type := ''E'';',
'',
'                bg_qcis.insert_log_msg (v_program,           --msg_data_source',
'                                        v_new_parent_stations (i), --msg_source_id',
'                                        v_process,            --source_process',
'                                        v_log_message,          -- log_message',
'                                        v_log_type,                -- log_type',
'                                        v_program,        --created_by',
'                                        v_out_err_msg);',
'        END;',
'    END LOOP;',
'END;'))
,p_process_error_message=>'Error in Creating QC Station - #SQLERRM# '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18145228280777720)
,p_process_success_message=>'QC Station Created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18134373715744375)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply Changes -  QCIS_STATION_MASTER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'UPDATE bg_qcis.QCIS_STATION_MASTER',
'   SET QCIS_USAGE_FLAG = :P205_QCIS_USAGE_FLAG,',
'       INACTIVE_DATE   = CASE WHEN :P205_STATUS = ''A'' THEN NULL ',
'                              WHEN :P205_INACTIVE_DATE IS NOT NULL AND :P205_STATUS = ''I'' THEN :P205_INACTIVE_DATE',
'                              WHEN :P205_INACTIVE_DATE IS NULL  AND :P205_STATUS = ''I'' THEN TO_CHAR(SYSDATE,''DD-MON-RRRR'')',
'                          END',
'  WHERE STATION_MASTER_ID = :P205_STATION_MASTER_ID;',
'',
'',
'END;'))
,p_process_error_message=>'Unable to process row of table QCIS_STATION_MASTER.'
,p_process_when_button_id=>wwv_flow_api.id(18144790482777720)
,p_process_success_message=>'Qc Stations have been applied.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24800918916601295)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update SubStation Table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    FOR i IN 1 .. APEX_APPLICATION.g_f10.COUNT',
'    LOOP',
'  ',
'        UPDATE bg_qcis.QCIS_SUBSTATION',
'           SET INACTIVE_DATE =',
'                   CASE',
'                       WHEN APEX_APPLICATION.g_f10(i) = ''A''',
'                       THEN',
'                           NULL',
'                       WHEN     INACTIVE_DATE IS NOT NULL',
'                            AND APEX_APPLICATION.g_f10(i) = ''I''',
'                       THEN',
'                           INACTIVE_DATE',
'                       WHEN     INACTIVE_DATE IS NULL',
'                            AND APEX_APPLICATION.g_f10(i) = ''I''',
'                       THEN',
'                           SYSDATE',
'                   END',
'         WHERE SUBSTATION_ID = TO_NUMBER (APEX_APPLICATION.g_f01(i));',
'',
'    END LOOP;',
'END;'))
,p_process_error_message=>'Error - Saving Changes to Substation Table - #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18144790482777720)
,p_process_success_message=>'Changes have been applied to Substations'
);
end;
/
