prompt --application/pages/page_00067
begin
wwv_flow_api.create_page(
 p_id=>67
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Var Data Inspections'
,p_alias=>'VD_INSPECTIONS'
,p_step_title=>'Var Data Inspections'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'function Print(){document.body.offsetHeight;window.print()}',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'10/23/17 - J Johnson - Get mandatory flag from vdd...not vde.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190926172557'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8871281782774906)
,p_plug_name=>'Variable Data'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select vdd.var_data_detail_id,',
'       vdd.sequence_number,',
'       vdd.sample_number,',
'       vde.element_name,',
'       vde.acc_group,',
'       vde.accessory,',
'       vdd.mandatory_flag,',
'       vdd.status,',
'       vdd.variable_data_value,',
'       vdd.header_id,',
'       vde.help_link,',
'       vdd.comments',
'  from qcis_var_data_detail    vdd,',
'       qcis_var_data_elements  vde',
' where vdd.header_id = :P67_HEADER_ID',
'   and vde.var_data_element_id = vdd.var_data_element_id',
'   and vde.where_collected_code in (''QCIS'',''BOTH'')'))
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
'<div style="font-size: 16px; color: steelblue"><b>Variable Data Inspection List</b></div> ',
'<br></br>'))
,p_plug_comment=>'10/23/17 - J Johnson - Get mandatory flag from vdd...not vde.'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3023122169620319)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:RP:P77_HEADER_ID,P77_VAR_DATA_DETAIL_ID:#HEADER_ID#,#VAR_DATA_DETAIL_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Edit Var Data Inspection Details."'
,p_owner=>'DGRUGINS'
,p_internal_uid=>3023122169620319
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3023252163620320)
,p_db_column_name=>'VAR_DATA_DETAIL_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Var Data Detail Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3023363654620321)
,p_db_column_name=>'SEQUENCE_NUMBER'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sequence Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3023437171620322)
,p_db_column_name=>'SAMPLE_NUMBER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sample Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3023545293620323)
,p_db_column_name=>'ELEMENT_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Element Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3023609757620324)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Acc Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3023730610620325)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3023866848620326)
,p_db_column_name=>'MANDATORY_FLAG'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Mandatory Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3023961102620327)
,p_db_column_name=>'STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3024081866620328)
,p_db_column_name=>'VARIABLE_DATA_VALUE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Variable Data Value'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3024154443620329)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3024272506620330)
,p_db_column_name=>'HELP_LINK'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Help Link'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3024301862620331)
,p_db_column_name=>'COMMENTS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3212439510269836)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'32125'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQUENCE_NUMBER:SAMPLE_NUMBER:ELEMENT_NAME:MANDATORY_FLAG:STATUS:VARIABLE_DATA_VALUE:HELP_LINK:COMMENTS:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9399972754142938)
,p_plug_name=>'Inspection Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<div style="font-size: 16px; color: steelblue"><b>Inspection Details</b></div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10475456779016914)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170812932927150134)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3243750450683228)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(170812932927150134)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:&G_CALLING_PAGE.:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'title="Back Inspection List Page"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3244507949683229)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(170812932927150134)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4215915619106226)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(170812932927150134)
,p_button_name=>'REDTAG'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Red Tag'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:RP:P128_BOAT_STATUS,P128_ORDER_NUMBER,P128_BOAT_MASTER_ID,P128_PAGE_BACK_TO:&P69_BOAT_STATUS.,&P69_ORDER_NUMBER.,&P69_BOAT_MASTER_ID.,IM_PM_INSPECTIONS'
,p_button_condition=>':P67_BOAT_STATUS = ''P'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-tag'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4217236913109801)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(170812932927150134)
,p_button_name=>'GREENTAG'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Green Tag'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:RP:P128_BOAT_STATUS,P128_ORDER_NUMBER,P128_BOAT_MASTER_ID,P128_PAGE_BACK_TO:&P69_BOAT_STATUS.,&P69_ORDER_NUMBER.,&P69_BOAT_MSTER_ID.,IM_PM_INSPECTIONS'
,p_button_condition=>':P69_DYNAMIC_TAG = ''Green'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-tag'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3244976523683229)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(170812932927150134)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Print'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:Print();'
,p_button_condition=>'P67_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-print'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3162204242004215)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9399972754142938)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Return to Previous Page'
,p_button_position=>'REGION_TEMPLATE_COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3024433110620332)
,p_name=>'P67_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS_INSPECTIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select keyword_value d, keyword_code r',
'from   qcis_keywords',
'where keyword_type=''Status_Inspections''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3162698839004216)
,p_name=>'P67_DIVISION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3163071727004217)
,p_name=>'P67_BRAND'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3163477411004217)
,p_name=>'P67_PLANT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3163816565004217)
,p_name=>'P67_HEADER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3164287382004218)
,p_name=>'P67_SEQUENCE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3164636181004218)
,p_name=>'P67_MODEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3165066959004218)
,p_name=>'P67_HULL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_prompt=>'Hull'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3165494001004218)
,p_name=>'P67_HIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_use_cache_before_default=>'NO'
,p_prompt=>'HIN'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OHP.OHHIN from opdta.opohp@obms OHP ',
'where OHP.OHORD = :P67_ORDER_NUMBER'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3165840357004219)
,p_name=>'P67_ORDER_NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_prompt=>'Order Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3166228936004219)
,p_name=>'P67_INSPECTION_NAME'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspection'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select insp.INSPECTION_NAME from bg_qcis.qcis_inspection_names insp, bg_qcis.qcis_inspection_header ih',
'where insp.inspect_name_id = ih.inspect_name_id and',
'      ih.header_id = :P67_HEADER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3166604925004219)
,p_name=>'P67_GROUP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3167088887004220)
,p_name=>'P67_ACCESSORY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3167495625004220)
,p_name=>'P67_STATION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_prompt=>'Station '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3167854549004220)
,p_name=>'P67_SUBSTATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_prompt=>'Substation'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3168504721004221)
,p_name=>'P67_LAST_UPDATE_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(10475456779016914)
,p_prompt=>'Update Date'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'MM/DD/YYYY HH:MI PM'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3168972797004222)
,p_name=>'P67_LAST_UPDATED_BY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(10475456779016914)
,p_prompt=>'Updated By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3169380533004222)
,p_name=>'P67_CREATION_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(10475456779016914)
,p_prompt=>'Create Date'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'MM/DD/YYYY HH:MI PM'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3169714135004222)
,p_name=>'P67_CREATED_BY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(10475456779016914)
,p_prompt=>'Created By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3186567800105660)
,p_name=>'P67_RESPONSIBLE_AREA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_prompt=>'Responsible Area'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3187866336131537)
,p_name=>'P67_MANDATORY_YN'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_prompt=>'Mandatory'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3188152434165964)
,p_name=>'P67_INSPECT_NAME_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_prompt=>'Inspector'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4218904503125802)
,p_name=>'P67_MODEL_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4225084542130381)
,p_name=>'P67_BOAT_STATUS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4227443552148216)
,p_name=>'P67_DYNAMIC_TAG'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4228117295151360)
,p_name=>'P67_TAG_TYPE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(9399972754142938)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4225334501139217)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Tag Info Boat Master'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT CASE',
'           WHEN bmast.boat_status = ''P''',
'           THEN',
'               ''<span class = "fa fa-tag fa-1x" </span>''',
'             WHEN bmast.boat_status = ''F'' AND bmast.green_tag_date IS NOT NULL',
'                  THEN',
'                      ''<span class = "fa fa-tag fa-1x" </span>''     ',
'           ELSE',
'               NULL',
'       END',
'           AS "TAG",',
'       CASE WHEN bmast.boat_status = ''P'' THEN ''Red'' ',
'            WHEN bmast.boat_status = ''F'' AND bmast.green_tag_date IS NOT NULL  THEN ''Green'' ',
'            ELSE ''Black'' END',
'           AS "DynamicTag",',
'       bmast.BOAT_STATUS,',
'       bmast.BOAT_MASTER_ID',
'  INTO :P69_TAG_TYPE, :P69_DYNAMIC_TAG, :P69_BOAT_STATUS, :P69_BOAT_MASTER_ID',
'  FROM bg_qcis.QCIS_BOAT_MASTER_UNION_INSP_VW bmast',
' WHERE     bmast.plant_id = :G_DEFAULT_PLANT_ID',
'       AND bmast.model_id = :P69_MODEL_ID',
'       AND bmast.hull_number = :P69_HULL_NUMBER',
'       AND EXISTS',
'               (SELECT 1',
'                  FROM bg_qcis.QCIS_MODEL_MASTER m',
'                 WHERE     m.MODEL_MASTER_ID = bmast.model_id',
'                       AND m.INACTIVE_DATE IS NULL);',
'           ',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN NULL;',
'   ',
'END;',
'                       '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3170195277004224)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Header Items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'BEGIN',
'',
'  Begin',
'      Select dm.division_code || '' - '' || dm.division_name,',
'             bm.brand_code || '' - '' || bm.brand_name,',
'             pm.plant_code || '' - '' || pm.plant_name,',
'             mm.model_year || '' - '' || mm.model_name,',
'             sm.station_code || '' - '' || sm.station_name,',
'             ss.substation_code || '' - '' || ss.substation_name,',
'             ih.sequence_nbr,',
'             ih.acc_group,',
'             ih.accessory,',
'             ih.hull_number,',
'             ih.order_number,',
'             ih.last_update_date,',
'             ih.last_updated_by,',
'             ih.creation_date,',
'             ih.created_by,',
'             ih.INSPECT_NAME_ID,',
'             ih.RESPONSIBLE_AREA,',
'             ih.MANDATORY_YN,',
'             ih.STATUS,',
'             mm.model_master_id',
'        into :P67_DIVISION,',
'             :P67_BRAND,',
'             :P67_PLANT,',
'             :P67_MODEL,',
'             :P67_STATION,',
'             :P67_SUBSTATION,',
'             :P67_SEQUENCE,',
'             :P67_GROUP,',
'             :P67_ACCESSORY,',
'             :P67_HULL,',
'             :P67_ORDER_NUMBER,',
'             :P67_LAST_UPDATE_DATE,',
'             :P67_LAST_UPDATED_BY,',
'             :P67_CREATION_DATE,',
'             :P67_CREATED_BY,',
'             :P67_INSPECT_NAME_ID,',
'             :P67_RESPONSIBLE_AREA,',
'             :P67_MANDATORY_YN,',
'             :P67_STATUS,',
'             :P67_MODEL_ID',
'        from qcis_inspection_header ih,',
'             qcis_division_master   dm,',
'             qcis_brand_master      bm,',
'             qcis_plant_master      pm,',
'             qcis_model_master      mm,',
'             qcis_station_master    sm,',
'             qcis_substation        ss',
'       where ih.header_id = :P67_HEADER_ID',
'         and dm.qcis_division_master_id = ih.division_id',
'         and bm.qcis_brand_master_id = ih.brand_id',
'         and pm.qcis_plant_master_id = ih.plant_id',
'         and mm.model_master_id = ih.model_id',
'         and sm.station_master_id = ih.station_id',
'         and ss.substation_id = ih.substation_id;',
'    Exception',
'      When Others then',
'        :P67_DIVISION := NULL;',
'  End;',
'',
'',
'--  :P67_DIVISION := ''Argh'';',
'',
'END;'))
);
end;
/
