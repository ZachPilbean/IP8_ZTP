#1
select * from customer;
select * from order_line;
select * from orders;
select * from part;
select * from sales_rep;

#2
select customer_name from customer;
select sales_rep_num, city from sales_rep;

#3
select order_num, customer_num from orders;

#4
select * from order_line
limit 2;

#5 
select * from customer 
where sales_rep_num=20;

#6
select customer_name, balance, credit_limit from customer 
where sales_rep_num=20;

#7
select part_num, num_ordered, quoted_price, (num_ordered * quoted_price) as total_price from order_line
where order_num=21617 limit 1;

#8
select * from orders 
where order_date='2010-10-20' or order_date='2010-10-21' or order_date='2010-10-22';

#9
select * from part
where part_description like 'D%' and part_description like '%er';

#10
select (sum(balance)) as total_balance from customer;

#11
select (min(balance)) as min_balance from customer;

#12
select count(*) from customer;

#13
select order_num from order_line
where quoted_price>500 and quoted_price<1000;

#14
select customer_name, last_name, first_name
from customer, sales_rep 
join sales_rep on customer.sales_rep_num=sales_rep.sales_rep_num;



