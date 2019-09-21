prompt --application/pages/page_00124
begin
wwv_flow_api.create_page(
 p_id=>124
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Red Tag Report Print'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'Red Tag Report Print'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_html_page_onload=>'onload="Print()"'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'function Print(){document.body.offsetHeight;window.print()}',
'</script>'))
,p_step_template=>wwv_flow_api.id(90704752091242393)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190919182521'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176951197413974239)
,p_plug_name=>'Page Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708365363242438)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(176951815450974250)
,p_name=>'Red Tag Report'
,p_template=>wwv_flow_api.id(90708365363242438)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/11/2019 9:35:14 AM (QP5 v5.336) */',
'SELECT ddvw.inspection,',
'       (   ddvw.inspection_type',
'        || '' - ''',
'        || ddvw.inspection_task',
'        || '' - ''',
'        || ddvw.component_name)                      details,',
'       ddvw.status,',
'       ddvw.defect_description,',
'       ddvw.last_update_date,',
'       ddvw.defect_comment,',
'       ddvw.responsible_area,',
'       DECODE (ddvw.status,  ''S'', 1,  ''O'', 2,  3)    sort_order,',
'       VARIABLE_DATA_VALUE',
'  FROM BG_QCIS.QCIS_DEFECT_DETAIL_VW ddvw',
' WHERE     ddvw.order_number = :P124_ORDER_NUMBER',
'       AND (   ddvw.status IN (''S'', ''O'')',
'            OR (ddvw.mandatory_yn = ''Y'' AND ddvw.status = ''I''))',
'UNION',
'SELECT ddvw2.inspection,',
'       ddvw2.inspection_type || '' - INSPECTION NOT STARTED''    details,',
'       ddvw2.status,',
'       NULL,                                       --ddvw2.defect_description,',
'       NULL,                                         --ddvw2.last_update_date,',
'       NULL,                                           --ddvw2.defect_comment,',
'       ddvw2.responsible_area,',
'       CASE',
'           WHEN ddvw2.status = ''S'' THEN 1',
'           WHEN ddvw2.status = ''O'' THEN 2',
'           ELSE 3',
'       END                      sort_order,',
'       NULL                          --               ddws.VARIABLE_DATA_VALUE',
'  FROM (SELECT dm.division_name,',
'               bm.brand_name,',
'               pm.plant_name,',
'               mm.model_year,',
'               mm.model_name,',
'               mm.model_desc,',
'               bmast.hull_number,',
'               bmast.boat_status,',
'               bmast.finished_date,',
'               bmast.finished_by,',
'               bmast.ss_ship_yn,',
'               bmast.order_number,',
'               bmast.shipped_by,',
'               bmast.ship_date,',
'               bmast.rack_date,                                -- Added 6/4/13',
'               bmast.racked_by,                                -- Added 6/4/13',
'               sm.station_name,',
'               sm.station_code,',
'               ss.substation_code,',
'               ss.substation_name,',
'               insp.inspection_name,',
'               ih.sequence_nbr,',
'                  sm.station_name',
'               || ''-''',
'               || ss.substation_name',
'               || ''-''',
'               || insp.inspection_name    INSPECTION,',
'               ih.inspection_type,',
'               NULL, --id.detail_id  union_detail_id,                                    -- Added 6/4/13',
'               TO_NUMBER (NULL),                            -- sequence_number',
'               NULL,                                 --'' '' || id.section_name,',
'               ih.acc_group,',
'               ih.accessory,',
'               DECODE (ih.acc_group, 0, ''N'', ''Y''),',
'               NULL,                                       --dch.sub_com_desc,',
'               NULL,                                       --dch.sub_com_code,',
'               NULL,                                     --dch.commodity_desc,',
'               NULL,                                     --dch.commodity_code,',
'               NULL,                                 --dcd.defect_description,',
'               NULL,                                        --dcd.defect_code,',
'               NULL,                                  --dcd.defect_definition,',
'               NULL                       component_code,      -- Added 6/4/13',
'               NULL, --cm.component_name,                                      -- Added 6/4/13',
'               ih.responsible_area,',
'               NULL                       help_link,',
'               ih.mandatory_yn,',
'               ih.STATUS,                                         --id.status,',
'               NULL,                                         --id.repair_type,',
'               NULL,                                     --id.defect_category,',
'               NULL,                                      --id.defect_comment,',
'               NULL,                                           --id.good_date,',
'               NULL,                                       --id.good_username,',
'               NULL,                                         --id.failed_date,',
'               NULL,                                     --id.failed_username,',
'               NULL,                   -- DECODE (id.ss_date, NULL, ''N'', ''Y''),',
'               NULL,                                             --id.ss_date,',
'               NULL,                                         --id.ss_username,',
'               NULL,                                         --id.repair_date,',
'               NULL,                                     --id.repair_username,',
'               NULL                       na_yn,',
'               TO_DATE (NULL)             na_date,',
'               NULL                       na_username,',
'               NULL,                                       --id.inactive_date,',
'               NULL,                                    --id.last_update_date,',
'               NULL,                                     --id.last_updated_by,',
'               NULL,                                       --id.creation_date,',
'               NULL,                                          --id.created_by,',
'               NULL                       variable_data_value, --var_data_value',
'               ih.header_id,',
'               NULL                                           --id.rework_time',
'          FROM bg_qcis.qcis_inspection_header  ih,',
'               bg_qcis.qcis_brand_master       bm,',
'               bg_qcis.qcis_division_master    dm,',
'               bg_qcis.qcis_model_master       mm,',
'               bg_qcis.qcis_plant_master       pm,',
'               bg_qcis.qcis_station_master     sm,',
'               bg_qcis.qcis_substation         ss,',
'               bg_qcis.qcis_boat_master        bmast,',
'               --  bg_qcis.qcis_im_detail           id,',
'               bg_qcis.qcis_inspection_names   insp',
'         --  bg_qcis.qcis_defect_code_header  dch,',
'         --  bg_qcis.qcis_defect_code_detail  dcd,',
'         --  bg_qcis.qcis_component_master    cm                     -- Added 6/4/13',
'         WHERE     ih.inspection_type = ''I''',
'               AND ih.STATUS = ''I''',
'               AND bm.qcis_brand_master_id = ih.brand_id',
'               AND pm.qcis_plant_master_id = ih.plant_id',
'               AND dm.qcis_division_master_id = ih.division_id',
'               AND mm.model_master_id = ih.model_id',
'               AND sm.station_master_id = ih.station_id',
'               AND ss.substation_id = ih.substation_id',
'               AND bmast.brand_id = ih.brand_id',
'               AND bmast.division_id = ih.division_id',
'               AND bmast.plant_id = ih.plant_id',
'               AND bmast.model_id = ih.model_id',
'               AND bmast.hull_number = ih.hull_number',
'               --  AND id.component_id = cm.component_id(+)                -- Added 6/4/13',
'               --  AND id.header_id(+) = ih.header_id',
'               AND insp.inspect_name_id(+) = ih.inspect_name_id) ddvw2',
' WHERE     order_number = :P124_ORDER_NUMBER',
'       AND (status IN (''S'', ''O'') OR (mandatory_yn = ''Y'' AND status = ''I''))',
'ORDER BY sort_order'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(90727087126242477)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No Red Tag Data Found'
,p_query_num_rows_item=>'100000'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14371096139122724)
,p_query_column_id=>1
,p_column_alias=>'INSPECTION'
,p_column_display_sequence=>1
,p_column_heading=>'Inspection'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_column_width=>200
,p_include_in_export=>'Y'
,p_print_col_width=>'21'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14367936680122720)
,p_query_column_id=>2
,p_column_alias=>'DETAILS'
,p_column_display_sequence=>2
,p_column_heading=>'Details'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'15'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14368317916122721)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_include_in_export=>'Y'
,p_print_col_width=>'9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14368733733122721)
,p_query_column_id=>4
,p_column_alias=>'DEFECT_DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Defect Description'
,p_include_in_export=>'Y'
,p_print_col_width=>'15'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14369085536122722)
,p_query_column_id=>5
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Update Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'12'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14369529611122722)
,p_query_column_id=>6
,p_column_alias=>'DEFECT_COMMENT'
,p_column_display_sequence=>6
,p_column_heading=>'Defect Comment'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14369854906122723)
,p_query_column_id=>7
,p_column_alias=>'RESPONSIBLE_AREA'
,p_column_display_sequence=>8
,p_column_heading=>'Responsible Area'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'6'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14370263280122723)
,p_query_column_id=>8
,p_column_alias=>'SORT_ORDER'
,p_column_display_sequence=>9
,p_column_heading=>'Sort Order'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14370662047122724)
,p_query_column_id=>9
,p_column_alias=>'VARIABLE_DATA_VALUE'
,p_column_display_sequence=>7
,p_column_heading=>'Variable Data Value'
,p_include_in_export=>'Y'
,p_print_col_width=>'9'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176952897251974254)
,p_plug_name=>'Tag Header'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90708365363242438)
,p_plug_display_sequence=>20
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'<span style="font-weight: bold; color:BLACK; font-size:30px" >',
'&P193_TITLE.',
'</span>',
'',
'<span style="font-size:1px" >',
'<br></br>',
'</span>',
'',
'<span style="font-weight: bold; color:BLACK; font-size:30px" >',
'&P193_STATUS.',
'</span>',
'',
'<br></br>',
'<br></br>',
'',
'',
'<span style="font-weight: bold; color:black; font-size:19px" > ',
'Model:&#160;&P124_MODEL_NAME. &#160; &#160; &#160; &#160; ',
'MY:&#160;&P124_MODEL_YEAR. &#160; &#160; &#160; &#160; ',
'Hull:&#160;&P124_HULL. &#160; &#160; &#160; &#160; ',
'HIN:&#160;&P124_HIN. &#160; &#160; &#160; &#160;',
'</span>',
' ',
'<br></br>',
'',
'<span style="font-weight: bold; color:black; font-size:16px" > ',
'Engine Type:&#160;&P124_ENGINE_TYPE. &#160; &#160; &#160; &#160; ',
'<br></br>',
'Engine SN:&#160; &P193_ENGINE_SN.',
'',
'',
'<br></br>',
'Order Number:&#160;&P193_ORDER_NUMBER. &#160; &#160; &#160; ',
'Order Due Date:&#160;&P193_ORDER_DUE_DATE. &#160; &#160; &#160;',
'',
'</center>',
'<br></br>',
'Rack Date:&#160; &P193_RACK_DATE. &#160; &#160; &#160;&#160; &#160; &#160;Racked By:&#160;&P193_RACKED_BY.',
'',
'<br></br>',
'</span>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14359995119122709)
,p_name=>'P124_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_item_default=>'Quality Assurance'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14360406330122710)
,p_name=>'P124_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_item_default=>'DO NOT SHIP'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14360817098122710)
,p_name=>'P124_ROWID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14361180957122711)
,p_name=>'P124_BOAT_MASTER_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14361626875122711)
,p_name=>'P124_BOAT_STATUS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14362845668122712)
,p_name=>'P124_MODEL_NAME'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_use_cache_before_default=>'NO'
,p_source=>'MODEL_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14363185035122712)
,p_name=>'P124_MODEL_YEAR'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_use_cache_before_default=>'NO'
,p_source=>'MODEL_YEAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14363634425122713)
,p_name=>'P124_HULL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_use_cache_before_default=>'NO'
,p_source=>'HULL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14363950556122713)
,p_name=>'P124_HIN'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OHHIN ',
'FROM OPDTA.OPOHP@obms ',
'WHERE OHORD = trim(:P124_ORDER_NUMBER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14364353263122713)
,p_name=>'P124_ORDER_NUMBER'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14364832853122714)
,p_name=>'P124_ORDER_DUE_DATE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_date(OHGMM || ''/'' || OHGDD || ''/'' || OHGYY, ''MM/DD/RRRR'') ',
'from opdta.opohp@obms ',
'WHERE OHORD = trim(:P124_ORDER_NUMBER)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14365188539122714)
,p_name=>'P124_ENGINE_TYPE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select AMDES',
'  from OPDTA.OPAMP@obms',
' where AMYR = trim(:P124_MODEL_YEAR)',
'   and AMGRUP = 20',
'   and AMACC = (select ODACC',
'                  from OPDTA.OPODP@obms',
'                 where ODORD = trim(:P124_ORDER_NUMBER)',
'                   and ODGRUP = 20)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14365589387122714)
,p_name=>'P124_ENGINE_SN'
,p_item_sequence=>375
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S#SERL ENG_SN',
'          FROM OPDTA.OPS#P@obms',
'         WHERE     S#MYR = TO_NUMBER ( :P124_MODEL_YEAR)',
'               AND S#MDL = TRIM ( :P124_MODEL_NAME)',
'               AND S#ORD = TRIM ( :P124_ORDER_NUMBER)',
'               AND S##TYP IN (SELECT DISTINCT SYKEY',
'                                FROM gpdtalib.gpsyp@obms',
'                               WHERE sytype IN (''SRLNO''))'))
,p_source_type=>'QUERY_COLON'
,p_source_post_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'REPLACE (:P124_ENGINE_SN, '':'', '', '')',
''))
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14366437858122716)
,p_name=>'P124_ROWS'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_item_default=>'500'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14366763841122716)
,p_name=>'P124_RACK_DATE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'RACK_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14367244527122716)
,p_name=>'P124_RACKED_BY'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(176951197413974239)
,p_use_cache_before_default=>'NO'
,p_source=>'RACKED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14314315766954301)
,p_name=>'Dialog Close'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14314348558954302)
,p_event_id=>wwv_flow_api.id(14314315766954301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14371768385122725)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_BOAT_MASTER'
,p_attribute_02=>'QCIS_BOAT_MASTER'
,p_attribute_03=>'P124_BOAT_MASTER_ID'
,p_attribute_04=>'BOAT_MASTER_ID'
);
end;
/
