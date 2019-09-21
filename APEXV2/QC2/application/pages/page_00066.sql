prompt --application/pages/page_00066
begin
wwv_flow_api.create_page(
 p_id=>66
,p_user_interface_id=>wwv_flow_api.id(90742613879242702)
,p_name=>'Redirect Inspections'
,p_step_title=>'Redirect Inspections'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DGRUGINS'
,p_last_upd_yyyymmddhh24miss=>'20190918095128'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20185859498368659)
,p_plug_name=>'Redirect Data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90709385417242440)
,p_plug_display_sequence=>10
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13955580557677503)
,p_branch_action=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::P53_HEADER_ID:&P59_INSPECTION_HEADER_ID.'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P66_INSPECTION_TYPE'
,p_branch_condition_text=>'Variable Data'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 16-JAN-2012 14:54 by JJOHNSON'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13955892789677504)
,p_branch_name=>'Go To Page 68 Gig Sheet Insp'
,p_branch_action=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.::P68_HEADER_ID:&P66_INSPECTION_HEADER_ID.'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P66_INSPECTION_TYPE'
,p_branch_condition_text=>'Gig Sheet'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 16-JAN-2012 14:57 by JJOHNSON'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13956340113677504)
,p_branch_name=>'Go To Page 69 IM/PM Insp'
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.::P69_HEADER_ID:&P66_INSPECTION_HEADER_ID.'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'PLSQL_EXPRESSION'
,p_branch_condition=>':P66_INSPECTION_TYPE IN (''Image Map'', ''Pin Map'')'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 16-JAN-2012 14:57 by JJOHNSON'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13954727907677462)
,p_name=>'P66_INSPECTION_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(20185859498368659)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspection Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(90736865129242511)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13955056618677466)
,p_name=>'P66_INSPECTION_HEADER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(20185859498368659)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inspection Header Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(90736865129242511)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
end;
/
