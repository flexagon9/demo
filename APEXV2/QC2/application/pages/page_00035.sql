prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Model Image Maintenance'
,p_page_mode=>'MODAL'
,p_step_title=>'Model Image Maintenance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(4612765840972889)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ',
'  IR BLOB image column dimensions ',
'*/  ',
'td[headers="IMAGE_DISPLAY"] img { width: 125px;}  ',
'',
'',
''))
,p_step_template=>wwv_flow_api.id(79410894517908406)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1300'
,p_dialog_css_classes=>'no-close'
,p_protection_level=>'C'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190830135523'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12476450355140034)
,p_plug_name=>'Model Image Maintenance'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417016967908454)
,p_plug_display_sequence=>25
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Images</b></div> '
,p_plug_footer=>'<br></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13127531110690318)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13127836166690321)
,p_plug_name=>'Add Images'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417016967908454)
,p_plug_display_sequence=>28
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  1',
'    FROM bg_qcis.QCIS_IMAGES_MASTER im',
'   WHERE     PLANT_ID = :G_DEFAULT_PLANT_ID',
'         AND im.inactive_date IS NULL',
'         AND NOT EXISTS',
'                 (SELECT ''Y''',
'                    FROM BG_QCIS.QCIS_IMAGES IMG',
'                   WHERE     IMG.model_id = :P35_model_id',
'                         AND IMG.image_name = IM.image_name',
'                         AND PLANT_ID = :G_DEFAULT_PLANT_ID)'))
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 14px; color: steelblue"><b>Available Images to Add</b></div> ',
'<br></br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(13432058387571111)
,p_name=>'Available Images to ADD'
,p_parent_plug_id=>wwv_flow_api.id(13127836166690321)
,p_template=>wwv_flow_api.id(79418302368908457)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  apex_item.checkbox (1,im.id) box,',
'         im.IMAGE_NAME, ',
'         im.id image_id,',
'         im.FILE_NAME',
'    FROM bg_qcis.QCIS_IMAGES_MASTER im',
'   WHERE     PLANT_ID = :G_DEFAULT_PLANT_ID',
'         AND im.inactive_date IS NULL',
'         AND NOT EXISTS',
'                 (SELECT ''Y''',
'                    FROM BG_QCIS.QCIS_IMAGES IMG',
'                   WHERE     IMG.model_id = :P35_model_id',
'                         AND IMG.image_name = IM.image_name',
'                         AND PLANT_ID = :G_DEFAULT_PLANT_ID)',
'ORDER BY im.image_name',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(79435738730908493)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13432115920571112)
,p_query_column_id=>1
,p_column_alias=>'BOX'
,p_column_display_sequence=>1
,p_column_heading=>'Select'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13432232788571113)
,p_query_column_id=>2
,p_column_alias=>'IMAGE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Image Name'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE_2:&DEBUG.:RP:G_FILE_ID:#IMAGE_ID#'
,p_column_linktext=>'#IMAGE_NAME#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13432324557571114)
,p_query_column_id=>3
,p_column_alias=>'IMAGE_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13432479390571115)
,p_query_column_id=>4
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22333018087030486)
,p_plug_name=>'Audit Information'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>55
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24165796740771655)
,p_plug_name=>'Current Image Relationships'
,p_region_name=>'IMG_RPT'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>35
,p_plug_grid_column_span=>11
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT IMAGES_ID,',
'       IMAGES_ID  IMAGE,',
'       IMAGE_NAME,',
'       FILE_NAME,',
'       CASE WHEN s.INACTIVE_DATE IS NULL THEN ''A''',
'             ELSE ''I''',
'        END STATUS',
'  FROM bg_qcis.QCIS_IMAGES s',
' WHERE s.MODEL_ID = :P35_MODEL_ID',
' ORDER BY IMAGE_NAME'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P35_MODEL_ID'
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
 p_id=>wwv_flow_api.id(13128562606690328)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Image Relationships Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_detail_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP:P35_IMAGES_ID:#IMAGES_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to Edit Image attributes."'
,p_owner=>'DGRUGINS'
,p_internal_uid=>13128562606690328
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13431529666571106)
,p_db_column_name=>'IMAGES_ID'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Images Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13128934764690332)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Image Name'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE:&DEBUG.:RP:G_FILE_ID:#IMAGES_ID#'
,p_column_linktext=>'#IMAGE_NAME#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13431746025571108)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>30
,p_column_identifier=>'K'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13431869985571109)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13431601377571107)
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
 p_id=>wwv_flow_api.id(13418518979014270)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'134186'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMAGE_NAME:FILE_NAME:STATUS:IMAGE:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12477566685140037)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13127531110690318)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12493916230151003)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13127531110690318)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12476952844140036)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13127531110690318)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P35_IMAGES_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13127933073690322)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(13432058387571111)
,p_button_name=>'Add'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Images'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Add Selected Images to the Model."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12479949389140042)
,p_name=>'P35_IMAGES_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12480327088140047)
,p_name=>'P35_PLANT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_item_default=>'RETURN :G_DEFAULT_PLANT_ID;'
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12480730959140054)
,p_name=>'P35_MODEL_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_NAME display_value, MODEL_MASTER_ID return_value ',
'  from bg_qcis.QCIS_MODEL_MASTER ',
'where PLANT_ID = :G_DEFAULT_PLANT_ID',
'  and INACTIVE_DATE IS NULL',
'  and MODEL_YEAR = :P35_YEAR',
'  and BRAND_ID = :P35_BRAND_ID',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P35_YEAR,P35_BRAND_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P35_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12481108459140054)
,p_name=>'P35_IMAGE_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_prompt=>'Image Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12481520032140055)
,p_name=>'P35_FILE_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12481907691140055)
,p_name=>'P35_MIME_TYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12482339324140055)
,p_name=>'P35_IMAGE_SIZE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_prompt=>'Image Size'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12482762716140056)
,p_name=>'P35_PIXEL_WIDTH'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_prompt=>'Pixel Width'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12483197037140056)
,p_name=>'P35_PIXEL_HEIGHT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_prompt=>'Pixel Height'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12483529569140056)
,p_name=>'P35_CHARACTER_SET'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12484307854140057)
,p_name=>'P35_INACTIVE_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12493871258151002)
,p_name=>'P35_YEAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_prompt=>'Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 r',
'  FROM DUAL',
'UNION ',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 r',
'  FROM DUAL',
'UNION ',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) r FROM DUAL',
'UNION ',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 r',
'  FROM DUAL',
'UNION ',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 r',
'  FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_cattributes_element=>'Title-"Select Model Year"'
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P35_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12494048225151004)
,p_name=>'P35_MODEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12499727542163843)
,p_name=>'P35_LAST_UPDATE_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22333018087030486)
,p_prompt=>'Update Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12500182138163846)
,p_name=>'P35_LAST_UPDATED_BY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22333018087030486)
,p_prompt=>'Updated By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12500596499163846)
,p_name=>'P35_CREATION_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22333018087030486)
,p_prompt=>'Creation Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12500987837163847)
,p_name=>'P35_CREATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22333018087030486)
,p_prompt=>'Created By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12504416845195135)
,p_name=>'P35_PLANT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_item_default=>'RETURN :G_CURRENT_LOCATION_FORMATTED;'
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12533960001725149)
,p_name=>'P35_STATUS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
,p_item_default=>'N'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(12406872612044732)||'.'
,p_cHeight=>1
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13557891343714990)
,p_name=>'P35_BRAND_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12476450355140034)
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
,p_lov_null_text=>'- Select  -'
,p_lov_cascade_parent_items=>'P35_PLANT_ID'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P35_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13975222514716764)
,p_name=>'P35_COLLASPE_EXPAND_FLAG'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(24165796740771655)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12477662060140037)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12477566685140037)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12478459787140039)
,p_event_id=>wwv_flow_api.id(12477662060140037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13509147959267307)
,p_name=>'Refresh Image Relationships'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_MODEL_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13509248542267308)
,p_event_id=>wwv_flow_api.id(13509147959267307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24165796740771655)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13509319483267309)
,p_event_id=>wwv_flow_api.id(13509147959267307)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(13432058387571111)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13973345136706165)
,p_name=>'COLLASPE_EXPAND'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13974213673706167)
,p_event_id=>wwv_flow_api.id(13973345136706165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_COLLASPE_EXPAND_FLAG'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CASE WHEN :P35_IMAGES_ID IS NULL THEN 1',
'            ELSE 0',
'         END',
'FROM DUAL;'))
,p_attribute_07=>'P35_IMAGES_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13973744357706167)
,p_event_id=>wwv_flow_api.id(13973345136706165)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24165796740771655)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var numEntries = $v("P35_COLLASPE_EXPAND_FLAG")',
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13509054437267306)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch Model Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT m.MODEL_MASTER_ID, m.MODEL_YEAR, m.MODEL_NAME, m.BRAND_ID',
'  INTO :P35_MODEL_ID, :P35_YEAR, :P35_MODEL, :P35_BRAND_ID',
'  FROM bg_qcis.QCIS_MODEL_MASTER m',
' WHERE m.MODEL_MASTER_ID = :P35_MODEL_ID ;',
' ',
' ',
' END;'))
,p_process_error_message=>'Error - Fetch Model Info - #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P35_MODEL_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_is_stateful_y_n=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12486742000140063)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch Row from QCIS_IMAGES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT i.IMAGE_NAME,',
'       i.FILE_NAME,',
'       i.MIME_TYPE,',
'       i.IMAGE_SIZE,',
'       i.PIXEL_WIDTH,',
'       i.PIXEL_HEIGHT,',
'       i.CHARACTER_SET,',
'       CASE WHEN i.INACTIVE_DATE IS NULL THEN ''A'' ELSE ''I'' END STATUS,',
'       i.INACTIVE_DATE,',
'       i.LAST_UPDATE_DATE,',
'       i.LAST_UPDATED_BY,',
'       i.CREATION_DATE,',
'       i.CREATED_BY',
'  INTO :P35_IMAGE_NAME,',
'       :P35_FILE_NAME,',
'       :P35_MIME_TYPE,',
'       :P35_IMAGE_SIZE,',
'       :P35_PIXEL_WIDTH,',
'       :P35_PIXEL_HEIGHT,',
'       :P35_CHARACTER_SET,',
'       :P35_STATUS,',
'       :P35_INACTIVE_DATE,',
'       :P35_LAST_UPDATE_DATE,',
'       :P35_LAST_UPDATED_BY,',
'       :P35_CREATION_DATE,',
'       :P35_CREATED_BY',
'  FROM bg_qcis.QCIS_IMAGES i',
' WHERE MODEL_ID = :P35_MODEL_ID ',
'   AND i.PLANT_ID = :G_DEFAULT_PLANT_ID',
'   AND i.IMAGES_ID = :P35_IMAGES_ID;',
'',
'END;'))
,p_process_error_message=>'Error Fetch QCIS Image Info - #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P35_IMAGES_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13376924674241751)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Image(s) to Model'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR i IN 1 .. APEX_APPLICATION.g_f01.COUNT',
'    LOOP',
'        INSERT INTO bg_qcis.QCIS_IMAGES (PLANT_ID,',
'                                         MODEL_ID,',
'                                         IMAGE_NAME,',
'                                         FILE_NAME,',
'                                         MIME_TYPE,',
'                                         IMAGE_SIZE,',
'                                         PIXEL_WIDTH,',
'                                         PIXEL_HEIGHT,',
'                                         CHARACTER_SET,',
'                                         BLOB_CONTENT)',
'            (SELECT PLANT_ID,',
'                    :P35_MODEL_ID,',
'                    IMAGE_NAME,',
'                    FILE_NAME,',
'                    MIME_TYPE,',
'                    IMAGE_SIZE,',
'                    PIXEL_WIDTH,',
'                    PIXEL_HEIGHT,',
'                    CHARACTER_SET,',
'                    BLOB_CONTENT',
'               FROM bg_qcis.QCIS_IMAGES_MASTER',
'              WHERE    ID = APEX_APPLICATION.g_f01 (i)',
'                AND PLANT_ID = :G_DEFAULT_PLANT_ID);',
'    END LOOP;',
'END;'))
,p_process_error_message=>'Error adding image.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13127933073690322)
,p_process_success_message=>'Image added to selected model(s).'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13510646251267322)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update QCIS_IMAGES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 7/8/2019 5:07:56 PM */',
'BEGIN',
'    UPDATE bg_qcis.QCIS_IMAGES',
'       SET INACTIVE_DATE =',
'               CASE',
'                   WHEN :P35_STATUS = ''A''',
'                   THEN',
'                       NULL',
'                   WHEN :P35_STATUS = ''I'' AND INACTIVE_DATE IS NULL',
'                   THEN',
'                       SYSDATE',
'                   WHEN :P35_STATUS = ''I'' AND INACTIVE_DATE IS NOT NULL',
'                   THEN',
'                       INACTIVE_DATE',
'               END',
'     WHERE IMAGES_ID = :P35_IMAGES_ID;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12488343902140065)
,p_process_sequence=>80
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12477566685140037)
);
end;
/
