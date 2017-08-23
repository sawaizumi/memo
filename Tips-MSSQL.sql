-- 日本語UTF-8, LF



-- ===================================================================
-- database management

DROP DATABASE IF EXISTS [__DATABASE_NAME__];
-- Tips-MSSQL-create_database.sql

SELECT * FROM .[sys].[databases] ORDER BY [name];



-- ===================================================================
-- table management

DROP TABLE IF EXISTS [__TABLE_NAME__];
-- Tips-MSSQL-create_table.sql
TRUNCATE TABLE [__TABLE_NAME__];
INSERT INTO [__TABLE_NAME__] SET [c__id] = 1, [c__name] = 'data';

SELECT COUNT( * ) FROM [__TABLE_NAME__];
SELECT * FROM [__TABLE_NAME__];
SELECT * FROM .[sys].[objects] WHERE [type] IN ( 'U', 'S', 'IT' ) ORDER BY [name];
SELECT * 
	FROM .[sys].[columns] 
	WHERE [object_id] = 
		( 
			SELECT [object_id] FROM .[sys].[objects] WHERE [name] = '__TABLE_NAME__' 
		) 
	ORDER BY [column_id];



-- ===================================================================
-- user management



-- ===================================================================
-- etc.



