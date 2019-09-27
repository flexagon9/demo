prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Images - Main IR By Plant'
,p_page_mode=>'MODAL'
,p_step_title=>'Image Maintenance'
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
'}',
'/* IR BLOB image column dimensions */  ',
'td[headers="IMAGE_DISPLAY"] img { width: 75px;}'))
,p_step_template=>wwv_flow_api.id(79413403695908409)
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190916135500'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11249047163866343)
,p_plug_name=>'Images By Plant'
,p_region_name=>'IMG'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_item.checkbox (1,id) box,',
'       ID,',
'       ID IMAGE_DISPLAY,',
'       PLANT_ID,',
'       (SELECT pm.plant_code',
'          FROM qcis_plant_master pm',
'         WHERE pm.qcis_plant_master_id = plant_id) plt,',
'       IMAGE_NAME,',
'       FILE_NAME,',
'       MIME_TYPE,',
'       IMAGE_SIZE,',
'       PIXEL_WIDTH,',
'       PIXEL_HEIGHT,',
'       CHARACTER_SET,      ',
'       INACTIVE_DATE,',
'       LAST_UPDATE_DATE,',
'       LAST_UPDATED_BY,',
'       CREATION_DATE,',
'       CREATED_BY,',
'       dbms_lob.getlength(blob_content) BLOB_CONTENT',
'  from QCIS_IMAGES_MASTER',
' where PLANT_ID = :G_DEFAULT_PLANT_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(4610475327881315)
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Images for Location</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11249127898866343)
,p_name=>'Images By Plant'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_save_rpt_public_auth_scheme=>wwv_flow_api.id(9986081704515382)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'TBOWERS'
,p_internal_uid=>11249127898866343
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9832237105866633)
,p_db_column_name=>'BOX'
,p_display_order=>10
,p_column_identifier=>'P'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11249596022866344)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Copy'
,p_column_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP:P33_ID:#ID#'
,p_column_linktext=>'<i class="fa fa-copy"></i>'
,p_column_link_attr=>'title="Click to copy image to models."'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11249929019866344)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Plant Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9831455318866625)
,p_db_column_name=>'PLT'
,p_display_order=>40
,p_column_identifier=>'O'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11250386217866345)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Image Name'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE_2:&DEBUG.:RP:G_FILE_ID:#ID#'
,p_column_linktext=>'#IMAGE_NAME#'
,p_column_link_attr=>'title="Click to View Image."'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13657448418079502)
,p_db_column_name=>'IMAGE_DISPLAY'
,p_display_order=>60
,p_column_identifier=>'T'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'IMAGE:QCIS_IMAGES_MASTER:BLOB_CONTENT:ID::MIME_TYPE:FILE_NAME:LAST_UPDATE_DATE::::'
,p_static_id=>'IMAGE_DISPLAY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11250757997866345)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11251577041866345)
,p_db_column_name=>'IMAGE_SIZE'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Image Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11251946879866346)
,p_db_column_name=>'PIXEL_WIDTH'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Pixel Width'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11252340405866346)
,p_db_column_name=>'PIXEL_HEIGHT'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Pixel Height'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11251145572866345)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>110
,p_column_identifier=>'E'
,p_column_label=>'MIME Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11252714397866347)
,p_db_column_name=>'CHARACTER_SET'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Character Set'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11253191577866347)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11253582788866348)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11253913356866349)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>150
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11254330217866349)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>160
,p_column_identifier=>'M'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11254743806866349)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>170
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9833982698866650)
,p_db_column_name=>'BLOB_CONTENT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:QCIS_IMAGES_MASTER:BLOB_CONTENT:PLANT_ID:IMAGE_NAME:::::::'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11256566495893781)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'112566'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:ID:IMAGE_DISPLAY:IMAGE_NAME:PIXEL_WIDTH:PIXEL_HEIGHT:INACTIVE_DATE:CREATED_BY:LAST_UPDATE_DATE:LAST_UPDATED_BY:'
,p_sort_column_1=>'LAST_UPDATE_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'IMAGE_NAME'
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
 p_id=>wwv_flow_api.id(2631607374516949)
,p_report_id=>wwv_flow_api.id(11256566495893781)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42485526328865815)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16407623465265451)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(42485526328865815)
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
 p_id=>wwv_flow_api.id(9831586033866626)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11249047163866343)
,p_button_name=>'UPLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pillStart:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload Image'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP,32::'
,p_icon_css_classes=>'fa-image'
,p_button_cattributes=>'title="Upload new image for this location."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9832347019866634)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11249047163866343)
,p_button_name=>'INACTIVATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pillStart:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inactivate Image(s)'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-thumbs-o-down'
,p_button_cattributes=>'title="Add Inactive Date to selected image(s)"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9832489263866635)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11249047163866343)
,p_button_name=>'ACTIVATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pillStart:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Activate Image(s)'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-thumbs-o-up'
,p_button_cattributes=>'title="Remove Inactive Date from selected image(s)"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9832912907866640)
,p_name=>'Upload PopUp Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9833009343866641)
,p_event_id=>wwv_flow_api.id(9832912907866640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11249047163866343)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16408020446269830)
,p_name=>'Cancel'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16407623465265451)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16408472384269832)
,p_event_id=>wwv_flow_api.id(16408020446269830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16408817053269918)
,p_name=>'Cancel'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16407623465265451)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16409286192269918)
,p_event_id=>wwv_flow_api.id(16408817053269918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16409649447272240)
,p_name=>'Refresh Station List'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(11249047163866343)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16410078531272241)
,p_event_id=>wwv_flow_api.id(16409649447272240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2495282303711014)
,p_name=>'Select UnSelect Checkbox'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2495352075711015)
,p_event_id=>wwv_flow_api.id(2495282303711014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#IMG #selectunselectall'' ).is('':checked'') ) {',
'  $(''#IMG  input[type=checkbox][name=f01]'').prop(''checked'',true);',
'} else {',
'  $(''#IMG  input[type=checkbox][name=f01]'').prop(''checked'',false);',
'}'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9832590879866636)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Inactivate Selected Images'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_IMAGES_MASTER',
'    SET INACTIVE_DATE = SYSDATE,  ',
'    LAST_UPDATE_DATE = SYSDATE, ',
'    LAST_UPDATED_BY = :APP_USER',
'    WHERE ID = TO_NUMBER(Apex_Application.g_f01(i)) ',
'    and INACTIVE_DATE IS NULL;      ',
'  END LOOP;'))
,p_process_error_message=>'Error inactivating selected image(s).'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9832347019866634)
,p_process_success_message=>'Selected Image(s) Inactivated.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9832631774866637)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Activate Selected Images'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_IMAGES_MASTER',
'    SET INACTIVE_DATE = NULL,  ',
'    LAST_UPDATE_DATE = SYSDATE, ',
'    LAST_UPDATED_BY = :APP_USER',
'    WHERE ID = TO_NUMBER(Apex_Application.g_f01(i)) ',
'    and INACTIVE_DATE IS NOT NULL;      ',
'  END LOOP;'))
,p_process_error_message=>'Error activating selected image(s).'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9832489263866635)
,p_process_success_message=>'Selected Image(s) Activated.'
);
end;
/
