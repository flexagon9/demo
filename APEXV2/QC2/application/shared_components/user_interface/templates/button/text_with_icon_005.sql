prompt --application/shared_components/user_interface/templates/button/text_with_icon_005
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(23493971752939072)
,p_template_name=>'BBG Delete Button'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon t-Button--danger t-Button--iconLeft" onclick="#JAVASCRIPT#" TITLE="Delete the Current Record" type="button"><span class="t-Icon t-Icon--left fa fa-trash" aria-hidden="true"></span>Delete</button>'
,p_hot_template=>'<button class="t-Button t-Button--icon t-Button--danger t-Button--iconLeft" onclick="#JAVASCRIPT#" TITLE="Delete the Current Record" type="button"><span class="t-Icon t-Icon--left fa fa-trash" aria-hidden="true"></span>Delete</button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
