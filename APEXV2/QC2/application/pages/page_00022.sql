prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Inspections'
,p_alias=>'INSPECTIONS_LIST'
,p_step_title=>'Inspections'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(4612861988980385)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'tr.highlight-row:hover td',
'{',
' background-color: #d12421 !important;',
' color: #ffffff;',
'}',
'</style>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''a[href*="INSP_REDIRECT"]'').each(function(index) {',
'   lnk = $(this).attr(''href'');',
'   $(this).parent()',
'          .parent(''tr'')',
'    .attr(''data-href'', lnk)',
'    .click(function(){',
'      window.location=$(this).attr(''data-href'');',
'    })',
'    .mouseover(function(){',
'      $(this).css(''cursor'', ''pointer'');',
'    })',
'    .mouseleave(function(){',
'      $(this).css(''cursor'', ''default'');',
'    })',
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190926165909'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6554771170144399)
,p_plug_name=>'Inspection Menu'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--small'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79427203392908471)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(2521417633445854)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(79444899804908522)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72842264075147126)
,p_plug_name=>'Inspection Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2221479265109127)
,p_plug_name=>'Inspections'
,p_region_name=>'INSPECTIONS'
,p_parent_plug_id=>wwv_flow_api.id(72842264075147126)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418037021908456)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--/* Formatted on 9/12/2019 8:32:37 AM (QP5 v5.336)  */',
'SELECT /*+ INDEX_JOIN(BMAST) */      ',
'       ih.header_id,',
'       ih.sequence_nbr,',
'       ih.plant_code                                      plt,',
'       ih.brand_code                                      brd,',
'       ih.division_code                                   div,',
'       ih.model_id                                        model_id,',
'       ih.model                                           model,',
'       TO_NUMBER (SUBSTR (ih.model, 1, 4))                MODEL_YEAR,',
'       SUBSTR (ih.model, 6)                               MODEL_NAME,',
'       ih.acc_group,',
'       ih.accessory,',
'       ih.station_code || ''-'' || ih.station_name          station,',
'       TO_NUMBER (ih.station_code)                        STATION_CODE,',
'       ih.substation_code || ''-'' || ih.substation_name    substation,',
'       TO_NUMBER (ih.substation_code)                     SUBSTATION_CODE,',
'       ih.inspection_name                                 inspect,',
'       ih.inspection_type,',
'       ih.hull_number,',
'       bmast.hin,',
'       ih.status,',
'       ih.mandatory_yn,',
'       number_of_incomplete,',
'       number_of_mandatory,',
'       number_of_short_stock,',
'       number_of_outstanding,',
'       number_of_repaired,',
'          ih.plant_code',
'       || ih.model',
'       || ih.hull_number',
'       || TO_CHAR (ih.acc_group, ''0000000000'')',
'       || TO_CHAR (ih.accessory, ''0000000000'')',
'       || TO_CHAR (ih.station_code, ''0000000000'')',
'       || TO_CHAR (ih.substation_code, ''0000000000'')',
'       || TO_CHAR (ih.sequence_nbr, ''0000000000'')         sortkey,',
'       CASE',
'           WHEN bmast.boat_status = ''P'' AND ih.inspection_type = ''Image Map'' AND ih.status = ''I'' AND NVL(ih.mandatory_yn,''N'') = ''N''  ',
'           THEN NULL',
'           WHEN bmast.boat_status = ''P'' AND ih.inspection_type <> ''Image Map'' AND ih.status <> ''C''',
'           THEN',
'               ''<span class = "fa fa-tag fa-1x" </span>''',
'		    WHEN bmast.boat_status = ''F'' AND bmast.green_tag_date IS NOT NULL',
'           THEN',
'               ''<span class = "fa fa-tag fa-1x" </span>''    ',
'		   ELSE NULL',
'       END',
'        AS "TAG",',
'	',
'	',
'	CASE',
'           WHEN bmast.boat_status = ''P'' AND ih.inspection_type = ''Image Map'' AND ih.status = ''I'' AND NVL(ih.mandatory_yn,''N'') = ''N''  ',
'           THEN NULL',
'           WHEN bmast.boat_status = ''P'' AND ih.inspection_type <> ''Image Map'' AND ih.status <> ''C''',
'           THEN',
'               ''Red''',
'           WHEN bmast.boat_status = ''F'' AND bmast.green_tag_date IS NOT NULL',
'           THEN',
'               ''Green''',
'           ELSE',
'               ''Black''',
'       END                                       AS "DynamicTag",',
'       bmast.BOAT_STATUS,',
'       bmast.ORDER_NUMBER,',
'       bmast.BOAT_MASTER_ID',
'  FROM bg_qcis.QCIS_BOAT_MASTER_UNION_INSP_VW  bmast,',
'       bg_qcis.qcis_inspection_selection_vw    ih',
' WHERE ih.plant_id = :G_DEFAULT_PLANT_ID',
'       AND ih.number_of_qcis <> 0',
'       AND bmast.plant_id = ih.plant_id',
'       AND bmast.model_id = ih.model_id',
'       AND bmast.hull_number = ih.hull_number',
'       AND EXISTS ( SELECT 1 FROM bg_qcis.QCIS_MODEL_MASTER m WHERE m.MODEL_MASTER_ID = ih.MODEL_ID AND m.INACTIVE_DATE IS NULL)'))
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
'	<div style="font-size: 16px; color: steelblue"><b>Inspection List</b> ',
'<br><br/>',
'</div>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2221588756109128)
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
,p_internal_uid=>2221588756109128
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2221638000109129)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Header ID'
,p_column_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.::P66_INSPECTION_HEADER_ID,P66_INSPECTION_TYPE:#HEADER_ID#,#INSPECTION_TYPE##INSP_REDIRECT:&SESSION.::&DEBUG.::P66_INSPECTION_HEADER_ID,P66_INSPECTION_TYPE:#HEADER_ID#,#INSPECTION_TYPE##INSP_REDIRECT#:&SESSION.::&DEB'
||'UG.:RP:P66_INSPECTION_HEADER_ID,P66_INSPECTION_TYPE:#HEADER_ID#,#INSPECTION_TYPE#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_link_attr=>'title="Navigate to Inspection - #INSPECT#"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'INSP_REDIRECT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2221898685109131)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sequence #'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2221951902109132)
,p_db_column_name=>'PLT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2222057608109133)
,p_db_column_name=>'BRD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2222107828109134)
,p_db_column_name=>'DIV'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Division'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2222249319109135)
,p_db_column_name=>'MODEL_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Model ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2222363536109136)
,p_db_column_name=>'MODEL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2222409796109137)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2222527742109138)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Model Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2222623802109139)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'ACC Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2222730508109140)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2222801248109141)
,p_db_column_name=>'STATION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2222941132109142)
,p_db_column_name=>'STATION_CODE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Station Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2223037355109143)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2223113339109144)
,p_db_column_name=>'SUBSTATION_CODE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Substation Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2223232391109145)
,p_db_column_name=>'INSPECT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Inspect'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2223326339109146)
,p_db_column_name=>'INSPECTION_TYPE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Inspection Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2223408722109147)
,p_db_column_name=>'HULL_NUMBER'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Hull Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2223503884109148)
,p_db_column_name=>'HIN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'HIN'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2223668147109149)
,p_db_column_name=>'STATUS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2223727943109150)
,p_db_column_name=>'MANDATORY_YN'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Mandatory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2493943963711001)
,p_db_column_name=>'NUMBER_OF_INCOMPLETE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Incompletes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2494045499711002)
,p_db_column_name=>'NUMBER_OF_MANDATORY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Mandatories'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2494109748711003)
,p_db_column_name=>'NUMBER_OF_SHORT_STOCK'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Short Stocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2494268371711004)
,p_db_column_name=>'NUMBER_OF_OUTSTANDING'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Outstandings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2494388345711005)
,p_db_column_name=>'NUMBER_OF_REPAIRED'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Repaired'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2494419560711006)
,p_db_column_name=>'SORTKEY'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Sortkey'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2498699721711048)
,p_db_column_name=>'TAG'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Tag Type'
,p_column_html_expression=>'<span style="color:#DynamicTag#">#TAG#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2498708942711049)
,p_db_column_name=>'DynamicTag'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Dynamictag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2498808592711050)
,p_db_column_name=>'BOAT_STATUS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Boat Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3021376173620301)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Order Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3022274398620310)
,p_db_column_name=>'BOAT_MASTER_ID'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Boat Master Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2507820084726169)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25079'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'HEADER_ID:BRD:MODEL_YEAR:MODEL_NAME:STATION:SUBSTATION:SEQUENCE_NBR:INSPECT:INSPECTION_TYPE:HULL_NUMBER:HIN:STATUS:MANDATORY_YN:NUMBER_OF_INCOMPLETE:NUMBER_OF_MANDATORY:NUMBER_OF_SHORT_STOCK:NUMBER_OF_OUTSTANDING:NUMBER_OF_REPAIRED:'
,p_sort_column_1=>'MODEL_YEAR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MODEL_NAME'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'HULL_NUMBER'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'STATION_CODE'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'SUBSTATION_CODE'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'SEQUENCE_NBR'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(4154743680728639)
,p_report_id=>wwv_flow_api.id(2507820084726169)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'!='
,p_expr=>'C'
,p_condition_sql=>'"STATUS" != #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# != ''C''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3026163272620349)
,p_name=>'After Refresh run clickable row'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(72842264075147126)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3026279537620350)
,p_event_id=>wwv_flow_api.id(3026163272620349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''a[href*="INSP_REDIRECT"]'').each(function(index) {',
'   lnk = $(this).attr(''href'');',
'   $(this).parent()',
'          .parent(''tr'')',
'    .attr(''data-href'', lnk)',
'    .click(function(){',
'      window.location=$(this).attr(''data-href'');',
'    })',
'    .mouseover(function(){',
'      $(this).css(''cursor'', ''pointer'');',
'    })',
'    .mouseleave(function(){',
'      $(this).css(''cursor'', ''default'');',
'    })',
'});'))
,p_stop_execution_on_error=>'Y'
);
end;
/
