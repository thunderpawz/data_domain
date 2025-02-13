--MSSQL Search Table Query
SELECT so.name as object, so.type, sc.* 
FROM sysobjects SO 
JOIN syscolumns sc on sc.id=so.id 
WHERE so.type ='u'--in ('u','v') –- U=table, v=view 
and So.name --so.name is table name 
--Sc.name –- sc.name is column name 
like '%{insert search string}%' 
order by 1 

--MSSQL Show all tables in a database
SELECT table_name
FROM INFORMATION_SCHEMA.TABLES
WHERE table_type = 'BASE TABLE'

