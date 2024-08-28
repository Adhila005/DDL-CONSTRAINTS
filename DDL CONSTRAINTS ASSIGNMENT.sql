#create the database
create database Sales;
#use the sales database
Use sales;
#create the orders table with the required constraints
create table Orders (
 Order_Id INT PRIMARY KEY, -- Primary key constraint
 Customer_Name VARCHAR(100) NOT NULL, -- not null constraint
 Product_Category VARCHAR(50) NOT NULL, -- not null constraint
 Ordered_Item VARCHAR(100) NOT NULL, -- not null constraint
 Contact_No VARCHAR(15) UNIQUE, -- unique constraint );
 desc order;
 #Add the Order_Quantity column to the Orders table
ALTER TABLE Orders Add column Order_Quantity INT; 
#Rename the Orders table to sales_orders;
RENAME TABLE Orders to sales_orders;
#Insert 10 rows into the sles_orders table
INSERT INTO sales_orders (Order_Id, Customer_Name, Product_category, Ordered_Item, Contact_No, Order_Quantity)
VALUES
(1,'JOHN','ELECTRONICS','LAPTOP','8976543210',2),
(2,'JANE','BOOKS','SCIENCE','8765490321',1),
(3,'ALICE','FURNITURE','CHAIR','8977644467',4),
(4,'ROBERT','ELECTRONICS','SMARTPHONE','4321657890',3),
(5,'EMILY','CLOTHING','JACKET','5432189065',5),
(6,'MICHEL','BOOKS','PYTHON','6757432567',4),
(7,',WILSON','CLOTHING','T-SHIRT','7654321896',3),
(8,'DAVID','ELECTRONICS','TABLET','8765213459',4),
(9,'SARAH','KITCHEN','BLENDER','8709543456',2),
(10,'MILLER','BOOKS','ENGLISH','4567392013',3);
#Retrieve customer_name and ordered_item from the sales_orders table
SELECT Customer_name, Ordered_item FROM sales_orders;
#update the ordered_items for a specific row;
UPDATE sales_orders
SET ordered_item = 'science'
WHERE order_id = 2;
#delete the sales_orders table
drop table sales_orders;




 
 