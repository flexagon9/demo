CREATE OR REPLACE PACKAGE BODY nice.cust_sal AS  
-----------------------------------------------------------------------------------------------------          
--
--            NAME:   cust_sal
--            TYPE:   Package Specification
--            ORIGINAL AUTHOR:   Chandresh Patel 
--            DATE:   4/8/2021
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
        SELECT 1 INTO e_sal 
        FROM dual; 
        dbms_output.put_line('Salary: '|| e_sal); 
    END find_sal; 
END cust_sal; 
/
