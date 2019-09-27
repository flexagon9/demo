prompt --application/pages/page_00241
begin
wwv_flow_api.create_page(
 p_id=>241
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Clone Gig Sheets'
,p_page_mode=>'MODAL'
,p_step_title=>'Clone Gig Sheets'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(4612861988980385)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190829154312'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23568066143485446)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>11
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33384347985224088)
,p_plug_name=>'Gig Sheets Clone Report'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>11
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM,',
'       LOG_ID,',
'       MSG_DATA_SOURCE,',
'       MSG_SOURCE_ID,',
'       SOURCE_PROCESS,',
'       LOG_MESSAGE,',
'       LOG_TYPE,',
'       CREATE_DATE,',
'       CREATED_BY,',
'       :APP_USER USERNAME ',
'  FROM bg_qcis.QCIS_MSG_LOG',
' WHERE TRUNC(CREATE_DATE) BETWEEN TRUNC(SYSDATE-1) AND TRUNC(SYSDATE)',
'  AND LOG_TYPE IN (''I'', ''E'', ''R'', ''S'')',
'  AND MSG_DATA_SOURCE LIKE ''%'' || ''QCIS - Clone Stations'' || ''%'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM bg_qcis.QCIS_MSG_LOG',
'  WHERE MSG_DATA_SOURCE LIKE',
'           ''%'' || ''QCIS - Clone Stations'' || ''%''',
'  AND TRUNC(CREATE_DATE) BETWEEN TRUNC(SYSDATE-1) AND TRUNC(SYSDATE)'))
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(33384516930224089)
,p_max_row_count=>'1000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_description=>'Shows the logging out put for Cloning Stations'
,p_owner=>'DGRUGINS'
,p_internal_uid=>33384516930224089
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12345248870768983)
,p_db_column_name=>'MSG_DATA_SOURCE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Calling Program'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12345634535768984)
,p_db_column_name=>'SOURCE_PROCESS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Process'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12346084841768984)
,p_db_column_name=>'LOG_MESSAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Message'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12346498930768985)
,p_db_column_name=>'LOG_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Log Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12346869519768985)
,p_db_column_name=>'CREATE_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12347260990768986)
,p_db_column_name=>'LOG_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12347641789768986)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12348040633768986)
,p_db_column_name=>'USERNAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Username'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12344409770768982)
,p_db_column_name=>'MSG_SOURCE_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Msg Source Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12344881847768983)
,p_db_column_name=>'ROWNUM'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33437920895763282)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'123484'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWNUM:CREATE_DATE:LOG_MESSAGE:'
,p_sort_column_1=>'LOG_ID'
,p_sort_direction_1=>'DESC'
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
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(12349686156768988)
,p_report_id=>wwv_flow_api.id(33437920895763282)
,p_name=>'Errors'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'LOG_TYPE'
,p_operator=>'='
,p_expr=>'E'
,p_condition_sql=>' (case when ("LOG_TYPE" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''E''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_font_color=>'#AB2402'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(12348879658768988)
,p_report_id=>wwv_flow_api.id(33437920895763282)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'LOG_TYPE'
,p_operator=>'in'
,p_expr=>'I,E,R'
,p_condition_sql=>'"LOG_TYPE" in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#, #APXWS_EXPR_VAL3#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''I, E, R''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(12349262099768988)
,p_report_id=>wwv_flow_api.id(33437920895763282)
,p_name=>'My Clones'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_expr_type=>'ROW'
,p_expr=>'C LIKE ''%'' ||  H ||  ''%'''
,p_condition_sql=>'"LOG_MESSAGE" LIKE ''%'' ||  "USERNAME" ||  ''%'''
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34145541808072213)
,p_plug_name=>'Gig Sheets Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32085425308731248)
,p_plug_name=>'Gig Sheets'
,p_parent_plug_id=>wwv_flow_api.id(34145541808072213)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>1
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Clone To Model</b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34442711831616106)
,p_name=>'Current Gig Sheets Relationships'
,p_parent_plug_id=>wwv_flow_api.id(32085425308731248)
,p_template=>wwv_flow_api.id(79418302368908457)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT (select sm.STATION_CODE || '' - '' || sm.STATION_NAME',
'          from qcis_station_master sm',
'         where sm.station_master_id =  g.station_id) STATION,',
'       (select s.SUBSTATION_CODE || '' - '' || s.SUBSTATION_NAME',
'          from qcis_substation s',
'         where s.substation_id = g.substation_id) SUBSTATION,',
'       g.GIG_SHEET_NAME,',
'       TO_CHAR(g.INACTIVE_DATE,''DD-MON-RRRR'') INACTIVE_DATE',
'  FROM bg_qcis.QCIS_GS_TEMPLATE_HEADER g',
' WHERE g.MODEL_ID = :P241_CLONE_TO_MODEL_ID',
'   AND g.PLANT_ID = :P241_PLANT_ID'))
,p_display_condition_type=>'NEVER'
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br></br>',
'<div style="font-size: 14px; color: steelblue"><b>Current Gig Sheet Relationships</b></div> '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P241_CLONE_TO_MODEL_ID,P241_PLANT_ID'
,p_query_row_template=>wwv_flow_api.id(79435738730908493)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12343769560768979)
,p_query_column_id=>1
,p_column_alias=>'STATION'
,p_column_display_sequence=>1
,p_column_heading=>'Station'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10472791354458631)
,p_query_column_id=>2
,p_column_alias=>'SUBSTATION'
,p_column_display_sequence=>3
,p_column_heading=>'Substation'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10472835778458632)
,p_query_column_id=>3
,p_column_alias=>'GIG_SHEET_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Gig Sheet Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12342982321768978)
,p_query_column_id=>4
,p_column_alias=>'INACTIVE_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Inactive Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34145646212072214)
,p_plug_name=>'Clone Gig Sheets Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Clone From Model</b></div> '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34208978923493480)
,p_plug_name=>'Clone Gig Sheets'
,p_parent_plug_id=>wwv_flow_api.id(34145646212072214)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12352121931768991)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23568066143485446)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'title="Cancel any unsaved changes and close window."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12352535796768992)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23568066143485446)
,p_button_name=>'CLONE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clone'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create Gig Sheet(s) from a model to another model"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12356992245769013)
,p_branch_name=>'Go To Page 241'
,p_branch_action=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.:RP:P241_CLONE_TO_MODEL_ID,P241_CLONE_FROM_MODEL_ID,P241_CLONE_FROM_MODEL_YEAR:&P241_CLONE_TO_MODEL_ID.,&P241_CLONE_FROM_MODEL_ID.,&P241_CLONE_FROM_MODEL_YEAR.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(12352535796768992)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10472962217458633)
,p_name=>'P241_INCLUDE_VAR_DATA'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(34145646212072214)
,p_item_default=>'Y'
,p_prompt=>'Include Var Data?'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_read_only_when=>'P241_CLONE_FROM_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12339497937768969)
,p_name=>'P241_PLANT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32085425308731248)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RETURN :G_DEFAULT_PLANT_ID;',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Plant'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12339826336768971)
,p_name=>'P241_PLANT_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32085425308731248)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'RETURN :G_DEFAULT_LOC_CODE;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12340286499768971)
,p_name=>'P241_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(32085425308731248)
,p_item_default=>'TO_NUMBER(TO_CHAR(SYSDATE,''YYYY''))'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) r FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 r',
'  FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P241_CLONE_FROM_MODEL_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12340663200768972)
,p_name=>'P241_CLONE_TO_MODEL_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(32085425308731248)
,p_prompt=>'Clone To Model'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_NAME display_value, MODEL_MASTER_ID return_value ',
'  from bg_qcis.QCIS_MODEL_MASTER ',
'where INACTIVE_DATE IS NULL',
'  and MODEL_MASTER_ID <> :p241_CLONE_FROM_MODEL_ID',
'  and MODEL_YEAR = :P241_MODEL_YEAR',
'  and PLANT_ID = :P241_PLANT_ID',
'order by 1'))
,p_lov_cascade_parent_items=>'P241_CLONE_FROM_MODEL_ID,P241_MODEL_YEAR'
,p_ajax_items_to_submit=>'P241_CLONE_FROM_MODEL_ID,P241_MODEL_YEAR,P241_PLANT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12341003154768972)
,p_name=>'P241_PARENT_STATION_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(32085425308731248)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12341441044768973)
,p_name=>'P241_STATION_MASTER_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(32085425308731248)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12341888486768973)
,p_name=>'P241_STATION_MASTER_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(32085425308731248)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12342206241768974)
,p_name=>'P241_SUBSTATION_MASTER_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(32085425308731248)
,p_use_cache_before_default=>'NO'
,p_source=>'SUBSTATION_MASTER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12350375334768989)
,p_name=>'P241_CLONE_FROM_MODEL_YEAR'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(34145646212072214)
,p_item_default=>'TO_NUMBER(TO_CHAR(SYSDATE,''YYYY''))'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Model Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 2 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) - 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) r FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 1 r',
'  FROM DUAL',
'UNION ALL',
'SELECT TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 d, TO_NUMBER (TO_CHAR (SYSDATE, ''YYYY'')) + 2 r',
'  FROM DUAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12350719268768990)
,p_name=>'P241_CLONE_FROM_MODEL_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(34145646212072214)
,p_prompt=>'Clone From Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_NAME display_value, MODEL_MASTER_ID return_value ',
'  from bg_qcis.QCIS_MODEL_MASTER ',
'where INACTIVE_DATE IS NULL',
'  and MODEL_YEAR = :P241_CLONE_FROM_MODEL_YEAR',
'  and PLANT_ID = :P241_PLANT_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P241_PLANT_ID,P241_CLONE_FROM_MODEL_YEAR'
,p_ajax_items_to_submit=>'P241_CLONE_FROM_MODEL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445958347908537)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12351407244768991)
,p_name=>'P241_CLONE_GIG_SHEET_TEMPLATE_HEADER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(34208978923493480)
,p_prompt=>'Available Clone From Gig Sheets'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT    sm.STATION_CODE',
'         || '' - ''',
'         || sm.STATION_NAME',
'         || '' / ''',
'         || s.SUBSTATION_CODE',
'         || '' - ''',
'         || s.SUBSTATION_NAME',
'         || '' / ''',
'         || g.GIG_SHEET_NAME',
'            d,',
'         g.header_id r',
'    FROM QCIS_GS_TEMPLATE_HEADER g',
'         JOIN qcis_station_master sm ON sm.station_master_id = g.station_id',
'         JOIN qcis_substation s ON s.substation_id = g.substation_id',
'   WHERE     g.MODEL_ID = :P241_CLONE_FROM_MODEL_ID',
'         AND g.PLANT_ID = :P241_PLANT_ID',
'--         AND NOT EXISTS',
'--                (SELECT ''Y''',
'--                   FROM qcis_gs_template_header gn',
'--                        JOIN qcis_station_master smn',
'--                           ON smn.station_master_id = gn.station_id',
'--                        JOIN qcis_substation sn',
'--                           ON sn.substation_id = gn.substation_id',
'--                                                       -- cloned from RecBoatGrp(1)/TL(107)/SR(66)/2019-DA320(9196) /320 SUNDANCER I/O',
'--                  WHERE     gn.model_id = :p241_clone_to_model_id  -- RecBoatGrp(1)/TL(107)/SR(66)/2020-DA350(10808)/SEA RAY SUNDANCER 350',
'--                        AND gn.plant_id = :p241_plant_id',
'--                        AND smn.station_code = sm.station_code',
'--                        AND sn.substation_code = s.substation_code)',
'ORDER BY TO_NUMBER (sm.STATION_CODE)',
''))
,p_lov_cascade_parent_items=>'P241_CLONE_FROM_MODEL_ID'
,p_ajax_items_to_submit=>'P241_CLONE_FROM_MODEL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12355923599769011)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12352121931768991)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12356433370769012)
,p_event_id=>wwv_flow_api.id(12355923599769011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12354563586769010)
,p_name=>'Refresh Gig Sheet Template List'
,p_event_sequence=>35
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_CLONE_TO_MODEL_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12355007289769010)
,p_event_id=>wwv_flow_api.id(12354563586769010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(34442711831616106)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12355586971769011)
,p_event_id=>wwv_flow_api.id(12354563586769010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(34442711831616106)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12353638551769007)
,p_name=>'Hide Station Relationship List'
,p_event_sequence=>45
,p_condition_element=>'P241_CLONE_TO_MODEL_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12354135732769008)
,p_event_id=>wwv_flow_api.id(12353638551769007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(34442711831616106)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12353259076769006)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clone Gig Sheet'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_from_gig_sheet   apex_application_global.vc_arr2;',
'    v_to_model_id      apex_application_global.vc_arr2;',
'    v_out_err_msg      VARCHAR2 (500);',
'    v_station_id       NUMBER;',
'    v_substation_id    NUMBER;',
'    v_status_code      VARCHAR2(1) := ''A'';',
'    v_include_gig_sheets VARCHAR2(1) := ''Y'';',
'    v_message          VARCHAR2(500);',
'BEGIN',
'    v_from_gig_sheet := APEX_UTIL.string_to_table (:p241_clone_gig_sheet_template_header_id);',
'    v_to_model_id := APEX_UTIL.string_to_table (:P241_clone_to_model_id);',
'',
'    FOR i IN 1 .. v_from_gig_sheet.COUNT',
'    LOOP',
'        select station_id, substation_id',
'          into v_station_id, v_substation_id',
'          from qcis_gs_template_header',
'         where header_id = v_from_gig_sheet(i);',
'        select '':P241_clone_from_model_id: ''||:P241_clone_from_model_id||'' v_station_id: ''||v_station_id||'' v_substation_id: ''||v_substation_id||'' v_status_code: ''||v_status_code||',
'                     '' :app_user: ''||:app_user||'' :P241_include_var_data: ''||:P241_include_var_data||'' v_include_gig_sheets: ''||v_include_gig_sheets||'' :P241_clone_to_model_id: ''||:P241_clone_to_model_id',
'          into V_MESSAGE',
'          from dual;',
'',
'        INSERT INTO QCIS_MSG_LOG (MSG_DATA_SOURCE, MSG_SOURCE_ID, SOURCE_PROCESS, LOG_MESSAGE, LOG_TYPE)',
'                          VALUES (''QC2_APP_CLONE_GIG_SHEETS'', 2032241, ''CLONE_TEMPLATE_DETAIL'', V_MESSAGE, ''I'');',
'       v_message := QC2_CLONING_UTILITIES.clone_template_detail (:P241_clone_from_model_id,',
'                                                      v_station_id,',
'                                                      v_substation_id,',
'                                                      v_status_code,',
'                                                      :app_user,',
'                                                      :P241_include_var_data,',
'                                                      v_include_gig_sheets,',
'                                                      v_to_model_id);',
'        INSERT INTO QCIS_MSG_LOG (MSG_DATA_SOURCE, MSG_SOURCE_ID, SOURCE_PROCESS, LOG_MESSAGE, LOG_TYPE)',
'                          VALUES (''QC2_APP_CLONE_GIG_SHEETS'', 2032241, ''CLONE_TEMPLATE_DETAIL'', V_MESSAGE, ''I'');',
'    END LOOP;',
'END;'))
,p_process_error_message=>'Error in Creating QC Gig Sheet - #SQLERRM# '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12352535796768992)
,p_process_success_message=>'QC Gig Sheet Created'
);
end;
/
