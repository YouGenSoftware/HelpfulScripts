SELECT C.TABLE_CATALOG, C.TABLE_SCHEMA, C.TABLE_NAME, C.DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS C
WHERE DATA_TYPE IN 
( 'json', 'xml', 'geography', 'geometry', 'hierarchyid')