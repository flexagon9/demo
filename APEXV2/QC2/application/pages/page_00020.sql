prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Model Setup & Relationships'
,p_step_title=>'Model Setup & Relationships'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(4612765840972889)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.no-close .ui-dialog-titlebar-close {',
' display: none;',
' }',
'',
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
,p_last_upd_yyyymmddhh24miss=>'20190829195320'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4033353896740023)
,p_plug_name=>'Model Setup & Relationships'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4033854634740028)
,p_plug_name=>'Model Setup Action'
,p_parent_plug_id=>wwv_flow_api.id(4033353896740023)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--small'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79427203392908471)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(4652319585042305)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(79444899804908522)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4830639245895704)
,p_plug_name=>'Model List'
,p_region_name=>'MODEL_LIST'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT m.MODEL_MASTER_ID,',
'       m.BRAND_ID,',
'       (SELECT bm.brand_code',
'          FROM bg_qcis.QCIS_BRAND_MASTER bm',
'         WHERE bm.qcis_brand_master_id = m.brand_id)',
'           BRAND_CODE,',
'       (SELECT ''('' || bm.brand_code || '') '' || bm.brand_name',
'          FROM bg_qcis.QCIS_BRAND_MASTER bm',
'         WHERE bm.qcis_brand_master_id = m.brand_id)',
'           BRAND_NAME,',
'       m.DIVISION_ID,',
'       (SELECT dm.division_name',
'          FROM bg_qcis.QCIS_DIVISION_MASTER dm',
'         WHERE dm.qcis_division_master_id = m.division_id)',
'           DIVISION_NAME,',
'       m.PLANT_ID,',
'       (SELECT ''('' || pm.plant_code || '') '' || plant_name',
'          FROM bg_qcis.QCIS_PLANT_MASTER pm',
'         WHERE pm.qcis_plant_master_id = m.plant_id)',
'           PLANT,',
'       m.MODEL_YEAR,',
'       m.MODEL_NAME,',
'       m.MODEL_DESC,',
'       m.REWORK_TIME_MANDATORY,',
'       m.CREATED_BY,',
'       TO_CHAR (m.CREATION_DATE, ''DD-MON-RRRR'')',
'           CREATION_DATE,',
'       TO_CHAR (m.LAST_UPDATE_DATE, ''DD-MON-RRRR'')',
'           LAST_UPDATE_DATE,',
'       m.LAST_UPDATED_BY,',
'       TO_CHAR (m.INACTIVE_DATE,''DD-MON-RRRR'') INACTIVE_DATE,',
'       ''ship'' MODELS,',
'       CASE',
'           WHEN (SELECT COUNT (STATION_MASTER_ID)',
'                   FROM bg_qcis.QCIS_STATION_MASTER sm',
'                  WHERE sm.MODEL_ID = m.MODEL_MASTER_ID',
'                    AND PLANT_ID = :G_DEFAULT_PLANT_ID) > 0',
'           THEN',
'               ''building''',
'           ELSE',
'               NULL',
'       END',
'           STATIONS,',
'       CASE',
'           WHEN (SELECT COUNT (IMAGES_ID)',
'                   FROM bg_qcis.QCIS_IMAGES i',
'                  WHERE i.MODEL_ID = m.MODEL_MASTER_ID',
'                    AND PLANT_ID = :G_DEFAULT_PLANT_ID) > 0',
'           THEN',
'               ''image''',
'           ELSE',
'               NULL',
'       END',
'           IMAGES,',
'       CASE',
'           WHEN (SELECT COUNT (HEADER_ID)',
'                   FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT i',
'                  WHERE i.MODEL_ID = m.MODEL_MASTER_ID AND MAP_TYPE = ''I''',
'                    AND PLANT_ID = :G_DEFAULT_PLANT_ID) >',
'                0',
'           THEN',
'               ''map''',
'           ELSE',
'               NULL',
'       END',
'           IMAPS,',
'       CASE',
'           WHEN (SELECT COUNT (HEADER_ID)',
'                   FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT i',
'                  WHERE i.MODEL_ID = m.MODEL_MASTER_ID AND MAP_TYPE = ''P''',
'                    AND PLANT_ID = :G_DEFAULT_PLANT_ID) >',
'                0',
'           THEN',
'               ''map-o''',
'               ELSE',
'               NULL',
'       END',
'           PMAPS,',
'       CASE',
'           WHEN (SELECT COUNT (HEADER_ID)',
'                   FROM bg_qcis.QCIS_GS_TEMPLATE_HEADER g',
'                  WHERE g.MODEL_ID = m.MODEL_MASTER_ID',
'                    AND PLANT_ID = :G_DEFAULT_PLANT_ID) > 0',
'           THEN',
'               ''list''',
'           ELSE',
'               NULL',
'       END',
'           GIG_SHEETS,',
'       CASE',
'           WHEN (SELECT COUNT (HEADER_ID)',
'                   FROM bg_qcis.qcis_inspection_header i',
'                  WHERE     i.MODEL_ID = m.MODEL_MASTER_ID',
'                        AND inspection_type = ''V''',
'                    AND PLANT_ID = :G_DEFAULT_PLANT_ID) >',
'                0',
'           THEN',
'               ''variable''',
'           ELSE',
'               NULL',
'       END',
'           VAR_DATA,',
'      CASE',
'           WHEN READY_FOR_INSPECTIONS = ''Y''',
'                ',
'           THEN',
'               ''check-circle''',
'           ELSE',
'              NULL',
'       END',
'           READY_FOR_INSPECTION',
'  FROM bg_qcis.QCIS_MODEL_MASTER m',
' WHERE PLANT_ID = :G_DEFAULT_PLANT_ID ',
'   AND INACTIVE_DATE IS NULL;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'G_DEFAULT_PLANT_ID'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(4832491860895722)
,p_alias=>'MODEL_LIST'
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Model Data Found'
,p_max_rows_per_page=>'25'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:P20_MODEL_MASTER_ID,P20_MODEL_NAME,P20_MODEL_DESC,P20_MODEL_YEAR,IR[MODEL_LIST]EQ_MODEL_MASTER_ID,G_DEFAULT_MODEL_ID:#MODEL_MASTER_ID#,#MODEL_NAME#,#MODEL_DESC#,#MODEL_YEAR#,#MODEL_MASTER_ID#,#MODEL_MASTER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_detail_link_attr=>'TITLE="Click to View the Model Set Up Progress and Relationship Lists."'
,p_owner=>'DGRUGINS'
,p_internal_uid=>4832491860895722
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4832542168895723)
,p_db_column_name=>'MODEL_MASTER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Model ID'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4832654318895724)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Plant ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4832729410895725)
,p_db_column_name=>'BRAND_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Brand ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4832825738895726)
,p_db_column_name=>'DIVISION_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Division ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4832914759895727)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4833041763895728)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Model Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4833188567895729)
,p_db_column_name=>'MODEL_DESC'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Model Desc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4833504116895733)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4833779413895735)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4833961248895737)
,p_db_column_name=>'REWORK_TIME_MANDATORY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Rework Time Mandatory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4834146212895739)
,p_db_column_name=>'BRAND_CODE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4834242258895740)
,p_db_column_name=>'DIVISION_NAME'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Division Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10878015440073244)
,p_db_column_name=>'BRAND_NAME'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Brand Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10878168288073245)
,p_db_column_name=>'PLANT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10878209456073246)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Creation Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10878313496073247)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Last Update Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10878425975073248)
,p_db_column_name=>'STATIONS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Stations'
,p_column_link=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:RP,205:P20_MODEL_MASTER_ID,P205_MODEL_ID,G_DEFAULT_MODEL_ID,P205_MODEL_YEAR:#MODEL_MASTER_ID#,#MODEL_MASTER_ID#,#MODEL_MASTER_ID#,#MODEL_YEAR#'
,p_column_linktext=>'<span class = "fa fa-#STATIONS# fa-1x"</span>'
,p_column_link_attr=>'title="Clcik to Edit Model/Station Relationship"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10878542500073249)
,p_db_column_name=>'IMAGES'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Images'
,p_column_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP,35:G_DEFAULT_MODEL_ID,P35_MODEL_ID,P35_IMAGES_ID:#MODEL_MASTER_ID#,#MODEL_MASTER_ID#,'
,p_column_linktext=>'<span class = "fa fa-#IMAGES# fa-1x"</span>'
,p_column_link_attr=>'title="Clcik to Edit Model/Image Relationship"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10878660983073250)
,p_db_column_name=>'IMAPS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'I-Maps'
,p_column_link=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.:RP:G_DEFAULT_MODEL_ID:#MODEL_MASTER_ID#'
,p_column_linktext=>'<span class = "fa fa-#IMAPS# fa-1x"</span>'
,p_column_link_attr=>'title="Clcik to Edit Model/IMAPS Relationship"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11229164167716501)
,p_db_column_name=>'PMAPS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'P-Maps'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:G_DEFAULT_MODEL_ID:#MODEL_MASTER_ID#'
,p_column_linktext=>'<span class = "fa fa-#PMAPS# fa-1x"</span>'
,p_column_link_attr=>'title="Clcik to Edit Model/PMAPS Relationship"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11229283871716502)
,p_db_column_name=>'GIG_SHEETS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Gig Sheets'
,p_column_link=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.:RP,240:P240_MODEL_ID,G_DEFAULT_MODEL_ID:#MODEL_MASTER_ID#,#MODEL_MASTER_ID#'
,p_column_linktext=>'<span class = "fa fa-#GIG_SHEETS# fa-1x"</span>'
,p_column_link_attr=>'title="Clcik to Edit Model/GIG SHEETS Relationship"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11229361262716503)
,p_db_column_name=>'VAR_DATA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Var Data'
,p_column_link=>'f?p=&APP_ID.:502:&SESSION.::&DEBUG.:RP,502:P502_MODEL_ID:#MODEL_MASTER_ID#'
,p_column_linktext=>'<span class = "fa fa-#VAR_DATA# fa-1x"</span>'
,p_column_link_attr=>'title="Click to Edit Model/VAR DATA Relationship"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11229472795716504)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Inactive Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12250908459324504)
,p_db_column_name=>'MODELS'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Models'
,p_column_link=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:204:P20_MODEL_MASTER_ID,P20_MODEL_NAME,P20_MODEL_DESC,P20_MODEL_YEAR,P204_MODEL_MASTER_ID,P204_ORIGIN_PAGE,G_DEFAULT_MODEL_ID:#MODEL_MASTER_ID#,#MODEL_NAME#,#MODEL_DESC#,#MODEL_YEAR#,#MODEL_MASTER_ID#,20,#MODEL_MAS'
||'TER_ID#'
,p_column_linktext=>'<span class = "fa fa-#MODELS#  fa-1x"</span>'
,p_column_link_attr=>'Title="Click to Edit Model - #MODEL_MASTER_ID#"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26055648788603717)
,p_db_column_name=>'READY_FOR_INSPECTION'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Ready For Inspection'
,p_column_html_expression=>'<span class="fa fa-#READY_FOR_INSPECTION#"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(4859675960883429)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'48597'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'BRAND_NAME:MODEL_YEAR:MODEL_NAME:MODEL_DESC:MODELS:STATIONS:IMAGES:IMAPS:PMAPS:GIG_SHEETS:VAR_DATA:READY_FOR_INSPECTION:CREATION_DATE:'
,p_sort_column_1=>'MODEL_YEAR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'BRAND_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'MODEL_NAME'
,p_sort_direction_3=>'DESC'
,p_sort_column_4=>'CREATION_DATE'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'BRAND_NAME:0:0:0:0'
,p_break_enabled_on=>'BRAND_NAME:0:0:0:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(26299908645190624)
,p_report_id=>wwv_flow_api.id(4859675960883429)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INACTIVE_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"INACTIVE_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4830755935895705)
,p_plug_name=>'Model Set up Progress'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P20_MODEL_MASTER_ID IS NOT NULL'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'<div style="font-size: 16px; color: black"><b>     ',
'    Model Set Up Progress For &P20_MODEL_YEAR. - &P20_MODEL_NAME. - &P20_MODEL_DESC.</b>',
'    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;',
'</div>',
'</center>',
'<br></br>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9821690337334941)
,p_plug_name=>'Report Regions'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P20_MODEL_MASTER_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9629598684440928)
,p_plug_name=>'GS Template'
,p_parent_plug_id=>wwv_flow_api.id(9821690337334941)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>160
,p_plug_grid_column_span=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   gsth.HEADER_ID, ',
'   pm.plant_code PLANT_ID, ',
'   bm.brand_code BRAND_ID, ',
'   dm.division_code DIVISION_ID, ',
'   mm.model_year||''-''||mm.model_name MODEL_ID, ',
'   gsth.ACC_GROUP, ',
'   gsth.ACCESSORY, ',
'   (select sh.station_code||''-''||sh.station_name from qcis_station_master sh where sh.station_master_id=gsth.station_id) STATION_ID, ',
'   (select ss.substation_code||''-''||ss.substation_name from qcis_substation ss where ss.substation_id=gsth.substation_id) SUBSTATION_ID, ',
'   gsth.INSPECTOR_ID, ',
'   gsth.SEQUENCE_NBR, ',
'   (select ins.inspection_name from qcis_inspection_names ins where ins.inspect_name_id=gsth.gig_sheet_name) GIG_SHEET_NAME, ',
'   (select decode((select ''Y'' from dual where exists (select ''Y'' from qcis_gs_template_detail gstd where gstd.header_id = gsth.header_id and gstd.mandatory_yn = ''Y'')),''Y'',''Yes'',''No'') from dual) MANDATORY_YN,',
'   gsth.INACTIVE_DATE, ',
'   gsth.LAST_UPDATE_DATE, ',
'   gsth.LAST_UPDATED_BY, ',
'   gsth.CREATION_DATE, ',
'   gsth.CREATED_BY',
'FROM qcis_model_master mm,',
'     qcis_plant_master pm, ',
'     qcis_brand_master bm, ',
'     qcis_division_master dm, ',
'     qcis_gs_template_header gsth',
'where mm.model_master_id = :p20_model_master_id',
'  and pm.qcis_plant_master_id=mm.plant_id',
'  and bm.qcis_brand_master_id=mm.brand_id',
'  and dm.qcis_division_master_id=mm.division_id',
'  and gsth.gig_sheet_type=''G'' and gsth.plant_id=mm.plant_id and gsth.model_id=mm.model_master_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P20_MODEL_MASTER_ID IS NOT NULL'
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>GS Templates</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(9629848275440931)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Gig Sheets Found or this Model'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.:RP,240:P240_MODEL_ID,P240_HEADER_ID,P240_PLANT_ID:&P20_MODEL_MASTER_ID.,#HEADER_ID#,&G_DEFAULT_PLANT_ID.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to Edit GS Template"'
,p_owner=>'SGRAY'
,p_internal_uid=>9629848275440931
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10434392538993303)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>220
,p_column_identifier=>'A'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10434707481993307)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>230
,p_column_identifier=>'B'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10434847863993308)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>240
,p_column_identifier=>'C'
,p_column_label=>'Plant Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10434910646993309)
,p_db_column_name=>'BRAND_ID'
,p_display_order=>250
,p_column_identifier=>'D'
,p_column_label=>'Brand Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10435027620993310)
,p_db_column_name=>'DIVISION_ID'
,p_display_order=>260
,p_column_identifier=>'E'
,p_column_label=>'Division Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10435175988993311)
,p_db_column_name=>'MODEL_ID'
,p_display_order=>270
,p_column_identifier=>'F'
,p_column_label=>'Model Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10435225701993312)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>280
,p_column_identifier=>'G'
,p_column_label=>'Group'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10435304831993313)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>290
,p_column_identifier=>'H'
,p_column_label=>'Acc'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10435428901993314)
,p_db_column_name=>'STATION_ID'
,p_display_order=>300
,p_column_identifier=>'I'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10435556101993315)
,p_db_column_name=>'SUBSTATION_ID'
,p_display_order=>310
,p_column_identifier=>'J'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10435628882993316)
,p_db_column_name=>'INSPECTOR_ID'
,p_display_order=>320
,p_column_identifier=>'K'
,p_column_label=>'Inspector Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10435725982993317)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>330
,p_column_identifier=>'L'
,p_column_label=>'Seq #'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10435815316993318)
,p_db_column_name=>'GIG_SHEET_NAME'
,p_display_order=>340
,p_column_identifier=>'M'
,p_column_label=>'Gig Sheet Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10435927306993319)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>350
,p_column_identifier=>'N'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10436092301993320)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>360
,p_column_identifier=>'O'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10436188673993321)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>370
,p_column_identifier=>'P'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10436256012993322)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>380
,p_column_identifier=>'Q'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25244397178025031)
,p_db_column_name=>'MANDATORY_YN'
,p_display_order=>390
,p_column_identifier=>'R'
,p_column_label=>'Mandatory'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(10446160028030470)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'104462'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATION_ID:SUBSTATION_ID:SEQUENCE_NBR:GIG_SHEET_NAME:ACC_GROUP:ACCESSORY:MANDATORY_YN:INACTIVE_DATE:CREATED_BY:CREATION_DATE:LAST_UPDATED_BY:LAST_UPDATE_DATE:'
,p_sort_column_1=>'STATION_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SEQUENCE_NBR'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'STATION_ID:0:0:0:0:0'
,p_break_enabled_on=>'STATION_ID:0:0:0:0:0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9820276520334927)
,p_plug_name=>'Model Report'
,p_parent_plug_id=>wwv_flow_api.id(9821690337334941)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>120
,p_plug_grid_column_span=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT m.MODEL_MASTER_ID,',
'       m.BRAND_ID,',
'       (SELECT bm.brand_code',
'          FROM bg_qcis.QCIS_BRAND_MASTER bm',
'         WHERE bm.qcis_brand_master_id = m.brand_id)',
'           BRAND_CODE,',
'       (SELECT ''('' || bm.brand_code || '') '' || bm.brand_name',
'          FROM bg_qcis.QCIS_BRAND_MASTER bm',
'         WHERE bm.qcis_brand_master_id = m.brand_id)',
'           BRAND_NAME,',
'       m.DIVISION_ID,',
'       (SELECT dm.division_name',
'          FROM bg_qcis.QCIS_DIVISION_MASTER dm',
'         WHERE dm.qcis_division_master_id = m.division_id)',
'           DIVISION_NAME,',
'       m.PLANT_ID,',
'       (SELECT ''('' || pm.plant_code || '') '' || plant_name',
'          FROM bg_qcis.QCIS_PLANT_MASTER pm',
'         WHERE pm.qcis_plant_master_id = m.plant_id)',
'           PLANT,',
'       m.MODEL_YEAR,',
'       m.MODEL_NAME,',
'       m.MODEL_DESC,',
'       m.REWORK_TIME_MANDATORY,',
'       m.CREATED_BY,',
'       TO_CHAR (m.CREATION_DATE, ''DD-MON-RRRR'')',
'           CREATION_DATE,',
'       TO_CHAR (m.LAST_UPDATE_DATE, ''DD-MON-RRRR'')',
'           LAST_UPDATE_DATE,',
'       m.LAST_UPDATED_BY,',
'       TO_CHAR (m.INACTIVE_DATE, ''DD-MON-RRRR'') INACTIVE_DATE',
'  FROM bg_qcis.QCIS_MODEL_MASTER m',
' WHERE MODEL_MASTER_ID = :P20_MODEL_MASTER_ID',
'   AND PLANT_ID = :G_DEFAULT_PLANT_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P20_MODEL_MASTER_ID'
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
'<div style="font-size: 14px; color: steelblue"><b>Model</b></div> ',
'',
''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(9820348343334928)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Model Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:RP,204:P204_MODEL_MASTER_ID,P204_ORIGIN_PAGE:#MODEL_MASTER_ID#,20'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to edit"'
,p_owner=>'DGRUGINS'
,p_internal_uid=>9820348343334928
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9820416706334929)
,p_db_column_name=>'MODEL_MASTER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Model ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
end;
/
begin
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9820515951334930)
,p_db_column_name=>'BRAND_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Brand ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9820630668334931)
,p_db_column_name=>'DIVISION_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Division ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9820714155334932)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Plant ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9820871027334933)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9820909563334934)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9821098470334935)
,p_db_column_name=>'MODEL_DESC'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Model Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9821142844334936)
,p_db_column_name=>'REWORK_TIME_MANDATORY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Rework Time Mandatory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9821298036334937)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9821593340334940)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9821838706334943)
,p_db_column_name=>'BRAND_CODE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Brand Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9821947677334944)
,p_db_column_name=>'DIVISION_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Division Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10877567587073239)
,p_db_column_name=>'BRAND_NAME'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10877628629073240)
,p_db_column_name=>'PLANT'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10877766646073241)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Creation Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10877886741073242)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Last Update Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10877953948073243)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Inactive Date'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9995457249008738)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'99955'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BRAND_NAME:MODEL_YEAR:MODEL_NAME:MODEL_DESC:DIVISION_NAME:INACTIVE_DATE:REWORK_TIME_MANDATORY:CREATED_BY:CREATION_DATE:LAST_UPDATED_BY:LAST_UPDATE_DATE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9822311458334948)
,p_plug_name=>'Station List'
,p_parent_plug_id=>wwv_flow_api.id(9821690337334941)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>130
,p_plug_grid_column_span=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.STATION_MASTER_ID,',
'       s.PLANT_ID,',
'       s.MODEL_ID,',
'       TO_NUMBER(s.STATION_CODE) STATION_CODE,',
'       s.STATION_CODE || '' - ''  || s.STATION_NAME STATION_NAME,',
'     --  ''fa_level_down''  SS_DRILL_DOWN,',
'       s.INACTIVE_DATE,',
'       s.LAST_UPDATE_DATE,',
'       s.LAST_UPDATED_BY,',
'       s.CREATION_DATE,',
'       s.CREATED_BY,',
'       s.QCIS_USAGE_FLAG,',
'       p.USAGE_CODE,',
'       s.STATION_PARENT_ID,',
'       p.STATION_NAME PARENT_STATION_NAME',
'  FROM bg_qcis.QCIS_STATION_MASTER s, bg_qcis.QCIS_STATION_PARENT p',
' WHERE     s.MODEL_ID = :P20_MODEL_MASTER_ID   ',
'   AND p.PLANT_ID = :G_DEFAULT_PLANT_ID',
'   AND p.ID = s.STATION_PARENT_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P20_MODEL_MASTER_ID IS NOT NULL'
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Stations</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(10006119788247549)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Stations Found or this Model'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:RP,205:P205_MODEL_ID,P205_STATION_MASTER_ID:#MODEL_ID#,#STATION_MASTER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to Edit Station"'
,p_owner=>'DGRUGINS'
,p_internal_uid=>10006119788247549
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10006284423247550)
,p_db_column_name=>'STATION_MASTER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Station Master Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10034855037622301)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Plant Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10034904858622302)
,p_db_column_name=>'MODEL_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Model Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10035238899622305)
,p_db_column_name=>'STATION_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Sequence - Station Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10035389041622306)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10035412309622307)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10035544625622308)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10035692134622309)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10035708549622310)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10035810057622311)
,p_db_column_name=>'QCIS_USAGE_FLAG'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'QCIS Use Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10035937351622312)
,p_db_column_name=>'STATION_PARENT_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Station Parent Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10036054339622313)
,p_db_column_name=>'PARENT_STATION_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Parent Station Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10508206871339532)
,p_db_column_name=>'USAGE_CODE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Usage Code'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(10491175294351533)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13512628166267342)
,p_db_column_name=>'STATION_CODE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(10058507481625603)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'100586'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATION_NAME:QCIS_USAGE_FLAG:USAGE_CODE:INACTIVE_DATE:CREATED_BY:CREATION_DATE:LAST_UPDATED_BY:LAST_UPDATE_DATE:'
,p_sort_column_1=>'STATION_CODE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SUBSTATION_CODE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0:0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10082068241856230)
,p_plug_name=>'Image List'
,p_parent_plug_id=>wwv_flow_api.id(9821690337334941)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>140
,p_plug_grid_column_span=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT i.IMAGES_ID,',
'       i.PLANT_ID,',
'       i.MODEL_ID,',
'       (SELECT pm.plant_code',
'          FROM qcis_plant_master pm',
'         WHERE pm.qcis_plant_master_id = i.plant_id)',
'           plt,',
'       (SELECT mm.model_year || ''-'' || mm.model_name',
'          FROM qcis_model_master mm',
'         WHERE mm.model_master_id = i.model_id)',
'           model,',
'       i.IMAGE_NAME,',
'       i.FILE_NAME,',
'       i.MIME_TYPE FILE_TYPE,',
'       i.IMAGE_SIZE,',
'       i.PIXEL_WIDTH,',
'       i.PIXEL_HEIGHT,',
'       --i.CHARACTER_SET,',
'       --i.BLOB_CONTENT,',
'       i.INACTIVE_DATE,',
'       i.LAST_UPDATE_DATE,',
'       i.LAST_UPDATED_BY,',
'       i.CREATION_DATE,',
'       i.CREATED_BY',
'  FROM bg_qcis.QCIS_IMAGES i',
' WHERE i.MODEL_ID = :P20_MODEL_MASTER_ID',
'   AND i.PLANT_ID = :G_DEFAULT_PLANT_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P20_MODEL_MASTER_ID IS NOT NULL'
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Images</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(10082355879856233)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Images Found or this Model'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP,35:P35_IMAGES_ID,P35_MODEL_ID,G_DEFAULT_MODEL_ID:#IMAGES_ID#,#MODEL_ID#,#MODEL_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to Edit Image"'
,p_owner=>'DGRUGINS'
,p_internal_uid=>10082355879856233
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10082512117856235)
,p_db_column_name=>'PLANT_ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Plant Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10082673148856236)
,p_db_column_name=>'MODEL_ID'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Model Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10082900750856239)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10083087549856240)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY '
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10083105787856241)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10083285565856242)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10083313055856243)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10083999651856249)
,p_db_column_name=>'IMAGES_ID'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Images Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10084031986856250)
,p_db_column_name=>'PLT'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Plant Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10230261847431301)
,p_db_column_name=>'MODEL'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10230303489431302)
,p_db_column_name=>'IMAGE_NAME'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'Image Name'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE:&DEBUG.::G_FILE_ID:#IMAGES_ID#'
,p_column_linktext=>'#IMAGE_NAME#'
,p_column_link_attr=>'title="Click to View Image."'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10230401629431303)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>150
,p_column_identifier=>'L'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10230544037431304)
,p_db_column_name=>'FILE_TYPE'
,p_display_order=>160
,p_column_identifier=>'M'
,p_column_label=>'File Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10230681682431305)
,p_db_column_name=>'IMAGE_SIZE'
,p_display_order=>170
,p_column_identifier=>'N'
,p_column_label=>'Image Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10230741631431306)
,p_db_column_name=>'PIXEL_WIDTH'
,p_display_order=>180
,p_column_identifier=>'O'
,p_column_label=>'Pixel Width'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10230804414431307)
,p_db_column_name=>'PIXEL_HEIGHT'
,p_display_order=>190
,p_column_identifier=>'P'
,p_column_label=>'Pixel Height'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(10248147568572068)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102482'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMAGE_NAME:FILE_NAME:IMAGE_SIZE:PIXEL_WIDTH:PIXEL_HEIGHT:INACTIVE_DATE:CREATION_DATE:CREATED_BY:LAST_UPDATED_BY:LAST_UPDATE_DATE:'
,p_sort_column_1=>'IMAGE_NAME'
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
 p_id=>wwv_flow_api.id(10211660848210431)
,p_plug_name=>'Var Data List'
,p_parent_plug_id=>wwv_flow_api.id(9821690337334941)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>180
,p_plug_grid_column_span=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT header_id,',
'         mm.model_year || ''-'' || mm.model_name',
'             model,',
'         acc_group,',
'         accessory,',
'         sh.station_code || ''-'' || sh.station_name',
'             station,',
'         ss.substation_code || ''-'' || ss.substation_name',
'             substation,',
'         inspector_id,',
'         sequence_nbr,',
'         ins.inspection_name',
'             gig_sheet_name,',
'         NVL ((SELECT ''Y''',
'                 FROM DUAL',
'                WHERE EXISTS',
'                          (SELECT ''Y''',
'                             FROM bg_qcis.qcis_var_data_template_detail dtd',
'                            WHERE dtd.template_header_id = gsth.header_id)),',
'              ''N'')',
'             var_data_flag,',
'         gsth.inactive_date,',
'         gsth.CREATION_DATE,',
'         gsth.CREATED_BY,',
'         gsth.LAST_UPDATED_BY,',
'         gsth.LAST_UPDATE_DATE,',
'         sh.station_master_id,',
'         ss.substation_id',
'    FROM bg_qcis.qcis_gs_template_header gsth',
'         JOIN bg_qcis.qcis_model_master mm',
'             ON mm.model_master_id = gsth.model_id',
'         JOIN bg_qcis.qcis_station_master sh',
'             ON sh.station_master_id = gsth.station_id',
'         JOIN bg_qcis.qcis_substation ss',
'             ON ss.substation_id = gsth.substation_id',
'         JOIN bg_qcis.qcis_inspection_names ins',
'             ON ins.inspect_name_id = gsth.gig_sheet_name',
'   WHERE     gsth.gig_sheet_type = ''G''',
'         AND mm.model_master_id = :p20_model_master_id',
'         AND mm.plant_id = :G_DEFAULT_PLANT_ID',
'ORDER BY sequence_nbr, sh.station_code, ss.substation_code'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P20_MODEL_MASTER_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P20_MODEL_MASTER_ID IS NOT NULL'
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Variable Data</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(10211743987210432)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Var Data Found for this Model'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:502:&SESSION.::&DEBUG.:RP,502:P502_MODEL_ID,P502_STATION_ID,P502_SUBSTATION_ID,P502_SEQUENCE_NUMBER:&P20_MODEL_MASTER_ID.,#STATION_MASTER_ID#,#SUBSTATION_ID#,#SEQUENCE_NBR#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'JJOHNSON'
,p_internal_uid=>10211743987210432
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10211814816210433)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10211938310210434)
,p_db_column_name=>'MODEL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10212086181210435)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Acc Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10212118302210436)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10212264836210437)
,p_db_column_name=>'STATION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10212388068210438)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10212432540210439)
,p_db_column_name=>'INSPECTOR_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inspector Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10212506855210440)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Seq #'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10212618344210441)
,p_db_column_name=>'GIG_SHEET_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Gig Sheet Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10212758792210442)
,p_db_column_name=>'VAR_DATA_FLAG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Var Data'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10212896140210443)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13511261241267328)
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
 p_id=>wwv_flow_api.id(13511335653267329)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13511402747267330)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13511513264267331)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12009522466912938)
,p_db_column_name=>'STATION_MASTER_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Station Master Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12009604631912939)
,p_db_column_name=>'SUBSTATION_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Substation Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(10264518417039142)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102646'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATION:SUBSTATION:SEQUENCE_NBR:GIG_SHEET_NAME:ACC_GROUP:ACCESSORY:VAR_DATA_FLAG:INACTIVE_DATE::CREATION_DATE:CREATED_BY:LAST_UPDATED_BY:LAST_UPDATE_DATE:STATION_MASTER_ID:SUBSTATION_ID'
,p_sort_column_1=>'STATION'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SEQUENCE_NBR'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'SUBSTATION'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'STATION:0:0:0:0:0'
,p_break_enabled_on=>'STATION:0:0:0:0:0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10356159311143508)
,p_plug_name=>'Image Map Draft List'
,p_parent_plug_id=>wwv_flow_api.id(9821690337334941)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>150
,p_plug_grid_column_span=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT dr.header_id',
'           IM_DRAFT_HEADER,',
'       th.HEADER_ID',
'           IM_TEMPLATE_HEADER,',
'       (SELECT bm.brand_code',
'          FROM bg_qcis.QCIS_BRAND_MASTER bm',
'         WHERE bm.qcis_brand_master_id = dr.brand_id)',
'           brd,',
'       (SELECT dm.division_code',
'          FROM bg_qcis.QCIS_DIVISION_MASTER dm',
'         WHERE dm.qcis_division_master_id = dr.division_id)',
'           div,',
'       (SELECT pm.plant_code',
'          FROM bg_qcis.QCIS_PLANT_MASTER pm',
'         WHERE pm.qcis_plant_master_id = dr.plant_id)',
'           plt,',
'       (SELECT mm.model_year || ''-'' || mm.model_name',
'          FROM bg_qcis.QCIS_MODEL_MASTER mm',
'         WHERE mm.model_master_id = dr.model_id)',
'           model,',
'         dr.model_id,',
'       dr.acc_group',
'           grp,',
'       dr.accessory',
'           acc,',
'       (SELECT sh.station_code || ''-'' || sh.station_name',
'          FROM bg_qcis.QCIS_STATION_MASTER sh',
'         WHERE sh.station_master_id = dr.station_id)',
'           station,',
'       dr.station_id,',
'       dr.substation_id,',
'       (SELECT ss.substation_code || ''-'' || ss.substation_name',
'          FROM bg_qcis.QCIS_SUBSTATION ss',
'         WHERE ss.substation_id = dr.substation_id)',
'           substation,',
'       (SELECT im.image_name',
'          FROM bg_qcis.QCIS_IMAGES im',
'         WHERE im.images_id = dr.image_id)',
'           image,',
'       dr.image_id,',
'       dr.white_space_yn,',
'       dr.column_qty,',
'       dr.row_qty,',
'       dr.x_start,',
'       dr.y_start,',
'       dr.x_end,',
'       dr.y_end,',
'       (SELECT ins.inspection_name',
'          FROM bg_qcis.QCIS_INSPECTION_NAMES ins',
'         WHERE ins.inspect_name_id = dr.inspect_name_id)',
'           inspect_name,',
'       map_type,',
'       dr.INACTIVE_DATE,',
'       dr.CREATION_DATE,',
'       dr.CREATED_BY,',
'       dr.LAST_UPDATE_DATE,',
'       dr.LAST_UPDATED_BY',
'  FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT dr, bg_qcis.QCIS_IM_TEMPLATE_HEADER th',
' WHERE     dr.plant_id = :G_DEFAULT_PLANT_ID',
'       AND dr.model_id = :P20_MODEL_MASTER_ID',
'       AND MAP_TYPE = ''I''',
'       AND dr.HEADER_ID = th.DRAFT_ID(+)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P20_MODEL_MASTER_ID IS NOT NULL'
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>IM Drafts</b></div> '
);
end;
/
begin
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(10356437825143511)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Image Maps Found or this Model'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP::'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to Edit Image"'
,p_owner=>'DGRUGINS'
,p_internal_uid=>10356437825143511
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10358797526143534)
,p_db_column_name=>'STATION'
,p_display_order=>100
,p_column_identifier=>'W'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10358801266143535)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>110
,p_column_identifier=>'X'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10358983527143536)
,p_db_column_name=>'IMAGE'
,p_display_order=>120
,p_column_identifier=>'Y'
,p_column_label=>'Image Name'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE:&DEBUG.:RP:G_FILE_ID:#IMAGE_ID#'
,p_column_linktext=>'#IMAGE#'
,p_column_link_attr=>'title="Click to Display Image."'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10359146099143538)
,p_db_column_name=>'IM_DRAFT_HEADER'
,p_display_order=>130
,p_column_identifier=>'AA'
,p_column_label=>'Draft ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10359238035143539)
,p_db_column_name=>'IM_TEMPLATE_HEADER'
,p_display_order=>140
,p_column_identifier=>'AB'
,p_column_label=>'Template ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10359389261143540)
,p_db_column_name=>'BRD'
,p_display_order=>150
,p_column_identifier=>'AC'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10359425186143541)
,p_db_column_name=>'DIV'
,p_display_order=>160
,p_column_identifier=>'AD'
,p_column_label=>'Division'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10359547070143542)
,p_db_column_name=>'PLT'
,p_display_order=>170
,p_column_identifier=>'AE'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10359634366143543)
,p_db_column_name=>'MODEL'
,p_display_order=>180
,p_column_identifier=>'AF'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10359730027143544)
,p_db_column_name=>'GRP'
,p_display_order=>190
,p_column_identifier=>'AG'
,p_column_label=>'Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10359866719143545)
,p_db_column_name=>'ACC'
,p_display_order=>200
,p_column_identifier=>'AH'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10359968184143546)
,p_db_column_name=>'IMAGE_ID'
,p_display_order=>210
,p_column_identifier=>'AI'
,p_column_label=>'Image Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10360001433143547)
,p_db_column_name=>'WHITE_SPACE_YN'
,p_display_order=>220
,p_column_identifier=>'AJ'
,p_column_label=>'White Space'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10360129976143548)
,p_db_column_name=>'COLUMN_QTY'
,p_display_order=>230
,p_column_identifier=>'AK'
,p_column_label=>'Column Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10360263085143549)
,p_db_column_name=>'ROW_QTY'
,p_display_order=>240
,p_column_identifier=>'AL'
,p_column_label=>'Row Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10360334850143550)
,p_db_column_name=>'X_START'
,p_display_order=>250
,p_column_identifier=>'AM'
,p_column_label=>'X Start'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10381087261510701)
,p_db_column_name=>'Y_START'
,p_display_order=>260
,p_column_identifier=>'AN'
,p_column_label=>'Y Start'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10381155541510702)
,p_db_column_name=>'X_END'
,p_display_order=>270
,p_column_identifier=>'AO'
,p_column_label=>'X End'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10381244146510703)
,p_db_column_name=>'Y_END'
,p_display_order=>280
,p_column_identifier=>'AP'
,p_column_label=>'Y End'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10381369988510704)
,p_db_column_name=>'INSPECT_NAME'
,p_display_order=>290
,p_column_identifier=>'AQ'
,p_column_label=>'Inspection Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10381468472510705)
,p_db_column_name=>'MAP_TYPE'
,p_display_order=>300
,p_column_identifier=>'AR'
,p_column_label=>'Map Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10381546241510706)
,p_db_column_name=>'MODEL_ID'
,p_display_order=>310
,p_column_identifier=>'AS'
,p_column_label=>'Model Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10381611471510707)
,p_db_column_name=>'STATION_ID'
,p_display_order=>320
,p_column_identifier=>'AT'
,p_column_label=>'Station Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10381762687510708)
,p_db_column_name=>'SUBSTATION_ID'
,p_display_order=>330
,p_column_identifier=>'AU'
,p_column_label=>'Substation Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10384629801510737)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>340
,p_column_identifier=>'AV'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13510811921267324)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>350
,p_column_identifier=>'AW'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13510965334267325)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>360
,p_column_identifier=>'AX'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13511045547267326)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>370
,p_column_identifier=>'AY'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13511174823267327)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>380
,p_column_identifier=>'AZ'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(10379315516245257)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'103794'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IM_DRAFT_HEADER:IM_TEMPLATE_HEADER:IMAGE:INSPECT_NAME:STATION:SUBSTATION:INACTIVE_DATE:CREATION_DATE:CREATED_BY:LAST_UPDATED_BY:LAST_UPDATE_DATE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10381854260510709)
,p_plug_name=>'Pin Map Draft List'
,p_parent_plug_id=>wwv_flow_api.id(9821690337334941)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>170
,p_plug_grid_column_span=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT dr.header_id',
'           IM_DRAFT_HEADER,',
'       th.HEADER_ID',
'           IM_TEMPLATE_HEADER,',
'       (SELECT bm.brand_code',
'          FROM bg_qcis.QCIS_BRAND_MASTER bm',
'         WHERE bm.qcis_brand_master_id = dr.brand_id)',
'           brd,',
'       (SELECT dm.division_code',
'          FROM bg_qcis.QCIS_DIVISION_MASTER dm',
'         WHERE dm.qcis_division_master_id = dr.division_id)',
'           div,',
'       (SELECT pm.plant_code',
'          FROM bg_qcis.QCIS_PLANT_MASTER pm',
'         WHERE pm.qcis_plant_master_id = dr.plant_id)',
'           plt,',
'       (SELECT mm.model_year || ''-'' || mm.model_name',
'          FROM bg_qcis.QCIS_MODEL_MASTER mm',
'         WHERE mm.model_master_id = dr.model_id)',
'           model,',
'         dr.model_id,',
'       dr.acc_group',
'           grp,',
'       dr.accessory',
'           acc,',
'       (SELECT sh.station_code || ''-'' || sh.station_name',
'          FROM bg_qcis.QCIS_STATION_MASTER sh',
'         WHERE sh.station_master_id = dr.station_id)',
'           station,',
'       dr.station_id,',
'       dr.substation_id,',
'       (SELECT ss.substation_code || ''-'' || ss.substation_name',
'          FROM bg_qcis.QCIS_SUBSTATION ss',
'         WHERE ss.substation_id = dr.substation_id)',
'           substation,',
'       (SELECT im.image_name',
'          FROM bg_qcis.QCIS_IMAGES im',
'         WHERE im.images_id = dr.image_id)',
'           image,',
'       dr.image_id,',
'       dr.white_space_yn,',
'       dr.column_qty,',
'       dr.row_qty,',
'       dr.x_start,',
'       dr.y_start,',
'       dr.x_end,',
'       dr.y_end,',
'       (SELECT ins.inspection_name',
'          FROM bg_qcis.QCIS_INSPECTION_NAMES ins',
'         WHERE ins.inspect_name_id = dr.inspect_name_id)',
'           inspect_name,',
'       map_type,',
'       dr.INACTIVE_DATE,',
'       dr.CREATION_DATE,',
'       dr.CREATED_BY,',
'       dr.LAST_UPDATED_BY,',
'       dr.LAST_UPDATE_DATE',
'  FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT dr, bg_qcis.QCIS_IM_TEMPLATE_HEADER th',
' WHERE     dr.plant_id = :G_DEFAULT_PLANT_ID',
'       AND dr.model_id = :P20_MODEL_MASTER_ID',
'       AND MAP_TYPE = ''P''',
'       AND dr.HEADER_ID = th.DRAFT_ID(+)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P20_MODEL_MASTER_ID IS NOT NULL'
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
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>PM Drafts</b></div> '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(10382137601510712)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Pin Maps Found for this Model'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP::'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'title="Click to Edit Image"'
,p_owner=>'DGRUGINS'
,p_internal_uid=>10382137601510712
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10382237808510713)
,p_db_column_name=>'STATION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10382308880510714)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10382461239510715)
,p_db_column_name=>'IMAGE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Image Name'
,p_column_link=>'f?p=&APP_ID.:220:&SESSION.:APPLICATION_PROCESS=GET_IMAGE:&DEBUG.:RP:G_FILE_ID:#IMAGE_ID#'
,p_column_linktext=>'#IMAGE#'
,p_column_link_attr=>'title="Click to Display Image."'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10382580057510716)
,p_db_column_name=>'IM_DRAFT_HEADER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Draft ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10382625589510717)
,p_db_column_name=>'IM_TEMPLATE_HEADER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Template ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10382771591510718)
,p_db_column_name=>'BRD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Brand Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10382842455510719)
,p_db_column_name=>'DIV'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Division'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10382905834510720)
,p_db_column_name=>'PLT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10383092723510721)
,p_db_column_name=>'MODEL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10383178279510722)
,p_db_column_name=>'GRP'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10383246258510723)
,p_db_column_name=>'ACC'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10383372711510724)
,p_db_column_name=>'IMAGE_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Image Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10383419429510725)
,p_db_column_name=>'WHITE_SPACE_YN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'White Space'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10383578637510726)
,p_db_column_name=>'COLUMN_QTY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Column Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10383699951510727)
,p_db_column_name=>'ROW_QTY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Row Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10383715893510728)
,p_db_column_name=>'X_START'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'X Start'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10383870263510729)
,p_db_column_name=>'Y_START'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Y Start'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10383937303510730)
,p_db_column_name=>'X_END'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'X End'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10384069844510731)
,p_db_column_name=>'Y_END'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Y End'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10384117830510732)
,p_db_column_name=>'INSPECT_NAME'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Inspection Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10384214298510733)
,p_db_column_name=>'MAP_TYPE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Map Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10384314034510734)
,p_db_column_name=>'MODEL_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Model Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10384416582510735)
,p_db_column_name=>'STATION_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Station Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10384560054510736)
,p_db_column_name=>'SUBSTATION_ID'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Substation Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10384717484510738)
,p_db_column_name=>'INACTIVE_DATE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Inactive Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13511694801267332)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Create Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13511723208267333)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13511879102267334)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13511907127267335)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(10418836212088316)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'104189'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IM_DRAFT_HEADER:IM_TEMPLATE_HEADER:IMAGE:INSPECT_NAME:STATION:SUBSTATION:WHITE_SPACE_YN:COLUMN_QTY:ROW_QTY:X_START:X_END:Y_START:Y_END:INACTIVE_DATE::CREATION_DATE:CREATED_BY:LAST_UPDATED_BY:LAST_UPDATE_DATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4834553858895743)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4830755935895705)
,p_button_name=>'Model'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Model'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM bg_qcis.QCIS_MODEL_MASTER ',
'WHERE MODEL_MASTER_ID = :P20_MODEL_MASTER_ID'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-ship'
,p_button_cattributes=>'title="Navigate to Model List."'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_grid_column=>3
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4835028677895748)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(4830755935895705)
,p_button_name=>'Stations'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Stations'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 FROM bg_qcis.QCIS_STATION_MASTER  ',
'WHERE PLANT_ID = :G_DEFAULT_PLANT_ID ',
'  AND MODEL_ID = :P20_MODEL_MASTER_ID'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-building'
,p_button_cattributes=>'title="Navigate to Inspection Station Kist."'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4835249835895750)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(4830755935895705)
,p_button_name=>'Images'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Images'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM bg_qcis.QCIS_IMAGES ',
'WHERE PLANT_ID = :G_DEFAULT_PLANT_ID',
'  AND MODEL_ID = :P20_MODEL_MASTER_ID'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-image'
,p_grid_column_attributes=>'title="Navigate to Image List."'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6797100931424505)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(4830755935895705)
,p_button_name=>'Image_Maps'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'I -Maps'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT ',
'WHERE PLANT_ID = :G_DEFAULT_PLANT_ID',
'  AND MODEL_ID = :P20_MODEL_MASTER_ID',
' AND MAP_TYPE = ''I'''))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-map'
,p_button_cattributes=>'title="Navigate to IM TEmplate List"'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6797212152424506)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(4830755935895705)
,p_button_name=>'Pin_Maps'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'P - Maps'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM bg_qcis.QCIS_IM_TEMPLATE_DRAFT ',
'WHERE PLANT_ID = :G_DEFAULT_PLANT_ID',
'  AND MODEL_ID = :P20_MODEL_MASTER_ID',
' AND MAP_TYPE = ''P'''))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-map-o'
,p_button_cattributes=>'title="Navigate to PM Manual Set up."'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6797081518424504)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(4830755935895705)
,p_button_name=>'Gig_Sheets'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Gig Sheets'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM bg_qcis.QCIS_GS_TEMPLATE_HEADER',
'WHERE PLANT_ID = :G_DEFAULT_PLANT_ID',
'  AND MODEL_ID = :P20_MODEL_MASTER_ID'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-list'
,p_grid_column_attributes=>'title="Navigate to Gig Sheet List"'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6796969638424503)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(4830755935895705)
,p_button_name=>'Vardata'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Var Data'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'  FROM bg_qcis.qcis_inspection_header',
' WHERE inspection_type = ''V''',
'   AND model_id = :p20_model_master_id;'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-variable'
,p_button_cattributes=>'title="Navigate to Variable Data manual Set up."'
,p_grid_column_attributes=>'title="Navigate to Var Data Manual Set up."'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9629758570440930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9629598684440928)
,p_button_name=>'CREATE_GS_TEMPLATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.:RP,240:P240_MODEL_ID,P240_PLANT_ID:&P20_MODEL_MASTER_ID.,&G_DEFAULT_PLANT_ID.'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Click to Create New Gig Sheet Template."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9817979135334904)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4830639245895704)
,p_button_name=>'Refresh'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP,RIR:IR[MODEL_LIST]_MASTER_MODEL_ID,P20_MODEL_MASTER_ID,G_DEFAULT_MODEL_ID:,,'
,p_icon_css_classes=>'fa-refresh'
,p_button_cattributes=>'title="Reset page and clear saved Model."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10080051636856210)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9822311458334948)
,p_button_name=>'CREATE_STATION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--pillEnd:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:RP,205:P205_MODEL_ID:&P20_MODEL_MASTER_ID.'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Click to Create New Station."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10082212800856232)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10082068241856230)
,p_button_name=>'CREATE_IMAGE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:RP:P34_MODEL_MASTER_ID:&P20_MODEL_MASTER_ID.'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Click to Create New Image."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10356346739143510)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10356159311143508)
,p_button_name=>'CREATE_IM_TEMP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:RP:P205_MODEL_ID:&P20_MODEL_MASTER_ID.'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Click to Create New IM Template."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10382006749510711)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10381854260510709)
,p_button_name=>'CREATE_PM_TEMPLATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:RP:P205_MODEL_ID:&P20_MODEL_MASTER_ID.'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Click to Create PM TEmplate."'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4834463024895742)
,p_name=>'P20_MODEL_MASTER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4033353896740023)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6796747548424501)
,p_name=>'P20_MODEL_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4033353896740023)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6796885264424502)
,p_name=>'P20_MODEL_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4033353896740023)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9821754483334942)
,p_name=>'P20_WHAT_BUTTON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9821690337334941)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10002660948247514)
,p_name=>'P20_SELECTED_STATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9822311458334948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10230939180431308)
,p_name=>'P20_PLANT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4033854634740028)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'RETURN :G_DEFAULT_PLANT_ID;',
'END;'))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11231247270716522)
,p_name=>'P20_MODEL_YEAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4033353896740023)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16021576054334206)
,p_name=>'P20_COLLASPE_EXPAND_FLAG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(4830639245895704)
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12252600297324521)
,p_name=>'Close Dialoge from Model Setup Model List'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(4033854634740028)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12252756506324522)
,p_event_id=>wwv_flow_api.id(12252600297324521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4830755935895705)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12252802499324523)
,p_event_id=>wwv_flow_api.id(12252600297324521)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9822311458334948)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10876208861073226)
,p_name=>'Refresh Model Report'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(9820276520334927)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10876308273073227)
,p_event_id=>wwv_flow_api.id(10876208861073226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9820276520334927)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10079892732856208)
,p_name=>'Refresh Station List'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(9822311458334948)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10079952022856209)
,p_event_id=>wwv_flow_api.id(10079892732856208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9822311458334948)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10806296777883434)
,p_name=>'Refresh Image List'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(10082068241856230)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10806389405883435)
,p_event_id=>wwv_flow_api.id(10806296777883434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10082068241856230)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10806416115883436)
,p_name=>'Refresh IM Draft List'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(10356159311143508)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10806565855883437)
,p_event_id=>wwv_flow_api.id(10806416115883436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10356159311143508)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10806653714883438)
,p_name=>'Refresh GST List'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(9629598684440928)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10806738011883439)
,p_event_id=>wwv_flow_api.id(10806653714883438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9629598684440928)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10806834757883440)
,p_name=>'Refresh Var Data List'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(10211660848210431)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10806928248883441)
,p_event_id=>wwv_flow_api.id(10806834757883440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10211660848210431)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26055735126603718)
,p_name=>'Refresh Model List'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(4830639245895704)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26055808735603719)
,p_event_id=>wwv_flow_api.id(26055735126603718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4830639245895704)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10267468885086716)
,p_name=>'Show vardata region'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6796969638424503)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10695497731052247)
,p_event_id=>wwv_flow_api.id(10267468885086716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9820276520334927)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10744663839100104)
,p_event_id=>wwv_flow_api.id(10267468885086716)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9821690337334941)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10695389310052246)
,p_event_id=>wwv_flow_api.id(10267468885086716)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9822311458334948)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10695240660052245)
,p_event_id=>wwv_flow_api.id(10267468885086716)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10082068241856230)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10695110009052244)
,p_event_id=>wwv_flow_api.id(10267468885086716)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10356159311143508)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10695038086052243)
,p_event_id=>wwv_flow_api.id(10267468885086716)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9629598684440928)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10694924028052242)
,p_event_id=>wwv_flow_api.id(10267468885086716)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10381854260510709)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10694864047052241)
,p_event_id=>wwv_flow_api.id(10267468885086716)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10211660848210431)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10694759230052240)
,p_event_id=>wwv_flow_api.id(10267468885086716)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10211660848210431)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10267915402086721)
,p_name=>'Show images region'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(4835249835895750)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10691609585052209)
,p_event_id=>wwv_flow_api.id(10267915402086721)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9820276520334927)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10695730816052250)
,p_event_id=>wwv_flow_api.id(10267915402086721)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9821690337334941)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10691572331052208)
,p_event_id=>wwv_flow_api.id(10267915402086721)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9822311458334948)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10691404021052207)
,p_event_id=>wwv_flow_api.id(10267915402086721)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10082068241856230)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10691360590052206)
,p_event_id=>wwv_flow_api.id(10267915402086721)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10356159311143508)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10691290724052205)
,p_event_id=>wwv_flow_api.id(10267915402086721)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9629598684440928)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10691121914052204)
,p_event_id=>wwv_flow_api.id(10267915402086721)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10381854260510709)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10691009039052203)
,p_event_id=>wwv_flow_api.id(10267915402086721)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10211660848210431)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10690968186052202)
,p_event_id=>wwv_flow_api.id(10267915402086721)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10082068241856230)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10268508413086727)
,p_name=>'Show station regions'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(4835028677895748)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10690889151052201)
,p_event_id=>wwv_flow_api.id(10268508413086727)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9822311458334948)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10695697236052249)
,p_event_id=>wwv_flow_api.id(10268508413086727)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9821690337334941)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10270828898086750)
,p_event_id=>wwv_flow_api.id(10268508413086727)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10211660848210431)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10270739048086749)
,p_event_id=>wwv_flow_api.id(10268508413086727)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10381854260510709)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10270607572086748)
,p_event_id=>wwv_flow_api.id(10268508413086727)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9629598684440928)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10270591327086747)
,p_event_id=>wwv_flow_api.id(10268508413086727)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10356159311143508)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10270480264086746)
,p_event_id=>wwv_flow_api.id(10268508413086727)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10082068241856230)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10270365171086745)
,p_event_id=>wwv_flow_api.id(10268508413086727)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9822311458334948)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10270257210086744)
,p_event_id=>wwv_flow_api.id(10268508413086727)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9820276520334927)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10269089974086732)
,p_name=>'Show model region'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(4834553858895743)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10695520257052248)
,p_event_id=>wwv_flow_api.id(10269089974086732)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9821690337334941)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10269132661086733)
,p_event_id=>wwv_flow_api.id(10269089974086732)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9820276520334927)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10269513291086737)
,p_event_id=>wwv_flow_api.id(10269089974086732)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9820276520334927)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10269364502086735)
,p_event_id=>wwv_flow_api.id(10269089974086732)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9822311458334948)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10269411460086736)
,p_event_id=>wwv_flow_api.id(10269089974086732)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10082068241856230)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10269910907086741)
,p_event_id=>wwv_flow_api.id(10269089974086732)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10356159311143508)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10270057750086742)
,p_event_id=>wwv_flow_api.id(10269089974086732)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9629598684440928)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10270143354086743)
,p_event_id=>wwv_flow_api.id(10269089974086732)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10381854260510709)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10269228946086734)
,p_event_id=>wwv_flow_api.id(10269089974086732)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10211660848210431)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10691797701052210)
,p_name=>'Show image maps region'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6797100931424505)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10692629732052219)
,p_event_id=>wwv_flow_api.id(10691797701052210)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10356159311143508)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10744385831100101)
,p_event_id=>wwv_flow_api.id(10691797701052210)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9821690337334941)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10692520136052218)
,p_event_id=>wwv_flow_api.id(10691797701052210)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10211660848210431)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10692400149052217)
,p_event_id=>wwv_flow_api.id(10691797701052210)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10381854260510709)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10692351982052216)
,p_event_id=>wwv_flow_api.id(10691797701052210)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9629598684440928)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10692262996052215)
,p_event_id=>wwv_flow_api.id(10691797701052210)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10356159311143508)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10692112054052214)
,p_event_id=>wwv_flow_api.id(10691797701052210)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10082068241856230)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10692013401052213)
,p_event_id=>wwv_flow_api.id(10691797701052210)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9822311458334948)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10691936117052212)
,p_event_id=>wwv_flow_api.id(10691797701052210)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9820276520334927)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10692763752052220)
,p_name=>'Show PIN maps region'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6797212152424506)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10693672910052229)
,p_event_id=>wwv_flow_api.id(10692763752052220)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9820276520334927)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10744465081100102)
,p_event_id=>wwv_flow_api.id(10692763752052220)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9821690337334941)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10693526808052228)
,p_event_id=>wwv_flow_api.id(10692763752052220)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9822311458334948)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10693415092052227)
,p_event_id=>wwv_flow_api.id(10692763752052220)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10082068241856230)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10693349395052226)
,p_event_id=>wwv_flow_api.id(10692763752052220)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10356159311143508)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10693248021052225)
,p_event_id=>wwv_flow_api.id(10692763752052220)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9629598684440928)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10693140985052224)
,p_event_id=>wwv_flow_api.id(10692763752052220)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10381854260510709)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10693054138052223)
,p_event_id=>wwv_flow_api.id(10692763752052220)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10211660848210431)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10692965544052222)
,p_event_id=>wwv_flow_api.id(10692763752052220)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10381854260510709)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10693795313052230)
,p_name=>'Show gig sheets'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6797081518424504)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10694674289052239)
,p_event_id=>wwv_flow_api.id(10693795313052230)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9629598684440928)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10744583146100103)
,p_event_id=>wwv_flow_api.id(10693795313052230)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9821690337334941)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10694599492052238)
,p_event_id=>wwv_flow_api.id(10693795313052230)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10211660848210431)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10694444054052237)
,p_event_id=>wwv_flow_api.id(10693795313052230)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10381854260510709)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10694305521052236)
,p_event_id=>wwv_flow_api.id(10693795313052230)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9629598684440928)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10694224881052235)
,p_event_id=>wwv_flow_api.id(10693795313052230)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10356159311143508)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10694188061052234)
,p_event_id=>wwv_flow_api.id(10693795313052230)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10082068241856230)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10694043968052233)
,p_event_id=>wwv_flow_api.id(10693795313052230)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9822311458334948)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10693965611052232)
,p_event_id=>wwv_flow_api.id(10693795313052230)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9820276520334927)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10744710460100105)
,p_name=>'Hide reports region'
,p_event_sequence=>170
,p_condition_element=>'P20_MODEL_MASTER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10744891048100106)
,p_event_id=>wwv_flow_api.id(10744710460100105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9821690337334941)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16020165165329114)
,p_name=>'COLLASPE_EXPAND'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16021071308329115)
,p_event_id=>wwv_flow_api.id(16020165165329114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_COLLASPE_EXPAND_FLAG'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CASE WHEN :P20_MODEL_MASTER_ID IS NULL THEN 1',
'            ELSE 0',
'         END',
'FROM DUAL;'))
,p_attribute_07=>'P20_MODEL_MASTER_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16020536259329115)
,p_event_id=>wwv_flow_api.id(16020165165329114)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4830639245895704)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var numEntries = $v("P20_COLLASPE_EXPAND_FLAG")',
'   , $region = $(this.affectedElements[0]);',
'  ',
' if (numEntries > 0 && $region.hasClass(''is-collapsed'') ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
'  ',
' if (numEntries < 1 && $region.hasClass(''is-expanded'') ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
''))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26056262123603723)
,p_name=>'Dialog Closed Model Level Maintenance'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(4033854634740028)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26056368547603724)
,p_event_id=>wwv_flow_api.id(26056262123603723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4830755935895705)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26056406236603725)
,p_event_id=>wwv_flow_api.id(26056262123603723)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4830639245895704)
,p_stop_execution_on_error=>'Y'
);
end;
/
