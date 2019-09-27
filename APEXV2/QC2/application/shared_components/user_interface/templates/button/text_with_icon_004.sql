prompt --application/shared_components/user_interface/templates/button/text_with_icon_004
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11977808458349556)
,p_template_name=>'BBG Create Button'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon t-Button--hot t-Button--iconLeft" onclick="#JAVASCRIPT#" TITLE="Press to create a new record" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left fa fa-plus-circle" aria-hidden="true"></span>Create</'
||'button>'
,p_hot_template=>'<button class="t-Button t-Button--icon t-Button--hot t-Button--iconLeft" onclick="#JAVASCRIPT#" TITLE="Press to create a new record" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left fa fa-plus-circle" aria-hidden="true"></span>Create</'
||'button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
