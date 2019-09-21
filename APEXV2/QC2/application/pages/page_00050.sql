prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Global Maintenance - Plants'
,p_step_title=>'Global Maintenance - Plants'
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
,p_last_upd_yyyymmddhh24miss=>'20190802073727'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35243129383369031)
,p_plug_name=>'Plant Maintenance'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>9
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select QCIS_PLANT_MASTER_ID,',
'       PLANT_CODE,',
'       PLANT_NAME,',
'       INACTIVE_DATE,',
'       LAST_UPDATE_DATE,',
'       LAST_UPDATED_BY,',
'       CREATION_DATE,',
'       CREATED_BY,',
'       ALL_COMPLETE_YN,',
'       SFM_FLAG',
'  from QCIS_PLANT_MASTER'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(21274116646227667)
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Plant Maintenance</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(35243210118369031)
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
,p_detail_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP,51:P51_QCIS_PLANT_MASTER_ID:#QCIS_PLANT_MASTER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to edit"'
,p_owner=>'TBOWERS'
,p_internal_uid=>23951861723035047
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23999567916502706)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23999992940502708)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24000446086502709)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>140
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24000786852502710)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24001157423502711)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21764402620792618)
,p_db_column_name=>'QCIS_PLANT_MASTER_ID'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'QCIS_PLANT_MASTER_ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21764449235792619)
,p_db_column_name=>'PLANT_CODE'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21764568892792620)
,p_db_column_name=>'PLANT_NAME'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21764715987792621)
,p_db_column_name=>'ALL_COMPLETE_YN'
,p_display_order=>200
,p_column_identifier=>'V'
,p_column_label=>'All Complete'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25969919500983023)
,p_db_column_name=>'SFM_FLAG'
,p_display_order=>210
,p_column_identifier=>'W'
,p_column_label=>'Uses Shop Floor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(35250648715396469)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'127102'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'PLANT_CODE:PLANT_NAME:ALL_COMPLETE_YN:SFM_FLAG:INACTIVE_DATE:LAST_UPDATE_DATE:LAST_UPDATED_BY:CREATION_DATE:CREATED_BY:'
,p_sort_column_1=>'PLANT_CODE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(27793394722339766)
,p_report_id=>wwv_flow_api.id(35250648715396469)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24001971769502725)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(35243129383369031)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pillStart:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP,51::'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create new Plant."'
,p_grid_new_grid=>false
,p_security_scheme=>wwv_flow_api.id(21274116646227667)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24004614207502756)
,p_name=>'Create PopUp Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24005098623502757)
,p_event_id=>wwv_flow_api.id(24004614207502756)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(35243129383369031)
,p_stop_execution_on_error=>'Y'
);
end;
/
