--Get list of tables missing primary keys. Run this as/in the schema you wish to audit.
select t.owner as schema_name,
       t.table_name
from sys.all_tables t
left join sys.all_constraints c
          on t.owner = c.owner
          and t.table_name = c.table_name
          and c.constraint_type = 'P'
where c.constraint_type is null
order by t.owner,
         t.table_name;