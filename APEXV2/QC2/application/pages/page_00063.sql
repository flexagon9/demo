prompt --application/pages/page_00063
begin
wwv_flow_api.create_page(
 p_id=>63
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Responsible Area Maintenance'
,p_page_mode=>'MODAL'
,p_step_title=>'Responsible Area Maintenance'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(15903984505302781)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_step_template=>wwv_flow_api.id(90704752091242393)
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190830121719'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41842924308309991)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92045810744034374)
,p_plug_name=>'Responsible Areas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ra.RA_ID,',
'       ra.RESPONSIBLE_AREA,',
'       (select sfb.plant||'', ''||trim(sfb.building_name)||'', ''||trim(sfb.line_name)||'', ''||trim(sfb.station_name)',
'          from gpdtalib.sf_building_view@obms sfb,',
'               qcis_plant_master pm',
'         where pm.qcis_plant_master_id=ra.PLANT_ID',
'           and sfb.plant=pm.plant_code',
'           and sfb.station_id = ra.sfm_station_id) SFM_STATION_ID,',
'       ra.INACTIVE_DATE,',
'       ra.LAST_UPDATE_DATE,',
'       ra.LAST_UPDATED_BY,',
'       ra.CREATION_DATE,',
'       ra.CREATED_BY',
'from QCIS_RESP_AREA_MASTER ra',
'where ra.plant_id = :G_DEFAULT_PLANT_ID',
'order by upper(ra.RESPONSIBLE_AREA)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(15901823723215299)
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Responsible Areas List</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(92045891479034374)
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
,p_detail_link=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:64:P64_RA_ID:#RA_ID##RA_ID'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to edit"'
,p_owner=>'TBOWERS'
,p_internal_uid=>80754543083700390
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26540221603042727)
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
 p_id=>wwv_flow_api.id(26538635032042725)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>90
,p_column_identifier=>'AD'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26538982661042725)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>100
,p_column_identifier=>'AE'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26539382742042726)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>110
,p_column_identifier=>'AF'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26539827409042726)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>120
,p_column_identifier=>'AG'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25966811821982992)
,p_db_column_name=>'RA_ID'
,p_display_order=>130
,p_column_identifier=>'AH'
,p_column_label=>'Ra Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25966867794982993)
,p_db_column_name=>'RESPONSIBLE_AREA'
,p_display_order=>140
,p_column_identifier=>'AI'
,p_column_label=>'Responsible Area'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25967243366982996)
,p_db_column_name=>'SFM_STATION_ID'
,p_display_order=>150
,p_column_identifier=>'AK'
,p_column_label=>'SFM Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(92053330076061812)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'152492'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'RESPONSIBLE_AREA:INACTIVE_DATE:LAST_UPDATE_DATE:LAST_UPDATED_BY:CREATION_DATE:CREATED_BY'
,p_sort_column_1=>'BRAND_CODE'
,p_sort_direction_1=>'ASC'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(26568172539336759)
,p_report_id=>wwv_flow_api.id(92053330076061812)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27505866005710459)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41842924308309991)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26541386315042729)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(92045810744034374)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pillStart:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,64::'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create new Inspection Name."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26542102379042746)
,p_name=>'Create PopUp Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26542583674042747)
,p_event_id=>wwv_flow_api.id(26542102379042746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(92045810744034374)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27506250570714303)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27505866005710459)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27506721665714303)
,p_event_id=>wwv_flow_api.id(27506250570714303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
end;
/
