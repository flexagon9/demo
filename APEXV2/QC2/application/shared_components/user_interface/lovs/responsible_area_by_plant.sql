prompt --application/shared_components/user_interface/lovs/responsible_area_by_plant
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14144742193783578)
,p_lov_name=>'RESPONSIBLE AREA BY PLANT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RESPONSIBLE_AREA d, RESPONSIBLE_AREA r',
'from   QCIS_RESP_AREA_MASTER ',
'where INACTIVE_DATE IS NOT NULL and PLANT_ID = :P0_PLANT_ID',
'order by RESPONSIBLE_AREA'))
);
end;
/
