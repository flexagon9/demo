prompt --application/shared_components/user_interface/lovs/inspectors
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(4199208963088338)
,p_lov_name=>'INSPECTORS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select oid.FIRST_NAME||'' ''||oid.LAST_NAME display_value, usr.USER_ID return_value from qcis_users usr,  BC1_SHARED.BCONE_OID_EMPLOYEES oid',
'where (usr.INSPECT_ACCESS = ''Y'' or usr.SUPER_INSPECT_ACCESS = ''Y'') and usr.OID_ID = oid.id',
'order by oid.LAST_NAME, oid.FIRST_NAME'))
);
end;
/
