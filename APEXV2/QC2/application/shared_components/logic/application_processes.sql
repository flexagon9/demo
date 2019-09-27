prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(11687854753843905)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POPULATE_G_TT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  :G_TT_BACK_BUTT := ''TITLE='' || ''"'' || ''Press to Return to Previous Page and Cancel Unsaved Changes'' || ''"'' ;',
'  :G_TT_CAN_BUTT  := ''TITLE='' || ''"'' || ''Press to Cancel Unsaved Changes and Refresh Page'' || ''"'' ;',
'  :G_TT_SAVE_BUTT := ''TITLE='' || ''"'' || ''Press to Save Your Changes'' || ''"'' ;',
'  ',
' ',
'END;'))
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(9896905527883733)
,p_process_sequence=>5
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_PREVIOUS_PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :G_ACTUAL_PAGE <> :APP_PAGE_ID  ',
'THEN  ',
':G_CALLING_PAGE := :G_ACTUAL_PAGE;  ',
'END IF;  ',
'  ',
':G_ACTUAL_PAGE := :APP_PAGE_ID;'))
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(4739012395048746)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_USER_DEF_PLANT_INFO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT OID_ID, SUPER_USER_ACCESS, USER_APP_ID',
'      INTO :G_USER_OID, :G_SUPER_USER, :G_USER_ID',
'      FROM bg_qcis.APP_USER_VW',
'     WHERE UPPER (USERNAME) = UPPER (:APP_USER);',
'',
'',
'',
'    SELECT DEFAULT_LOCATION_CODE, DEFAULT_LOCATION_ID',
'      INTO :G_DEFAULT_LOC_CODE, :G_DEFAULT_LOCATION_ID',
'      FROM bg_qcis.APP_USER_VW v',
'     WHERE v.USER_APP_ID = :G_USER_ID AND UA_INACTIVE_DATE IS NULL;',
'     ',
'    SELECT QCIS_PLANT_MASTER_ID, SFM_FLAG',
'     INTO :G_DEFAULT_PLANT_ID, :G_SFM_FLAG',
'    FROM bg_qcis.QCIS_PLANT_MASTER',
'    WHERE PLANT_CODE = :G_DEFAULT_LOC_CODE;',
'    ',
'    ',
'    BEGIN',
'       SELECT QCIS_BRAND_MASTER_ID, DIVISION_MASTER_ID',
'         INTO :G_DEFAULT_BRAND_ID, :G_DEFAULT_DIVISION_ID',
'         FROM bg_qcis.QCIS_BRAND_MASTER',
'        WHERE QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID',
'          AND DEF_PLANT_BRAND_IND = ''Y'';',
'          ',
'       EXCEPTION ',
'          WHEN NO_DATA_FOUND THEN ',
'               :G_DEFAULT_BRAND_ID := NULL;',
'               :G_DEFAULT_DIVISION_ID := NULL;',
'    ',
'    END;',
'',
'   ',
'    ',
'    -- Added to display plant in LB - Lebanon format... Tony 06/19/2019',
'    SELECT PLANT_CODE||'' - ''||PLANT_NAME, CASE WHEN PLANT_CODE IN ''IL'' THEN ''BME''',
'                                               ELSE ''BBG''',
'                                           END MARINE_DIVISION_TYPE',
'     INTO :G_CURRENT_LOCATION_FORMATTED, :G_MARINE_DIVISION_TYPE',
'    FROM bg_qcis.QCIS_PLANT_MASTER',
'    WHERE QCIS_PLANT_MASTER_ID = :G_DEFAULT_PLANT_ID;',
'     ',
'     -- Now reset the authorization schemes...in case they changed plant',
'     APEX_AUTHORIZATION.RESET_CACHE;',
'     ',
'EXCEPTION',
'    WHEN NO_DATA_FOUND',
'    THEN',
'        :G_USER_OID := -1;',
'        :G_USER_ID := NULL;',
'        :G_DEFAULT_LOC_CODE := NULL;',
'        :G_DEFAULT_PLANT_ID := NULL;',
'        :G_DEFAULT_BRAND_ID := NULL;',
'        :G_DEFAULT_DIVISION_ID := NULL;',
'END;'))
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(89661422682251337)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Edit Help Load'
,p_process_sql_clob=>'select ''Y'' into :edit_help from dual;'
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(10334302619440158)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_IMAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR c1 IN (SELECT MIME_TYPE, BLOB_CONTENT,FILE_NAME',
'                 FROM bg_qcis.QCIS_IMAGES ',
'                WHERE IMAGES_ID = :G_FILE_ID)',
'    LOOP                                              --         sys.htp.init;',
'        SYS.OWA_UTIL.mime_header (c1.mime_type, FALSE);',
'        SYS.HTP.P (',
'            ''Content-length: '' || SYS.DBMS_LOB.getlength (c1.blob_content));',
'        SYS.HTP.P (',
'               ''Content-Disposition: inline; filename="''',
'            || c1.file_name',
'            || ''"'');',
'        SYS.HTP.P (''Cache-Control: max-age=3600''); -- tell the browser to cache for one hour, adjust as necessary',
'        sys.OWA_UTIL.http_header_close;',
'        sys.WPG_DOCLOAD.download_file (c1.blob_content);',
'        APEX_APPLICATION.stop_apex_engine;',
'    END LOOP;',
'END;'))
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(11267682740074210)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_IMAGE_2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FOR c1 IN (SELECT MIME_TYPE, BLOB_CONTENT,FILE_NAME',
'                 FROM bg_qcis.QCIS_IMAGES_MASTER ',
'                WHERE ID = :G_FILE_ID)',
'    LOOP                                              --         sys.htp.init;',
'        SYS.OWA_UTIL.mime_header (c1.mime_type, FALSE);',
'        SYS.HTP.P (',
'            ''Content-length: '' || SYS.DBMS_LOB.getlength (c1.blob_content));',
'        SYS.HTP.P (',
'               ''Content-Disposition: inline; filename="''',
'            || c1.file_name',
'            || ''"'');',
'        SYS.HTP.P (''Cache-Control: max-age=3600''); -- tell the browser to cache for one hour, adjust as necessary',
'        sys.OWA_UTIL.http_header_close;',
'        sys.WPG_DOCLOAD.download_file (c1.blob_content);',
'        APEX_APPLICATION.stop_apex_engine;',
'    END LOOP;',
'END;'))
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
end;
/
