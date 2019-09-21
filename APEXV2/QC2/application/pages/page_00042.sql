prompt --application/pages/page_00042
begin
wwv_flow_api.create_page(
 p_id=>42
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Components - C-List IR'
,p_page_mode=>'MODAL'
,p_step_title=>'C-List Maintenance'
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
,p_dialog_height=>'700'
,p_dialog_width=>'1100'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190904230311'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24144514073161363)
,p_plug_name=>'Components - C-List IR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select clh.ID,',
'       pm.PLANT_CODE,',
'       dm.DIVISION_CODE,',
'       clh.COMP_LIST_NAME,',
'       clh.INACTIVE_DATE,',
'       clh.LAST_UPDATE_DATE,',
'       clh.LAST_UPDATED_BY,',
'       clh.CREATION_DATE,',
'       clh.CREATED_BY',
'  from QCIS_COMPONENT_LIST_HEADER clh, qcis_plant_master pm, qcis_division_master dm ',
'  where',
'  clh.division_id = dm.qcis_division_master_id and',
'  clh.plant_id = pm.qcis_plant_master_id and',
'  clh.PLANT_ID = :G_DEFAULT_PLANT_ID and',
'  clh.DIVISION_ID= :G_DEFAULT_DIVISION_ID   ',
'  order by clh.comp_list_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>C- Lists</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24144585888161363)
,p_name=>'Components - C-List IR'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'TBOWERS'
,p_internal_uid=>12853237492827379
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24145019382161370)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'-'
,p_column_link=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP:P43_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23788370811485018)
,p_db_column_name=>'PLANT_CODE'
,p_display_order=>11
,p_column_identifier=>'J'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23788500504485019)
,p_db_column_name=>'DIVISION_CODE'
,p_display_order=>21
,p_column_identifier=>'K'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24146198116161373)
,p_db_column_name=>'COMP_LIST_NAME'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>'C-List Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24146610845161373)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24147025529161374)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24147400055161374)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>61
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24147801701161375)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>71
,p_column_identifier=>'H'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24148213275161375)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>81
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24149381788174613)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'128581'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PLANT_CODE:DIVISION_CODE:COMP_LIST_NAME:INACTIVE_DATE:LAST_UPDATE_DATE:LAST_UPDATED_BY:CREATION_DATE:CREATED_BY:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(143447989638944814)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27795610010483048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(143447989638944814)
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
 p_id=>wwv_flow_api.id(24169921384423549)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24144514073161363)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23269156853683540)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP,43::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24356868658550408)
,p_name=>'PopUp Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24357321736550425)
,p_event_id=>wwv_flow_api.id(24356868658550408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24144514073161363)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27796189575503994)
,p_name=>'Cancel'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27795610010483048)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27796556157503995)
,p_event_id=>wwv_flow_api.id(27796189575503994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
end;
/
