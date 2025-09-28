select* from table_1;
describe table_1;

/*WHEN USING THE UPDATE COMMAND, THE WHERE CLAUSE MUST REFERENCE THE PRIMARY KEY , OTHERWISE IT WON'T ACCEPT ANY OTHER COLUMN.*/
update table_1
set column_4 = 12 where column_3 = '2025-09-28';