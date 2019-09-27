prompt --application/pages/page_00057
begin
wwv_flow_api.create_page(
 p_id=>57
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Global Maintenance'
,p_step_title=>'Global Maintenance'
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
,p_required_role=>wwv_flow_api.id(9982768250893683)
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190814172706'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(55763243618852652)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76470585024064776)
,p_plug_name=>'Keywords Maintenance'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>12
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select keywords_id,',
'       plant_id,',
'       division_id,',
'       keyword_type,',
'       keyword_code,',
'       keyword_value,',
'       keyword_desc,',
'       TO_CHAR (INACTIVE_DATE, ''DD-MON-RRRR'') INACTIVE_DATE,',
'       TO_CHAR (LAST_UPDATE_DATE, ''DD-MON-RRRR'') LAST_UPDATE_DATE,',
'       last_updated_by,',
'       TO_CHAR (CREATION_DATE, ''DD-MON-RRRR'') CREATION_DATE,',
'       created_by',
'from qcis_keywords',
'where upper(keyword_type) = upper(:P57_KEYWORD_TYPE_SELECTION)',
'order by keyword_code'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(9982768250893683)
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Keywords Maintenance - &P57_KEYWORD_HEADING. </b></div> ',
'<br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(76470665759064776)
,p_name=>'Images By Plant'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_save_rpt_public_auth_scheme=>wwv_flow_api.id(9986081704515382)
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:RP,58:P58_KEYWORDS_ID:#KEYWORDS_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to edit"'
,p_owner=>'TBOWERS'
,p_internal_uid=>76470665759064776
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12962231570862541)
,p_db_column_name=>'KEYWORD_TYPE'
,p_display_order=>10
,p_column_identifier=>'AR'
,p_column_label=>'&P57_KEYWORD_TYPE_HEADING.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13260349812600941)
,p_db_column_name=>'KEYWORD_CODE'
,p_display_order=>20
,p_column_identifier=>'AE'
,p_column_label=>'&P57_KEYWORD_CODE_HEADING.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13260708476600943)
,p_db_column_name=>'KEYWORD_VALUE'
,p_display_order=>30
,p_column_identifier=>'AF'
,p_column_label=>'&P57_KEYWORD_VALUE_HEADING.'
,p_column_type=>'STRING'
,p_display_text_as=>'STRIP_HTML_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13261153704600944)
,p_db_column_name=>'KEYWORD_DESC'
,p_display_order=>40
,p_column_identifier=>'AG'
,p_column_label=>'&P57_KEYWORD_DESC_HEADING.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12959619600862515)
,p_db_column_name=>'KEYWORDS_ID'
,p_display_order=>50
,p_column_identifier=>'AH'
,p_column_label=>'Keywords Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12960040893862519)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>80
,p_column_identifier=>'AL'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12960252197862521)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>100
,p_column_identifier=>'AN'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12961359877862532)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>110
,p_column_identifier=>'AO'
,p_column_label=>'Plant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(13634727707707847)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12961433218862533)
,p_db_column_name=>'DIVISION_ID'
,p_display_order=>120
,p_column_identifier=>'AP'
,p_column_label=>'Division'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(4687584923311791)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12962757602862546)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>140
,p_column_identifier=>'AT'
,p_column_label=>'Last Update Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12962875462862547)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>150
,p_column_identifier=>'AU'
,p_column_label=>'Creation Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12963031135862549)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>160
,p_column_identifier=>'AW'
,p_column_label=>'Inactive Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(76478104356092214)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'132615'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'KEYWORD_TYPE:PLANT_ID:KEYWORD_CODE:KEYWORD_VALUE:KEYWORD_DESC:INACTIVE_DATE:LAST_UPDATE_DATE:LAST_UPDATED_BY:CREATION_DATE:CREATED_BY:'
,p_sort_column_1=>'DIVISION_CODE'
,p_sort_direction_1=>'ASC'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(13899556307924892)
,p_report_id=>wwv_flow_api.id(76478104356092214)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12960557253862524)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(55763243618852652)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:RP,56::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13262324122600963)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(76470585024064776)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pillStart:t-Button--gapLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:RP,58:P58_KEYWORD_TYPE,P58_KEYWORD_TYPE:&P57_KEYWORD_TYPE_SELECTION.,&P57_KEYWORD_TYPE_SELECTION.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* user is a developer OR entry is Super User maintained, (each unique keyword_type entry has an associated */',
'/* ''sysmaint''-[maintained only by developers] or ''SYSMAINT''-[maintained by developers or Super Users] entry ). */',
'select ''Y''',
'  from dual',
' where exists (select ''Y''',
'                 from bc1_shared.bcone_oid_employees',
'                where username = :app_user and enabled_flag = 1 and department_number = ''6450'')',
'    or exists (select ''Y''',
'                 from qcis_keywords',
'                where upper(:p57_keyword_type_selection) <> ''SYSMAINT''',
'                  and keyword_type = ''SYSMAINT''',
'                  and keyword_code = :p57_keyword_type_selection)'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create new Keyword."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12959574378862514)
,p_name=>'P57_KEYWORD_TYPE_SELECTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(76470585024064776)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12960325240862522)
,p_name=>'P57_KEYWORD_HEADING'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(76470585024064776)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12961612982862535)
,p_name=>'P57_KEYWORD_TYPE_HEADING'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(76470585024064776)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12961739773862536)
,p_name=>'P57_KEYWORD_CODE_HEADING'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(76470585024064776)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12961850740862537)
,p_name=>'P57_KEYWORD_VALUE_HEADING'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(76470585024064776)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12961976917862538)
,p_name=>'P57_KEYWORD_DESC_HEADING'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(76470585024064776)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13262753477600993)
,p_name=>'Create PopUp Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13263247268600996)
,p_event_id=>wwv_flow_api.id(13262753477600993)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(76470585024064776)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12962056042862539)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load IR Headings'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'begin',
'if upper(:p57_keyword_type_selection) = ''SYSMAINT'' then',
'  :p57_keyword_type_heading := ''Custodian:<br> sysmaint =<br> Developer<br> SYSMAINT =<br> Super User'';',
'  :p57_keyword_code_heading := ''Actual ''''Keyword_Type'''''';',
'  :p57_keyword_value_heading := ''Sort order -<br> Greater than 100'';',
'  :p57_keyword_desc_heading := ''Actual Keyword+ '''' Keywords'''''';',
'else',
'  :p57_keyword_type_heading := ''Type'';',
'  :p57_keyword_code_heading := ''Code'';',
'  :p57_keyword_value_heading := ''Value'';',
'  :p57_keyword_desc_heading := ''Description'';',
'end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
