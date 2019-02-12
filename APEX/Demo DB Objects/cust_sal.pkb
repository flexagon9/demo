CREATE OR REPLACE PACKAGE BODY cust_sal AS  
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
--     1.0      2/11/2019    Chandresh Patel      N/A       Initial Version
-----------------------------------------------------------------------------------------------------
   
    PROCEDURE find_sal(c_id customers.id%TYPE) IS 
    c_sal customers.salary%TYPE; 
    BEGIN 
        SELECT salary INTO c_sal 
        FROM customers 
        WHERE id = c_id; 
        dbms_output.put_line('Salary: '|| c_sal); 
    END find_sal; 
END cust_sal; 
/