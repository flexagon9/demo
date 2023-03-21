if not exists (select * from sys.tables t join sys.schemas s on (t.schema_id = s.schema_id) where s.name = 'production' and t.name = 'brands') 	
CREATE TABLE production.brands (
	brand_id INT IDENTITY (1, 1) PRIMARY KEY,
	brand_name VARCHAR (255) NOT NULL
);
