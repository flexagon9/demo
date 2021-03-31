IF NOT EXISTS(SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[production].[prod_sequence]') AND type = 'SO')
CREATE SEQUENCE [production].[prod_sequence] 
    AS [bigint]
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE  3 