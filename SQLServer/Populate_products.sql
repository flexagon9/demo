SET IDENTITY_INSERT production.products ON;
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(NEXT VALUE FOR production.prod_sequence,,'Trek 820 - 2016',9,6,2016,379.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(NEXT VALUE FOR production.prod_sequence,,'Ritchey Timberwolf Frameset - 2016',5,6,2016,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(NEXT VALUE FOR production.prod_sequence,,'Surly Wednesday Frameset - 2016',8,6,2016,999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(NEXT VALUE FOR production.prod_sequence,,'Trek Fuel EX 8 29 - 2016',9,6,2016,2899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(NEXT VALUE FOR production.prod_sequence,,'Heller Shagamaw Frame - 2016',3,6,2016,1320.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(NEXT VALUE FOR production.prod_sequence,,'Surly Ice Cream Truck Frameset - 2016',8,6,2016,469.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(NEXT VALUE FOR production.prod_sequence,,'Trek Slash 8 27.5 - 2016',9,6,2016,3999.99);
SET IDENTITY_INSERT production.products OFF;