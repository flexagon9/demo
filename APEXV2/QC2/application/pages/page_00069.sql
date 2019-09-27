prompt --application/pages/page_00069
begin
wwv_flow_api.create_page(
 p_id=>69
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'IM/PM Inspections'
,p_alias=>'IM_PM_INSPECTIONS'
,p_step_title=>'IM/PM Inspections'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript" src="#WORKSPACE_IMAGES#jquery.maphilight.min.js">',
'</script>',
'',
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
'});',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#t_Alert_Success").addClass("mySuccess");',
'',
'',
'',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.mySuccess {',
'position: absolute; ',
'top: 300px;',
'left: 20px;',
'}',
'',
'',
'.a-IRR-buttons {  ',
'    margin-left: 8px;  ',
'}  ',
'.a-IRR-buttons, .a-IRR-controls {  ',
'    display: block;  ',
'    float: left;  ',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190926172858'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10134639397193166)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>1
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
 p_id=>wwv_flow_api.id(10141735165278718)
,p_plug_name=>'Pin/Image Map'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'',
'  FOR cursor IN (select HTML from bg_qcis.qcis_inspection_html where HEADER_ID = :P69_HEADER_ID order by LINE_NBR)',
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
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P69_HEADER_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 16px; color: steelblue"><b>Inspection Map</b></div>',
'<br></br>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10481830528949454)
,p_plug_name=>'Defect Listing'
,p_region_name=>'IM_INSP'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_ITEM.checkbox (1, detail_id)              cbox,',
'         im.detail_id,',
'         im.line_number,',
'         im.section_name,',
'         (SELECT cm.component_name',
'            FROM qcis_component_master cm',
'           WHERE cm.component_id = im.component_id)     component,',
'         dh.sub_com_desc || ''-'' || dh.commodity_desc    com_code,',
'         dd.defect_description                          defect,',
'         im.status,',
'         im.repair_type,',
'         im.defect_category,',
'         im.created_by,',
'         im.creation_date,',
'         im.responsible_area,',
'         (SELECT DECODE (COUNT (*), 0, NULL, COUNT (*))',
'            FROM qcis_defect_images di',
'           WHERE di.detail_id = im.detail_id)           images,',
'         im.defect_comment,',
'         im.rework_time',
'    FROM qcis_im_detail         im,',
'         qcis_defect_code_header dh,',
'         qcis_defect_code_detail dd',
'   WHERE     im.header_id = :P69_HEADER_ID',
'         AND im.defect_hdr_id = dh.defect_code_header_id',
'         AND im.defect_id = dd.defect_code_detail_id'))
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
'<div style="font-size: 16px; color: steelblue"><b>Inspection Map List</b></div> ',
'<br></br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2496985576711031)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DGRUGINS'
,p_internal_uid=>2496985576711031
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2497047979711032)
,p_db_column_name=>'CBOX'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'<input type="checkbox" id="selectunselectall">'
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
,p_static_id=>'IM_INSP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2497155249711033)
,p_db_column_name=>'DETAIL_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Select'
,p_column_link=>'f?p=&APP_ID.:IM_PM_INSPECTIONS:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_link_attr=>'Title="Click to Edite Defect Detail."'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2497281300711034)
,p_db_column_name=>'LINE_NUMBER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Line Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2497336182711035)
,p_db_column_name=>'SECTION_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Section Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2497410924711036)
,p_db_column_name=>'COMPONENT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Component'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2497520542711037)
,p_db_column_name=>'COM_CODE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Com Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2497692421711038)
,p_db_column_name=>'DEFECT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Defect'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2497764792711039)
,p_db_column_name=>'STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2497830323711040)
,p_db_column_name=>'REPAIR_TYPE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Repair Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2497902833711041)
,p_db_column_name=>'DEFECT_CATEGORY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Defect Category'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2498053413711042)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2498153005711043)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2498226771711044)
,p_db_column_name=>'RESPONSIBLE_AREA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Responsible Area'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2498362157711045)
,p_db_column_name=>'IMAGES'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Images'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2498476581711046)
,p_db_column_name=>'DEFECT_COMMENT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Defect Comment'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2498555601711047)
,p_db_column_name=>'REWORK_TIME'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Rework Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2938087166145190)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'29381'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DETAIL_ID:CBOX:LINE_NUMBER:SECTION_NAME:COMPONENT:RESPONSIBLE_AREA:COM_CODE:DEFECT:DEFECT_COMMENT:STATUS:REPAIR_TYPE:DEFECT_CATEGORY:REWORK_TIME:IMAGES:CREATED_BY:CREATION_DATE:'
,p_sort_column_1=>'LINE_NUMBER'
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
 p_id=>wwv_flow_api.id(11403017150690626)
,p_plug_name=>'Inspection Details'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>5
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 16px; color: steelblue"><b>Inspection Details</b></div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170527813896168347)
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
 p_id=>wwv_flow_api.id(2958683810701440)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(170527813896168347)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_button_cattributes=>'title="Back to Inspection List Page"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2959497807701441)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(170527813896168347)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2959057763701441)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(170527813896168347)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_image_alt=>'Save'
,p_button_position=>'BOTTOM'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2862211594802184)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(170527813896168347)
,p_button_name=>'INSPECTION_COMPLETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inspection Complete'
,p_button_position=>'BOTTOM'
,p_button_condition=>':P69_STATUS = ''I'' or :P69_STATUS =  ''N'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-thumbs-o-up'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3021972808620307)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(170527813896168347)
,p_button_name=>'REDTAG'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Red Tag'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:RP:P128_BOAT_STATUS,P128_ORDER_NUMBER,P128_BOAT_MASTER_ID,P128_PAGE_BACK_TO:&P69_BOAT_STATUS.,&P69_ORDER_NUMBER.,&P69_BOAT_MASTER_ID.,IM_PM_INSPECTIONS'
,p_button_condition=>':P69_DYNAMIC_TAG = ''Red'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-tag'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3022153622620309)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(170527813896168347)
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
 p_id=>wwv_flow_api.id(2959814737701442)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(170527813896168347)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Print'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:Print();'
,p_button_condition=>'P69_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-print'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2878551765802211)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(10481830528949454)
,p_button_name=>'REPAIRED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Repaired'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-clipboard-check'
,p_button_cattributes=>'title="Set Selected Defects as Repaired."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2878918243802211)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(10481830528949454)
,p_button_name=>'REPAIR_NOT_NEEDED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Repair Not Needed'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-clipboard-ban'
,p_button_cattributes=>'title="Mark Selected Defects as Repai Not Needed."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2879384936802211)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(10481830528949454)
,p_button_name=>'SS_GOOD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'SS > Good'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa-clipboard-check-alt'
,p_button_cattributes=>'title="Update Selected SS Inspections as Complete."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2878104767802211)
,p_button_sequence=>580
,p_button_plug_id=>wwv_flow_api.id(10481830528949454)
,p_button_name=>'P69_RA_CHANGE'
,p_button_static_id=>'P69_RA_CHANGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Change Responsible Area'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_css_classes=>'Title="Change Responsible Area on Selected Rows."'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'Title="Change Responsible Area on Selected Rows."'
,p_request_source=>'RA_CHANGE'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2894647266802245)
,p_branch_name=>'Go To Page 69'
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2895415029802246)
,p_branch_name=>'Go To Page 22'
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8276708109509616)
,p_branch_sequence=>50
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2879754115802212)
,p_name=>'P69_RA_MASS_CHANGE'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(10481830528949454)
,p_prompt=>'Responsible Area:'
,p_source=>'P69_RA_MASS_CHANGE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select responsible_area d, responsible_area r from qcis_resp_area_master ',
'where plant_id=:G_DEFAULT_PLANT_ID',
'and inactive_date is NULL ',
'order by responsible_area'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_cattributes_element=>'title="Select Responsible Area for RA mass Change."'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2883841768802217)
,p_name=>'P69_LAST_UPDATE_DATE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(10134639397193166)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Date'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'MM/DD/YYYY HH:MI PM'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2884204826802217)
,p_name=>'P69_LAST_UPDATED_BY'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(10134639397193166)
,p_use_cache_before_default=>'NO'
,p_prompt=>' Updated By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2884661609802217)
,p_name=>'P69_CREATION_DATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(10134639397193166)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Create Date'
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
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2885081749802217)
,p_name=>'P69_CREATED_BY'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(10134639397193166)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2885446290802218)
,p_name=>'P69_HEADER_ID'
,p_item_sequence=>231
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_source=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2885823139802218)
,p_name=>'P69_IM_TEMPLATE_ID'
,p_item_sequence=>251
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_source=>'IM_TEMPLATE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2886294771802218)
,p_name=>'P69_DRAFT_ID'
,p_item_sequence=>241
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_source=>'select DRAFT_ID from qcis_im_template_header where HEADER_ID = :P69_IM_TEMPLATE_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2961901872761506)
,p_name=>'P69_PLANT_ID'
,p_item_sequence=>41
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_source=>'PLANT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2962759493761507)
,p_name=>'P69_BRAND_ID'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Brand'
,p_source=>'BRAND_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BRAND'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT BRAND_CODE||'' - ''||BRAND_NAME display_value, QCIS_BRAND_MASTER_ID return_value ',
'from QCIS_BRAND_MASTER',
'where INACTIVE_DATE IS NULL order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2963193869761508)
,p_name=>'P69_MODEL_ID'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Model'
,p_source=>'MODEL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MODEL_YEAR || '' - ''||  MODEL_NAME d, MODEL_MASTER_ID r',
'FROM bg_qcis.QCIS_MODEL_MASTER'))
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
 p_id=>wwv_flow_api.id(2963509571761508)
,p_name=>'P69_SEQUENCE_NBR'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Seq #:'
,p_source=>'SEQUENCE_NBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>5
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2963906927761509)
,p_name=>'P69_STATUS'
,p_item_sequence=>91
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS_INSPECTIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select keyword_value d, keyword_code r',
'from   qcis_keywords',
'where keyword_type=''Status_Inspections''',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2964313583761509)
,p_name=>'P69_HULL_NUMBER'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hull'
,p_source=>'HULL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2964712259761509)
,p_name=>'P69_HIN'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'HIN'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BM.HIN HIN ',
'from QCIS_BOAT_MASTER BM, qcis_inspection_header ih',
'where BM.ORDER_NUMBER = ih.order_number and',
':P69_HEADER_ID = ih.header_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
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
 p_id=>wwv_flow_api.id(2965172992761510)
,p_name=>'P69_ORDER_NUMBER'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Number'
,p_source=>'ORDER_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2965556211761510)
,p_name=>'P69_ACC_GROUP'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_source=>'ACC_GROUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2965965771761511)
,p_name=>'P69_ACCESSORY'
,p_item_sequence=>141
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_source=>'ACCESSORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2966330945761511)
,p_name=>'P69_STATION_ID'
,p_item_sequence=>151
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Station'
,p_source=>'STATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT STATION_CODE || '' - '' || STATION_NAME d,',
'     STATION_MASTER_ID  r',
'FROM bg_qcis.QCIS_STATION_MASTER '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2966713494761512)
,p_name=>'P69_SUBSTATION_ID'
,p_item_sequence=>161
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Substation'
,p_source=>'SUBSTATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTATION_CODE || '' - '' || SUBSTATION_NAME d,',
'     SUBSTATION_ID  r',
'FROM bg_qcis.QCIS_SUBSTATION ',
''))
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
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2967190917761512)
,p_name=>'P69_INSPECT_NAME_ID'
,p_item_sequence=>171
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspection'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'INSPECT_NAME_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INSPECTION_NAME, INSPECT_NAME_ID',
'FROM bg_qcis.QCIS_INSPECTION_NAMES '))
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
 p_id=>wwv_flow_api.id(2967569399761512)
,p_name=>'P69_INSPECTOR_ID'
,p_item_sequence=>181
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspector'
,p_source=>'INSPECTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
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
 p_id=>wwv_flow_api.id(2967904111761512)
,p_name=>'P69_RESPONSIBLE_AREA'
,p_item_sequence=>191
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Responsible Area'
,p_post_element_text=>'&nbsp;&nbsp;'
,p_source=>'RESPONSIBLE_AREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>100
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
 p_id=>wwv_flow_api.id(2968365752761513)
,p_name=>'P69_MANDATORY_YN'
,p_item_sequence=>201
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mandatory'
,p_source=>'MANDATORY_YN'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(2968702027761513)
,p_name=>'P69_DEFECT_HEADER_ID'
,p_item_sequence=>211
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_source=>'DEFECT_HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2969178207761513)
,p_name=>'P69_EMAIL_ALERT_GROUP'
,p_item_sequence=>221
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_use_cache_before_default=>'NO'
,p_source=>'EMAIL_ALERT_GROUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3021536393620303)
,p_name=>'P69_TAG_TYPE'
,p_item_sequence=>261
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3021648618620304)
,p_name=>'P69_DYNAMIC_TAG'
,p_item_sequence=>271
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3021777989620305)
,p_name=>'P69_BOAT_STATUS'
,p_item_sequence=>281
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3022045399620308)
,p_name=>'P69_BOAT_MASTER_ID'
,p_item_sequence=>291
,p_item_plug_id=>wwv_flow_api.id(11403017150690626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(2887412985802229)
,p_computation_sequence=>1
,p_computation_item=>'P18_DETAIL_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(2887811969802230)
,p_computation_sequence=>11
,p_computation_item=>'P69_LAST_UPDATE_DATE'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'to_char(sysdate,''MM/DD/YYYY HH12:MI'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(2888277733802230)
,p_computation_sequence=>21
,p_computation_item=>'P69_LAST_UPDATED_BY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>':APP_USER'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(2888616905802232)
,p_validation_name=>'RA must be selected with changing the RA'
,p_validation_sequence=>10
,p_validation=>'P69_RA_MASS_CHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select a Responsible Area.  '
,p_when_button_pressed=>wwv_flow_api.id(2878104767802211)
,p_associated_item=>wwv_flow_api.id(2879754115802212)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2937045154141080)
,p_name=>'SELECT_UNSELECT Inspect Check Box'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#IM_INSP'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2937433438141089)
,p_event_id=>wwv_flow_api.id(2937045154141080)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''#IM_INSP #selectunselectall'' ).is('':checked'') ) {',
'  $(''#IM_INSP  input[type=checkbox][name=f01]'').prop(''checked'',true);',
'} else {',
'  $(''#IM_INSP  input[type=checkbox][name=f01]'').prop(''checked'',false);',
'}'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2889774522802239)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_INSPECTION_HEADER'
,p_attribute_02=>'QCIS_INSPECTION_HEADER'
,p_attribute_03=>'P69_HEADER_ID'
,p_attribute_04=>'HEADER_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3021429152620302)
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
 p_id=>wwv_flow_api.id(2890155326802239)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_INSPECTION_HEADER'
,p_attribute_02=>'QCIS_INSPECTION_HEADER'
,p_attribute_03=>'P69_HEADER_ID'
,p_attribute_04=>'HEADER_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table QCIS_INSPECTION_HEADER.'
,p_process_when_button_id=>wwv_flow_api.id(2959057763701441)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2892151248802241)
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
,p_process_when_button_id=>wwv_flow_api.id(2878551765802211)
,p_process_success_message=>'Selected O - Outstanding Defect row(s) changed to R - Repaired.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2892513939802242)
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
,p_process_when_button_id=>wwv_flow_api.id(2878918243802211)
,p_process_success_message=>'Selected O - Outstanding Defect row(s) changed to C - Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2892999279802242)
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
,p_process_when_button_id=>wwv_flow_api.id(2879384936802211)
,p_process_success_message=>'Selected S - Short Stock row(s) changed to C - Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2893372211802242)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSPECTION COMPLETE'
,p_process_sql_clob=>'update qcis_inspection_header set status = ''C'' where header_id=:P69_HEADER_ID;'
,p_process_when_button_id=>wwv_flow_api.id(8276708109509616)
,p_process_success_message=>'Inspection Sheet marked Complete.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2889355951802239)
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
'  inspection_utilities.update_inspection_status (:P69_HEADER_ID);',
'',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2894182151802243)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change RA on Selected Rows'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  FOR I in 1..APEX_APPLICATION.G_f01.COUNT LOOP',
'    UPDATE QCIS_IM_DETAIL',
'    SET RESPONSIBLE_AREA = :P69_RA_CHANGE,  ',
'    LAST_UPDATE_DATE = SYSDATE, ',
'    LAST_UPDATED_BY = :APP_USER',
'    WHERE DETAIL_ID = TO_NUMBER(Apex_Application.g_f01(i));      ',
'  END LOOP;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2878104767802211)
,p_process_success_message=>'RA on selected rows updated.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2888987134802233)
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
'       WHERE header_id = :p69_header_id;',
'BEGIN',
'   -- Loop through all the HTML lines for the inspection',
'   FOR sel1 IN c_get_html_code',
'   LOOP',
'      BEGIN',
'         -- We only want to process lines that have a session_id in them',
'         IF INSTR (sel1.html, ''f?p='') > 0   THEN',
'                        ',
'            v_session_id := NULL;',
'            ',
'            --OK, lets get that session_id! and replace QCIS app ID 2031 with QC2 2032 and Pg 19 with Pg 79',
'            v_session_id :=',
'               SUBSTR (sel1.html,',
'                         INSTR (sel1.html,'':'',INSTR (sel1.html, ''f?p=''),2) + 1,         -- start of session_Id',
'                         (INSTR (sel1.html,'':'',INSTR (sel1.html, ''f?p=''),3))',
'                           - (INSTR (sel1.html,'':'',INSTR (sel1.html, ''f?p=''),2)) - 1);  -- length of session_Id',
'',
'            IF v_session_id IS NOT NULL THEN',
'               UPDATE qcis_inspection_html',
'                  SET html = REPLACE(REPLACE(REPLACE (html, v_session_id, :app_session),''2031:10:'',''2032:79:''),''P10_'',''P79_'')',
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
'            VALUES (''QCIS Application Page 69'',',
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
'                         ''QCIS Application Page 69'',',
'                         2,',
'                         ''Populate HTML Session ID - New'',',
'                            ''Header_id = ''',
'                         || :p69_header_id',
'                         || '', line = ''',
'                         || sel1.line_nbr,',
'                         ''E'');',
'      END;',
'   END LOOP c_get_html_code;',
'END;'))
);
end;
/
