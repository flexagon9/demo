prompt --application/shared_components/navigation/lists/model_setup_maintenance
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(15943667980376289)
,p_name=>'Model Setup & Maintenance'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15943910103376289)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Models'
,p_list_item_icon=>'fa-ship'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26387600899064904)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Model Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:204:::'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(15943910103376289)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16064028637171721)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Create Model'
,p_list_item_link_target=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:201:::'
,p_list_item_icon=>'fa-share-alt'
,p_parent_list_item_id=>wwv_flow_api.id(15943910103376289)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22776885653791067)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Clone Models'
,p_list_item_link_target=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:207:::'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(15943910103376289)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18280747059411398)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Clone Previous MY'
,p_list_item_link_target=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.:203:P203_PLANT_ID::'
,p_list_item_icon=>'fa-copy'
,p_parent_list_item_id=>wwv_flow_api.id(15943910103376289)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15944253125376290)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Stations'
,p_list_item_icon=>'fa-building'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18225856353200993)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Station Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.:205:P205_MODEL_ID:&P20_MODEL_MASTER_ID.:'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(15944253125376290)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18225364643189935)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Clone Stations'
,p_list_item_link_target=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:206:::'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(15944253125376290)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15946645846468813)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Images'
,p_list_item_icon=>'fa-picture-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18226678716224343)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Image Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:35:P35_MODEL_ID:&P20_MODEL_MASTER_ID.:'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(15946645846468813)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18227002506234188)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Clone Images'
,p_list_item_link_target=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.:RP,222:P222_CLONE_FROM_MODEL_ID:&P20_MODEL_MASTER_ID.:'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(15946645846468813)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15946956237468813)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Image Maps'
,p_list_item_icon=>'fa-map'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15953216656552968)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'IM Draft Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:34:P34_MODEL_MASTER_ID:&P20_MODEL_MASTER_ID.:'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(15946956237468813)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18227267660560510)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Manual Set Up'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(15953216656552968)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18227556376566717)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Clone Drafts'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(15946956237468813)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15953534758555395)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'IM Template Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(15946956237468813)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18234515003654717)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Clone Templates'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(15946956237468813)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15947420364468813)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Pin Maps'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18240600496877607)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'PM Draft Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(15947420364468813)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18241246731885206)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Clone Drafts'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(15947420364468813)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18240947126880338)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'PM Template Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(15947420364468813)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18241463612886914)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Clone Templates'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(15947420364468813)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15947804531468814)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Gig Sheets'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18250097442104631)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'GS Template Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.:RP,240:P240_PLANT_ID:&P20_PLANT_ID.:'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(15947804531468814)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18250818217112331)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Clone Templates'
,p_list_item_link_target=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.:RP,241:P241_PLANT_ID,P241_PLANT_CODE:&G_DEFAULT_PLANT_ID.,&G_DEFAULT_LOC_CODE.:'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(15947804531468814)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15948148557468815)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Var Data'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-variable'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18251533589170036)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Var Data Template Maintenance'
,p_list_item_link_target=>'f?p=&APP_ID.:502:&SESSION.::&DEBUG.:502:P502_MODEL_ID,P502_BRAND_ID:&P20_MODEL_MASTER_ID.,&G_DEFAULT_BRAND_ID.:'
,p_list_item_icon=>'fa-clipboard-wrench'
,p_parent_list_item_id=>wwv_flow_api.id(15948148557468815)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18251832197174862)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Clone Var Data'
,p_list_item_link_target=>'f?p=&APP_ID.:510:&SESSION.::&DEBUG.::P510_MODEL_ID,P510_TO_MODELS,P510_LOG_ID,P510_PLANT_ID,P510_BRAND_ID:&P20_MODEL_MASTER_ID.,NULL,99999999999999999999999,&G_DEFAULT_PLANT_ID.,&G_DEFAULT_BRAND_ID.:'
,p_list_item_icon=>'fa-clone'
,p_parent_list_item_id=>wwv_flow_api.id(15948148557468815)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
