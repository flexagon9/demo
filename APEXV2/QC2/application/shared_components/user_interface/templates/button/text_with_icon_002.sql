prompt --application/shared_components/user_interface/templates/button/text_with_icon_002
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11956527973830119)
,p_template_name=>'BBG Back Button'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon t-Button--primary t-Button--iconLeft" onclick="#JAVASCRIPT#" TITLE="Press to Return to Previous Page and Cancel Unsaved Changes" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left fa fa-arrow-circle'
||'-left" aria-hidden="true"></span>Back</button>'
,p_hot_template=>'<button class="t-Button t-Button--icon t-Button--primary t-Button--iconLeft" onclick="#JAVASCRIPT#" TITLE="Press to Return to Previous Page and Cancel Unsaved Changes" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left fa fa-arrow-circle'
||'-left" aria-hidden="true"></span>Back</button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
