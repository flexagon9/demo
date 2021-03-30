SET IDENTITY_INSERT production.categories ON;  
INSERT INTO production.categories(category_id,category_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Children Bicycles');
INSERT INTO production.categories(category_id,category_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Comfort Bicycles');
INSERT INTO production.categories(category_id,category_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Cruisers Bicycles');
INSERT INTO production.categories(category_id,category_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Cyclocross Bicycles');
INSERT INTO production.categories(category_id,category_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Electric Bikes');
INSERT INTO production.categories(category_id,category_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Mountain Bikes');
INSERT INTO production.categories(category_id,category_name) VALUES(NEXT VALUE FOR production.prod_sequence,'Road Bikes');

SET IDENTITY_INSERT production.categories OFF;  
