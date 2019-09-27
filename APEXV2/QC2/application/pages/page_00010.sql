prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Boat Orders'
,p_step_title=>'Boat Orders'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_step_template=>wwv_flow_api.id(81618079231725991)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190919155351'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5133793890349413)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(91277765824341304)
,p_plug_name=>'Search Criteria'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93779263594500585)
,p_plug_name=>'Boat Order'
,p_region_name=>'ORDERS'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>15
,p_plug_grid_column_span=>12
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE WHEN READY_FOR_INSPECTION = ''Y'' THEN SELECT_BOX',
'            ELSE NULL',
'         END SELECT_BOX,',
'       PARM,',
'       PLANT_ID,',
'       PLANT,',
'       MODEL_YEAR,',
'       MODEL_NAME,',
'       HULL,',
'       HIN,',
'       ORDER_NUMBER,',
'       STATUS,',
'       READY_FOR_INSPECTION',
'  FROM',
'(',
'SELECT SELECT_BOX,',
'       PARM,',
'       :G_DEFAULT_PLANT_ID PLANT_ID,',
'       PLANT,',
'       MODEL_YEAR,',
'       MODEL_NAME,',
'       HULL,',
'       HIN,',
'       ORDER_NUMBER,',
'       STATUS,',
'       CASE',
'           WHEN (  SELECT READY_FOR_INSPECTIONS',
'                     FROM bg_qcis.QCIS_MODEL_MASTER m',
'                    WHERE     m.PLANT_ID = :G_DEFAULT_PLANT_ID',
'                          AND m.MODEL_YEAR = a.MODEL_YEAR',
'                          AND m.MODEL_NAME = a.MODEL_NAME',
'                          AND INACTIVE_DATE IS NULL',
'                 GROUP BY READY_FOR_INSPECTIONS) =',
'                ''Y''',
'           THEN',
'               ''Y''',
'           ELSE',
'               ''N''',
'       END READY_FOR_INSPECTION',
'  FROM (SELECT APEX_ITEM.checkbox (1, ohord)       SELECT_BOX,',
'               obms.ohplnt || ''-'' || obms.ohyr     parm,',
'               obms.ohplnt                         PLANT,',
'               obms.ohyr                           MODEL_YEAR,',
'               TRIM(obms.ohmdl)                          MODEL_NAME,',
'               obms.ohserl                         HULL,',
'               obms.ohord                          ORDER_NUMBER,',
'               obms.ohhin                          HIN,',
'               obms.ohsts                          STATUS',
'          FROM opdta.opohl44@obms obms',
'         WHERE     TRIM (ohplnt) = :G_DEFAULT_LOC_CODE',
'               AND NOT EXISTS',
'                       (SELECT ''Y''',
'                          FROM qcis_inspection_header ih',
'                         WHERE ih.order_number = obms.ohord)',
'        UNION',
'        SELECT APEX_ITEM.checkbox (1, alt_order_number)     SELECT_BOX,',
'               alt_plant_code || ''-'' || alt_model_year      parm,',
'               alt_plant_code                               PLANT,',
'               alt_model_year                               MODEL_YEAR,',
'               TRIM(alt_model_name)                               MODEL_NAME,',
'               alt_hull_number                              HULL,',
'               alt_order_number                             ORDER_NUMBER,',
'               NULL                                         HIN,',
'               alt_status                                   STATUS',
'          FROM qcis_alt_boat_master abm',
'         WHERE     alt_plant_code = :G_DEFAULT_LOC_CODE',
'               AND abm.INACTIVE_DATE IS NULL',
'               AND NOT EXISTS',
'                       (SELECT ''Y''',
'                          FROM qcis_inspection_header ih',
'                         WHERE ih.order_number = alt_order_number)) a',
'    )b',
'    WHERE CASE',
'           WHEN (  SELECT COUNT(*)',
'                     FROM bg_qcis.QCIS_MODEL_MASTER m',
'                    WHERE     m.PLANT_ID = :G_DEFAULT_PLANT_ID',
'                          AND m.MODEL_YEAR = b.MODEL_YEAR',
'                          AND m.MODEL_NAME = b.MODEL_NAME',
'                          AND INACTIVE_DATE IS NULL',
'                 ) > 0',
'           THEN',
'                1 ',
'           ELSE',
'               0',
'       END = 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID,_DEFAULT_LOC_CODE'
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Boat Orders</b></div> ',
'<br></br>'))
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'boat_orders prior script:',
'select apex_item.checkbox (1,ohord),',
'       obms.ohplnt ||''-''|| obms.ohyr parm, ',
'       obms.ohplnt, ',
'       obms.ohyr, ',
'       obms.ohmdl, ',
'       obms.ohserl, ',
'       obms.ohord, ',
'       obms.ohsts ',
'  from opdta.opohl44@obms 		obms',
' where instr(upper(ohplnt), upper(nvl(:P20_PLANT_SEARCH,ohplnt))) > 0 ',
'   and instr(upper(ohyr), upper(nvl(:P20_YEAR_SEARCH,ohyr))) > 0 ',
'   and upper(ohmdl) = upper(nvl(:P20_MODEL_SEARCH,ohmdl)) ',
'   and instr(upper(ohserl), upper(nvl(:P20_HULL_SEARCH,ohserl))) > 0 ',
'   and instr(upper(ohsts), upper(nvl(:P20_STATUS_SEARCH,ohsts))) > 0',
'   and NOT EXISTS (Select ''Y''',
'                     from qcis_inspection_header ih',
'                    where ih.order_number = obms.ohord)'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(53398252754669248)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>53398252754669248
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905166262747833)
,p_db_column_name=>'PARM'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Parm'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26905584766747834)
,p_db_column_name=>'SELECT_BOX'
,p_display_order=>30
,p_column_identifier=>'L'
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
,p_static_id=>'ORDERS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906322994747835)
,p_db_column_name=>'PLANT'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26906758939747836)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>60
,p_column_identifier=>'O'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26907172706747836)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'Model Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26907594310747837)
,p_db_column_name=>'HULL'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>'Hull'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26907937471747837)
,p_db_column_name=>'HIN'
,p_display_order=>90
,p_column_identifier=>'R'
,p_column_label=>'HIN'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26908329900747838)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>100
,p_column_identifier=>'S'
,p_column_label=>'Order Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26908778613747839)
,p_db_column_name=>'STATUS'
,p_display_order=>110
,p_column_identifier=>'T'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26497553311921446)
,p_db_column_name=>'READY_FOR_INSPECTION'
,p_display_order=>120
,p_column_identifier=>'U'
,p_column_label=>'Ready For Inspection'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2219142509109104)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>130
,p_column_identifier=>'V'
,p_column_label=>'Plant ID'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(53771165892500628)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'269099'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECT_BOX:MODEL_YEAR:MODEL_NAME:HULL:HIN:ORDER_NUMBER:STATUS:READY_FOR_INSPECTION:'
,p_sort_column_1=>'MODEL_YEAR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MODEL_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'HULL'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2638556237638400)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5133793890349413)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:&G_CALLING_PAGE.:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26910368246747844)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(93779263594500585)
,p_button_name=>'CREATE_INSPECTION_RECORDS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Inspection Sheets'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26910701512747845)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93779263594500585)
,p_button_name=>'GO_TO_INSPECTIONS_JUST_CREATED'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Go To Inspections Just Created'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP:P16_ORDER_NUMBER:&P10_ORDER_NUMBER.'
,p_button_condition=>'P10_ORDER_NUMBER'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-arrow-circle-o-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26911182168747846)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(93779263594500585)
,p_button_name=>'REFRESH_ALT_BOAT_MODELS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Refresh Orders List'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_condition=>'G_MARINE_DIVISION_TYPE'
,p_button_condition2=>'BME'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26915307091747851)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26903683595747827)
,p_name=>'P10_ERROR_MESSAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(91277765824341304)
,p_prompt=>'Error Message: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_colspan=>4
,p_display_when=>'P10_ERROR_MESSAGE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26904019655747828)
,p_name=>'P10_REC_CTR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(91277765824341304)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26904414181747829)
,p_name=>'P10_ORDER_NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(91277765824341304)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26951821508982898)
,p_name=>'SELECT_UNSELECT Boat Orders'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#ORDERS'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26952296040982900)
,p_event_id=>wwv_flow_api.id(26951821508982898)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#ORDERS #selectunselectall'' ).is('':checked'') ) {',
'  $(''#ORDERS  input[type=checkbox][name=f01]'').prop(''checked'',true);',
'} else {',
'  $(''#ORDERS  input[type=checkbox][name=f01]'').prop(''checked'',false);',
'}'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26913161751747848)
,p_process_sequence=>3
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Error Message'
,p_process_sql_clob=>':P10_ERROR_MESSAGE := NULL;'
,p_process_when_button_id=>wwv_flow_api.id(3346503834083550)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26911964924747847)
,p_process_sequence=>15
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Inspection records'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_rec_ctr          number := 0;',
'  v_return_message   varchar2(100);',
'',
'BEGIN',
'',
'  :P10_ERROR_MESSAGE := NULL;',
'',
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    v_return_message := NULL;',
'    boat_order_utilities.create_inspection_sheets(APEX_APPLICATION.G_F01(i), v_return_message);',
'    If v_return_message is NOT NULL then',
'      :P10_ERROR_MESSAGE := v_return_message;',
'      exit;',
'    End if;',
'    v_rec_ctr := v_rec_ctr + 1;',
'    ',
'    If v_rec_ctr = 1 then',
'      :P10_ORDER_NUMBER := APEX_APPLICATION.G_F01(i);',
'    ELSE',
'      :P10_ORDER_NUMBER := NULL;',
'    End If;',
'    ',
'  END LOOP;',
'',
'  :P10_REC_CTR := v_rec_ctr;',
'',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(26910368246747844)
,p_process_success_message=>'Inspection records created for &P10_REC_CTR. hull(s)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26913526828747848)
,p_process_sequence=>25
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Refresh Alt Boat Model List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'    scheduled_utilities.get_portugal_boat_orders();',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26911182168747846)
);
end;
/
