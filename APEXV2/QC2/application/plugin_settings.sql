prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15967670756101222)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15974086020101224)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(17937590623127228)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(17937748165127229)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(90699919609242297)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(90700105676242299)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(90700206617242299)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(158119000814445288)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_attribute_01=>'Drop files here or click to upload.'
,p_attribute_02=>'Your browser does not support drag''n''drop file uploads.'
,p_attribute_03=>'File is too big ({{filesize}}MiB). Max filesize: {{maxFilesize}}MiB.'
,p_attribute_04=>'You can not upload more than {{maxFiles}} files.'
,p_attribute_05=>'Remove file'
,p_attribute_06=>'Cancel upload'
,p_attribute_07=>'Are you sure you want to cancel this upload?'
,p_attribute_08=>'You can not upload files of this type.'
,p_attribute_09=>'1048576'
);
end;
/
