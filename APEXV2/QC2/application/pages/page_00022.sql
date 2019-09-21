prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Inspections'
,p_alias=>'INSPECTIONS_LIST'
,p_step_title=>'Inspections'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(15904210384314369)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190919180705'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17846119565478383)
,p_plug_name=>'Inspection Menu'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--small'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90718551788242455)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(13812766028779838)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(90736248200242506)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(84133612470481110)
,p_plug_name=>'Inspection Container'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13512827660443111)
,p_plug_name=>'Inspections'
,p_parent_plug_id=>wwv_flow_api.id(84133612470481110)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
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
'           WHEN bmast.boat_status = ''P''',
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
'           WHEN bmast.boat_status = ''P''',
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
'	<div style="font-size: 16px; color: steelblue"><b>Inspection List</b></div> ',
'<br></br>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(13512937151443112)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP:P66_INSPECTION_TYPE,P66_INSPECTION_HEADER_ID:#INSPECTION_TYPE#,#HEADER_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_attr=>'TITLE="Edit Inspection"'
,p_owner=>'DGRUGINS'
,p_internal_uid=>2221588756109128
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13512986395443113)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Header ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13513247080443115)
,p_db_column_name=>'SEQUENCE_NBR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sequence #'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13513300297443116)
,p_db_column_name=>'PLT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Plant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13513406003443117)
,p_db_column_name=>'BRD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13513456223443118)
,p_db_column_name=>'DIV'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Division'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13513597714443119)
,p_db_column_name=>'MODEL_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Model ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13513711931443120)
,p_db_column_name=>'MODEL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Model'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13513758191443121)
,p_db_column_name=>'MODEL_YEAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Model Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13513876137443122)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Model Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13513972197443123)
,p_db_column_name=>'ACC_GROUP'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'ACC Group'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13514078903443124)
,p_db_column_name=>'ACCESSORY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Accessory'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13514149643443125)
,p_db_column_name=>'STATION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Station'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13514289527443126)
,p_db_column_name=>'STATION_CODE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Station Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13514385750443127)
,p_db_column_name=>'SUBSTATION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Substation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13514461734443128)
,p_db_column_name=>'SUBSTATION_CODE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Substation Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13514580786443129)
,p_db_column_name=>'INSPECT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Inspect'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13514674734443130)
,p_db_column_name=>'INSPECTION_TYPE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Inspection Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13514757117443131)
,p_db_column_name=>'HULL_NUMBER'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Hull Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13514852279443132)
,p_db_column_name=>'HIN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'HIN'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13515016542443133)
,p_db_column_name=>'STATUS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13515076338443134)
,p_db_column_name=>'MANDATORY_YN'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Mandatory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13785292359044985)
,p_db_column_name=>'NUMBER_OF_INCOMPLETE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Incompletes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13785393895044986)
,p_db_column_name=>'NUMBER_OF_MANDATORY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Mandatories'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13785458144044987)
,p_db_column_name=>'NUMBER_OF_SHORT_STOCK'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Short Stocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13785616767044988)
,p_db_column_name=>'NUMBER_OF_OUTSTANDING'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Outstandings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13785736741044989)
,p_db_column_name=>'NUMBER_OF_REPAIRED'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Repaired'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13785767956044990)
,p_db_column_name=>'SORTKEY'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Sortkey'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13790048117045032)
,p_db_column_name=>'TAG'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Tag Type'
,p_column_link=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:RP:P128_BOAT_MASTER_ID,P128_BOAT_STATUS,P128_ORDER_NUMBER,P128_PAGE_BACK_TO:#BOAT_MASTER_ID#,#BOAT_STATUS#,#ORDER_NUMBER#,INSPECTIONS_LIST'
,p_column_linktext=>'<span style="color:#DynamicTag#">#TAG#</span>'
,p_column_link_attr=>'TiTLE="Click To Navigate to  #DynamicTag#  Report."'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13790057338045033)
,p_db_column_name=>'DynamicTag'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Dynamictag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13790156988045034)
,p_db_column_name=>'BOAT_STATUS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Boat Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14312724568954285)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Order Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14313622793954294)
,p_db_column_name=>'BOAT_MASTER_ID'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Boat Master Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(13799168480060153)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25079'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TAG:BRD:MODEL_YEAR:MODEL_NAME:STATION:SUBSTATION:SEQUENCE_NBR:INSPECT:INSPECTION_TYPE:HULL_NUMBER:HIN:STATUS:MANDATORY_YN:NUMBER_OF_INCOMPLETE:NUMBER_OF_MANDATORY:NUMBER_OF_SHORT_STOCK:NUMBER_OF_OUTSTANDING:NUMBER_OF_REPAIRED:'
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
 p_id=>wwv_flow_api.id(14355562786887329)
,p_report_id=>wwv_flow_api.id(13799168480060153)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'!='
,p_expr=>'C'
,p_condition_sql=>'"STATUS" != #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# != ''C''  '
,p_enabled=>'Y'
);
end;
/
