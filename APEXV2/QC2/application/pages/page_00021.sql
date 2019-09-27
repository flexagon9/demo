prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'justatest'
,p_step_title=>'justatest'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript" src="#WORKSPACE_IMAGES#jquery.maphilight.min.js">',
'</script>',
'<script>',
'function Print(){document.body.offsetHeight;window.print()}',
'</script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function(){',
'  $(''img[usemap]'').maphilight({',
'    fillColor: ''ffffff'',',
'    strokeColor: ''ff0000'',',
'    strokeWidth: 1,',
'    alwaysOn: true',
'  })',
'',
'  var area = $(''#area-&P1_AREA_ID.'');',
'  if (area) {',
'    var data = area.data(''maphilight'') || {};',
'    data.alwaysOn = true;',
'    data.fillColor = ''000000'';',
'    data.strokeColor = ''000000'';',
'    area.data(''maphilight'', data).trigger(''alwaysOn.maphilight'');',
'  }',
'',
'});'))
,p_javascript_code_onload=>'$("#t_Alert_Success").addClass("mySuccess");'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.mySuccess {',
'position: absolute; ',
'top: 300px;',
'left: 20px;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190926153138'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11360545870751286)
,p_plug_name=>'Inspection Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11716252055507628)
,p_name=>'Defect Listing'
,p_parent_plug_id=>wwv_flow_api.id(11360545870751286)
,p_template=>wwv_flow_api.id(79418302368908457)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_item.checkbox (1,detail_id) cbox,',
'im.detail_id,',
'im.line_number, ',
'im.section_name,',
'(select cm.component_name from qcis_component_master cm where cm.component_id = im.component_id) component, ',
'dh.sub_com_desc||''-''||dh.commodity_desc com_code, ',
'dd.defect_description defect, ',
'im.status, ',
'im.repair_type, ',
'im.defect_category,',
'im.created_by,',
'im.creation_date,',
'im.responsible_area,',
'(select decode(count(*),0,NULL,count(*)) from qcis_defect_images di where di.detail_id=im.detail_id) images,',
'im.defect_comment,',
'im.rework_time',
'from qcis_im_detail im, qcis_defect_code_header dh, qcis_defect_code_detail dd ',
'where im.header_id = :P21_HEADER_ID and ',
'im.defect_hdr_id = dh.defect_code_header_id and',
'im.defect_id = dd.defect_code_detail_id and',
'im.responsible_area = NVL(:P21_RA_SEARCH, im.responsible_area)',
'order by im.line_number'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(79435738730908493)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4105328049360348)
,p_query_column_id=>1
,p_column_alias=>'CBOX'
,p_column_display_sequence=>1
,p_column_heading=>'<input type="checkbox" onclick="$f_CheckFirstColumn(this)" />'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4105753754360348)
,p_query_column_id=>2
,p_column_alias=>'DETAIL_ID'
,p_column_display_sequence=>2
,p_column_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::P15_DETAIL_ID:#DETAIL_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4106152901360348)
,p_query_column_id=>3
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>3
,p_column_heading=>'Line'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4106549664360349)
,p_query_column_id=>4
,p_column_alias=>'SECTION_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Cell'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4106999397360349)
,p_query_column_id=>5
,p_column_alias=>'COMPONENT'
,p_column_display_sequence=>5
,p_column_heading=>'Component'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4107313551360349)
,p_query_column_id=>6
,p_column_alias=>'COM_CODE'
,p_column_display_sequence=>16
,p_column_heading=>'Defect Classification'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4107711244360350)
,p_query_column_id=>7
,p_column_alias=>'DEFECT'
,p_column_display_sequence=>7
,p_column_heading=>'Defect'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4108115693360350)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>9
,p_column_heading=>'Status'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4108539089360350)
,p_query_column_id=>9
,p_column_alias=>'REPAIR_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Repair<BR>Type'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4108941500360351)
,p_query_column_id=>10
,p_column_alias=>'DEFECT_CATEGORY'
,p_column_display_sequence=>11
,p_column_heading=>'S/W'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4109366065360351)
,p_query_column_id=>11
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>13
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4109738496360351)
,p_query_column_id=>12
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>14
,p_column_heading=>'Failed<BR>Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4110195246360352)
,p_query_column_id=>13
,p_column_alias=>'RESPONSIBLE_AREA'
,p_column_display_sequence=>6
,p_column_heading=>'Responsible Area'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4110514273360352)
,p_query_column_id=>14
,p_column_alias=>'IMAGES'
,p_column_display_sequence=>15
,p_column_heading=>'Images'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4110983665360352)
,p_query_column_id=>15
,p_column_alias=>'DEFECT_COMMENT'
,p_column_display_sequence=>8
,p_column_heading=>'Defect Comment'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4111305626360353)
,p_query_column_id=>16
,p_column_alias=>'REWORK_TIME'
,p_column_display_sequence=>12
,p_column_heading=>'Rework<BR>Mins'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(142793053758818970)
,p_name=>'Defect Comments'
,p_parent_plug_id=>wwv_flow_api.id(11360545870751286)
,p_template=>wwv_flow_api.id(79418302368908457)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'im.detail_id,',
'im.line_number, ',
'im.section_name,',
'(select cm.component_name from qcis_component_master cm where cm.component_id = im.component_id) component, ',
'dd.defect_description defect, ',
'im.defect_comment,',
'im.responsible_area,',
'im.status',
'from qcis_im_detail im, qcis_defect_code_header dh, qcis_defect_code_detail dd ',
'where im.header_id = :P21_HEADER_ID and ',
'im.defect_hdr_id = dh.defect_code_header_id and',
'im.defect_id = dd.defect_code_detail_id and',
'im.responsible_area = NVL(:P21_RA_SEARCH, im.responsible_area)',
'order by im.line_number'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(79435738730908493)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4114880432360356)
,p_query_column_id=>1
,p_column_alias=>'DETAIL_ID'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::P15_DETAIL_ID:#DETAIL_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4115276071360356)
,p_query_column_id=>2
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Line'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4115639645360356)
,p_query_column_id=>3
,p_column_alias=>'SECTION_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Section'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4116016148360357)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT'
,p_column_display_sequence=>4
,p_column_heading=>'Component'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4116480047360357)
,p_query_column_id=>5
,p_column_alias=>'DEFECT'
,p_column_display_sequence=>5
,p_column_heading=>'Defect'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4116894299360357)
,p_query_column_id=>6
,p_column_alias=>'DEFECT_COMMENT'
,p_column_display_sequence=>6
,p_column_heading=>'Defect Comment'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4117298625360358)
,p_query_column_id=>7
,p_column_alias=>'RESPONSIBLE_AREA'
,p_column_display_sequence=>7
,p_column_heading=>'Responsible Area'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4117655822360358)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Status'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11369060923751340)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11376156691836892)
,p_plug_name=>'Pin/Image Map'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>2
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'',
'  FOR cursor IN (select HTML from bg_qcis.qcis_inspection_html where HEADER_ID = :P21_HEADER_ID order by LINE_NBR)',
'  LOOP  ',
'  htp.p(cursor.html);',
'end loop;',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4111715405360353)
,p_button_sequence=>560
,p_button_plug_id=>wwv_flow_api.id(11716252055507628)
,p_button_name=>'P21_RA_SEARCH_BTN'
,p_button_static_id=>'P19_RA_SEARCH_BTN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Search'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4112100173360353)
,p_button_sequence=>570
,p_button_plug_id=>wwv_flow_api.id(11716252055507628)
,p_button_name=>'P21_RA_SEARCH_RESET'
,p_button_static_id=>'P19_RA_SEARCH_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'RA_RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4112504080360353)
,p_button_sequence=>580
,p_button_plug_id=>wwv_flow_api.id(11716252055507628)
,p_button_name=>'P21_RA_SEARCH_CHANGE'
,p_button_static_id=>'P19_RA_SEARCH_CHANGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Change RA on Selected Rows'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'RA_CHANGE'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4095813135360340)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11360545870751286)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Return to Previous Page'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P21_RA_SEARCH:'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4096265584360340)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11360545870751286)
,p_button_name=>'INSPECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Begin Inspection'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4096694616360340)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(11360545870751286)
,p_button_name=>'INSPECTION_COMPLETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Inspection Complete'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>':P21_DETAIL_ROWS = 0 and (:P21_STATUS = ''I'' or :P21_STATUS =  ''N'')'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4097033344360341)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(11360545870751286)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Print'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'javascript:Print();'
,p_button_condition=>'P21_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4112933206360354)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11716252055507628)
,p_button_name=>'REPAIRED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Repaired'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4113396236360354)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(11716252055507628)
,p_button_name=>'REPAIR_NOT_NEEDED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Repair Not Needed'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4113776277360354)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(11716252055507628)
,p_button_name=>'SS_GOOD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'SS > Good'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4129566180360368)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(5775431493366128)
,p_branch_sequence=>30
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4129165193360368)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(7273530262391001)
,p_branch_sequence=>40
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4129932949360369)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8276708109509616)
,p_branch_sequence=>50
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4097411121360341)
,p_name=>'P21_DIVISION_ID'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Division:'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'DIVISION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4097802124360342)
,p_name=>'P21_BRAND_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Brand:'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'BRAND_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BRAND'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT BRAND_CODE||'' - ''||BRAND_NAME display_value, QCIS_BRAND_MASTER_ID return_value ',
'from QCIS_BRAND_MASTER',
'where INACTIVE_DATE IS NULL order by 1'))
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4098298913360342)
,p_name=>'P21_PLANT_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Plant:'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'PLANT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PLANT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4098656433360342)
,p_name=>'P21_SEQUENCE_NBR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Seq #:'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'SEQUENCE_NBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cAttributes=>'style="color: navy"'
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4099047062360342)
,p_name=>'P21_MODEL_ID'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:14px;color:NAVY">Model:</span>'
,p_source=>'MODEL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MODELS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODEL_YEAR||'' - ''||MODEL_NAME display_value, MODEL_MASTER_ID return_value ',
'from QCIS_MODEL_MASTER where INACTIVE_DATE IS NULL',
'order by 1'))
,p_cHeight=>1
,p_tag_attributes=>'style="font-size:14px;color: red"'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4099470668360343)
,p_name=>'P21_HULL_NUMBER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:14px;color:NAVY">Hull #:</span>'
,p_source=>'HULL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'style="font-size:14px;color: red"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4099821106360343)
,p_name=>'P21_HIN'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:14px;color:NAVY">HIN:</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OHP.OHHIN from opdta.opohp@obms OHP ',
'where OHP.OHORD = :P21_ORDER_NUMBER'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'style="font-size:14px;color: red"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4100219064360343)
,p_name=>'P21_ORDER_NUMBER'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:14px;color:NAVY">Order Number:</span>'
,p_source=>'ORDER_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'style="font-size:14px;color: red"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4100628537360344)
,p_name=>'P21_ACC_GROUP'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Group:'
,p_source=>'ACC_GROUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4101019392360344)
,p_name=>'P21_ACCESSORY'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Acc:'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'ACCESSORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4101413606360344)
,p_name=>'P21_STATION_ID'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Station:'
,p_source=>'STATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select station_code d, station_master_id r',
'from   qcis_station_master',
'order by 1'))
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4101825326360345)
,p_name=>'P21_SUBSTATION_ID'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Substation:'
,p_source=>'SUBSTATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SUBSTATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select substation_code d, substation_id r',
'from   qcis_substation',
'order by 1'))
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4102290505360345)
,p_name=>'P21_INSPECT_NAME_ID'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="font-size:15px;color:#0000A0">Inspection:</span>'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'INSPECT_NAME_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_tag_attributes=>'style="font-size:15px;color: red"'
,p_colspan=>5
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4102664389360345)
,p_name=>'P21_INSPECTOR_ID'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspector:'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'INSPECTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4103075926360346)
,p_name=>'P21_STATUS'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status:'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4103483169360346)
,p_name=>'P21_DEFECT_HEADER_ID'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defect Code:'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'DEFECT_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>5
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4103873173360346)
,p_name=>'P21_MANDATORY_YN'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mandatory:'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'MANDATORY_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4104287706360346)
,p_name=>'P21_EMAIL_ALERT_GROUP'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Alert Group:'
,p_source=>'EMAIL_ALERT_GROUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4104623950360347)
,p_name=>'P21_RESPONSIBLE_AREA'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(11360545870751286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:#0000A0">Responsible Area:</span>'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'RESPONSIBLE_AREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>100
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>5
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4114157325360355)
,p_name=>'P21_RA_SEARCH'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(11716252055507628)
,p_prompt=>'R/A Search:'
,p_source=>'P21_RA_SEARCH'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select responsible_area d, responsible_area r from qcis_resp_area_master ',
'where plant_id=:P21_PLANT_ID and inactive_date is NULL ',
'order by responsible_area'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4118399720360359)
,p_name=>'P21_LAST_UPDATE_DATE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(11369060923751340)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update Date:'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'MM/DD/YYYY HH:MI PM'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4118718857360359)
,p_name=>'P21_LAST_UPDATED_BY'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(11369060923751340)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Updated By:'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4119148015360360)
,p_name=>'P21_CREATION_DATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(11369060923751340)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date:'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'MM/DD/YYYY HH:MI PM'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4119594997360360)
,p_name=>'P21_CREATED_BY'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(11369060923751340)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By:'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4119960993360360)
,p_name=>'P21_HEADER_ID'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(11369060923751340)
,p_source=>'select 2539868 from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4120328367360361)
,p_name=>'P21_IM_TEMPLATE_ID'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(11369060923751340)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Template ID:'
,p_source=>'IM_TEMPLATE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4120775882360361)
,p_name=>'P21_DRAFT_ID'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(11369060923751340)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Draft ID:'
,p_source=>'select DRAFT_ID from qcis_im_template_header where HEADER_ID = :P21_IM_TEMPLATE_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_cAttributes=>'style="color: navy"'
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4121135955360361)
,p_name=>'P21_DETAIL_ROWS'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(11369060923751340)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Detail Rows'
,p_source=>'select count(*) from qcis_im_detail where header_id=:P21_HEADER_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4121931570360362)
,p_computation_sequence=>1
,p_computation_item=>'P18_DETAIL_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4122300159360362)
,p_computation_sequence=>11
,p_computation_item=>'P21_LAST_UPDATE_DATE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'to_char(sysdate,''MM/DD/YYYY HH12:MI'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4122783413360363)
,p_computation_sequence=>21
,p_computation_item=>'P21_LAST_UPDATED_BY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>':APP_USER'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(4123139833360363)
,p_validation_name=>'RA must be selected with changing the RA'
,p_validation_sequence=>10
,p_validation=>'P21_RA_SEARCH'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select a Responsible Area.  '
,p_when_button_pressed=>wwv_flow_api.id(4112504080360353)
,p_associated_item=>wwv_flow_api.id(4114157325360355)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4124274711360364)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_INSPECTION_HEADER'
,p_attribute_02=>'QCIS_INSPECTION_HEADER'
,p_attribute_03=>'P21_HEADER_ID'
,p_attribute_04=>'HEADER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4125441572360365)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  function get_pk return varchar2 ',
'  is ',
'  begin ',
'    for c1 in (select QCIS_INSPECT_HDR_SEQ.nextval next_val',
'               from dual)',
'    loop',
'        return c1.next_val;',
'    end loop;',
'  end; ',
'begin ',
'  :P21_HEADER_ID := get_pk; ',
'end; '))
,p_process_error_message=>'Unable to get primary key item value.'
,p_process_when_button_id=>wwv_flow_api.id(5775006275366128)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4124644830360364)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_INSPECTION_HEADER'
,p_attribute_02=>'QCIS_INSPECTION_HEADER'
,p_attribute_03=>'P21_HEADER_ID'
,p_attribute_04=>'HEADER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table QCIS_INSPECTION_HEADER.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4125841826360365)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update_HTML_Session'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- update both the session_id column and the session id in the URL with the current session id',
'Update qcis_draft_html ',
'set html = replace(html,SESSION_ID,:APP_SESSION), ',
'session_id = :APP_SESSION',
'where draft_id = :P21_DRAFT_ID;'))
,p_process_when_button_id=>wwv_flow_api.id(7284623269863788)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4126696669360366)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Repaired Button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_IM_DETAIL',
'    SET STATUS = ''R'', REPAIR_DATE = SYSDATE, REPAIR_USERNAME = :APP_USER, LAST_UPDATE_DATE = SYSDATE, LAST_UPDATED_BY = :APP_USER',
'    WHERE DETAIL_ID = TO_NUMBER(Apex_Application.g_f01(i)) and STATUS = ''O'' ;',
'',
'    -- call the procedure to change the color on the cell to green, if no more defects on the cell',
'    REPAIR_DEFECT_HTML(TO_NUMBER(Apex_Application.g_f01(i)), ''R'');',
'      ',
'  END LOOP;'))
,p_process_when_button_id=>wwv_flow_api.id(4112933206360354)
,p_process_success_message=>'Selected O - Outstanding Defect row(s) changed to R - Repaired.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4127096533360366)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Repair Not Needed Button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_IM_DETAIL',
'    SET STATUS = ''C'', GOOD_DATE = SYSDATE, GOOD_USERNAME = :APP_USER, LAST_UPDATE_DATE = SYSDATE, LAST_UPDATED_BY = :APP_USER',
'    WHERE DETAIL_ID = TO_NUMBER(Apex_Application.g_f01(i)) and (STATUS = ''O'') ;',
'',
'    -- call the procedure to change the color on the cell to green, if no more defects on the cell',
'    REPAIR_DEFECT_HTML(TO_NUMBER(Apex_Application.g_f01(i)), ''R'');',
'      ',
'  END LOOP;'))
,p_process_when_button_id=>wwv_flow_api.id(4113396236360354)
,p_process_success_message=>'Selected O - Outstanding Defect row(s) changed to C - Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4127446651360366)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SS to Good Button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_IM_DETAIL',
'    SET STATUS = ''C'', GOOD_DATE = SYSDATE, GOOD_USERNAME = :APP_USER, LAST_UPDATE_DATE = SYSDATE, LAST_UPDATED_BY = :APP_USER',
'    WHERE DETAIL_ID = TO_NUMBER(Apex_Application.g_f01(i)) and STATUS = ''S'' ;',
'',
'    -- call the procedure to change the color on the cell to green, if no more defects on the cell',
'    REPAIR_DEFECT_HTML(TO_NUMBER(Apex_Application.g_f01(i)), ''R'');',
'      ',
'  END LOOP;'))
,p_process_when_button_id=>wwv_flow_api.id(4113776277360354)
,p_process_success_message=>'Selected S - Short Stock row(s) changed to C - Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4127887723360367)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSPECTION COMPLETE'
,p_process_sql_clob=>'update qcis_inspection_header set status = ''C'' where header_id=:P21_HEADER_ID;'
,p_process_when_button_id=>wwv_flow_api.id(8276708109509616)
,p_process_success_message=>'Inspection Sheet marked Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4123841263360364)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Inspection Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'BEGIN',
'',
'  inspection_utilities.update_inspection_status (:P21_HEADER_ID);',
'',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4128685079360368)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change RA on Selected Rows'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_IM_DETAIL',
'    SET RESPONSIBLE_AREA = :P21_RA_SEARCH,  ',
'    LAST_UPDATE_DATE = SYSDATE, ',
'    LAST_UPDATED_BY = :APP_USER',
'    WHERE DETAIL_ID = TO_NUMBER(Apex_Application.g_f01(i));      ',
'  END LOOP;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(4112504080360353)
,p_process_success_message=>'RA on selected rows updated.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4128213640360367)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'RA_RESET'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P21_RA_SEARCH'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(4112100173360353)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4125088986360365)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page 17'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'17'
,p_process_when_button_id=>wwv_flow_api.id(7265619995390954)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4126217365360366)
,p_process_sequence=>110
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate HTML Session ID - OLD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- update both the session_id column and the session id in the URL with the current session id',
'',
'declare',
'  ',
'begin',
'',
'-- update both the session_id column and the session id in the URL with the current session id',
'Update qcis_inspection_html ',
'set html = replace(html,SESSION_ID,:APP_SESSION), ',
'session_id = :APP_SESSION',
'where header_id = :P21_HEADER_ID;',
'',
'end;'))
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4123446402360363)
,p_process_sequence=>1129
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate HTML Session ID - New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- update both the session_id column and the session id in the URL with the current session id',
'',
'DECLARE',
'   v_session_id   VARCHAR2 (500);',
'   v_error_msg    VARCHAR2 (500);',
'',
'   CURSOR c_get_html_code',
'   IS',
'      SELECT html_id,',
'             line_nbr,',
'             html',
'        FROM qcis_inspection_html',
'       WHERE header_id = :p21_header_id;',
'BEGIN',
'   -- Loop through all the HTML lines for the inspection',
'   FOR sel1 IN c_get_html_code',
'   LOOP',
'      BEGIN',
'         -- We only want to process lines that have a session_id in them',
'         IF INSTR (sel1.html, ''f?p='') > 0 THEN',
'                        ',
'            v_session_id := NULL;',
'            ',
'            --OK, lets get that session_id!',
'            v_session_id :=',
'               SUBSTR (sel1.html,',
'                         INSTR (sel1.html,'':'',INSTR (sel1.html, ''f?p=''),2) + 1,         -- start of session_Id',
'                         (INSTR (sel1.html,'':'',INSTR (sel1.html, ''f?p=''),3))',
'                           - (INSTR (sel1.html,'':'',INSTR (sel1.html, ''f?p=''),2)) - 1);  -- length of session_Id',
'',
'            IF v_session_id IS NOT NULL THEN',
'               UPDATE qcis_inspection_html',
'                  SET html = REPLACE (html, v_session_id, :app_session)',
'                WHERE html_id = sel1.html_id;',
'            END IF;',
'         END IF;',
'      EXCEPTION',
'         WHEN OTHERS THEN',
'         ',
'            v_error_msg := substr(sqlerrm, 1, 500);',
'         ',
'            INSERT INTO bg_qcis.qcis_msg_log (msg_data_source,',
'                                              msg_source_id,',
'                                              source_process,',
'                                              log_message,',
'                                              log_type)',
'            VALUES (''QCIS Application Page 19'',',
'                    1,',
'                    ''Populate HTML Session ID - New'',',
'                    v_error_msg,',
'                    ''E'');',
'',
'            INSERT INTO bg_qcis.qcis_msg_log (msg_data_source,',
'                                              msg_source_id,',
'                                              source_process,',
'                                              log_message,',
'                                              log_type)',
'               VALUES (',
'                         ''QCIS Application Page 19'',',
'                         2,',
'                         ''Populate HTML Session ID - New'',',
'                            ''Header_id = ''',
'                         || :p21_header_id',
'                         || '', line = ''',
'                         || sel1.line_nbr,',
'                         ''E'');',
'      END;',
'   END LOOP c_get_html_code;',
'END;'))
);
end;
/
