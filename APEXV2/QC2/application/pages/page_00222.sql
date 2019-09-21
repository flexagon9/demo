prompt --application/pages/page_00222
begin
wwv_flow_api.create_page(
 p_id=>222
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Clone Images'
,p_page_mode=>'MODAL'
,p_step_title=>'Clone Images'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(15904210384314369)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ',
'  IR BLOB image column dimensions ',
'*/  ',
'td[headers="IMAGE_DISPLAY"] img { width: 125px;}  '))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'900'
,p_dialog_width=>'1300'
,p_dialog_css_classes=>'no-close'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190710090139'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36259750391026873)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>11
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46076032232765515)
,p_plug_name=>'Image Clone Report'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM,',
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
'  AND LOG_MESSAGE LIKE ''%'' || ''Image Clone'' || ''%''',
'  AND CREATED_BY = :APP_USER'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM bg_qcis.QCIS_MSG_LOG',
' WHERE TRUNC(CREATE_DATE) BETWEEN TRUNC(SYSDATE-1) AND TRUNC(SYSDATE)',
'  AND LOG_MESSAGE LIKE ''%'' || ''Image Clone'' || ''%''',
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
 p_id=>wwv_flow_api.id(46076201177765516)
,p_max_row_count=>'1000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_description=>'Shows the logging out put for Cloning Stations'
,p_owner=>'DGRUGINS'
,p_internal_uid=>34784852782431532
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25035146762310401)
,p_db_column_name=>'MSG_DATA_SOURCE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Calling Program'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25035472129310401)
,p_db_column_name=>'SOURCE_PROCESS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Process'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25035936483310402)
,p_db_column_name=>'LOG_MESSAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Message'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25036327613310403)
,p_db_column_name=>'LOG_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Log Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25036719186310403)
,p_db_column_name=>'CREATE_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25037118929310403)
,p_db_column_name=>'LOG_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25037475799310404)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25037931995310404)
,p_db_column_name=>'USERNAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Username'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25034262127310400)
,p_db_column_name=>'MSG_SOURCE_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Msg Source Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25034664884310401)
,p_db_column_name=>'ROWNUM'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(46129605143304709)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'137469'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWNUM:CREATE_DATE:LOG_MESSAGE:'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(25039457721310408)
,p_report_id=>wwv_flow_api.id(46129605143304709)
,p_name=>'Errors'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'LOG_TYPE'
,p_operator=>'='
,p_expr=>'E'
,p_condition_sql=>' (case when ("LOG_TYPE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''E''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_font_color=>'#AB2402'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(25038712699310407)
,p_report_id=>wwv_flow_api.id(46129605143304709)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'LOG_TYPE'
,p_operator=>'in'
,p_expr=>'I,E,R'
,p_condition_sql=>'"LOG_TYPE" in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#, #APXWS_EXPR_VAL3#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''I, E, R''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(25039100375310407)
,p_report_id=>wwv_flow_api.id(46129605143304709)
,p_name=>'My Clones'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_expr_type=>'ROW'
,p_expr=>'C LIKE ''%'' ||  H ||  ''%'''
,p_condition_sql=>'"LOG_MESSAGE" LIKE ''%'' ||  "USERNAME" ||  ''%'''
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46837226055613640)
,p_plug_name=>'Image Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_column=>7
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44777109556272675)
,p_plug_name=>'Images'
,p_parent_plug_id=>wwv_flow_api.id(46837226055613640)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Clone To Model</b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46837330459613641)
,p_plug_name=>'Clone Images Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>15
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Clone From Model</b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46900663171034907)
,p_plug_name=>'Clone Images'
,p_parent_plug_id=>wwv_flow_api.id(46837330459613641)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49215420083309888)
,p_plug_name=>'Available Clone From Images Detail View'
,p_region_name=>'IMG_RPT'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90715316556242450)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IMAGES_ID,',
'       IMAGES_ID  IMAGE,',
'       IMAGE_NAME,',
'       FILE_NAME',
'  FROM bg_qcis.QCIS_IMAGES s',
' WHERE s.MODEL_ID = :P222_CLONE_FROM_MODEL_ID',
'   AND INACTIVE_DATE IS NULL',
' ORDER BY IMAGE_NAME'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P222_CLONE_FROM_MODEL_ID'
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
,p_plug_footer=>'<br></br>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(38178185949228561)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Image Relationships Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_owner=>'DGRUGINS'
,p_internal_uid=>26886837553894577
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25050252417538235)
,p_db_column_name=>'IMAGES_ID'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Images Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25049932622538235)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Image Name'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE:&DEBUG.:RP:G_FILE_ID:#IMAGES_ID#'
,p_column_linktext=>'#IMAGE_NAME#'
,p_column_link_attr=>'TITLE="Click to view Image."'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25051126311538236)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>30
,p_column_identifier=>'K'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25050721011538236)
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
 p_id=>wwv_flow_api.id(38468142321552503)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'137605'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMAGE_NAME:FILE_NAME:IMAGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25042788985310413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36259750391026873)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'BACK'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'title="Cancel any unsaved changes and close window."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25043626501310415)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(36259750391026873)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.:RP,206:P222_CLONE_TO_MODEL_ID:'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25043176853310414)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(36259750391026873)
,p_button_name=>'CLONE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-clone'
,p_button_cattributes=>'title="Clone Selected Stations from the Clone Model to the  Clone To Model"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25046569142310423)
,p_branch_name=>'Go To Page 222'
,p_branch_action=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.:RP:P222_CLONE_TO_MODEL_ID,P222_CLONE_FROM_MODEL_ID,P222_CLONE_FROM_MODEL_YEAR:&P222_CLONE_TO_MODEL_ID.,&P222_CLONE_FROM_MODEL_ID.,&P222_CLONE_FROM_MODEL_YEAR.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(25043176853310414)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25031216179310391)
,p_name=>'P222_PLANT_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44777109556272675)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'RETURN :G_DEFAULT_LOC_CODE;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25031621207310393)
,p_name=>'P222_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(44777109556272675)
,p_prompt=>'Model Year'
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
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25032036596310394)
,p_name=>'P222_CLONE_TO_MODEL_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(44777109556272675)
,p_prompt=>'Clone To Model'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_NAME display_value, MODEL_MASTER_ID return_value ',
'  from bg_qcis.QCIS_MODEL_MASTER ',
'where INACTIVE_DATE IS NULL',
'  and MODEL_YEAR = :P222_MODEL_YEAR',
'  and PLANT_ID = :G_DEFAULT_PLANT_ID',
'  AND BRAND_ID = :P222_BRAND_ID',
'  AND MODEL_YEAR||MODEL_NAME NOT IN ( SELECT MODEL_YEAR||MODEL_NAME ',
'                                        FROM bg_qcis.QCIS_MODEL_MASTER fm',
'                                       WHERE MODEL_MASTER_ID = :P222_CLONE_FROM_MODEL_ID)                                   ',
'order by 1'))
,p_lov_cascade_parent_items=>'P222_MODEL_YEAR,P222_CLONE_FROM_MODEL_ID,P222_BRAND_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25032440021310395)
,p_name=>'P222_PARENT_STATION_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(44777109556272675)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25032771043310396)
,p_name=>'P222_STATION_MASTER_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(44777109556272675)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25033199006310396)
,p_name=>'P222_STATION_MASTER_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(44777109556272675)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25033645074310396)
,p_name=>'P222_SUBSTATION_MASTER_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(44777109556272675)
,p_use_cache_before_default=>'NO'
,p_source=>'SUBSTATION_MASTER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25040233700310409)
,p_name=>'P222_PLANT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46837330459613641)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN :G_DEFAULT_PLANT_ID;',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25040622899310410)
,p_name=>'P222_CLONE_FROM_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46837330459613641)
,p_prompt=>'Model Year'
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
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25040954728310411)
,p_name=>'P222_BRAND_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46837330459613641)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN :G_DEFAULT_BRAND_ID;',
'END;'))
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
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25041359197310411)
,p_name=>'P222_CLONE_FROM_MODEL_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(46837330459613641)
,p_prompt=>'Clone From Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_NAME display_value, MODEL_MASTER_ID return_value ',
'  from bg_qcis.QCIS_MODEL_MASTER ',
'where MODEL_YEAR = :P222_CLONE_FROM_MODEL_YEAR',
'  and BRAND_ID = :P222_BRAND_ID',
'  and PLANT_ID = :G_DEFAULT_PLANT_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P222_CLONE_FROM_MODEL_YEAR,P222_BRAND_ID'
,p_ajax_items_to_submit=>'P222_CLONE_FROM_MODEL_ID,G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737306743242521)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25042146039310412)
,p_name=>'P222_CLONE_IMAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46900663171034907)
,p_prompt=>'Available Clone From Images'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT i.IMAGE_NAME d, i.IMAGES_ID r',
'  FROM bg_qcis.QCIS_IMAGES i',
' WHERE i.MODEL_ID = :P222_CLONE_FROM_MODEL_ID',
'   AND i.PLANT_ID = :G_DEFAULT_PLANT_ID',
'   AND i.INACTIVE_DATE IS NULL',
'ORDER BY i.IMAGE_NAME'))
,p_lov_cascade_parent_items=>'P222_CLONE_FROM_MODEL_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25045605420310421)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25042788985310413)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25046137472310422)
,p_event_id=>wwv_flow_api.id(25045605420310421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25045161952310421)
,p_name=>'Refresh Current Image Relationships'
,p_event_sequence=>35
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P222_CLONE_FROM_MODEL_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24803611336601322)
,p_event_id=>wwv_flow_api.id(25045161952310421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(49215420083309888)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25044764904310420)
,p_name=>'Hide Station Relationship List'
,p_event_sequence=>45
,p_condition_element=>'P222_CLONE_TO_MODEL_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25059899621629750)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch Model Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT m.MODEL_MASTER_ID, m.MODEL_YEAR, m.BRAND_ID',
'  INTO :P222_CLONE_FROM_MODEL_ID, :P222_CLONE_FROM_MODEL_YEAR, :P222_BRAND_ID',
'  FROM bg_qcis.QCIS_MODEL_MASTER m',
' WHERE m.MODEL_MASTER_ID = :P222_CLONE_FROM_MODEL_ID ;',
' ',
' ',
' END;'))
,p_process_error_message=>'Error - Fetch Model Info - #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P222_CLONE_FROM_MODEL_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_is_stateful_y_n=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25044375277310419)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Images'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_from_images   apex_application_global.vc_arr2;',
'    v_to_models     apex_application_global.vc_arr2;',
'    v_out_err_msg   VARCHAR2 (500);',
'BEGIN',
'    v_from_images := APEX_UTIL.string_to_table (:P222_CLONE_IMAGE_ID);',
'    v_to_models := APEX_UTIL.string_to_table (:P222_CLONE_TO_MODEL_ID);',
'',
'',
'',
'    FOR i IN 1 .. v_to_models.COUNT',
'    LOOP',
'        v_out_err_msg :=',
'            BG_QCIS.qc2_cloning_utilities.clone_selected_images (',
'                TO_NUMBER (v_to_models (i)),',
'                :APP_USER,',
'                v_from_images);',
'    END LOOP;                                                      --TO_MODELS',
'END;'))
,p_process_error_message=>'Error in Creating Model Images - #SQLERRM# '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25043176853310414)
,p_process_success_message=>'QC Station Created'
);
end;
/
