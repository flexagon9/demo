prompt --application/pages/page_00056
begin
wwv_flow_api.create_page(
 p_id=>56
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Global Maintenance - Keywords Groupings Selection'
,p_step_title=>'Global Maintenance - Keywords'
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
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(21274116646227667)
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190814172544'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74502248549797844)
,p_plug_name=>'Keywords Maintenance'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select keyword_code, keyword_value, keyword_desc',
'from qcis_keywords',
'where upper(keyword_type) = ''SYSMAINT''',
'  and inactive_date is null',
'order by keyword_value'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(21274116646227667)
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Keywords Maintenance</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74502329284797844)
,p_name=>'Images By Plant'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_save_rpt_public_auth_scheme=>wwv_flow_api.id(21277430099849366)
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP,57:P57_KEYWORD_TYPE_SELECTION,P57_KEYWORD_HEADING:#KEYWORD_CODE#,#KEYWORD_DESC#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to edit"'
,p_owner=>'TBOWERS'
,p_internal_uid=>63210980889463860
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24250480757196494)
,p_db_column_name=>'KEYWORD_CODE'
,p_display_order=>10
,p_column_identifier=>'AE'
,p_column_label=>'Actual ''Keyword Type''<br>for the Keyword Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24250587636196495)
,p_db_column_name=>'KEYWORD_VALUE'
,p_display_order=>20
,p_column_identifier=>'AF'
,p_column_label=>'Sort Order<br>For This List'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24250653833196496)
,p_db_column_name=>'KEYWORD_DESC'
,p_display_order=>30
,p_column_identifier=>'AG'
,p_column_label=>'Keyword Grouping'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74509767881825282)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'131936'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'KEYWORD_DESC:'
,p_sort_column_1=>'DIVISION_CODE'
,p_sort_direction_1=>'ASC'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24486238530188154)
,p_name=>'Create PopUp Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24486658029188155)
,p_event_id=>wwv_flow_api.id(24486238530188154)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(74502248549797844)
,p_stop_execution_on_error=>'Y'
);
end;
/
