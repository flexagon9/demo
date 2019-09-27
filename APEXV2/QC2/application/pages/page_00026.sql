prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Customer Support Report'
,p_step_title=>'Customer Support Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(81618079231725991)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190903143241'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26494829413921419)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35317857631247326)
,p_plug_name=>'Customer Support Data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>30
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select pm.plant_name,',
'       br.brand_code,',
'       br.brand_name,',
'       bm.model_year,',
'       bm.model_name,',
'       bm.hull_number,',
'       vde.element_name,',
'       vde.description,',
'       vde.customer_share_flag,',
'       ih.inspection_type,',
'       vdd.variable_data_value,',
'       vdd.brand_value product_brand,',
'       vdd.model_value product_model,',
'       vdd.replacement_flag,',
'       vdd.sample_number,',
'       vdd.unit_of_measure,',
'       vdd.comments',
'  from qcis_boat_master    	bm,',
'       qcis_brand_master        br,',
'       qcis_inspection_header  	ih,',
'       qcis_var_data_detail	vdd,',
'       qcis_var_data_elements	vde,',
'       qcis_plant_master        pm',
' where bm.boat_master_id = :P26_BOAT_MASTER_ID',
'   and br.qcis_brand_master_id = bm.brand_id',
'   and ih.plant_id = pm.QCIS_PLANT_MASTER_ID',
'   and ih.plant_id = bm.plant_id',
'   and ih.division_id = bm.division_id',
'   and ih.brand_id = bm.brand_id',
'   and ih.model_id = bm.model_id',
'   and ih.hull_number = bm.hull_number',
'   and ih.inspection_type = ''V''',
'   and vdd.header_id = ih.header_id',
'   and vde.var_data_element_id = vdd.var_data_element_id',
'   and vde.customer_share_flag = ''Y''',
'UNION',
'Select pm.plant_name,',
'       br.brand_code,',
'       br.brand_name,',
'       bm.model_year,',
'       bm.model_name,',
'       bm.hull_number,',
'       vde.element_name,',
'       vde.description,',
'       vde.customer_share_flag,',
'       ih.inspection_type,',
'       vdd.variable_data_value,',
'       vdd.brand_value product_brand,',
'       vdd.model_value product_model,',
'       vdd.replacement_flag,',
'       vdd.sample_number,',
'       vdd.unit_of_measure,',
'       vdd.comments',
'  from qcis_boat_master_HIST    	bm,',
'       qcis_brand_master        br,',
'       qcis_inspection_header_HIST  	ih,',
'       qcis_var_data_detail_HIST	vdd,',
'       qcis_var_data_elements	vde,',
'       qcis_plant_master        pm',
' where bm.boat_master_id = :P26_BOAT_MASTER_ID',
'   and br.qcis_brand_master_id = bm.brand_id',
'   and ih.plant_id = pm.QCIS_PLANT_MASTER_ID',
'   and ih.plant_id = bm.plant_id',
'   and ih.division_id = bm.division_id',
'   and ih.brand_id = bm.brand_id',
'   and ih.model_id = bm.model_id',
'   and ih.hull_number = bm.hull_number',
'   and ih.inspection_type = ''V''',
'   and vdd.header_id = ih.header_id',
'   and vde.var_data_element_id = vdd.var_data_element_id',
'   and vde.customer_share_flag = ''Y'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
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
,p_prn_header_font_color=>'#ffffff'
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
'<style type="text/css">',
'table.apexir_WORKSHEET_DATA td {white-space:nowrap;}',
'</style>',
''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(35317939055247326)
,p_name=>'Customer Support Data'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_save_rpt_public_auth_scheme=>wwv_flow_api.id(7933004857179818)
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_csv_output_separator=>','
,p_csv_output_enclosed_by=>'"'
,p_owner=>'JJOHNSON'
,p_internal_uid=>35317939055247326
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26640725741482742)
,p_db_column_name=>'BRAND_CODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Brand'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BRAND_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26641188367482744)
,p_db_column_name=>'BRAND_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Brand Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BRAND_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26641534593482744)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Model Year'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MODEL_YEAR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26641949178482745)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Model Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MODEL_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26642341835482745)
,p_db_column_name=>'HULL_NUMBER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Hull Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'HULL_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26642701268482746)
,p_db_column_name=>'ELEMENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'ELEMENT_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26643165729482747)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26643547948482747)
,p_db_column_name=>'VARIABLE_DATA_VALUE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>' Value'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'VARIABLE_DATA_VALUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26643960345482748)
,p_db_column_name=>'REPLACEMENT_FLAG'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Replacement?'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'REPLACEMENT_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26644303271482748)
,p_db_column_name=>'SAMPLE_NUMBER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Sample'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SAMPLE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26644729901482749)
,p_db_column_name=>'UNIT_OF_MEASURE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'UOM'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'UNIT_OF_MEASURE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26645177105482749)
,p_db_column_name=>'COMMENTS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26645596092482750)
,p_db_column_name=>'PRODUCT_BRAND'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Product Brand'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRODUCT_BRAND'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26645952748482751)
,p_db_column_name=>'PRODUCT_MODEL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Product Model'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRODUCT_MODEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26646395965482751)
,p_db_column_name=>'PLANT_NAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Plant Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PLANT_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26494614160921417)
,p_db_column_name=>'CUSTOMER_SHARE_FLAG'
,p_display_order=>25
,p_column_identifier=>'P'
,p_column_label=>'Customer Share Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26494797918921418)
,p_db_column_name=>'INSPECTION_TYPE'
,p_display_order=>35
,p_column_identifier=>'Q'
,p_column_label=>'Inspection Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(35319836170261094)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'266467'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'BRAND_CODE:MODEL_YEAR:MODEL_NAME:HULL_NUMBER:ELEMENT_NAME:DESCRIPTION:VARIABLE_DATA_VALUE:PRODUCT_BRAND:PRODUCT_MODEL:REPLACEMENT_FLAG:SAMPLE_NUMBER:UNIT_OF_MEASURE:COMMENTS:'
,p_break_on=>'BRAND_CODE:MODEL_YEAR:MODEL_NAME:HULL_NUMBER:0:0'
,p_break_enabled_on=>'BRAND_CODE:MODEL_YEAR:MODEL_NAME:HULL_NUMBER:0:0'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26651142933482761)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26494829413921419)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26651506561482762)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26494829413921419)
,p_button_name=>'PRINT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Customer Copy'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 7/24/2019 4:42:35 PM (QP5 v5.313) */',
'SELECT 1',
'  FROM qcis_boat_master        bm,',
'       qcis_brand_master       br,',
'       qcis_inspection_header  ih,',
'       qcis_var_data_detail    vdd,',
'       qcis_var_data_elements  vde',
' WHERE     bm.boat_master_id = :P26_BOAT_MASTER_ID',
'       AND br.qcis_brand_master_id = bm.brand_id',
'       AND ih.plant_id = bm.plant_id',
'       AND ih.division_id = bm.division_id',
'       AND ih.brand_id = bm.brand_id',
'       AND ih.model_id = bm.model_id',
'       AND ih.hull_number = bm.hull_number',
'       AND ih.inspection_type = ''V''',
'       AND vdd.header_id = ih.header_id',
'       AND vde.var_data_element_id = vdd.var_data_element_id',
'       AND vde.customer_share_flag = ''Y''',
'       AND NVL (vdd.replacement_flag, ''N'') = ''N''',
'       AND DECODE (vdd.variable_data_value, NULL, 0, 1) = 1',
'UNION ALL',
'SELECT 1',
'  FROM qcis_boat_master_HIST        bm,',
'       qcis_brand_master            br,',
'       qcis_inspection_header_HIST  ih,',
'       qcis_var_data_detail_HIST    vdd,',
'       qcis_var_data_elements       vde',
' WHERE     bm.boat_master_id = :P26_BOAT_MASTER_ID',
'       AND br.qcis_brand_master_id = bm.brand_id',
'       AND ih.plant_id = bm.plant_id',
'       AND ih.division_id = bm.division_id',
'       AND ih.brand_id = bm.brand_id',
'       AND ih.model_id = bm.model_id',
'       AND ih.hull_number = bm.hull_number',
'       AND ih.inspection_type = ''V''',
'       AND vdd.header_id = ih.header_id',
'       AND vde.var_data_element_id = vdd.var_data_element_id',
'       AND vde.customer_share_flag = ''Y''',
'       AND NVL (vdd.replacement_flag, ''N'') = ''N''',
'       AND DECODE (vdd.variable_data_value, NULL, 0, 1) = 1'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'TITLE="Click to Print Customer Copy."'
,p_icon_css_classes=>'fa-print'
,p_button_cattributes=>'title="Export a Customer Copy of the Component List"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26653123464482766)
,p_branch_name=>'Go To Page 0'
,p_branch_action=>'f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=CUSTOMER_COMPONENT_LIST:&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26651506561482762)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26652643792482763)
,p_name=>'P26_BOAT_MASTER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35317857631247326)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
end;
/
