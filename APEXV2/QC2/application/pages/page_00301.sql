prompt --application/pages/page_00301
begin
wwv_flow_api.create_page(
 p_id=>301
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Model Template Hierarchy'
,p_page_mode=>'MODAL'
,p_step_title=>'Model Template Hierarchy'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'775'
,p_dialog_width=>'1500'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190909080813'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52875191383881416)
,p_plug_name=>'Model Template Set Up Progress'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 8/15/2019 1:33:40 PM (QP5 v5.313) */',
'           SELECT /* positive number id of the element (should start with 1 or higher) */',
'                  CID',
'                      AS ID,',
'                  /* positive number id of the parent (top parent should be 0) */',
'                  PID',
'                      AS PARENT_ID,',
'                  /* name of the item */',
'                  SUBSTR (PARENT_NAME, 1, 21)',
'                      AS NAME,',
'                  /* tooltip for the item */',
'                  ID_TYPE',
'                      AS TOOLTIP,',
'                  CASE WHEN LEVEL = 1 THEN SUBSTR (CID, 1) END',
'                      AS LINK_ID,',
'                  /* link of the item (is only used when is leaf) */',
'                  NULL',
'                      AS LINK,',
'                  /* color of the item */',
'                  CASE',
'                      WHEN LEVEL = 1 THEN ''rgba(0, 159, 239, 1)''',
'                      WHEN LEVEL = 2 THEN ''rgba(7, 65, 185, 1)''',
'                      WHEN LEVEL = 3 THEN ''rgba(82, 82, 82, 1)''',
'                      WHEN LEVEL = 4 THEN ''rgba(206, 81, 8, 1)''',
'                      ELSE NULL',
'                  END',
'                      AS COLOR',
'             FROM (SELECT PID,',
'                          CID,',
'                          PARENT_NAME,',
'                          ID_TYPE',
'                     FROM (SELECT 0                        PID,',
'                                  100000000000000 + m.MODEL_MASTER_ID CID,',
'                                  MODEL_YEAR || '' - '' || MODEL_NAME parent_name,',
'                                  ''Model''                  ID_TYPE',
'                             FROM bg_qcis.QCIS_MODEL_MASTER m',
'                            WHERE     PLANT_ID = :G_DEFAULT_PLANT_ID',
'                                  AND MODEL_MASTER_ID = :P301_MODEL_MASTER_ID',
'                                  AND INACTIVE_DATE IS NULL',
'                           UNION ALL                         -- get station id',
'                           SELECT 100000000000000 + s.MODEL_ID',
'                                      PID,',
'                                  200000000000000 + s.STATION_MASTER_ID',
'                                      CID,',
'                                  STATION_CODE || '' - '' || INITCAP (STATION_NAME)',
'                                      parent_name,',
'                                  ''Station''',
'                                      ID_TYPE',
'                             FROM bg_qcis.QCIS_STATION_MASTER s',
'                            WHERE     s.MODEL_ID = :P301_MODEL_MASTER_ID',
'                                  AND s.PLANT_ID = :G_DEFAULT_PLANT_ID',
'                                  AND s.INACTIVE_DATE IS NULL',
'                           UNION ALL',
'                           SELECT 200000000000000 + ss.STATION_MASTER_ID',
'                                      PID,',
'                                  300000000000000 + SUBSTATION_ID',
'                                      CID,',
'                                     ss.SUBSTATION_CODE',
'                                  || '' - ''',
'                                  || INITCAP (SUBSTATION_NAME)',
'                                      parent_name,',
'                                  ''Substation''',
'                                      ID_TYPE',
'                             FROM bg_qcis.QCIS_SUBSTATION ss,',
'                                  bg_qcis.QCIS_STATION_MASTER s',
'                            WHERE     s.PLANT_ID = :G_DEFAULT_PLANT_ID',
'                                  AND ss.STATION_MASTER_ID = s.STATION_MASTER_ID',
'                                  AND s.MODEL_ID = :P301_MODEL_MASTER_ID',
'                                  AND ss.INACTIVE_DATE IS NULL',
'                           UNION ALL',
'                           SELECT 300000000000000 + SUBSTATION_ID',
'                                      PID,',
'                                  400000000000000 + HEADER_ID',
'                                      CID,',
'                                  INITCAP (inspection_name)',
'                                      PARENT_NAME,',
'                                     ''Inspection''',
'                                  || '': ''',
'                                  || CASE',
'                                         WHEN INSPECTION_TYPE = ''I''',
'                                         THEN',
'                                             ''Image Map''',
'                                         WHEN INSPECTION_TYPE = ''V''',
'                                         THEN',
'                                             ''Variable Data''',
'                                         WHEN INSPECTION_TYPE = ''G''',
'                                         THEN',
'                                             ''Gig Sheet''',
'                                         WHEN INSPECTION_TYPE = ''P''',
'                                         THEN',
'                                             ''Pin Map''',
'                                         WHEN INSPECTION_TYPE = ''G/V''',
'                                         THEN',
'                                             ''Gig Sheet/Var Data''',
'                                     END',
'                                      ID_TYPE',
'                             FROM (SELECT td.map_type INSPECTION_TYPE, --   insp.inspection_name                              inspection,',
'                                          th.inspect_name_id,',
'                                          insp.inspection_name,',
'                                          th.header_id,',
'                                          ss.substation_id',
'                                     FROM bg_qcis.qcis_im_template_header th,',
'                                          bg_qcis.qcis_im_template_draft td,',
'                                          bg_qcis.qcis_plant_master pm,',
'                                          bg_qcis.qcis_model_master mm,',
'                                          bg_qcis.qcis_station_master sm,',
'                                          bg_qcis.qcis_substation ss,',
'                                          bg_qcis.qcis_inspection_names insp',
'                                    WHERE     th.draft_id = td.header_id',
'                                          AND th.PLANT_CODE = pm.PLANT_CODE',
'                                          AND pm.qcis_plant_master_id =',
'                                              :G_DEFAULT_PLANT_ID',
'                                          AND th.model_year = mm.model_year',
'                                          AND th.model_name = mm.model_name',
'                                          AND th.station_id = SM.station_master_id',
'                                          AND th.substation_id = ss.substation_id',
'                                          AND th.inspect_name_id = insp.inspect_name_id',
'                                   UNION ALL',
'                                   SELECT CASE',
'                                              WHEN     (EXISTS',
'                                                            (SELECT ''Y''',
'                                                               FROM bg_qcis.qcis_gs_template_detail',
'                                                                    gtd',
'                                                              WHERE gtd.header_id =',
'                                                                    gh.header_id))',
'                                                   AND (EXISTS',
'                                                            (SELECT ''Y''',
'                                                               FROM bg_qcis.qcis_var_data_template_detail',
'                                                                    vtd',
'                                                              WHERE vtd.template_header_id =',
'                                                                    gh.header_id))',
'                                              THEN',
'                                                  ''G/V''',
'                                              WHEN EXISTS',
'                                                       (SELECT ''Y''',
'                                                          FROM bg_qcis.qcis_var_data_template_detail',
'                                                               vtd',
'                                                         WHERE vtd.template_header_id =',
'                                                               gh.header_id)',
'                                              THEN',
'                                                  ''V''',
'                                              ELSE',
'                                                  ''G''',
'                                          END',
'                                              INSPECTION_TYPE,',
'                                          --  insp.inspection_name  inspection_NAME,',
'                                          insp.inspect_name_id,',
'                                          insp.inspection_name,',
'                                          HEADER_ID,',
'                                          ss.substation_id',
'                                     FROM bg_qcis.qcis_gs_template_header gh,',
'                                          bg_qcis.qcis_plant_master pm,',
'                                          bg_qcis.qcis_model_master mm,',
'                                          bg_qcis.qcis_station_master sm,',
'                                          bg_qcis.qcis_substation ss,',
'                                          bg_qcis.qcis_inspection_names insp',
'                                    WHERE     gh.PLANT_ID = pm.QCIS_PLANT_MASTER_ID',
'                                          AND gh.MODEL_ID = mm.MODEL_MASTER_ID',
'                                          AND gh.plant_id = :G_DEFAULT_PLANT_ID',
'                                          AND gh.station_id = SM.station_master_id',
'                                          AND gh.substation_id = ss.substation_id',
'                                          AND gh.gig_sheet_name = insp.inspect_name_id)))',
'       START WITH pid = 0',
'       CONNECT BY PRIOR cid = pid',
'ORDER SIBLINGS BY TO_NUMBER (',
'                      SUBSTR (PARENT_NAME, 1, INSTR (PARENT_NAME, ''-'') - 2))'))
,p_plug_source_type=>'PLUGIN_APEX.D3.ORGANIZATION.CHART'
,p_ajax_items_to_submit=>'P301_MODEL_MASTER_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P301_MODEL_MASTER_ID IS NOT NULL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{  ',
'   "modus":"diagonal",',
'   "refresh":0,',
'   "minHeight":"450px",',
'   "transitionDuration":750,',
'   "rectangleWidth":150,',
'   "rectangleHeight":60,',
'   "rectangleSpacing":10,',
'   "rectangleColor":"rgba(41, 128, 185, 1)",',
'   "rectangleLeafColor":"rgba(121, 121, 121, 1)",',
'   "cutTextAfter":30,',
'   "textColor":"white"',
'}'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27587384008750013)
,p_plug_name=>'Color Legend'
,p_parent_plug_id=>wwv_flow_api.id(52875191383881416)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_column=>9
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div style="font-size: 12px; color: black"><b>Color Legend for Model Template Progress  </b></div> ',
'',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56055200632430335)
,p_plug_name=>'Template Set Up & Maintenance'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_api.id(90709650764242441)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58082189964607565)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(90708438328242439)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36777608886680178)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(58082189964607565)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90737515645242533)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27587507399750014)
,p_name=>'P301_MODEL_LEGEND'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27587384008750013)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_tag_attributes=>' input type="text" readonly="readonly" style="background:#009FEF;" '
,p_colspan=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27587562268750015)
,p_name=>'P301_STATION_LEGEND'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27587384008750013)
,p_prompt=>'Station'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_tag_attributes=>' input type="text" readonly="readonly" style="background:#0741B9;" '
,p_colspan=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27587688591750016)
,p_name=>'P301_SUBSTATION_LEGEND'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27587384008750013)
,p_prompt=>'Substation'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_tag_attributes=>' input type="text" readonly="readonly" style="background:#525252;" '
,p_colspan=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27587775985750017)
,p_name=>'P301_INPECTION_LEGEND'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27587384008750013)
,p_prompt=>'Inspection'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_tag_attributes=>' input type="text" readonly="readonly" style="background:#CE5108;" '
,p_colspan=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(90736939652242519)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36582775553480956)
,p_name=>'P301_MODEL_MASTER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(56055200632430335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36583154333480957)
,p_name=>'P301_MODEL_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(56055200632430335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36583618523480957)
,p_name=>'P301_MODEL_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(56055200632430335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36584016358480957)
,p_name=>'P301_MODEL_YEAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(56055200632430335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27587894632750018)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(36777608886680178)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27588031661750019)
,p_event_id=>wwv_flow_api.id(27587894632750018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
end;
/
