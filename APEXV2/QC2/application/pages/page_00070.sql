prompt --application/pages/page_00070
begin
wwv_flow_api.create_page(
 p_id=>70
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Defect Maintenance'
,p_page_mode=>'MODAL'
,p_step_title=>'Defect Maintenance'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.no-close .ui-dialog-titlebar-close {',
' display: none;',
' }',
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_step_template=>wwv_flow_api.id(79413403695908409)
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'1300'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190904232751'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14525849272715444)
,p_plug_name=>'Defects IR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEFECT_CODE_DETAIL_ID,',
'       DEFECT_DESCRIPTION,',
'       DEFECT_TYPE,',
'       DEFECT_DEFINITION,',
'       (select responsible_area from qcis_resp_area_master where ra_id = DEFAULT_RESP_AREA_ID) DEFAULT_RESP_AREA_ID,',
'       DEFAULT_DEFECT_CATEGORY,',
'--       (select division_code||''-''||division_name from qcis_division_master where qcis_division_master_id = DIVISION_ID) division,',
'       PLANT_ID,',
'       DEFAULT_REWORK_TIME_HRS||'':''||DEFAULT_REWORK_TIME_MINS REWORK_TIME,',
'       INACTIVE_DATE,',
'       CREATION_DATE,',
'       CREATED_BY,',
'       LAST_UPDATE_DATE,',
'       LAST_UPDATED_BY',
'  from QCIS_DEFECT_CODE_DETAIL',
' where PLANT_ID = :G_DEFAULT_PLANT_ID',
'order by UPPER(defect_code)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Defects</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14525996764715444)
,p_name=>'Defects IR'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No Defects found.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:RP,RIR,71:P71_DEFECT_CODE_DETAIL_ID:#DEFECT_CODE_DETAIL_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to Edit Defects"'
,p_owner=>'TBOWERS'
,p_internal_uid=>14525996764715444
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14531966943715504)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>13
,p_column_identifier=>'O'
,p_column_label=>'Plant Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14527562084715480)
,p_db_column_name=>'DEFECT_DESCRIPTION'
,p_display_order=>43
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14527951181715484)
,p_db_column_name=>'DEFECT_TYPE'
,p_display_order=>53
,p_column_identifier=>'E'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14531155042715502)
,p_db_column_name=>'DEFAULT_DEFECT_CATEGORY'
,p_display_order=>83
,p_column_identifier=>'M'
,p_column_label=>'Default<br>Category'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13658471284079512)
,p_db_column_name=>'REWORK_TIME'
,p_display_order=>93
,p_column_identifier=>'R'
,p_column_label=>'Default<br>Rework Time'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14676261726649016)
,p_db_column_name=>'DEFECT_DEFINITION'
,p_display_order=>163
,p_column_identifier=>'U'
,p_column_label=>'Definition'
,p_column_type=>'STRING'
,p_display_text_as=>'STRIP_HTML_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14676416268649018)
,p_db_column_name=>'DEFECT_CODE_DETAIL_ID'
,p_display_order=>183
,p_column_identifier=>'W'
,p_column_label=>'Defect Code Detail Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14676536726649019)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>193
,p_column_identifier=>'X'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14676606261649020)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>203
,p_column_identifier=>'Y'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14676727566649021)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>213
,p_column_identifier=>'Z'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14676844440649022)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>223
,p_column_identifier=>'AA'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14676942748649023)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>233
,p_column_identifier=>'AB'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14677086507649024)
,p_db_column_name=>'DEFAULT_RESP_AREA_ID'
,p_display_order=>243
,p_column_identifier=>'AC'
,p_column_label=>'Default<br>Responsible Area'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14539483757766473)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'145395'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEFECT_DESCRIPTION:DEFECT_TYPE:DEFAULT_DEFECT_CATEGORY:REWORK_TIME:DEFECT_DEFINITION:DEFAULT_RESP_AREA_ID:INACTIVE_DATE:LAST_UPDATE_DATE:LAST_UPDATED_BY:CREATION_DATE:CREATED_BY'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(16499165826950032)
,p_report_id=>wwv_flow_api.id(14539483757766473)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80978894058742310)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16360510405614057)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(80978894058742310)
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
 p_id=>wwv_flow_api.id(14588477169342182)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14525849272715444)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:RP,71::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16360969234620148)
,p_name=>'Refresh Defect List'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16361312520620148)
,p_event_id=>wwv_flow_api.id(16360969234620148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14525849272715444)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16293601021416005)
,p_name=>'Cancel Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16360510405614057)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16293747608416006)
,p_event_id=>wwv_flow_api.id(16293601021416005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
end;
/
