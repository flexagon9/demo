prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_release=>'19.1.0.00.15'
,p_default_workspace_id=>1250430451235357
,p_default_application_id=>105
,p_default_owner=>'NICE'
);
end;
/
 
prompt APPLICATION 105 - Test&Test
--
-- Application Export:
--   Application:     105
--   Name:            Test&Test
--   Exported By:     NICE
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         19.1.0.00.15
--   Instance ID:     248362027330078
--

-- Application Statistics:
--   Pages:                      3
--     Items:                    5
--     Processes:                4
--     Regions:                  4
--     Buttons:                  1
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--       Authorization:          1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              16
--         Label:                7
--         List:                12
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:              10
--       LOVs:                   1
--       Shortcuts:              1
--     Globalization:
--     Reports:
--     E-Mail:
--   Supporting Objects:  Excluded

