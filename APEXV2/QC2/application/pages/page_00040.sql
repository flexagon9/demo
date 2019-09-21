prompt --application/pages/page_00040
begin
wwv_flow_api.create_page(
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Components - IR'
,p_page_mode=>'MODAL'
,p_step_title=>'Component Maintenance'
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
,p_step_template=>wwv_flow_api.id(90704752091242393)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'1000'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190912065113'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23863931298509245)
,p_plug_name=>'Components IR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_item.checkbox (1,cm.component_id) box,',
'cm.COMPONENT_ID, ',
'dm.division_code,',
'pm.plant_code,',
'cm.SUPPLIER_NUMBER,',
'cm.SUPPLIER_NAME,',
'cm.COMPONENT_NUMBER,',
'cm.COMPONENT_NAME,',
'cm.INACTIVE_DATE,',
'dch.commodity_code||''/''||dch.commodity_desc||''-''||dch.sub_com_code||''/''||dch.sub_com_desc COM_CODE',
'from QCIS_COMPONENT_MASTER cm, qcis_defect_code_header dch, qcis_plant_master pm, qcis_division_master dm ',
'where(cm.defect_header_id = dch.defect_code_header_id',
'and dch.division_id = dm.qcis_division_master_id ',
'and dch.plant_id = pm.qcis_plant_master_id)',
'and dch.PLANT_ID = :G_DEFAULT_PLANT_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Components</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23863952519509245)
,p_name=>'Components IR'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'TBOWERS'
,p_internal_uid=>12572604124175261
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23785810322484992)
,p_db_column_name=>'BOX'
,p_display_order=>10
,p_column_identifier=>'L'
,p_column_label=>'Box'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23786015322484994)
,p_db_column_name=>'PLANT_CODE'
,p_display_order=>20
,p_column_identifier=>'N'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23785875214484993)
,p_db_column_name=>'DIVISION_CODE'
,p_display_order=>30
,p_column_identifier=>'M'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23864427381509255)
,p_db_column_name=>'COMPONENT_ID'
,p_display_order=>40
,p_column_identifier=>'A'
,p_column_label=>'-'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,41:P41_COMPONENT_ID:#COMPONENT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23865233707509263)
,p_db_column_name=>'COMPONENT_NUMBER'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Component #'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23865633126509264)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23786127029484995)
,p_db_column_name=>'COM_CODE'
,p_display_order=>70
,p_column_identifier=>'O'
,p_column_label=>'Defect Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23865989942509265)
,p_db_column_name=>'SUPPLIER_NUMBER'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Supplier Number'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23866435285509266)
,p_db_column_name=>'SUPPLIER_NAME'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Supplier Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23866848000509268)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23869107549520254)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'125778'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:COMPONENT_ID:PLANT_CODE:DIVISION_CODE:COMPONENT_NUMBER:COMPONENT_NAME:COM_CODE:INACTIVE_DATE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117858700029505776)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27787157609267266)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(117858700029505776)
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
 p_id=>wwv_flow_api.id(23786324327484997)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23863931298509245)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,41::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24358011250562139)
,p_name=>'PopUp Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24358379828562139)
,p_event_id=>wwv_flow_api.id(24358011250562139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(23863931298509245)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27787573869270037)
,p_name=>'Cancel'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27787157609267266)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27787951955270038)
,p_event_id=>wwv_flow_api.id(27787573869270037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
end;
/
