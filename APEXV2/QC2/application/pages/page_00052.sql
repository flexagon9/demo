prompt --application/pages/page_00052
begin
wwv_flow_api.create_page(
 p_id=>52
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Global Maintenance - Brands'
,p_step_title=>'Global Maintenance - Brands'
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
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190711080942'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48174680785926341)
,p_plug_name=>'Brand Maintenance'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>9
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select QCIS_BRAND_MASTER_ID,',
'       BRAND_CODE,',
'       BRAND_NAME,',
'       INACTIVE_DATE,',
'       LAST_UPDATE_DATE,',
'       LAST_UPDATED_BY,',
'       CREATION_DATE,',
'       CREATED_BY,',
'       DIVISION_MASTER_ID,',
'       DEF_PLANT_BRAND_IND',
'  from QCIS_BRAND_MASTER',
' where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(21274116646227667)
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Brand Maintenance</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(48174761520926341)
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
,p_detail_link=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP,53:P53_QCIS_BRAND_MASTER_ID:#QCIS_BRAND_MASTER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to edit"'
,p_owner=>'TBOWERS'
,p_internal_uid=>36883413125592357
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21765378216792628)
,p_db_column_name=>'QCIS_BRAND_MASTER_ID'
,p_display_order=>20
,p_column_identifier=>'W'
,p_column_label=>'Brand'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21765730381792631)
,p_db_column_name=>'DIVISION_MASTER_ID'
,p_display_order=>30
,p_column_identifier=>'Z'
,p_column_label=>'Division'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(15978933318645775)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24225181236891312)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>40
,p_column_identifier=>'J'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24225583501891312)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>50
,p_column_identifier=>'K'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24226025894891313)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24226392059891313)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24226823233891314)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21765544381792629)
,p_db_column_name=>'BRAND_CODE'
,p_display_order=>90
,p_column_identifier=>'X'
,p_column_label=>'Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21765556485792630)
,p_db_column_name=>'BRAND_NAME'
,p_display_order=>100
,p_column_identifier=>'Y'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21765805729792632)
,p_db_column_name=>'DEF_PLANT_BRAND_IND'
,p_display_order=>110
,p_column_identifier=>'AA'
,p_column_label=>'Plant''s Default'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(15976633719645764)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48182200117953779)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'129358'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'BRAND_CODE:BRAND_NAME:DIVISION_MASTER_ID:DEF_PLANT_BRAND_IND:INACTIVE_DATE:LAST_UPDATE_DATE:LAST_UPDATED_BY:CREATION_DATE:CREATED_BY:'
,p_sort_column_1=>'BRAND_CODE'
,p_sort_direction_1=>'ASC'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(25480673208200480)
,p_report_id=>wwv_flow_api.id(48182200117953779)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24227575795891315)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(48174680785926341)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pillStart:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP,53::'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create new Brand."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24228028657891316)
,p_name=>'Create PopUp Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24228507910891318)
,p_event_id=>wwv_flow_api.id(24228028657891316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(48174680785926341)
,p_stop_execution_on_error=>'Y'
);
end;
/
