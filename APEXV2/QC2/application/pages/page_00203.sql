prompt --application/pages/page_00203
begin
wwv_flow_api.create_page(
 p_id=>203
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Clone From Previous Model Years'
,p_page_mode=>'MODAL'
,p_step_title=>'Clone Previous Model Year'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(4612765840972889)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.no-close .ui-dialog-titlebar-close {',
' display: none;',
' }'))
,p_step_template=>wwv_flow_api.id(79413403695908409)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1300'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190909083813'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11232609373716536)
,p_plug_name=>'Model Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9469449837848648)
,p_plug_name=>'Clone From Models'
,p_parent_plug_id=>wwv_flow_api.id(11232609373716536)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>21
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
 p_id=>wwv_flow_api.id(11232732801716537)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11232851359716538)
,p_plug_name=>'Report Contatiner'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>7
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9662804161637111)
,p_plug_name=>'Clone Report'
,p_parent_plug_id=>wwv_flow_api.id(11232851359716538)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>35
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM,',
'       LOG_ID,',
'       MSG_DATA_SOURCE,',
'       SOURCE_PROCESS,',
'       LOG_MESSAGE,',
'       LOG_TYPE,',
'       CREATE_DATE,',
'       CREATED_BY',
'  FROM bg_qcis.QCIS_MSG_LOG',
' WHERE TRUNC(CREATE_DATE) BETWEEN TRUNC(SYSDATE-1) AND TRUNC(SYSDATE)',
'  AND UPPER(LOG_MESSAGE) LIKE ''%'' || ''CLONE'' || ''%''',
'  AND CREATED_BY = :APP_USER ',
'ORDER BY LOG_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM bg_qcis.QCIS_MSG_LOG',
' WHERE TRUNC(CREATE_DATE) BETWEEN TRUNC(SYSDATE-1) AND TRUNC(SYSDATE)',
'    AND LOG_MESSAGE LIKE ''%'' || ''Clone'' || ''%''',
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
 p_id=>wwv_flow_api.id(9662973106637112)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>9662973106637112
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9663002058637113)
,p_db_column_name=>'MSG_DATA_SOURCE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Calling Program'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9663160290637114)
,p_db_column_name=>'SOURCE_PROCESS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Process'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9663268675637115)
,p_db_column_name=>'LOG_MESSAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Message'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9663300303637116)
,p_db_column_name=>'LOG_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Log Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9663469993637117)
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
 p_id=>wwv_flow_api.id(9663957030637122)
,p_db_column_name=>'LOG_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9664025202637123)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11233083686716540)
,p_db_column_name=>'ROWNUM'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9716377072176305)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'97164'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWNUM:CREATE_DATE:LOG_MESSAGE'
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
 p_id=>wwv_flow_api.id(11232919209716539)
,p_plug_name=>'Clone To Model'
,p_parent_plug_id=>wwv_flow_api.id(11232851359716538)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'    <div style="font-size: 14px; color: steelblue"><b>Clone To Model  </b></div> ',
'</center>',
'',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2218802333109101)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11232732801716537)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9519003452615838)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11232732801716537)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9518633935615837)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11232732801716537)
,p_button_name=>'CLONE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-clone'
,p_button_cattributes=>'title="Create and Clone Maodels and All their atrributes from Previous Year Model."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11637331144325412)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11232732801716537)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create New Year Models ONLY."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6799245628424526)
,p_name=>'P203_PREV_MODEL_YR'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9469449837848648)
,p_prompt=>'Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER(MODEL_YEAR) d, TO_NUMBER(MODEL_YEAR) r',
'FROM bg_qcis.QCIS_MODEL_MASTER',
'WHERE PLANT_ID = :P203_PLANT_ID',
'  AND INACTIVE_DATE IS NULL',
'GROUP BY MODEL_YEAR',
'Order By 1 DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_tag_attributes=>'title="Select Previous Model Year"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_api.id(6799359334424527)
,p_name=>'P203_NEW_MODEL_YR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11232919209716539)
,p_prompt=>'New Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d, r',
'FROM',
'(',
'SELECT TO_NUMBER(:P203_PREV_MODEL_YR) d, TO_NUMBER(:P203_PREV_MODEL_YR)r ',
'FROM DUAL ',
'UNION',
'SELECT TO_NUMBER(:P203_PREV_MODEL_YR) + rn d, TO_NUMBER(:P203_PREV_MODEL_YR) + rn r',
'  FROM (    SELECT ROWNUM rn',
'              FROM DUAL',
'        CONNECT BY LEVEL <= +10 )',
')',
'Where d is not null',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P203_PREV_MODEL_YR'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_cattributes_element=>'title="Clone To New Model Year"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'free form test ',
'if read only use - input type="text" readonly="readonly" style="background:white;" '))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9475155393255360)
,p_name=>'P203_PLANT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9469449837848648)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'',
'',
'RETURN :G_DEFAULT_PLANT_ID;',
'',
'',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9493700098469304)
,p_name=>'P203_CLONE_FROM_MODEL_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9469449837848648)
,p_prompt=>'Available Clone From Models'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT MODEL_YEAR || '' - '' || MODEL_NAME d, MODEL_MASTER_ID r',
'    FROM bg_qcis.QCIS_MODEL_MASTER prev_my',
'   WHERE     PLANT_ID = :G_DEFAULT_PLANT_ID',
'         AND BRAND_ID = :P203_CLONE_FROM_BRAND_ID',
'         AND MODEL_YEAR = :P203_PREV_MODEL_YR',
'         AND INACTIVE_DATE IS NULL',
'         AND :P203_NEW_MODEL_YR || '' - '' || MODEL_NAME NOT IN',
'                 (SELECT MODEL_YEAR || '' - '' || new_my.MODEL_NAME',
'                    FROM QCIS_MODEL_MASTER new_my',
'                   WHERE     new_my.PLANT_ID = :G_DEFAULT_PLANT_ID',
'                         AND MODEL_YEAR = :P203_NEW_MODEL_YR',
'                         AND INACTIVE_DATE IS NULL',
'                /*  UNION',
'                  SELECT :P203_NEW_MODEL_YR || '' - '' || new_my.MODEL_NAME',
'                    FROM QCIS_MODEL_MASTER new_my, QC2_MODEL_CLONE_STAGING s',
'                   WHERE     new_my.PLANT_ID = :G_DEFAULT_PLANT_ID',
'                         AND MODEL_YEAR = :P203_PREV_MODEL_YR',
'                         AND s.PREV_MODEL_ID = new_my.MODEL_MASTER_ID',
'                         AND s.PLANT_ID = new_my.PLANT_ID',
'                         AND new_my.INACTIVE_DATE IS NULL */',
'                 )',
'ORDER BY 1'))
,p_lov_cascade_parent_items=>'P203_PREV_MODEL_YR,P203_NEW_MODEL_YR,P203_CLONE_FROM_BRAND_ID'
,p_ajax_items_to_submit=>':G_DEFAULT_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>8
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'If a Model and Year does not show up in this list then it has already been created for the selected New Model Year and can not be cloned. '
,p_attribute_01=>'MOVE'
,p_item_comment=>'The clone_from_model_id LOV looks at the staging table and the model master to return models that have yet to be created for the new model year and and are not in staging to be created.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11594164843403621)
,p_name=>'P203_CLONE_FROM_BRAND_ID'
,p_is_required=>true
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(9469449837848648)
,p_item_default=>'RETURN :G_DEFAULT_BRAND_ID;'
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BRAND_CODE||'' - ''||BRAND_NAME display_value, ',
'       QCIS_BRAND_MASTER_ID return_value ',
'from QCIS_BRAND_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID ',
'  and INACTIVE_DATE IS NULL order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Brand -'
,p_lov_cascade_parent_items=>'P201_PLANT_ID'
,p_ajax_items_to_submit=>'P201_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_cattributes_element=>'title="Select Brand to Clone From"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>8
,p_read_only_when=>'P201_MODEL_MASTER_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(9663523578637118)
,p_validation_name=>'Plant_ID IS NOT NULL'
,p_validation_sequence=>10
,p_validation=>'P203_PLANT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Field Must Contain Value'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(9518633935615837)
,p_associated_item=>wwv_flow_api.id(9475155393255360)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(9663660088637119)
,p_validation_name=>'Prev MY IS NOT NULL'
,p_validation_sequence=>20
,p_validation=>'P203_PREV_MODEL_YR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Previous Model Year must have a value'
,p_when_button_pressed=>wwv_flow_api.id(9518633935615837)
,p_associated_item=>wwv_flow_api.id(6799245628424526)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(9663763569637120)
,p_validation_name=>'Clone From Model IS NOT NULL'
,p_validation_sequence=>30
,p_validation=>'P203_CLONE_FROM_MODEL_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Clone From Model must have a value'
,p_when_button_pressed=>wwv_flow_api.id(9518633935615837)
,p_associated_item=>wwv_flow_api.id(9493700098469304)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9498027073469347)
,p_name=>'Clone Message'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9518633935615837)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9498180272469348)
,p_event_id=>wwv_flow_api.id(9498027073469347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Your request to Clone the Previous Year Models has been submitted. This make take a fem moments to complete your request.'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9498281439469349)
,p_event_id=>wwv_flow_api.id(9498027073469347)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CLONE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2218989936109102)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(2218802333109101)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2219030189109103)
,p_event_id=>wwv_flow_api.id(2218989936109102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13793124077862248)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create and Clone All'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_model_id      NUMBER;',
'    v_from_models   apex_application_global.vc_arr2;',
'    v_out_err_msg   VARCHAR2 (500);',
'BEGIN           -- This breaks out the ordered list from the page item shuttle',
'    v_from_models := APEX_UTIL.string_to_table (:P203_CLONE_FROM_MODEL_ID);',
'',
'    FOR i IN 1 .. v_from_models.COUNT',
'    LOOP',
'        SELECT QCIS_MODEL_MASTER_SEQ.NEXTVAL INTO v_model_id FROM DUAL;',
'',
'        INSERT INTO bg_qcis.QCIS_MODEL_MASTER (MODEL_MASTER_ID,',
'                                              PLANT_ID,',
'                                              BRAND_ID,',
'                                              DIVISION_ID,',
'                                              MODEL_YEAR,',
'                                              MODEL_NAME,',
'                                              MODEL_DESC,',
'                                              REWORK_TIME_MANDATORY)',
'            (SELECT v_model_id,',
'                    PLANT_ID,',
'                    BRAND_ID,',
'                    DIVISION_ID,',
'                    :P203_NEW_MODEL_YR,',
'                    MODEL_NAME,',
'                    MODEL_DESC,',
'                    REWORK_TIME_MANDATORY',
'               FROM bg_qcis.QCIS_MODEL_MASTER',
'              WHERE MODEL_MASTER_ID = v_from_models (i));',
'',
'',
'        BG_QCIS.qc2_cloning_utilities.clone_all (:G_DEFAULT_PLANT_ID,',
'                                                 v_from_models (i),',
'                                                 v_model_id,',
'                                                 ''QC2_CLONE_MY'',',
'                                                 :APP_USER,',
'                                                 v_out_err_msg);',
'    END LOOP;',
'END;'))
,p_process_error_message=>'Error with Insert Clone Model for Processing - #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9518633935615837)
,p_process_success_message=>'Models have been Cloned'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11637528853325414)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create New Year Models from PY Models'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_model_id      NUMBER;',
'    v_from_models   apex_application_global.vc_arr2;',
'    v_out_err_msg   VARCHAR2 (500);',
'BEGIN           -- This breaks out the ordered list from the page item shuttle',
'    v_from_models := APEX_UTIL.string_to_table (:P203_CLONE_FROM_MODEL_ID);',
'',
'    FOR i IN 1 .. v_from_models.COUNT',
'    LOOP',
'        SELECT QCIS_MODEL_MASTER_SEQ.NEXTVAL INTO v_model_id FROM DUAL;',
'',
'        bg_qcis.QC2_CREATE_MODEL_FROM_PREV_MY (:P203_NEW_MODEL_YR,',
'                                               TO_NUMBER (v_from_models (i)),',
'                                               ''Create NY Models from PY'',',
'                                               :APP_USER,',
'                                               v_out_err_msg);',
'    END LOOP;',
'END;'))
,p_process_error_message=>'Error with Insert Clone Model for Processing'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11637331144325412)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9494178806469308)
,p_process_sequence=>1000
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Clone Model for Clone Processing'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_plant_code    VARCHAR2(5);',
'    v_model_name VARCHAR2(25);',
'    v_out_err_msg   VARCHAR2 (500);',
'BEGIN           -- This breaks out the ordered list from the page item shuttle',
'    ',
'    SELECT PLANT_CODE ',
'      INTO v_plant_code',
'      FROM bg_qcis.QCIS_PLANT_MASTER',
'    WHERE QCIS_PLANT_MASTER_ID = :P203_PLANT_ID;',
'    ',
'    FOR i IN (    SELECT REGEXP_SUBSTR (:P203_CLONE_FROM_MODEL_ID,',
'                                        ''[^:]+'',',
'                                        1,',
'                                        LEVEL)',
'                             P203_CLONE_FROM_MODEL_ID',
'                    FROM (SELECT :P201_MODEL_MASTER_ID FROM DUAL)',
'              CONNECT BY REGEXP_SUBSTR (:P203_CLONE_FROM_MODEL_ID,',
'                                        ''[^:]+'',',
'                                        1,',
'                                        LEVEL)',
'                             IS NOT NULL)',
'    LOOP',
'        SELECT MODEL_NAME ',
'          INTO v_model_name',
'          FROM BG_QCIS.QCIS_MODEL_MASTER ',
'         WHERE MODEL_MASTER_ID = i.P203_CLONE_FROM_MODEL_ID;',
'        ',
'        INSERT INTO bg_qcis.QC2_MODEL_CLONE_STAGING (PLANT_CODE,',
'                                                     PLANT_ID,',
'                                                     PREV_MODEL_YR,',
'                                                     PREV_MODEL_ID,',
'                                                     PREV_MODEL_NAME,',
'                                                     NEW_MODEL_YR,',
'                                                     NEW_MODEL_NAME,',
'                                                     REQUESTED_BY,',
'                                                     REQUEST_DATE,',
'                                                     STATUS,',
'                                                     CLONE_TYPE)',
'             VALUES (v_plant_code,',
'                     :P203_PLANT_ID,',
'                     :P203_PREV_MODEL_YR,',
'                     i.P203_CLONE_FROM_MODEL_ID,',
'                     v_model_name,',
'                     :P203_NEW_MODEL_YR,',
'                     v_model_name,',
'                     :APP_USER,',
'                     SYSDATE,',
'                     ''N'',',
'                     ''CLONE_PREV_MY'');',
'    END LOOP;',
'    ',
'    COMMIT;',
'END;'))
,p_process_error_message=>'Error with Insert Clone Model for Processing'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9518633935615837)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11637472557325413)
,p_process_sequence=>3000
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Clone Model for Create Model Processing'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_plant_code    VARCHAR2(5);',
'    v_model_name VARCHAR2(25);',
'    v_out_err_msg   VARCHAR2 (500);',
'BEGIN           -- This breaks out the ordered list from the page item shuttle',
'    ',
'    SELECT PLANT_CODE ',
'      INTO v_plant_code',
'      FROM bg_qcis.QCIS_PLANT_MASTER',
'    WHERE QCIS_PLANT_MASTER_ID = :P203_PLANT_ID;',
'    ',
'    FOR i IN (    SELECT REGEXP_SUBSTR (:P203_CLONE_FROM_MODEL_ID,',
'                                        ''[^:]+'',',
'                                        1,',
'                                        LEVEL)',
'                             P203_CLONE_FROM_MODEL_ID',
'                    FROM (SELECT :P201_MODEL_MASTER_ID FROM DUAL)',
'              CONNECT BY REGEXP_SUBSTR (:P203_CLONE_FROM_MODEL_ID,',
'                                        ''[^:]+'',',
'                                        1,',
'                                        LEVEL)',
'                             IS NOT NULL)',
'    LOOP',
'        SELECT MODEL_NAME ',
'          INTO v_model_name',
'          FROM BG_QCIS.QCIS_MODEL_MASTER ',
'         WHERE MODEL_MASTER_ID = i.P203_CLONE_FROM_MODEL_ID;',
'        ',
'        INSERT INTO bg_qcis.QC2_MODEL_CLONE_STAGING (PLANT_CODE,',
'                                                     PLANT_ID,',
'                                                     PREV_MODEL_YR,',
'                                                     PREV_MODEL_ID,',
'                                                     PREV_MODEL_NAME,',
'                                                     NEW_MODEL_YR,',
'                                                     NEW_MODEL_NAME,',
'                                                     REQUESTED_BY,',
'                                                     REQUEST_DATE,',
'                                                     STATUS,',
'                                                     CLONE_TYPE)',
'             VALUES (v_plant_code,',
'                     :P203_PLANT_ID,',
'                     :P203_PREV_MODEL_YR,',
'                     i.P203_CLONE_FROM_MODEL_ID,',
'                     v_model_name,',
'                     :P203_NEW_MODEL_YR,',
'                     v_model_name,',
'                     :APP_USER,',
'                     SYSDATE,',
'                     ''N'',',
'                     ''QC2_CREATE_PREV_MY'');',
'    END LOOP;',
'    ',
'    COMMIT;',
'END;'))
,p_process_error_message=>'Error with Insert Clone Model for Processing'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11637331144325412)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9661917973637102)
,p_process_sequence=>4000
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit MY Clone Job'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_sql           VARCHAR2 (4000);',
'    l_jobname       VARCHAR2 (255);',
'    v_out_err_msg   VARCHAR2 (500);',
'BEGIN',
'    ',
'    ',
'    l_sql :=',
'           ''BEGIN BG_QCIS.QC2_PREV_MY_CLONE_JOB (''',
'        || ''''''''',
'        || :APP_USER',
'        || ''''''''',
'        || '',''''QC2_PREV_MY_CLONE_JOB''''); END;'';',
'',
'    l_jobname := DBMS_SCHEDULER.generate_job_name (''QC2_CLONE_''||SUBSTR(:APP_USER,1,8));',
'',
'    DBMS_SCHEDULER.create_job (job_name     => l_jobname,',
'                               job_type     => ''PLSQL_BLOCK'',',
'                               job_action   => l_sql,',
'                               comments     => ''Background process submitted'',',
'                               enabled      => TRUE);',
'END;'))
,p_process_error_message=>'Error with Insert Clone Model for Processing'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9518633935615837)
,p_process_when_type=>'NEVER'
);
end;
/
