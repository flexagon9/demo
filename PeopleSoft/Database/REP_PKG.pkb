-- demo 04/10/2023 a
create or replace PACKAGE BODY    XXPS.REP_PKG AS

FUNCTION GET_PERSON_DETAILS(P_PERSION_ID NUMBER) RETURN VARCHAR2
IS
  l_error_msg  varchar2(2000);
BEGIN
   l_error_msg:=substr(' Error - . Please correct and resubmit transaction for Sabrix tax calculation. ',1,5);
  RETURN 'TEST';
END;

END REP_PKG;
