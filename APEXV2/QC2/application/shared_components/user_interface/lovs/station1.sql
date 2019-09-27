prompt --application/shared_components/user_interface/lovs/station1
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4197417898088336)
,p_lov_name=>'STATION1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select station_code d, station_master_id r',
'from   qcis_station_master',
'order by 1'))
);
end;
/
