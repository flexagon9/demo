prompt --application/shared_components/user_interface/templates/button/text_with_icon_003
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11976821032349550)
,p_template_name=>'BBG Apply Changes Button'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon t-Button--hot t-Button--iconLeft" onclick="#JAVASCRIPT#" TITLE="Press to Save Your Changes" type="button"><span class="t-Icon t-Icon--left fa fa-save" aria-hidden="true"></span>Apply Changes</button>'
,p_hot_template=>'<button class="t-Button t-Button--icon t-Button--hot t-Button--iconLeft" onclick="#JAVASCRIPT#" TITLE="Press to Save Your Changes" type="button"><span class="t-Icon t-Icon--left fa fa-save" aria-hidden="true"></span>Apply Changes</button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight:t-Button--success'
,p_theme_id=>42
);
end;
/
