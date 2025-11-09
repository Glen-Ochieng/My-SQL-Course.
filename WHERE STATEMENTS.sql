/* Where statements are used to filter tables*/

*Syntax*
/* select * from table_name WHERE */

*Eg*

select * from prices 
  WHERE price >= 50 and price <= 60;

*which can also be written as*

select * from prices
WHERE price between 50 and 60;

*Eg*
select * from products 
  WHERE categories = "Gadget" or categories = "Gizmo";

*OR*

select * from products 
  WHERE categories in ("Gadgets","Gizmo");

/*For multiple conditions you can place each condition in brackets to seperate them.*/

select * from products 
  WHERE (categories in ('Gadget', 'Gizmo') ) and (price >50);
