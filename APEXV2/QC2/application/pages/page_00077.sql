prompt --application/pages/page_00077
begin
wwv_flow_api.create_page(
 p_id=>77
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Var Data Defect Entry'
,p_page_mode=>'MODAL'
,p_step_title=>'Var Data Entry'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'',
'//-->',
'</script>',
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
' htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
'',
'//-->',
'</script>',
'',
'<script language="JavaScript1.1" type="text/javascript">',
'',
'function load_buyer_code_list(pThis,pSelect)',
'  { ',
'    var l_Return = null;',
'    var l_Select = html_GetElement(pSelect);',
'//    alert(''here I am'');',
'//  First, load the buyer codes for the plant',
'    var get = new htmldb_Get(null,html_GetElement(''pFlowId'').value,',
'    ''APPLICATION_PROCESS=LOAD_BUYER_CODES'',0);',
'    get.add(''PLANT_MASTER_ID'',pThis.value);',
'    gReturn = get.get(''XML'');',
'    if(gReturn && l_Select)',
'      {',
'        var l_Count = gReturn.getElementsByTagName("option").length;',
'//        alert(l_Count);',
'        l_Select.length = 0;',
'        appendToSelect(l_Select, '''','' '');',
'        for(var i=0;i<l_Count;i++)',
'          {',
'            var l_Opt_Xml = gReturn.getElementsByTagName("option")[i];',
'            appendToSelect(l_Select, l_Opt_Xml.getAttribute(''value''),',
'            l_Opt_Xml.firstChild.nodeValue)',
'          }',
'      }',
'      get = null;',
'// Now load the default bill-to code',
'    var get = new htmldb_Get(null,&APP_ID.,''APPLICATION_PROCESS=GET_DEFAULT_BILL_TO'',0);',
'    get.add(''PLANT_MASTER_ID'',pThis.value);',
'    gReturn = get.get();',
'    if(gReturn)',
'      {  html_GetElement(''P22_BILL_TO_CODE'').value = gReturn  }',
'    else',
'      {  html_GetElement(''P22_BILL_TO_CODE'').value = ''???''  }',
'',
'// Now load the default ship_to code',
'    var get = new htmldb_Get(null,&APP_ID.,''APPLICATION_PROCESS=GET_DEFAULT_SHIP_TO'',0);',
'    get.add(''PLANT_MASTER_ID'',pThis.value);',
'    gReturn = get.get();',
'    if(gReturn)',
'      {  html_GetElement(''P22_SHIP_TO_CODE'').value = gReturn  }',
'    else',
'      {  html_GetElement(''P22_SHIP_TO_CODE'').value = ''???''  }',
'',
'//  Lastly, load the departments for the plant',
'    var l_Return = null;',
'    var l_Select = html_GetElement(''P22_DEPARTMENT'');',
'    var get = new htmldb_Get(null,html_GetElement(''pFlowId'').value,',
'    ''APPLICATION_PROCESS=LOAD_DEPARTMENT_CODES'',0);',
'    get.add(''PLANT_MASTER_ID'',pThis.value);',
'    gReturn = get.get(''XML'');',
'    if(gReturn && l_Select)',
'      {',
'        var l_Count = gReturn.getElementsByTagName("option").length;',
'//        alert(l_Count);',
'        l_Select.length = 0;',
'        for(var i=0;i<l_Count;i++)',
'          {',
'            var l_Opt_Xml = gReturn.getElementsByTagName("option")[i];',
'            appendToSelect(l_Select, l_Opt_Xml.getAttribute(''value''),',
'            l_Opt_Xml.firstChild.nodeValue)',
'          }',
'      }',
'      get = null;',
'',
'  }',
'',
'',
'function appendToSelect(pSelect, pValue, pContent) ',
'  {',
'    var l_Opt = document.createElement("option");',
'    l_Opt.value = pValue;',
'    if(document.all)',
'      {',
'        pSelect.options.add(l_Opt);',
'        l_Opt.innerText = pContent;',
'      }',
'    else',
'      {',
'        l_Opt.appendChild(document.createTextNode(pContent));',
'        pSelect.appendChild(l_Opt);',
'      }',
'  }',
'',
'function DropShipRegion(ds_flag)',
'  {',
'    if (ds_flag.value==''Y'') ',
'      {$x_Show(''DSREGION'');}',
'    else',
'      {$x_Hide(''DSREGION'');}',
'  }',
'',
'function get_supplier_name()',
'  {',
'    var get = new htmldb_Get (null,&APP_ID.,''APPLICATION_PROCESS=GET_SUPPLIER_INFO'',0);',
'    get.add(''P22_SUPPLIER_NUMBER'',html_GetElement(''P22_SUPPLIER_NUMBER'').value);',
'',
'  gReturn = get.get(''XML'');',
'',
'    if(gReturn){',
'        var l_Count = gReturn.getElementsByTagName("item").length;',
'//        alert(l_Count);',
'        for(var i = 0;i<l_Count;i++){',
'            var l_Opt_Xml = gReturn.getElementsByTagName("item")[i];',
'            var l_ID = l_Opt_Xml.getAttribute(''id'');',
'            var l_El = html_GetElement(l_ID);    ',
'            if(l_Opt_Xml.firstChild){',
'                var l_Value = l_Opt_Xml.firstChild.nodeValue;',
'            }else{',
'                var l_Value = '''';',
'            }',
'',
'            if(l_El){',
'                if(l_El.tagName == ''INPUT''){',
'                    l_El.value = l_Value;',
'                }else if(l_El.tagName == ''SPAN'' && ',
'                l_El.className == ''grabber''){',
'                    l_El.parentNode.innerHTML = l_Value;',
'                    l_El.parentNode.id = l_ID;',
'                }else{',
'                    l_El.innerHTML = l_Value;',
'                }',
'            }',
'        }',
'    }',
'  }',
'',
'function InfoRequestChanged(ir_flag)',
'  {',
'    if (ir_flag.value==''Y'') ',
'      {',
'//       alert(''Y'');',
'       html_GetElement (''P22_PRICING_FLAG'').disabled = true; ',
'       html_GetElement (''P22_PURCHASING_FLAG'').disabled = true; ',
'       $s(''P22_PRICING_FLAG'',''N'');',
'//       html_GetElement(''P22_PRICING_FLAG'').value = ''N'';',
'       $s(''P22_PURCHASING_FLAG'',''N'');',
'//       html_GetElement(''P22_PURCHASING_FLAG'').value = ''N'';',
'      }',
'    else',
'      {',
'//       alert(''N'');',
'       html_GetElement (''P22_PRICING_FLAG'').disabled = false; ',
'       html_GetElement (''P22_PURCHASING_FLAG'').disabled = false; ',
'       $s(''P22_PRICING_FLAG'',''N'');',
'//       html_GetElement(''P22_PRICING_FLAG'').value = ''N'';',
'       $s(''P22_PURCHASING_FLAG'',''Y'');',
'//       html_GetElement(''P22_PURCHASING_FLAG'').value = ''Y'';',
'      }',
'   }',
'',
'function InitInfoReqFlag(ReqHeaderID,itemID)',
'  {',
'    var get = new htmldb_Get(null,&APP_ID.,''APPLICATION_PROCESS=GET_INFO_REQ_SETTING'',0);',
'    get.add(''P_REQ_HEADER_ID'',ReqHeaderID);',
'    gReturn = get.get();',
'//    alert (gReturn);',
'    if (gReturn == ''Y'')',
'      {',
'//        alert(''Show it'');',
'       html_GetElement (''P22_PRICING_FLAG'').disabled = true; ',
'       html_GetElement (''P22_PURCHASING_FLAG'').disabled = true; ',
'      }   ',
'    else',
'      {',
'//        alert(''Hide it'');',
'       html_GetElement (''P22_PRICING_FLAG'').disabled = false; ',
'       html_GetElement (''P22_PURCHASING_FLAG'').disabled = false; ',
'      }',
'',
'  }',
'</script>',
'',
'<script>',
'function Print(){document.body.offsetHeight;window.print()}',
'</script>'))
,p_javascript_code_onload=>'first_field(''P57_VALUE_DISPLAY'');'
,p_step_template=>wwv_flow_api.id(79413403695908409)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'1100'
,p_dialog_width=>'1000'
,p_dialog_chained=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190924115038'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3024536957620333)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(79417089932908455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18726915557105434)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18727906668105441)
,p_plug_name=>'Variable Data Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="font-size: 14px; color: steelblue"><b>Variable Data Entry</b></div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148583437296210546)
,p_plug_name=>'Possible Page Items'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3024830699620336)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3024536957620333)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3253385034686728)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3024536957620333)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3253773547686728)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3024536957620333)
,p_button_name=>'NEW_SAMPLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'New Sample'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from dual',
' where :P77_STATUS = ''C''',
'   and NVL(:P77_READ_ONLY,''N'') = ''N''',
'   and :P77_USE_SAMPLES_FLAG = ''Y''',
'   and not exists (Select ''Y''',
'                     from qcis_var_data_detail',
'                    where header_id = :P77_HEADER_ID',
'                      and var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'                      and sample_number > :P77_SAMPLE_NUMBER)'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3254108818686728)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3024536957620333)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Save & Next'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from bg_qcis.qcis_inspection_header qih',
' join bg_qcis.qcis_boat_master qbm',
' on qbm.model_id = qih.model_id',
'  and qbm.hull_number = qih.hull_number',
' and qbm.order_number = qih.order_number',
' where qih.header_id = :P77_HEADER_ID',
'--   and qbm.boat_status <> ''F''',
'   and qbm.ship_date is NULL',
'   and :P77_NEXT_DATA_ID is not NULL'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3254536037686729)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(3024536957620333)
,p_button_name=>'CHANGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from bg_qcis.qcis_inspection_header qih',
'   join bg_qcis.qcis_boat_master qbm',
'     on qbm.model_id = qih.model_id',
'    and qbm.hull_number = qih.hull_number',
'    and qbm.order_number = qih.order_number',
' where qih.header_id = :P77_HEADER_ID',
'--   and qbm.boat_status = ''F''',
'   and qbm.ship_date is NOT NULL',
';'))
,p_button_condition_type=>'NOT_EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3252103367686726)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(3024536957620333)
,p_button_name=>'P77_SHORT_STOCK'
,p_button_static_id=>'P57_SHORT_STOCK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79446122616908548)
,p_button_image_alt=>'Short Stock'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P77_STATUS'
,p_button_condition2=>'I'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_request_source=>'Short Stock'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3254938294686730)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(3024536957620333)
,p_button_name=>'UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Repair'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P77_STATUS'
,p_button_condition2=>'O'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3255301322686730)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(3024536957620333)
,p_button_name=>'APPLY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Repair & Exit'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P77_STATUS'
,p_button_condition2=>'O'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3255734775686731)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(3024536957620333)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(79446167249908549)
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:Print();'
,p_button_condition=>'P77_HEADER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3282107964686777)
,p_branch_name=>'Go To Page 57'
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_HEADER_ID,P57_VAR_DATA_DETAIL_ID,P57_PREVIOUS_DATA_ID:&P57_HEADER_ID.,&P57_NEXT_DATA_ID.,&P57_VAR_DATA_DETAIL_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_comment=>'Created 15-JAN-2012 15:48 by JJOHNSON'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3283305325686778)
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_VAR_DATA_DETAIL_ID:&P57_NEXT_DATA_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(3254108818686728)
,p_branch_sequence=>11
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3281788184686776)
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_HEADER_ID,P57_VAR_DATA_DETAIL_ID:&P57_HEADER_ID.,&P57_NEW_DETAIL_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(3253773547686728)
,p_branch_sequence=>21
,p_branch_comment=>'Created 20-JAN-2012 17:14 by JJOHNSON'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3283797159686779)
,p_branch_action=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(3255301322686730)
,p_branch_sequence=>66
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3282953806686778)
,p_branch_name=>'Go To Page 57'
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_HEADER_ID,P57_VAR_DATA_DETAIL_ID,P57_NEXT_DATA_ID:&P57_HEADER_ID.,&P57_PREVIOUS_DATA_ID.,&P57_VAR_DATA_DETAIL_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>86
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 15-JAN-2012 15:48 by JJOHNSON'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3282524493686777)
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_HEADER_ID,P57_VAR_DATA_DETAIL_ID:&P57_HEADER_ID.,&P57_NEW_DETAIL_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(3254938294686730)
,p_branch_sequence=>96
,p_branch_comment=>'Created 20-JAN-2012 17:14 by JJOHNSON'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3284110328686779)
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>116
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 20-JAN-2012 16:06 by JJOHNSON'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3250272190686721)
,p_name=>'P77_LAST_UPDATE_DATE'
,p_item_sequence=>273
,p_item_plug_id=>wwv_flow_api.id(18726915557105434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Date'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3250606971686724)
,p_name=>'P77_LAST_UPDATED_BY'
,p_item_sequence=>283
,p_item_plug_id=>wwv_flow_api.id(18726915557105434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3251002960686724)
,p_name=>'P77_CREATION_DATE'
,p_item_sequence=>293
,p_item_plug_id=>wwv_flow_api.id(18726915557105434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Create Date'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'MM/DD/YYYY'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3251481066686725)
,p_name=>'P77_CREATED_BY'
,p_item_sequence=>303
,p_item_plug_id=>wwv_flow_api.id(18726915557105434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3256192556686731)
,p_name=>'P77_USE_SAMPLES_FLAG'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select use_samples_flag',
'  from bg_qcis.qcis_var_data_elements',
' where var_data_element_id = :P77_VAR_DATA_ELEMENT_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3256506712686733)
,p_name=>'P77_VAR_DATA_DETAIL_ID'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(148583437296210546)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3256981610686733)
,p_name=>'P77_HEADER_ID'
,p_item_sequence=>72
,p_item_plug_id=>wwv_flow_api.id(148583437296210546)
,p_use_cache_before_default=>'NO'
,p_source=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3257310462686734)
,p_name=>'P77_VAR_DATA_ELEMENT_ID'
,p_item_sequence=>73
,p_item_plug_id=>wwv_flow_api.id(148583437296210546)
,p_use_cache_before_default=>'NO'
,p_source=>'VAR_DATA_ELEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3257789253686734)
,p_name=>'P77_STATUS'
,p_item_sequence=>135
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3258197232686735)
,p_name=>'P77_READ_ONLY'
,p_item_sequence=>165
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y'' ',
'  from dual',
' where :P77_VAR_DATA_VALUE is NOT NULL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3258500359686736)
,p_name=>'P77_VALUE_DISPLAY'
,p_item_sequence=>206
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_return_value  varchar2(500);',
'',
'BEGIN',
'',
'  v_return_value := NULL;',
'',
'  Begin',
'    Select variable_data_value',
'      into v_return_value',
'      from qcis_var_data_detail',
'     where var_data_detail_id = :P77_VAR_DATA_DETAIL_ID;',
'  Exception',
'    When others then',
'      v_return_value := NULL;',
'  End;',
'',
'  return (v_return_value);',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Value:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from qcis_var_data_attributes',
' where var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'   and value_type_code = ''V'''))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3258939042686737)
,p_name=>'P77_VALUE_SELECT_LIST'
,p_item_sequence=>246
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_return_value  varchar2(500);',
'',
'BEGIN',
'',
'  v_return_value := NULL;',
'',
'  Begin',
'    Select variable_data_value',
'      into v_return_value',
'      from qcis_var_data_detail',
'     where var_data_detail_id = :P77_VAR_DATA_DETAIL_ID;',
'  Exception',
'    When others then',
'      v_return_value := NULL;',
'  End;',
'',
'  return (v_return_value);',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Value:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select allowable_value d, allowable_value r',
'  from qcis_var_data_attributes',
' where var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'   and value_type_code = ''V'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cHeight=>1
,p_colspan=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from qcis_var_data_attributes',
' where var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'   and value_type_code = ''V'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3259352232686738)
,p_name=>'P77_VARIABLE_DATA_VALUE'
,p_item_sequence=>256
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_source=>'VARIABLE_DATA_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3259782426686738)
,p_name=>'P77_MIN_MAX_VALUES'
,p_item_sequence=>286
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Min/Max: '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select min_value || ''/'' || max_value',
'  from qcis_var_data_elements',
' where var_data_element_id = :P77_VAR_DATA_ELEMENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from qcis_var_data_elements',
' where var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'   and ((min_value is NOT NULL)',
'       or (max_value is NOT NULL))'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3260163768686739)
,p_name=>'P77_LOWER_UPPER_LIMITS'
,p_item_sequence=>296
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lower/Upper Limits: '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select lower_control_limit || ''/'' || upper_control_limit',
'  from qcis_var_data_elements',
' where var_data_element_id = :P77_VAR_DATA_ELEMENT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from qcis_var_data_elements',
' where var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'   and ((lower_control_limit is NOT NULL) ',
'        or (upper_control_limit is NOT NULL))'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3260556579686740)
,p_name=>'P77_REPLACEMENT_FLAG'
,p_item_sequence=>317
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Replacement or Rework?  '
,p_source=>'REPLACEMENT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(4685285324311780)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_null_value=>'N'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from dual',
' where (:P77_READ_ONLY = ''Y'')',
'    or (:P77_STATUS = ''O'');'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3260912030686740)
,p_name=>'P77_SAMPLE_NUMBER'
,p_item_sequence=>318
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sample Number: '
,p_source=>'SAMPLE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P77_USE_SAMPLES_FLAG'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3261350813686741)
,p_name=>'P77_LOCATION_OF_OBJECT'
,p_item_sequence=>319
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_source=>'LOCATION_OF_OBJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3261729646686741)
,p_name=>'P77_BRAND_DISPLAY'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_return_value  varchar2(500);',
'',
'BEGIN',
'',
'  v_return_value := NULL;',
'',
'  Begin',
'    Select brand_value',
'      into v_return_value',
'      from qcis_var_data_detail',
'     where var_data_detail_id = :P77_VAR_DATA_DETAIL_ID;',
'  Exception',
'    When others then',
'      v_return_value := NULL;',
'  End;',
'',
'  return (v_return_value);',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Brand: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from qcis_var_data_elements    vde',
' where vde.var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'   and vde.show_brand_flag = ''Y''',
'   and NOT EXISTS (Select ''Y''',
'                     from qcis_var_data_attributes vda',
'                    where vda.var_data_element_id (+) = vde.var_data_element_id',
'                      and vda.value_type_code = ''B'')'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3262145503686742)
,p_name=>'P77_BRAND_SELECT_LIST'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_return_value  varchar2(500);',
'',
'BEGIN',
'',
'  v_return_value := NULL;',
'',
'  Begin',
'    Select brand_value',
'      into v_return_value',
'      from qcis_var_data_detail',
'     where var_data_detail_id = :P77_VAR_DATA_DETAIL_ID;',
'  Exception',
'    When others then',
'      v_return_value := NULL;',
'  End;',
'',
'  return (v_return_value);',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Brand: '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select allowable_value d, allowable_value r',
'  from qcis_var_data_attributes',
' where var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'   and value_type_code = ''B'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-None-'
,p_cHeight=>1
,p_colspan=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from qcis_var_data_elements    vde',
' where vde.var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'   and vde.show_brand_flag = ''Y''',
'   and EXISTS (Select ''Y''',
'                     from qcis_var_data_attributes vda',
'                    where vda.var_data_element_id (+) = vde.var_data_element_id',
'                      and vda.value_type_code = ''B'')'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3262593499686742)
,p_name=>'P77_BRAND_VALUE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_source=>'BRAND_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3262935962686742)
,p_name=>'P77_MODEL_DISPLAY'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_return_value  varchar2(500);',
'',
'BEGIN',
'',
'  v_return_value := NULL;',
'',
'  Begin',
'    Select model_value',
'      into v_return_value',
'      from qcis_var_data_detail',
'     where var_data_detail_id = :P77_VAR_DATA_DETAIL_ID;',
'  Exception',
'    When others then',
'      v_return_value := NULL;',
'  End;',
'',
'  return (v_return_value);',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Model: '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from qcis_var_data_elements    vde',
' where vde.var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'   and vde.show_model_flag = ''Y''',
'   and NOT EXISTS (Select ''Y''',
'                     from qcis_var_data_attributes vda',
'                    where vda.var_data_element_id (+) = vde.var_data_element_id',
'                      and vda.value_type_code = ''M'')'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(79445516733908527)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3263325907686743)
,p_name=>'P77_MODEL_SELECT_LIST'
,p_item_sequence=>411
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_return_value  varchar2(500);',
'',
'BEGIN',
'',
'  v_return_value := NULL;',
'',
'  Begin',
'    Select model_value',
'      into v_return_value',
'      from qcis_var_data_detail',
'     where var_data_detail_id = :P77_VAR_DATA_DETAIL_ID;',
'  Exception',
'    When others then',
'      v_return_value := NULL;',
'  End;',
'',
'  return (v_return_value);',
'',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Model: '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select allowable_value d, allowable_value r',
'  from qcis_var_data_attributes',
' where var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'   and value_type_code = ''M'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-None-'
,p_cHeight=>1
,p_colspan=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Y''',
'  from qcis_var_data_elements    vde',
' where vde.var_data_element_id = :P77_VAR_DATA_ELEMENT_ID',
'   and vde.show_model_flag = ''Y''',
'   and EXISTS (Select ''Y''',
'                     from qcis_var_data_attributes vda',
'                    where vda.var_data_element_id (+) = vde.var_data_element_id',
'                      and vda.value_type_code = ''M'')'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3263750245686743)
,p_name=>'P77_MODEL_VALUE'
,p_item_sequence=>421
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_source=>'MODEL_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3264146826686744)
,p_name=>'P77_UNIT_OF_MEASURE'
,p_item_sequence=>442
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit Of Measure: '
,p_source=>'UNIT_OF_MEASURE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3264572684686744)
,p_name=>'P77_COMMENTS'
,p_item_sequence=>443
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comments: '
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3264951621686744)
,p_name=>'P77_NEXT_DATA_ID'
,p_item_sequence=>453
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_source=>'P77_NEXT_DATA_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3265334137686745)
,p_name=>'P77_PREVIOUS_DATA_ID'
,p_item_sequence=>463
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_next_id          number;',
'  v_sequence_number  number;',
'  v_sample_number    number;',
'',
'  Cursor c_get_data_elements is',
'    Select var_data_detail_id,',
'           sequence_number,',
'           sample_number',
'      from qcis_var_data_detail',
'     where header_id = :P77_HEADER_ID',
'       and sequence_number = :P77_SEQUENCE_NUMBER',
'       and sample_number < :P77_SAMPLE_NUMBER',
'    UNION',
'    Select var_data_detail_id,',
'           sequence_number,',
'           sample_number',
'      from qcis_var_data_detail',
'     where header_id = :P77_HEADER_ID',
'       and sequence_number < :P77_SEQUENCE_NUMBER',
'     order by sequence_number DESC,sample_number DESC',
'    ;',
'',
'BEGIN',
'',
'  v_next_id := NULL;',
'',
'  Open c_get_data_elements;',
'  Fetch c_get_data_elements into v_next_id, v_sequence_number, v_sample_number;',
'  Close c_get_data_elements;',
'',
'  return (v_next_id);',
'',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3265759812686745)
,p_name=>'P77_ERROR_MESSAGE'
,p_item_sequence=>473
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P77_ERROR_MESSAGE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3266193928686746)
,p_name=>'P77_NEW_DETAIL_ID'
,p_item_sequence=>483
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3266513091686746)
,p_name=>'P77_REPAIR_DATE'
,p_item_sequence=>533
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_source=>'REPAIR_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3266977919686747)
,p_name=>'P77_REPAIR_USERNAME'
,p_item_sequence=>543
,p_item_plug_id=>wwv_flow_api.id(18727906668105441)
,p_use_cache_before_default=>'NO'
,p_source=>'REPAIR_USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3270539162686764)
,p_validation_name=>'P77_VARIABLE_DATA_VALUE has valid value'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_error_message  varchar2(100);',
'',
'BEGIN',
'',
'  v_error_message := NULL;',
'',
'  v_error_message := ',
'      var_data_utilities.validate_element(:P77_VAR_DATA_ELEMENT_ID,',
'                                          :P77_VARIABLE_DATA_VALUE,',
'                                          :P77_REPLACEMENT_FLAG);',
'',
'  If v_error_message is NULL then',
'    Return (TRUE);',
'  Else',
'    :P77_ERROR_MESSAGE := v_error_message;',
'    Return (FALSE);',
'  End if;',
'',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'&P77_ERROR_MESSAGE.'
,p_associated_item=>wwv_flow_api.id(3259352232686738)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3274889490686769)
,p_name=>'Hide Prev Button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_PREVIOUS_DATA_ID'
,p_condition_element=>'P77_PREVIOUS_DATA_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3275375359686771)
,p_event_id=>wwv_flow_api.id(3274889490686769)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'DOM_OBJECT'
,p_affected_elements=>'PREV_BUTTON'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3275882277686771)
,p_event_id=>wwv_flow_api.id(3274889490686769)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'DOM_OBJECT'
,p_affected_elements=>'PREV_BUTTON'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3276220719686772)
,p_name=>'Set Value'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_VALUE_SELECT_LIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3276755828686772)
,p_event_id=>wwv_flow_api.id(3276220719686772)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_VARIABLE_DATA_VALUE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P77_VALUE_SELECT_LIST'
,p_attribute_07=>'P77_VALUE_SELECT_LIST'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3277111281686772)
,p_name=>'Set Value'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_VALUE_DISPLAY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3277666966686773)
,p_event_id=>wwv_flow_api.id(3277111281686772)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_VARIABLE_DATA_VALUE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P77_VALUE_DISPLAY'
,p_attribute_07=>'P77_VALUE_DISPLAY'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3278006072686773)
,p_name=>'Set Brand'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_BRAND_DISPLAY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3278511058686773)
,p_event_id=>wwv_flow_api.id(3278006072686773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_BRAND_VALUE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P77_BRAND_DISPLAY'
,p_attribute_07=>'P77_BRAND_DISPLAY'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3278916103686774)
,p_name=>'Set Brand'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_BRAND_SELECT_LIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3279417066686774)
,p_event_id=>wwv_flow_api.id(3278916103686774)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_BRAND_VALUE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P77_BRAND_SELECT_LIST'
,p_attribute_07=>'P77_BRAND_SELECT_LIST'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3279890720686774)
,p_name=>'Set Model'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_MODEL_DISPLAY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3280301621686775)
,p_event_id=>wwv_flow_api.id(3279890720686774)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_MODEL_VALUE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P77_MODEL_DISPLAY'
,p_attribute_07=>'P77_MODEL_DISPLAY'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3280741381686775)
,p_name=>'Set Model'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_MODEL_SELECT_LIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3281208516686775)
,p_event_id=>wwv_flow_api.id(3280741381686775)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P77_MODEL_VALUE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P77_MODEL_SELECT_LIST'
,p_attribute_07=>'P77_MODEL_SELECT_LIST'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3024669818620334)
,p_name=>'Close Dialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3024830699620336)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3024713544620335)
,p_event_id=>wwv_flow_api.id(3024669818620334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3271667931686766)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Detail Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'BEGIN',
'',
'  If :P77_STATUS <> ''O'' then',
'    :P77_STATUS := var_data_utilities.update_detail_status (',
'        :P77_VAR_DATA_DETAIL_ID,',
'        :P77_VARIABLE_DATA_VALUE,',
'        :P77_REPLACEMENT_FLAG);',
'  End if;',
'',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3273225634686767)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Repair Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'BEGIN',
'',
'  :P77_STATUS := ''R'';',
'  :P77_REPAIR_DATE := SYSDATE;',
'  :P77_REPAIR_USERNAME := v(''APP_USER'');',
'',
'  If :P77_USE_SAMPLES_FLAG = ''N'' then',
'    Return;',
'  End if;',
'',
'  :P77_NEW_DETAIL_ID := 0;',
'',
'  :P77_NEW_DETAIL_ID := var_data_utilities.create_new_sample(:P77_VAR_DATA_DETAIL_ID);',
'',
'  If :P77_NEW_DETAIL_ID = 0 then',
'    :P77_ERROR_MESSAGE := ''Unable to create new sample entry.'';',
'  Else',
'    :P77_ERROR_MESSAGE := ''New sample created.'';   ',
'  End if;',
'',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(3254938294686730)
,p_process_success_message=>'&P77_ERROR_MESSAGE.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3272874338686767)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Repair Status and Exit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'BEGIN',
'',
'  :P77_STATUS := ''R'';',
'  :P77_REPAIR_DATE := SYSDATE;',
'  :P77_REPAIR_USERNAME := v(''APP_USER'');',
'',
'  If :P77_USE_SAMPLES_FLAG = ''N'' then',
'    Return;',
'  End if;',
'',
'  :P77_NEW_DETAIL_ID := 0;',
'',
'  :P77_NEW_DETAIL_ID := var_data_utilities.create_new_sample(:P77_VAR_DATA_DETAIL_ID);',
'',
'  If :P77_NEW_DETAIL_ID = 0 then',
'    :P77_ERROR_MESSAGE := ''Unable to create new sample entry.'';',
'  Else',
'    :P77_ERROR_MESSAGE := ''New sample created.'';   ',
'  End if;',
'',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(3255301322686730)
,p_process_success_message=>'&P77_ERROR_MESSAGE.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3272090812686766)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Short Stock'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'BEGIN',
'',
'  Update qcis_var_data_detail',
'     set status = ''S'',',
'         ss_date = sysdate,',
'         ss_username = v(''APP_USER'')',
'   where var_data_detail_id = :P77_VAR_DATA_DETAIL_ID;',
'',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(3252103367686726)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3273613828686768)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of QCIS_VAR_DATA_DETAIL'
,p_attribute_02=>'QCIS_VAR_DATA_DETAIL'
,p_attribute_03=>'P77_VAR_DATA_DETAIL_ID'
,p_attribute_04=>'VAR_DATA_DETAIL_ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table QCIS_VAR_DATA_DETAIL.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3272465680686767)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Inspection Header Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'BEGIN',
'',
'  inspection_utilities.update_inspection_status (:P77_HEADER_ID);',
'',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3271220404686766)
,p_process_sequence=>170
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create New Sample'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'',
'BEGIN',
'',
'  :P77_NEW_DETAIL_ID := 0;',
'',
'  :P77_NEW_DETAIL_ID := var_data_utilities.create_new_sample(:P77_VAR_DATA_DETAIL_ID);',
'  ',
'  If :P77_NEW_DETAIL_ID = 0 then',
'    :P77_ERROR_MESSAGE := ''Unable to create new sample entry.'';',
'  Else',
'    :P77_ERROR_MESSAGE := ''New sample created.'';   ',
'  End if;',
'  ',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(3253773547686728)
,p_process_success_message=>'&P77_ERROR_MESSAGE.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3274009871686768)
,p_process_sequence=>220
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(3253385034686728)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3270804944686765)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from QCIS_VAR_DATA_DETAIL'
,p_attribute_02=>'QCIS_VAR_DATA_DETAIL'
,p_attribute_03=>'P77_VAR_DATA_DETAIL_ID'
,p_attribute_04=>'VAR_DATA_DETAIL_ID'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3274424191686768)
,p_process_sequence=>230
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT_DATA_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- This code is run now so that the NEXT_ID value will be populated BEFORE the page is rendered.',
'-- If this code is put on the NEXT_ID page item it will be processed AFTER the buttons are, and it',
'-- will not hide the Save & Next button when it should.',
'DECLARE',
'',
'  v_next_id          number;',
'  v_sequence_number  number;',
'  v_sample_number    number;',
'',
'  Cursor c_get_data_elements is',
'    Select var_data_detail_id,',
'           sequence_number,',
'           sample_number',
'      from qcis_var_data_detail',
'     where header_id = :P77_HEADER_ID',
'       and sequence_number = :P77_SEQUENCE_NUMBER',
'       and sample_number > :P77_SAMPLE_NUMBER',
'    UNION',
'    Select var_data_detail_id,',
'           sequence_number,',
'           sample_number',
'      from qcis_var_data_detail',
'     where header_id = :P77_HEADER_ID',
'       and sequence_number > :P77_SEQUENCE_NUMBER',
'     order by sequence_number, sample_number',
'    ;',
'',
'BEGIN',
'',
'  v_next_id := NULL;',
'',
'  Open c_get_data_elements;',
'  Fetch c_get_data_elements into v_next_id,v_sequence_number, v_sample_number;',
'  Close c_get_data_elements;',
'',
'  :P77_NEXT_DATA_ID := v_next_id;',
'',
'END;'))
);
end;
/
