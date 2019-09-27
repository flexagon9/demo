prompt --application/shared_components/user_interface/lovs/division1
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4196814137088336)
,p_lov_name=>'DIVISION1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DIVISION_CODE||'' - ''||DIVISION_NAME display_value, QCIS_DIVISION_MASTER_ID return_value ',
'from QCIS_DIVISION_MASTER',
'where INACTIVE_DATE IS NULL order by 1'))
);
end;
/
