SET IDENTITY_INSERT production.brands ON;  

INSERT INTO production.brands(brand_id,brand_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Electra');
INSERT INTO production.brands(brand_id,brand_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Haro');
INSERT INTO production.brands(brand_id,brand_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Heller');
INSERT INTO production.brands(brand_id,brand_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Pure Cycles');
INSERT INTO production.brands(brand_id,brand_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Ritchey');
INSERT INTO production.brands(brand_id,brand_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Strider');
INSERT INTO production.brands(brand_id,brand_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Sun Bicycles');
INSERT INTO production.brands(brand_id,brand_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Surly');
INSERT INTO production.brands(brand_id,brand_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Trek');

SET IDENTITY_INSERT production.brands OFF;  