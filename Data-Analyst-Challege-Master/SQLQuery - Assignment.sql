
create table order_table (
             Order_id varchar(30) PRIMARY KEY, total_price money,
			 created_at DateTime, date DateTime,
			 CAD_rate money, order_price_CAD money
			 )
	  
select *
from order_table


create table customer_table(
             Order_id varchar(30) FOREIGN KEY REFERENCES order_table(Order_id),
			 customer_id varchar(30),
			 customer_name varchar(50), email varchar(30)
			 )

select *
from customer_table

create table product_table(
             Order_id varchar(30) FOREIGN KEY REFERENCES order_table(Order_id),
			 id varchar(30), product_id varchar(30), product_sku varchar(30),
			 product_name varchar(50), product_price money,
			 date DateTime, CAD_rate money, product_price_CAD money
			 
			 )

select *
from product_table