use microsoft_fabric_course;

select * from table_1;

/*To add a column that serves as a forgein key, that column first must already exist in that table.
If that column does not already exist, then you must first create that column, then subsequently make it the foreign key
Luckily alter table can also create new columns on top of making them forign keys*/

alter table table_1
add column_5 varchar(10);

/*REMEMBER! A FOREIGN KEY CANNOT BE ADDED TO A TABLE THAT DOES NOT FIRST HAVE A PRIMARY KEY.*/
ALTER TABLE table_1 
ADD PRIMARY KEY (column_3);

/*THE TABLE YOU USE IN REFERENCES MUST BE A DIFFERENT TABLE WHERE THAT COLUMN IS THE PRIMARY KEY IN THAT TABLE */
create table microsoft_fabric_course.table_2(
column_1 int not null ,
column_2 varchar(10) primary key);

/*THE COLUMN YOU CHOSE AS THE FOREIGN KEY IN THE FIRST TABLE MUST BE OF SIMILAR TYPE TO THE PRIMARY KEY COLUMN IN THE REFERENCE TABLE 
I.E BOTH MUST BE OF THE SAME DATA TYPE. */

alter table table_1
add foreign key (column_5)
references table_2(column_2);

describe table_1;


