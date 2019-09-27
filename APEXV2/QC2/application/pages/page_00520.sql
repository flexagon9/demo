prompt --application/pages/page_00520
begin
wwv_flow_api.create_page(
 p_id=>520
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Var Data Template'
,p_page_mode=>'MODAL'
,p_step_title=>'Var Data Template'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(4610475327881315)
,p_dialog_height=>'800'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close '
,p_last_updated_by=>'JJOHNSON11'
,p_last_upd_yyyymmddhh24miss=>'20190821093132'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25605723773856416)
,p_plug_name=>'Button Bar'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40847276812156904)
,p_plug_name=>'Gig Sheet Template'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT APEX_ITEM.checkbox (1, header_id)                   box,',
'         header_id,',
'         pm.plant_code,',
'         bm.brand_code,',
'         dm.division_code,',
'         mm.model_year,',
'         mm.model_name,',
'         sh.station_code || ''-'' || sh.station_name           station,',
'         ss.substation_code || ''-'' || ss.substation_name     substation,',
'         inspector_id,',
'         sequence_nbr,',
'         acc_group,',
'         accessory,',
'         ins.inspection_name                                 gig_sheet_name,',
'         NVL (vdf.var_data_flag, ''N'')                        template_exists,',
'         gsth.inactive_date',
'    FROM bg_qcis.qcis_gs_template_header gsth',
'         JOIN bg_qcis.qcis_plant_master pm',
'             ON pm.qcis_plant_master_id = gsth.plant_id',
'         JOIN bg_qcis.qcis_brand_master bm',
'             ON bm.qcis_brand_master_id = gsth.brand_id',
'         JOIN bg_qcis.qcis_division_master dm',
'             ON dm.qcis_division_master_id = gsth.division_id',
'         JOIN bg_qcis.qcis_model_master mm',
'             ON mm.model_master_id = gsth.model_id',
'         JOIN bg_qcis.qcis_station_master sh',
'             ON sh.station_master_id = gsth.station_id',
'         JOIN bg_qcis.qcis_substation ss',
'             ON ss.substation_id = gsth.substation_id',
'         JOIN bg_qcis.qcis_inspection_names ins',
'             ON ins.inspect_name_id = gsth.gig_sheet_name',
'         LEFT JOIN (SELECT td.template_header_id, ''Y'' var_data_flag',
'                      FROM bg_qcis.qcis_var_data_template_detail td',
'                     WHERE 1 = 1',
'                   group by td.template_header_id) vdf',
'             ON vdf.template_header_id = gsth.header_id',
'   WHERE gsth.gig_sheet_type = ''G''',
'     AND pm.qcis_plant_master_id = :g_default_plant_id',
'ORDER BY mm.model_year desc,',
'         mm.model_name,',
'         sh.station_code,',
'         ss.substation_code,',
'         sequence_nbr;'))
,p_plug_source_type=>'NATIVE_IR'
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b> Gig Sheet Template &P240_MODEL_NAME_DESC.</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25605811187856417)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'..No Data Found..'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:525:&SESSION.::&DEBUG.:RP,525:P525_HEADER_ID:#HEADER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'JJOHNSON'
,p_internal_uid=>25605811187856417
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25605992277856418)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25606116430856420)
,p_db_column_name=>'BOX'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'<!Box>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25606499672856423)
,p_db_column_name=>'DIVISION_CODE'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Division'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25606239094856421)
,p_db_column_name=>'PLANT_CODE'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25606383617856422)
,p_db_column_name=>'BRAND_CODE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25894320216551534)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25894407827551535)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>'Model Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25606611894856425)
,p_db_column_name=>'STATION'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25606755463856426)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25606912970856428)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Seq #'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25607055371856429)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25607196506856430)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Acc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25606805189856427)
,p_db_column_name=>'INSPECTOR_ID'
,p_display_order=>140
,p_column_identifier=>'J'
,p_column_label=>'Inspector Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25607223735856431)
,p_db_column_name=>'GIG_SHEET_NAME'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Gig Sheet Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25607332723856432)
,p_db_column_name=>'TEMPLATE_EXISTS'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Var Data'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25606084742856419)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>170
,p_column_identifier=>'B'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25819567135824600)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'258196'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:DIVISION_CODE:PLANT_CODE:BRAND_CODE:MODEL_YEAR:MODEL_NAME:STATION:SUBSTATION:SEQUENCE_NBR:ACC_GROUP:ACCESSORY:GIG_SHEET_NAME:TEMPLATE_EXISTS:INACTIVE_DATE:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25608447879856443)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(40847276812156904)
,p_button_name=>'INACTIVATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inactive Selected Template(s)'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-warning'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25608596971856444)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(40847276812156904)
,p_button_name=>'ACTIVATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Activate Selected Template(s)'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-check-square-o'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25765687174711113)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(25605723773856416)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25765204477711112)
,p_button_sequence=>99
,p_button_plug_id=>wwv_flow_api.id(25605723773856416)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:520:&SESSION.::&DEBUG.:RP,520::'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25770624051711126)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25765687174711113)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25771106524711128)
,p_event_id=>wwv_flow_api.id(25770624051711126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25775291355711133)
,p_name=>'Refresh Report'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P520_MODEL_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25775785374711133)
,p_event_id=>wwv_flow_api.id(25775291355711133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40847276812156904)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25607857407856437)
,p_name=>'Refresh report - station'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P520_STATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25607990241856438)
,p_event_id=>wwv_flow_api.id(25607857407856437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40847276812156904)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25608027152856439)
,p_name=>'Refresh report - substation'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P520_SUBSTATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25608199018856440)
,p_event_id=>wwv_flow_api.id(25608027152856439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40847276812156904)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25608277888856441)
,p_name=>'Refresh report - AIB'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P520_ACTIVE_INACTIVE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25608362955856442)
,p_event_id=>wwv_flow_api.id(25608277888856441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40847276812156904)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25893119679551522)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Inactivate Templates'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  FOR I IN 1..apex_application.g_f01.count LOOP',
'',
'    UPDATE bg_qcis.qcis_gs_template_header',
'       SET inactive_date = SYSDATE,',
'           last_update_date = SYSDATE,',
'           last_updated_by = :app_user',
'     WHERE header_id = TO_NUMBER (APEX_APPLICATION.g_f01 (i))',
'       AND inactive_date IS NULL;',
'',
'  END LOOP;',
'  ',
'END;  '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25608447879856443)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25893231055551523)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Activate Templates'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  FOR I IN 1..apex_application.g_f01.count LOOP',
'',
'    UPDATE qcis_gs_template_header',
'       SET inactive_date = NULL,',
'           last_update_date = SYSDATE,',
'           last_updated_by = :app_user',
'     WHERE header_id = TO_NUMBER (APEX_APPLICATION.g_f01 (i));',
'',
'  END LOOP;',
'  ',
'END;  '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25608596971856444)
);
end;
/
