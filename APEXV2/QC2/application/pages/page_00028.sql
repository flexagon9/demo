prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Set Rack Date'
,p_alias=>'SET_RACK_DATE'
,p_step_title=>'Set Rack Date'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
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
,p_last_upd_yyyymmddhh24miss=>'20190919181216'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2495494086711016)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13273092837668777)
,p_plug_name=>'Finished Boats'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_ITEM.checkbox (1, boat_master_id)    id_chkbx,',
'       CASE',
'           WHEN bm.boat_status = ''P''',
'           THEN',
'               ''<span class = "fa fa-tag fa-1x" </span>''',
'		    WHEN bm.boat_status = ''F'' AND bm.green_tag_date IS NOT NULL',
'           THEN',
'               ''<span class = "fa fa-tag fa-1x" </span>''    ',
'		   ELSE NULL',
'       END',
'        AS "TAG",',
'       bm.boat_master_id,',
'       bm.plant_code,',
'       bm.model_year,',
'       bm.model_name,',
'       bm.hull_number,',
'       bm.hin,',
'       bm.order_number,',
'       bm.boat_status,',
'       bm.rack_date,',
'       bm.racked_by,',
'       bm.green_tag_date,',
'       bm.green_tagged_by,',
'       bm.ship_date,',
'       bm.shipped_by,',
'       bm.comments CommentString,',
'       CASE',
'           WHEN bm.boat_status = ''P''',
'           THEN',
'               ''Red''',
'           WHEN bm.boat_status = ''F'' AND bm.green_tag_date IS NOT NULL',
'           THEN',
'               ''Green''',
'           ELSE',
'               ''Black''',
'       END                                       AS "DynamicTag"',
'  FROM qcis_boat_master bm, bg_qcis.QCIS_MODEL_MASTER m',
' WHERE bm.MODEL_ID = m.MODEL_MASTER_ID ',
'   AND m.INACTIVE_DATE IS NULL  ',
'   AND (bm.boat_status = ''P'' OR bm.boat_status = ''F'')',
'       AND bm.plant_id = :G_DEFAULT_PLANT_ID'))
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Set Rack Date</b></div> ',
'<br></br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2219408253109107)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>2219408253109107
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2219575513109108)
,p_db_column_name=>'ID_CHKBX'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>' Select'
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
 p_id=>wwv_flow_api.id(2219665575109109)
,p_db_column_name=>'BOAT_MASTER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Boat Master Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2219728623109110)
,p_db_column_name=>'PLANT_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Plant Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2219849092109111)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Model Year'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#MODEL_YEAR#</span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2219972940109112)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Model Name'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#MODEL_NAME#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2220028535109113)
,p_db_column_name=>'HULL_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Hull Number'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#HULL_NUMBER#</span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2220109559109114)
,p_db_column_name=>'HIN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'HIN'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#HIN#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2220205809109115)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Order Number'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#ORDER_NUMBER#</span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2220302472109116)
,p_db_column_name=>'BOAT_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Boat Status'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#BOAT_STATUS#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2220438130109117)
,p_db_column_name=>'RACK_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Rack Date'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#RACK_DATE#</span>'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2220596168109118)
,p_db_column_name=>'RACKED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Racked By'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#RACKED_BY#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2220610096109119)
,p_db_column_name=>'GREEN_TAG_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Green Tag Date'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#GREEN_TAG_DATE#</span>'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2220772540109120)
,p_db_column_name=>'GREEN_TAGGED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Green Tagged By'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#GREEN_TAGGED_BY#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2220852491109121)
,p_db_column_name=>'SHIP_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ship Date'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#SHIP_DATE#</span>'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2220945558109122)
,p_db_column_name=>'SHIPPED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Shipped By'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#SHIPPED_BY#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2221049462109123)
,p_db_column_name=>'COMMENTSTRING'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Comments'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#COMMENTSTRING#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2221101022109124)
,p_db_column_name=>'DynamicTag'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Dynamictag'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2221228072109125)
,p_db_column_name=>'TAG'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tag Type'
,p_column_link=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:RP:P128_BOAT_MASTER_ID,P128_BOAT_STATUS,P128_ORDER_NUMBER,P128_PAGE_BACK_TO:#BOAT_MASTER_ID#,#BOAT_STATUS#,#ORDER_NUMBER#,SET_RACK_DATE'
,p_column_linktext=>'<span style="color:#DynamicTag#">#TAG#</span>'
,p_column_link_attr=>'title="View #DynamicTag# Tag Report."'
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
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2361655299998140)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'23617'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MODEL_YEAR:MODEL_NAME:ID_CHKBX:TAG:HULL_NUMBER:HIN:ORDER_NUMBER:BOAT_STATUS:RACK_DATE:SHIP_DATE:SHIPPED_BY:COMMENTSTRING'
,p_sort_column_1=>'MODEL_YEAR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MODEL_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'HULL_NUMBER'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'MODEL_YEAR:MODEL_NAME:0:0:0:0'
,p_break_enabled_on=>'MODEL_YEAR:MODEL_NAME:0:0:0:0'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2495502227711017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2495494086711016)
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
 p_id=>wwv_flow_api.id(2333277313926005)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13273092837668777)
,p_button_name=>'RACKED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rack'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-check-square-o'
,p_button_cattributes=>'title="Mark as Racked."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2333667256926005)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13273092837668777)
,p_button_name=>'UNRACKED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Un-Rack'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-remove'
,p_button_cattributes=>'title="Unrack the Boat."'
,p_grid_new_grid=>false
,p_security_scheme=>wwv_flow_api.id(10119556150920001)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2334034709926005)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(13273092837668777)
,p_button_name=>'GREEN_TAG'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Tag it'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-tag'
,p_button_cattributes=>'title="Gren Tag the Boat."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2341466187926014)
,p_branch_name=>'Go To Page 70'
,p_branch_action=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2339582358926011)
,p_name=>'Update initial plant search in session state'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2340079423926013)
,p_event_id=>wwv_flow_api.id(2339582358926011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :p28_plant_search is null then',
'select :p0_users_plant_id',
'  into :p28_plant_search',
'  from dual;',
'  end if;',
'end;'))
,p_attribute_02=>'P0_USERS_PLANT_ID'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2340467398926013)
,p_name=>'Message Box Fade'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2340946567926013)
,p_event_id=>wwv_flow_api.id(2340467398926013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() { ',
'        $(''.t-Alert'').fadeOut(''slow'');  ',
'      }, 3000);',
''))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2337920295926010)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RACKED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_BOAT_MASTER',
'    SET RACK_DATE = SYSDATE, ',
'    RACKED_BY = :APP_USER, ',
'    LAST_UPDATE_DATE = SYSDATE, ',
'    LAST_UPDATED_BY = :APP_USER',
'    WHERE BOAT_MASTER_ID = TO_NUMBER(Apex_Application.g_f01(i)) ',
'    and RACK_DATE IS NULL;      ',
'  END LOOP;'))
,p_process_error_message=>'Error marking boats racked.'
,p_process_when_button_id=>wwv_flow_api.id(10948507100742812)
,p_process_success_message=>'Boat(s) marked as racked.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2338704964926011)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UNRACKED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_BOAT_MASTER',
'    SET RACK_DATE = NULL, ',
'    RACKED_BY = NULL, ',
'    LAST_UPDATE_DATE = SYSDATE, ',
'    LAST_UPDATED_BY = :APP_USER',
'    WHERE BOAT_MASTER_ID = TO_NUMBER(Apex_Application.g_f01(i)) ',
'    and RACK_DATE IS NOT NULL;      ',
'  END LOOP;'))
,p_process_error_message=>'Error marking boats racked.'
,p_process_when_button_id=>wwv_flow_api.id(163663208357210714)
,p_process_success_message=>'Boat(s) marked as racked.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2338370985926010)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GREEN TAG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_BOAT_MASTER',
'    SET GREEN_TAG_DATE = SYSDATE, ',
'    GREEN_TAGGED_BY = :APP_USER, ',
'    RACK_DATE = case when rack_date is null then sysdate',
'    else rack_date',
'    end,',
'    RACKED_BY = case when racked_by is null then :APP_USER',
'    else racked_by',
'    end,',
'    LAST_UPDATE_DATE = SYSDATE, ',
'    LAST_UPDATED_BY = :APP_USER',
'    WHERE BOAT_MASTER_ID = TO_NUMBER(Apex_Application.g_f01(i)) ',
'    and GREEN_TAG_DATE IS NULL',
'    and BOAT_STATUS = ''F'';      ',
'  END LOOP;'))
,p_process_error_message=>'Error marking boats as green tagged.'
,p_process_when_button_id=>wwv_flow_api.id(2334034709926005)
,p_process_success_message=>'Boat(s) marked as green tagged.'
);
end;
/
