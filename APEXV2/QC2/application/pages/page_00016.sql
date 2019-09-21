prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Order# Change'
,p_step_title=>'Order# Change'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(15903984505302781)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JJOHNSON'
,p_last_upd_yyyymmddhh24miss=>'20190820120021'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36688433941731385)
,p_plug_name=>'Button Bar'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(90743924126242860)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90737983207242537)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36688910067731390)
,p_plug_name=>'OBMS Order Numbers'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_1'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_ITEM.checkbox (1, vw.order_number)     id_chkbx,',
'       vw.mfg_plant_code,',
'       vw.model_yr,',
'       vw.model_designation,',
'       vw.boat_serial_number,',
'       vw.order_number,',
'       vw.order_status',
'  FROM bg_shared_admin.shared_obms_boat_order_vw vw',
' WHERE 1 = 1',
'   AND vw.mfg_plant_code = :g_default_loc_code',
'   AND vw.model_yr = :p16_model_year',
'   AND vw.model_designation = :p16_model_name',
'   AND vw.boat_serial_number = :p16_hull_number;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P16_MODEL_YEAR,P16_MODEL_NAME,P16_HULL_NUMBER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P16_SELECT_MODEL'
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
'<div style="font-size: 16px; color: steelblue"><b>OBMS Data</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(36689009831731391)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'..No matching boat found in OBMS..'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'JJOHNSON'
,p_internal_uid=>25397661436397407
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36689119620731392)
,p_db_column_name=>'ID_CHKBX'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'<!Box>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36689205992731393)
,p_db_column_name=>'MFG_PLANT_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36689323336731394)
,p_db_column_name=>'MODEL_YR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36689374150731395)
,p_db_column_name=>'MODEL_DESIGNATION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36689535499731396)
,p_db_column_name=>'BOAT_SERIAL_NUMBER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Hull'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36689637268731397)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Order Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36689725873731398)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(36712719014872106)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'254214'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CHKBX:MFG_PLANT_CODE:MODEL_YR:MODEL_DESIGNATION:BOAT_SERIAL_NUMBER:ORDER_NUMBER:ORDER_STATUS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36690668576731408)
,p_plug_name=>'QCIS Data'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P16_SELECT_MODEL'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>QCIS Data</b></div> ',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36896281111190392)
,p_plug_name=>'Message Region'
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Y''',
'  FROM bg_shared_admin.shared_obms_boat_order_vw vw',
' WHERE vw.mfg_plant_code = :g_default_loc_code',
'   AND vw.model_yr = :p16_model_year',
'   AND vw.model_designation = :p16_model_name',
'   AND vw.boat_serial_number = :p16_hull_number',
'   and vw.order_number = :p16_order_number',
'   and :p16_select_model is NOT null;'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56646687469385654)
,p_plug_name=>'Order# Change'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Order Number Change</b></div> ',
'<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36691189031731413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36688433941731385)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23247876369164103)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36688528355731386)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(36688433941731385)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(23242337267915426)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,16:P16_SELECT_MODEL:'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36688607752731387)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(36688433941731385)
,p_button_name=>'CHANGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Order Number'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Y''',
'  FROM bg_shared_admin.shared_obms_boat_order_vw vw',
' WHERE vw.mfg_plant_code = :g_default_loc_code',
'   AND vw.model_yr = :p16_model_year',
'   AND vw.model_designation = :p16_model_name',
'   AND vw.boat_serial_number = :p16_hull_number',
'   and vw.order_number <> :p16_order_number;'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-magic'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36896728667190396)
,p_branch_name=>'Refresh the page'
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP:P16_SELECT_MODEL:&P16_SELECT_MODEL.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(36688607752731387)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36364365782537229)
,p_name=>'P16_SELECT_MODEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(56646687469385654)
,p_prompt=>'Boat To Be Changed:'
,p_display_as=>'PLUGIN_MHO.MODAL_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT boat_master_id r,',
'         boat_master_id d,',
'         plant_code plant,',
'         model_year year,',
'         model_name name,',
'         hull_number hull_no,',
'         order_number order_number,',
'         boat_status status',
'    FROM bg_qcis.qcis_boat_master',
'   WHERE plant_id = :g_default_plant_id',
'ORDER BY model_year desc, model_name, hull_number;'))
,p_cSize=>30
,p_display_when=>'P16_SELECT_MODEL'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'600'
,p_attribute_02=>'25'
,p_attribute_03=>'r'
,p_attribute_04=>'d'
,p_attribute_05=>'Y'
,p_attribute_06=>'Select a boat'
,p_attribute_07=>'Please select a record from the list.'
,p_attribute_08=>'Enter a search term'
,p_attribute_09=>'No data found'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36364450115537230)
,p_name=>'P16_MODEL_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36690668576731408)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36364553662537231)
,p_name=>'P16_MODEL_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(36690668576731408)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36364729351537232)
,p_name=>'P16_HULL_NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(36690668576731408)
,p_prompt=>'Hull'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36364770969537233)
,p_name=>'P16_ORDER_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(36690668576731408)
,p_prompt=>'Order Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36364881782537234)
,p_name=>'P16_BOAT_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(36690668576731408)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(90737046966242520)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36896385211190393)
,p_name=>'P16_MATCH_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36896281111190392)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: red"><b>The order numbers in QCIS and OBMS match</b></div> ',
'<br>'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(36896827232190397)
,p_validation_name=>'Make sure something is selected'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_ctr       number := 0;',
'',
'BEGIN',
'',
'  FOR i IN 1 .. APEX_APPLICATION.g_f01.COUNT',
'    LOOP',
'      ',
'      v_ctr := v_ctr + 1;',
'',
'    END LOOP;',
'',
'  If v_ctr = 0 then',
'    Return (''You must select an order number from OBMS'');',
'  End if;',
'  ',
'  If v_ctr > 1 then',
'    Return (''You can only select one order number from OBMS'');',
'  End if;',
'',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(36688607752731387)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36895855444190388)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_SELECT_MODEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36896219914190391)
,p_event_id=>wwv_flow_api.id(36895855444190388)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  Select model_year,',
'         model_name,',
'         hull_number,',
'         order_number,',
'         boat_status',
'    into :P16_MODEL_YEAR,',
'         :P16_MODEL_NAME,',
'         :P16_HULL_NUMBER,',
'         :P16_ORDER_NUMBER,',
'         :P16_BOAT_STATUS',
'    from bg_qcis.qcis_boat_master',
'   where boat_master_id = :P16_SELECT_MODEL;',
'',
'Exception',
'  When Others then',
'   :P16_MODEL_NAME := :P16_SELECT_MODEL;',
'      ',
'',
'END;',
''))
,p_attribute_02=>'P16_SELECT_MODEL'
,p_attribute_03=>'P16_MODEL_YEAR,P16_MODEL_NAME,P16_HULL_NUMBER,P16_ORDER_NUMBER,P16_BOAT_STATUS'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36895948982190389)
,p_event_id=>wwv_flow_api.id(36895855444190388)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36896568817190395)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change order number'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_model_id      NUMBER := NULL;',
'    v_brand_id      NUMBER := NULL;',
'    v_division_id   NUMBER := NULL;',
'    v_plant_id      NUMBER := NULL;',
'    v_to_order      NUMBER := NULL;',
'BEGIN',
'    SELECT model_id,',
'           brand_id,',
'           division_id,',
'           plant_id',
'      INTO v_model_id,',
'           v_brand_id,',
'           v_division_id,',
'           v_plant_id',
'      FROM bg_qcis.qcis_boat_master',
'     WHERE boat_master_id = :p16_select_model;',
'',
'    FOR i IN 1 .. APEX_APPLICATION.g_f01.COUNT',
'    LOOP',
'        v_to_order := TO_NUMBER (APEX_APPLICATION.g_f01 (i));',
'',
'        UPDATE bg_qcis.qcis_boat_master',
'           SET order_number = TO_NUMBER (APEX_APPLICATION.g_f01 (i))',
'         WHERE boat_master_id = :p16_select_model',
'           AND NOT EXISTS',
'                   (SELECT ''Y''',
'                      FROM bg_qcis.qcis_boat_master',
'                     WHERE order_number =',
'                           TO_NUMBER (APEX_APPLICATION.g_f01 (i)));',
'',
'        UPDATE bg_qcis.qcis_inspection_header',
'           SET order_number = TO_NUMBER (APEX_APPLICATION.g_f01 (i))',
'         WHERE order_number = :p16_order_number',
'           AND hull_number = :p16_hull_number',
'           AND model_id = v_model_id',
'           AND NOT EXISTS',
'                   (SELECT ''Y''',
'                      FROM bg_qcis.qcis_inspection_header',
'                     WHERE order_number =',
'                           TO_NUMBER (APEX_APPLICATION.g_f01 (i)));',
'    END LOOP;',
'',
'    INSERT INTO boat_order_change (brand_id,',
'                                   division_id,',
'                                   plant_id,',
'                                   plant_code,',
'                                   model_id,',
'                                   model_year,',
'                                   model_name,',
'                                   hull_number,',
'                                   boat_status,',
'                                   from_order,',
'                                   to_order)',
'         VALUES (v_brand_id,',
'                 v_division_id,',
'                 v_plant_id,',
'                 :g_default_loc_code,',
'                 v_model_id,',
'                 :p16_model_year,',
'                 :p16_model_name,',
'                 :p16_hull_number,',
'                 :p16_boat_status,',
'                 :p16_order_number,',
'                 v_to_order);',
'                 ',
'  :p16_order_number := v_to_order;                 ',
'                 ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36688607752731387)
,p_process_success_message=>'Order number changed'
);
end;
/
