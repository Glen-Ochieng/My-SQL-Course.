/* Temporary tables are useful as the tables created will not be permanently added to the databases, unlike creating new tables.

Syntax
Placing #Temp before the table name.
*/

--Example 

SELECT EmployeeID, Name, Department
INTO #TempEmployees
FROM Employees
WHERE Department = 'IT';
