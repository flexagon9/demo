create or replace NONEDITIONABLE PACKAGE    XXPS.REP_PKG AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

  FUNCTION GET_PERSON_DETAILS(P_PERSION_ID NUMBER) RETURN VARCHAR2;

END REP_PKG;
