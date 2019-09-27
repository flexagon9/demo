prompt --application/pages/page_00590
begin
wwv_flow_api.create_page(
 p_id=>590
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Variable Data Element Maintenance'
,p_page_mode=>'MODAL'
,p_step_title=>'Variable Data Elements'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_step_template=>wwv_flow_api.id(79413403695908409)
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(4610475327881315)
,p_dialog_height=>'900'
,p_dialog_width=>'1000'
,p_dialog_css_classes=>'no-close'
,p_last_updated_by=>'JJOHNSON'
,p_last_upd_yyyymmddhh24miss=>'20190822145152'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11825536845629800)
,p_plug_name=>'Variable Data Elements'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT vde.var_data_element_id,',
'       pm.plant_code,',
'       vde.element_name,',
'       vde.acc_group,',
'       vde.accessory,',
'       vde.description,',
'       vde.where_collected_code,',
'       vde.mandatory_flag,',
'       vde.inactive_date',
'  FROM bg_qcis.qcis_var_data_elements vde',
'       JOIN bg_qcis.qcis_plant_master pm',
'          ON pm.qcis_plant_master_id = vde.plant_id',
' WHERE vde.plant_id = :G_DEFAULT_PLANT_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Variable Data Element List</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11825672981629800)
,p_name=>'Variable Data Elements'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:595:&SESSION.::&DEBUG.:RP,595:P595_VAR_DATA_ELEMENT_ID:#VAR_DATA_ELEMENT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'JJOHNSON'
,p_internal_uid=>11825672981629800
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11826020632629807)
,p_db_column_name=>'VAR_DATA_ELEMENT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Var Data Element Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11826418102629808)
,p_db_column_name=>'PLANT_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Plant Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11826881164629809)
,p_db_column_name=>'ELEMENT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Element Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11827258775629809)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Acc Group'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11827608659629810)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11828002600629810)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11828472057629812)
,p_db_column_name=>'WHERE_COLLECTED_CODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Where Collected'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25892993937551520)
,p_db_column_name=>'MANDATORY_FLAG'
,p_display_order=>17
,p_column_identifier=>'I'
,p_column_label=>'Mandatory'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11828875984629812)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>27
,p_column_identifier=>'H'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11830601078641965)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'118307'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ELEMENT_NAME:DESCRIPTION:WHERE_COLLECTED_CODE:MANDATORY_FLAG:INACTIVE_DATE:'
,p_sort_column_1=>'ELEMENT_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42387099356445944)
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
 p_id=>wwv_flow_api.id(16309103730845578)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(42387099356445944)
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
 p_id=>wwv_flow_api.id(11073566416216237)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11825536845629800)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:595:&SESSION.::&DEBUG.:RP,595::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16309757167849634)
,p_name=>'Cancel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16309103730845578)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16310194355849634)
,p_event_id=>wwv_flow_api.id(16309757167849634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16310510983861945)
,p_name=>'Refresh Station List'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(11825536845629800)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16310973353861946)
,p_event_id=>wwv_flow_api.id(16310510983861945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11825536845629800)
,p_stop_execution_on_error=>'Y'
);
end;
/
