prompt --application/shared_components/navigation/lists/model_setup_maintenance
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(4652319585042305)
,p_name=>'Model Setup & Maintenance'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4652561708042305)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Models'
,p_list_item_icon=>'fa-ship'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15096252503730920)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Model Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:204:::'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(4652561708042305)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4772680241837737)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Create Model'
,p_list_item_link_target=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:201:::'
,p_list_item_icon=>'fa-share-alt'
,p_parent_list_item_id=>wwv_flow_api.id(4652561708042305)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11485537258457083)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Clone Models'
,p_list_item_link_target=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:207:::'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(4652561708042305)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6989398664077414)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Clone Previous MY'
,p_list_item_link_target=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.:203:P203_PLANT_ID::'
,p_list_item_icon=>'fa-copy'
,p_parent_list_item_id=>wwv_flow_api.id(4652561708042305)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4652904730042306)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Stations'
,p_list_item_icon=>'fa-building'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6934507957867009)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Station Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:205:P205_MODEL_ID:&P20_MODEL_MASTER_ID.:'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(4652904730042306)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6934016247855951)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Clone Stations'
,p_list_item_link_target=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:206:::'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(4652904730042306)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4655297451134829)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Images'
,p_list_item_icon=>'fa-picture-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6935330320890359)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Image Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:35:P35_MODEL_ID:&P20_MODEL_MASTER_ID.:'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(4655297451134829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6935654110900204)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Clone Images'
,p_list_item_link_target=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.:RP,222:P222_CLONE_FROM_MODEL_ID:&P20_MODEL_MASTER_ID.:'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(4655297451134829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4655607842134829)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Image Maps'
,p_list_item_icon=>'fa-map'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4661868261218984)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'IM Draft Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:34:P34_MODEL_MASTER_ID:&P20_MODEL_MASTER_ID.:'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(4655607842134829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6935919265226526)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Manual Set Up'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(4661868261218984)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6936207981232733)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Clone Drafts'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(4655607842134829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4662186363221411)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'IM Template Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(4655607842134829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6943166608320733)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Clone Templates'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(4655607842134829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4656071969134829)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Pin Maps'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6949252101543623)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'PM Draft Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(4656071969134829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6949898336551222)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Clone Drafts'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(4656071969134829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6949598731546354)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'PM Template Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(4656071969134829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6950115217552930)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Clone Templates'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(4656071969134829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4656456136134830)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Gig Sheets'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6958749046770647)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'GS Template Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.:RP,240:P240_PLANT_ID:&P20_PLANT_ID.:'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(4656456136134830)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6959469821778347)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Clone Templates'
,p_list_item_link_target=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.:RP,241:P241_PLANT_ID,P241_PLANT_CODE:&G_DEFAULT_PLANT_ID.,&G_DEFAULT_LOC_CODE.:'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(4656456136134830)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4656800162134831)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Var Data'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-variable'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6960185193836052)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Var Data Template Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:502:&SESSION.::&DEBUG.:502:P502_MODEL_ID,P502_BRAND_ID:&P20_MODEL_MASTER_ID.,&G_DEFAULT_BRAND_ID.:'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(4656800162134831)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6960483801840878)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Clone Var Data'
,p_list_item_link_target=>'f?p=&APP_ID.:510:&SESSION.::&DEBUG.::P510_MODEL_ID,P510_TO_MODELS,P510_LOG_ID,P510_PLANT_ID,P510_BRAND_ID:&P20_MODEL_MASTER_ID.,NULL,99999999999999999999999,&G_DEFAULT_PLANT_ID.,&G_DEFAULT_BRAND_ID.:'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(4656800162134831)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
