CREATE OR REPLACE PACKAGE BODY hr.cust_sal AS  
-----------------------------------------------------------------------------------------------------          
--
--            NAME:   cust_sal
--            TYPE:   Package Specification
-- ORIGINAL AUTHOR:   Chandresh Patel 
--            DATE:   2/11/2019
--
--     DESCRIPTION:
--
--        This package specification is to define the public pl/sql procedures and functions.
--
--
--  CHANGE HISTORY:
--
--     VERSION  DATE          AUTHOR              LABEL     DESCRIPTION
--     -------  -----------   ----------------    --------  -----------------------------------------
--     1.0      2/12/2019    Chandresh Patel      N/A       Initial Version
-----------------------------------------------------------------------------------------------------
   
    PROCEDURE find_sal(e_id NUMBER) IS 
    e_sal NUMBER; 
    BEGIN 
        SELECT salary INTO e_sal 
        FROM HR.employees 
        WHERE employee_id = e_id; 
        dbms_output.put_line('Salary: '|| e_sal); 
    END find_sal; 
END cust_sal; 
/
