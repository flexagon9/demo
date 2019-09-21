prompt --application/shared_components/user_interface/lovs/plant
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(15978337075645775)
,p_lov_name=>'PLANT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from bg_qcis.QCIS_PLANT_MASTER',
'where QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID'))
);
end;
/
