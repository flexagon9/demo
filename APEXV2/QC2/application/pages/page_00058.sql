prompt --application/pages/page_00058
begin
wwv_flow_api.create_page(
 p_id=>58
,p_user_interface_id=>wwv_flow_api.id(79451265483908718)
,p_name=>'Global Maintenance - Keyword Edit'
,p_page_mode=>'MODAL'
,p_step_title=>'Global Maintenance - Keyword Edit'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'900'
,p_dialog_width=>'1200'
,p_dialog_css_classes=>'no-close '
,p_dialog_chained=>'N'
,p_last_updated_by=>'SGRAY'
,p_last_upd_yyyymmddhh24miss=>'20190712071441'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12961128999862530)
,p_plug_name=>'Keywords Buttons'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_menu_id=>wwv_flow_api.id(79452575730908876)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(79446634811908553)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67213348062710136)
,p_plug_name=>'Keyword Edit'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(79418302368908457)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75783328470735144)
,p_plug_name=>'Audit Info'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79423968160908466)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P58_KEYWORDS_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13276793055024120)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12961128999862530)
,p_button_name=>'Back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11956527973830119)
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_button_cattributes=>'&G_TT_BACK_BUTT.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13277958398024124)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12961128999862530)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11950988872581442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13277116088024122)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12961128999862530)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(11976821032349550)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* user is a developer OR entry is Super User maintained, (each unique keyword_type entry has an associated */',
'/* ''sysmaint''-[maintained only by developers] or ''SYSMAINT''-[maintained by developers or Super Users] entry ). */',
'select ''Y''',
'  from dual',
' where :p58_keywords_id is not null',
'   and (exists (select ''Y''',
'                  from bc1_shared.bcone_oid_employees',
'                 where username = :app_user and enabled_flag = 1 and department_number = ''6450'')',
'        or exists (select ''Y''',
'                     from qcis_keywords',
'                    where upper(:p57_keyword_type_selection) <> ''SYSMAINT''',
'                      and keyword_type = ''SYSMAINT''',
'                      and keyword_code = :p57_keyword_type_selection))'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-save'
,p_button_cattributes=>'title="Save Gig Sheet Changes"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13277581707024123)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12961128999862530)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(11977808458349556)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* user is a developer OR entry is Super User maintained, (each unique keyword_type entry has an associated */',
'/* ''sysmaint''-[maintained only by developers] or ''SYSMAINT''-[maintained by developers or Super Users] entry ). */',
'select ''Y''',
'  from dual',
' where :p58_keywords_id is null',
'   and (exists (select ''Y''',
'                  from bc1_shared.bcone_oid_employees',
'                 where username = :app_user and enabled_flag = 1 and department_number = ''6450'')',
'        or exists (select ''Y''',
'                     from qcis_keywords',
'                    where upper(:p57_keyword_type_selection) <> ''SYSMAINT''',
'                      and keyword_type = ''SYSMAINT''',
'                      and keyword_code = :p57_keyword_type_selection))'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-plus-circle'
,p_button_cattributes=>'title="Create Gig Sheet"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12960644216862525)
,p_name=>'P58_PLANT_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_prompt=>'Plant:'
,p_source=>'P58_PLANT_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ALL_PLANTS_FOR_KEYWORDS_MAINT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_cattributes_element=>'title="The applicable Plant if this KEYWORD uses it"'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* user is a developer OR entry is Super User maintained, (each unique keyword_type entry has an associated */',
'/* ''sysmaint''-[maintained only by developers] or ''SYSMAINT''-[maintained by developers or Super Users] entry ). *//* user is a developer OR entry is Super User maintained */',
'select ''Y''',
'  from dual',
' where exists (select ''Y''',
'                 from bc1_shared.bcone_oid_employees',
'                where username = :app_user and enabled_flag = 1 and department_number = ''6450'')',
'       or exists (select ''Y''',
'                    from qcis_keywords',
'                   where upper(:p57_keyword_type_selection) <> ''SYSMAINT''',
'                     and keyword_type = ''SYSMAINT''',
'                     and keyword_code = :p57_keyword_type_selection)'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12960711745862526)
,p_name=>'P58_KEYWORD_TYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_prompt=>'&P58_KEYWORD_TYPE_HEADING.:'
,p_source=>'P58_KEYWORD_TYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cattributes_element=>'title="The name used to identify and link a group of keywords"'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ''keyword_type'' page item is read only unless current user is a developer */',
'select ''Y''',
'  from bc1_shared.bcone_oid_employees',
' where username = :app_user',
'   and enabled_flag = 1',
'   and department_number = ''6450'''))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(79445814206908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12960877149862527)
,p_name=>'P58_KEYWORD_CODE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_prompt=>'&P57_KEYWORD_CODE_HEADING.:'
,p_source=>'P58_KEYWORD_CODE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>40
,p_cattributes_element=>'title="The unique, identifying name within a keyword type"'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* user is a developer OR entry is Super User maintained, (each unique keyword_type entry has an associated */',
'/* ''sysmaint''-[maintained only by developers] or ''SYSMAINT''-[maintained by developers or Super Users] entry ). *//* user is a developer OR entry is Super User maintained */',
'select ''Y''',
'  from dual',
' where exists (select ''Y''',
'                 from bc1_shared.bcone_oid_employees',
'                where username = :app_user and enabled_flag = 1 and department_number = ''6450'')',
'       or exists (select ''Y''',
'                    from qcis_keywords',
'                   where upper(:p57_keyword_type_selection) <> ''SYSMAINT''',
'                     and keyword_type = ''SYSMAINT''',
'                     and keyword_code = :p57_keyword_type_selection)'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(79445814206908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12960938034862528)
,p_name=>'P58_KEYWORD_VALUE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_prompt=>'&P58_KEYWORD_VALUE_HEADING.:'
,p_source=>'P58_KEYWORD_VALUE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>5
,p_cattributes_element=>'title="The value being sought for, when looking up a KEYWORD_CODE within a KEYWORD_TYPE"'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* user is a developer OR entry is Super User maintained, (each unique keyword_type entry has an associated */',
'/* ''sysmaint''-[maintained only by developers] or ''SYSMAINT''-[maintained by developers or Super Users] entry ). *//* user is a developer OR entry is Super User maintained */',
'select ''Y''',
'  from dual',
' where exists (select ''Y''',
'                 from bc1_shared.bcone_oid_employees',
'                where username = :app_user and enabled_flag = 1 and department_number = ''6450'')',
'       or exists (select ''Y''',
'                    from qcis_keywords',
'                   where upper(:p57_keyword_type_selection) <> ''SYSMAINT''',
'                     and keyword_type = ''SYSMAINT''',
'                     and keyword_code = :p57_keyword_type_selection)'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'N'
,p_attribute_05=>'top'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12961046921862529)
,p_name=>'P58_KEYWORD_DESC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_prompt=>'&P57_KEYWORD_DESC_HEADING.:'
,p_source=>'P58_KEYWORD_DESC'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cSize=>70
,p_cMaxlength=>200
,p_cHeight=>5
,p_cattributes_element=>'title="The description of the KEYWORD_CODE and/or KEYWORD_VALUE"'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* user is a developer OR entry is Super User maintained, (each unique keyword_type entry has an associated */',
'/* ''sysmaint''-[maintained only by developers] or ''SYSMAINT''-[maintained by developers or Super Users] entry ). *//* user is a developer OR entry is Super User maintained */',
'select ''Y''',
'  from dual',
' where exists (select ''Y''',
'                 from bc1_shared.bcone_oid_employees',
'                where username = :app_user and enabled_flag = 1 and department_number = ''6450'')',
'       or exists (select ''Y''',
'                    from qcis_keywords',
'                   where upper(:p57_keyword_type_selection) <> ''SYSMAINT''',
'                     and keyword_type = ''SYSMAINT''',
'                     and keyword_code = :p57_keyword_type_selection)'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'N'
,p_attribute_05=>'top'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12961511420862534)
,p_name=>'P58_MAINTAINED_BY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_prompt=>'Maintained By:'
,p_source=>'P58_MAINTAINED_BY'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Super Users;S,Developers;D'
,p_cHeight=>1
,p_cattributes_element=>'title="Whether the Keyword is maintained by Super Users or Developers; ''SYSMAINT''=Super Users, ''sysmaint''=Developers."'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ''maintained_by'' page item is read only unless current user is a developer */',
'select ''Y''',
'  from bc1_shared.bcone_oid_employees',
' where username = :app_user',
'   and enabled_flag = 1',
'   and department_number = ''6450'''))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(79445814206908536)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12963171119862550)
,p_name=>'P58_KEYWORD_TYPE_HEADING'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13278648083024125)
,p_name=>'P58_KEYWORDS_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_source=>'P58_KEYWORDS_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13279059625024128)
,p_name=>'P58_INACTIVE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_source=>'P58_INACTIVE_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13279848436024130)
,p_name=>'P58_DIVISION_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_prompt=>'Division:'
,p_source=>'P58_DIVISION_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DIVISION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DIVISION_CODE||'' - ''||DIVISION_NAME display_value, QCIS_DIVISION_MASTER_ID return_value ',
'from QCIS_DIVISION_MASTER',
'where INACTIVE_DATE IS NULL order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_cattributes_element=>'title="The applicable Division if this KEYWORD uses it"'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* user is a developer OR entry is Super User maintained, (each unique keyword_type entry has an associated */',
'/* ''sysmaint''-[maintained only by developers] or ''SYSMAINT''-[maintained by developers or Super Users] entry ). *//* user is a developer OR entry is Super User maintained */',
'select ''Y''',
'  from dual',
' where exists (select ''Y''',
'                 from bc1_shared.bcone_oid_employees',
'                where username = :app_user and enabled_flag = 1 and department_number = ''6450'')',
'       or exists (select ''Y''',
'                    from qcis_keywords',
'                   where upper(:p57_keyword_type_selection) <> ''SYSMAINT''',
'                     and keyword_type = ''SYSMAINT''',
'                     and keyword_code = :p57_keyword_type_selection)'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13280263085024130)
,p_name=>'P58_STATUS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_prompt=>'Status:'
,p_source=>'P58_STATUS'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'A_I_STATUS'
,p_lov=>'.'||wwv_flow_api.id(12406872612044732)||'.'
,p_cHeight=>1
,p_cattributes_element=>'title="Whether the Keyword is Active or Inactive"'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* user is a developer OR entry is Super User maintained, (each unique keyword_type entry has an associated */',
'/* ''sysmaint''-[maintained only by developers] or ''SYSMAINT''-[maintained by developers or Super Users] entry ). *//* user is a developer OR entry is Super User maintained */',
'select ''Y''',
'  from dual',
' where exists (select ''Y''',
'                 from bc1_shared.bcone_oid_employees',
'                where username = :app_user and enabled_flag = 1 and department_number = ''6450'')',
'       or exists (select ''Y''',
'                    from qcis_keywords',
'                   where upper(:p57_keyword_type_selection) <> ''SYSMAINT''',
'                     and keyword_type = ''SYSMAINT''',
'                     and keyword_code = :p57_keyword_type_selection)'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(79445591256908535)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13280905227024132)
,p_name=>'P58_LAST_UPDATE_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(75783328470735144)
,p_prompt=>'Last Update'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>255
,p_cattributes_element=>'title="The date that the entry was last altered"'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13281350305024133)
,p_name=>'P58_LAST_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(75783328470735144)
,p_prompt=>'Updated By'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'title="The user that last altered the entry"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13281724109024134)
,p_name=>'P58_CREATION_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(75783328470735144)
,p_prompt=>'Created'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>20
,p_cattributes_element=>'title="The date that the entry was created"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13282149899024135)
,p_name=>'P58_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(75783328470735144)
,p_prompt=>'Created By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cattributes_element=>'title="The user that created the entry"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(79445698570908536)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13905843172282501)
,p_name=>'P58_KEYWORD_VALUE_HEADING'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(67213348062710136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12961237351862531)
,p_validation_name=>'Entries must be unique'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''y''',
'  from dual',
' where exists (select ''x''',
'                 from qcis_keywords',
'                where nvl(plant_id,0) = nvl(:p58_plant_id,0)',
'                  and nvl(division_id,0) = nvl(:p58_division_id,0)',
'                  and keyword_type = :p58_keyword_type',
'                  and keyword_code = :p58_keyword_code',
'                  and keywords_id <> nvl(:p58_keywords_id, keywords_id+1))'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Use a combination of Plant/Division/Keyword_Code to make each entry unique.'
,p_validation_condition=>':REQUEST IN(''CREATE'',''SAVE'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(12960877149862527)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13286088860024143)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13276793055024120)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13286507549024144)
,p_event_id=>wwv_flow_api.id(13286088860024143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13284857470024142)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Keyword Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'   BEGIN',
'      SELECT plant_id,',
'             division_id,',
'             keyword_type,',
'             keyword_code,',
'             keyword_value,',
'             keyword_desc,',
'             TO_CHAR (inactive_date, ''DD-MON-RRRR'') inactive_date,',
'             decode(inactive_date,null,''A'',''I'') status,',
'             TO_CHAR (last_update_date, ''DD-MON-RRRR'') last_update_date,',
'             last_updated_by,',
'             TO_CHAR (creation_date, ''DD-MON-RRRR'') creation_date,',
'             created_by',
'        INTO :p58_plant_id,',
'             :p58_division_id,',
'             :p58_keyword_type,',
'             :p58_keyword_code,',
'             :p58_keyword_value,',
'             :p58_keyword_desc,',
'             :p58_inactive_date,',
'             :p58_status,',
'             :p58_last_update_date,',
'             :p58_last_updated_by,',
'             :p58_creation_date,',
'             :p58_created_by',
'        FROM QCIS_KEYWORDS',
'       WHERE keywords_id = :p58_keywords_id;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :p58_keywords_id := null;',
'         :p58_plant_id := null;',
'         :p58_division_id := null;',
'      --   :p58_keyword_type := NULL;  (do not init, it may have value from page 57)',
'         :p58_keyword_code := NULL;',
'         :p58_keyword_value := NULL;',
'         :p58_keyword_desc := NULL;',
'         :p58_inactive_date := NULL;',
'         :p58_status := NULL;',
'         :p58_last_update_date := NULL;',
'         :p58_last_updated_by := NULL;',
'         :p58_creation_date := NULL;',
'         :p58_created_by := NULL;',
'   END;',
'   BEGIN',
'   select decode((select ''Y''',
'                    from qcis_keywords',
'                   where upper(:p57_keyword_type_selection) <> ''SYSMAINT''',
'                     and keyword_type = ''SYSMAINT''',
'                     and keyword_code = :p57_keyword_type_selection),''Y'',''S'',''D'')',
'     into :p58_maintained_by',
'     from dual;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :p58_maintained_by := ''D'';',
'   END;',
'   if :p57_KEYWORD_TYPE_HEADING like(''%<br>%'') then',
'   :p58_KEYWORD_TYPE_HEADING := ''sysmaint=Developer, SYSMAINT=SuperUser'';',
'   end if;',
'   if :p57_KEYWORD_VALUE_HEADING like(''%<br>%'') then',
'   :p58_KEYWORD_VALUE_HEADING := ''Sort Order - Greater than 100'';',
'   end if;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13285291880024142)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'insert into QCIS_KEYWORDS',
'      (plant_id,',
'       division_id,',
'       keyword_type,',
'       keyword_code,',
'       keyword_value,',
'       keyword_desc)',
'  values(:p58_plant_id,',
'         :p58_division_id,',
'         :p58_keyword_type,',
'         :p58_keyword_code,',
'         :p58_keyword_value,',
'         :p58_keyword_desc);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13277581707024123)
,p_process_success_message=>'Keyword successfully created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13285640809024143)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_inactive_date date;',
'',
'begin',
'if :p58_status = ''A'' then v_inactive_date := null;',
'else if :p58_status = ''I'' and :p58_inactive_date is null then v_inactive_date := sysdate;',
'end if;',
'end if;',
'update QCIS_KEYWORDS',
'   set plant_id = :p58_plant_id,',
'       division_id = :p58_division_id,',
'       keyword_type = :p58_keyword_type,',
'       keyword_code = :p58_keyword_code,',
'       keyword_value = :p58_keyword_value,',
'       keyword_desc = :p58_keyword_desc,',
'       inactive_date = v_inactive_date',
' where keywords_id = :p58_keywords_id;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13277116088024122)
,p_process_success_message=>'Changes successfully applied'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14361384860176300)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog After Apply Changes'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13277116088024122)
);
end;
/
