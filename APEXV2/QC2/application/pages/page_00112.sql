prompt --application/pages/page_00112
begin
wwv_flow_api.create_page(
 p_id=>112
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Edit Station Parent'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Station Parent'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(4612636109968797)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}'))
,p_page_css_classes=>'no-close'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(4610475327881315)
,p_dialog_height=>'775'
,p_dialog_width=>'900'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190830121134'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14399891621263843)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26110471849627478)
,p_plug_name=>'Container Region'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16463766685668342)
,p_plug_name=>'Substations'
,p_parent_plug_id=>wwv_flow_api.id(26110471849627478)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT apex_item.checkbox (1,ssp.id) box,',
'         ssp.id,',
'         ssp.qcis_substation_code,',
'         ssp.qcis_substation_name,',
'         ssp.usage_code,',
'         ssp.inactive_date,',
'         sp.qcis_station_code,',
'         sp.station_name',
'    FROM bg_qcis.qcis_substation_parent ssp ',
'     left join bg_qcis.qcis_station_parent sp',
'      on sp.id = ssp.station_parent_id',
'   where ssp.station_parent_id = :p112_id',
'ORDER BY ssp.qcis_substation_code;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P112_ID'
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
'<div style="font-size: 16px; color: steelblue"><b>Parent Substation List</b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16463849418668343)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'..No Substations Defined..'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:RP,114:P114_STATION_PARENT_ID,P114_ID,P114_PLANT,P114_STATION_SEQUENCE,P114_STATION_NAME:&P112_ID.,#ID#,&P112_PLANT_ID.,#QCIS_STATION_CODE#,#STATION_NAME#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'JJOHNSON'
,p_internal_uid=>16463849418668343
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25068745975203202)
,p_db_column_name=>'BOX'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Inactivate'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16463909179668344)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16464029422668345)
,p_db_column_name=>'QCIS_SUBSTATION_CODE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Substation Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16464135924668346)
,p_db_column_name=>'QCIS_SUBSTATION_NAME'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Substation Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16464264517668347)
,p_db_column_name=>'USAGE_CODE'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Usage'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(14084533382014137)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16464314222668348)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25400440932397435)
,p_db_column_name=>'QCIS_STATION_CODE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Qcis Station Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25400500786397436)
,p_db_column_name=>'STATION_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Station Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25061740859153533)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'250618'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOX:QCIS_SUBSTATION_CODE:QCIS_SUBSTATION_NAME:USAGE_CODE:INACTIVE_DATE:'
,p_sort_column_1=>'QCIS_SUBSTATION_CODE'
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
 p_id=>wwv_flow_api.id(26110235541627476)
,p_plug_name=>'Audit Information'
,p_parent_plug_id=>wwv_flow_api.id(26110471849627478)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P112_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28093918916671931)
,p_plug_name=>'Edit Station Parent'
,p_parent_plug_id=>wwv_flow_api.id(26110471849627478)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28094618740671931)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14102124192714540)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14399891621263843)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14101746133714540)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14399891621263843)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14102548343714541)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14399891621263843)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P112_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14102908902714541)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14399891621263843)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P112_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16464599813668350)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16463766685668342)
,p_button_name=>'CREATE_SUB'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_image_alt=>'Create Sub'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:RP,114:P114_STATION_PARENT_ID,P114_PLANT,P114_STATION_SEQUENCE,P114_STATION_NAME:&P112_ID.,&P112_PLANT_ID.,&P112_QCIS_STATION_CODE.,&P112_STATION_NAME.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25068887457203203)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16463766685668342)
,p_button_name=>'INACTIVATE_SUBS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inactivate Selected'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-warning'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14116723050714562)
,p_branch_name=>'Reload page without saving changes'
,p_branch_action=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:RP,112:P112_ID,P112_SUBSTATION_PARENT_ID:&P112_ID.,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14101746133714540)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14103681144714542)
,p_name=>'P112_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14104055308714542)
,p_name=>'P112_PLANT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_use_cache_before_default=>'NO'
,p_item_default=>':G_DEFAULT_PLANT_ID'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Plant'
,p_source=>'PLANT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14104458075714543)
,p_name=>'P112_QCIS_STATION_CODE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_new_number    number;',
' ',
'BEGIN',
'',
'  v_new_number := 10;',
'',
'  SELECT ROUND (MAX (sp.qcis_station_code) + 10, -1)',
'    INTO v_new_number',
'    FROM bg_qcis.qcis_station_parent sp',
'         LEFT JOIN bg_qcis.qcis_plant_master pm',
'             ON pm.qcis_plant_master_id = sp.plant_id',
'   WHERE sp.plant_id = :g_default_plant_id;',
'   ',
'  -- We have a limit of 3 digits for the station code.  Lets make sure we',
'  -- don''t exceed the limit!',
'  If v_new_number > 999 then',
'    SELECT MAX (sp.qcis_station_code) + 1',
'      INTO v_new_number',
'      FROM bg_qcis.qcis_station_parent  sp',
'           LEFT JOIN bg_qcis.qcis_plant_master pm',
'               ON pm.qcis_plant_master_id = sp.plant_id',
'     WHERE sp.plant_id = :g_default_plant_id',
'       AND sp.qcis_station_code < 999',
'       AND NOT EXISTS',
'               (SELECT ''Y''',
'                  FROM bg_qcis.qcis_station_parent qsp2',
'                 WHERE     qsp2.plant_id = sp.plant_id',
'                       AND qsp2.qcis_station_code =',
'                           (sp.qcis_station_code + 1));',
'  End if;',
'',
'  Return (v_new_number);',
'  ',
'Exception',
'  When Others then',
'    Return (NULL);',
'',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Station Sequence'
,p_source=>'QCIS_STATION_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P112_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14104885681714543)
,p_name=>'P112_STATION_NAME'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Station Name'
,p_source=>'STATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>160
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14105270355714543)
,p_name=>'P112_USAGE_CODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usage'
,p_source=>'USAGE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USAGE_CODES'
,p_lov=>'.'||wwv_flow_api.id(14084533382014137)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14105675425714544)
,p_name=>'P112_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_item_default=>'A'
,p_prompt=>'Status'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  If :P112_INACTIVE_DATE is NULL then',
'    Return (''A'');',
'  Else',
'    Return (''I'');',
'  End if;',
'',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(12406872612044732)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14106002354714545)
,p_name=>'P112_INACTIVE_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_use_cache_before_default=>'NO'
,p_source=>'INACTIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14106490096714545)
,p_name=>'P112_SFM_BUILDING_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_use_cache_before_default=>'NO'
,p_source=>'SFM_BUILDING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14106838262714545)
,p_name=>'P112_BUILDING_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_use_cache_before_default=>'NO'
,p_source=>'BUILDING_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14107297649714546)
,p_name=>'P112_SFM_LINE_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_use_cache_before_default=>'NO'
,p_source=>'SFM_LINE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14107647766714546)
,p_name=>'P112_LINE_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_use_cache_before_default=>'NO'
,p_source=>'LINE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14108304619714547)
,p_name=>'P112_CREATED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26110235541627476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By:'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14108737819714547)
,p_name=>'P112_CREATION_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26110235541627476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date:'
,p_format_mask=>'MM-DD-YYYY'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14109179507714547)
,p_name=>'P112_LAST_UPDATED_BY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26110235541627476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By:'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14109505173714548)
,p_name=>'P112_LAST_UPDATE_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26110235541627476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Date:'
,p_format_mask=>'MM-DD-YYYY'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14396339187263808)
,p_name=>'P112_SUBSTATION_PARENT_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14396469470263809)
,p_name=>'P112_COLLAPSE_EXPAND_FLAG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15206302357621219)
,p_name=>'P112_RETURN_PAGE_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25400743659397438)
,p_name=>'P112_APPLY_CHANGES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(28093918916671931)
,p_item_default=>'N'
,p_prompt=>'Apply Changes to Existing Stations?'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_cHeight=>1
,p_display_when=>'P112_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(25071398933203228)
,p_validation_name=>'Make sure no duplicates'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_error_message   VARCHAR2 (1000);',
'    v_checker_flag    VARCHAR2 (1);',
'BEGIN',
'    v_error_message := NULL;',
'    v_checker_flag := ''N'';',
'',
'    -- Check to see if the sequence number is already in use',
'    BEGIN',
'        SELECT ''Y''',
'          INTO v_checker_flag',
'          FROM bg_qcis.qcis_station_parent',
'         WHERE plant_id = :p112_plant_id',
'           AND qcis_station_code = :p112_qcis_station_code',
'           AND id <> NVL ( :p112_id, -99);',
'    EXCEPTION',
'        WHEN TOO_MANY_ROWS',
'        THEN',
'            v_checker_flag := ''Y'';',
'        WHEN OTHERS',
'        THEN',
'            v_checker_flag := ''N'';',
'    END;',
'',
'    IF v_checker_flag = ''Y''',
'    THEN',
'        v_error_message :=',
'               ''Station Sequence ''',
'            || :p112_qcis_station_code',
'            || '' already exists for this plant.'';',
'    END IF;',
'',
'    RETURN (v_error_message);',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(14104458075714543)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14115285923714561)
,p_name=>'Set inactive date'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P112_STATUS'
,p_condition_element=>'P112_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14115756517714561)
,p_event_id=>wwv_flow_api.id(14115285923714561)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P112_INACTIVE_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select sysdate',
'  from dual'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14116214537714562)
,p_event_id=>wwv_flow_api.id(14115285923714561)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P112_INACTIVE_DATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14438416270573267)
,p_name=>'COLLAPSE_EXPAND'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14439301129573268)
,p_event_id=>wwv_flow_api.id(14438416270573267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P112_COLLAPSE_EXPAND_FLAG'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CASE ',
'         WHEN :P112_SUBSTATION_PARENT_ID IS NULL THEN 1',
'         ELSE 0',
'       END',
'FROM DUAL;'))
,p_attribute_07=>'P112_SUBSTATION_PARENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14239102840669749)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14102124192714540)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14239223033669750)
,p_event_id=>wwv_flow_api.id(14239102840669749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25071845886203233)
,p_name=>'Refresh List'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(16463766685668342)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25071956173203234)
,p_event_id=>wwv_flow_api.id(25071845886203233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16463766685668342)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14114474553714560)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_STATION_PARENT'
,p_attribute_02=>'QCIS_STATION_PARENT'
,p_attribute_03=>'P112_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14114869527714561)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_STATION_PARENT'
,p_attribute_02=>'QCIS_STATION_PARENT'
,p_attribute_03=>'P112_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P112_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15209215954621248)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Inactivate Substations'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'    FOR I IN 1 .. APEX_APPLICATION.G_f01.COUNT',
'    LOOP',
'        UPDATE bg_qcis.qcis_substation_parent',
'           SET inactive_date = SYSDATE',
'         WHERE ID = TO_NUMBER (APEX_APPLICATION.g_f01 (i));',
'    END LOOP;',
'    ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25068887457203203)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25400813455397439)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Push changes to existing stations'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'',
'  If :P112_APPLY_CHANGES = ''Y'' then',
'    bg_qcis.qc2_admin_utilities.push_parent_station_changes(:p112_id, :APP_USER);',
'  End if;',
'  ',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14102548343714541)
);
end;
/
