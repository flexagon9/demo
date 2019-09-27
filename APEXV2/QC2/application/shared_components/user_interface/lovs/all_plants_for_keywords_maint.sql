prompt --application/shared_components/user_interface/lovs/all_plants_for_keywords_maint
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(13634727707707847)
,p_lov_name=>'ALL_PLANTS_FOR_KEYWORDS_MAINT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER'))
);
end;
/
