prompt --application/shared_components/user_interface/lovs/plant1
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4195697421088329)
,p_lov_name=>'PLANT1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANT_CODE||'' - ''||PLANT_NAME display_value, QCIS_PLANT_MASTER_ID return_value ',
'from QCIS_PLANT_MASTER',
'where INACTIVE_DATE IS NULL order by 1'))
);
end;
/
