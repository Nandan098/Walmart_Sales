use wallmart_db;

select * from wallmart;

-- count total records
select count(*) from wallmart;

-- Count payment methods and number of transactions by payment method
select  payment_method,count(*) as total_payment 
from wallmart
group by payment_method;

-- count distinct branch
select count(distinct branch) as branch
from wallmart;

-- Find the minimum quantity sold
select min(quantity) from wallmart;

-- Bussiness Problems

-- Q-1. Find different payment methods, number of transactions, and quantity sold by payment method
       select  payment_method,count(*) as no_of__payment,sum(quantity) as no_of_quantity_sold 
       from wallmart
       group by payment_method;

-- 	Q-2. Identify the highest-rated category in each branch, Display the branch, category, and avg rating
         select t.branch,t.category,t.avg_rating from (select branch,category,round(avg(rating),2) as avg_rating,rank() over(partition by branch order by avg(rating) desc) as Ranks
         from wallmart 
		 group by branch,category
		 order by branch,avg_rating) as t
		 where t.ranks=1;
         
-- Q3: Identify the busiest day for each branch based on the number of transactions
       select t.branch,t.day_name,t.no_of_transaction from (select branch,dayname(date) as day_name,count(*) as no_of_transaction,rank() over(partition by branch order by count(*) desc) as ranks
       from wallmart
       group by branch,day_name
       order by branch) as t
       where t.ranks=1;
       
-- Q4: Calculate the total quantity of items sold per payment method
       select payment_method,sum(quantity) as total_quantity
       from wallmart
       group by payment_method;
       
-- Q5: Determine the average, minimum, and maximum rating of categories for each city
       select city,category,round(avg(rating),2) as avg_rating,min(rating) as min_rating,max(rating) as max_rating
       from wallmart
       group by city,category;
       
-- Q6: Calculate the total profit for each category
       select category,round(sum(unit_price*quantity*profit_margin),2) as total_profit
       from wallmart
       group by category;

-- Q7: Determine the most common payment method for each branch?
       with t as  (select branch,payment_method,count(*) as no_of_transaction,rank() over(partition by branch order by count(*) desc) as ranks
       from wallmart
       group by branch,payment_method
       order by branch asc,no_of_transaction desc)
       
       select t.branch,t.payment_method
       from t
       where t.ranks=1;
       
-- Q8: Categorize sales into Morning, Afternoon, and Evening shifts
       select branch,
                     case 
                          when hour(time) < 12 then 'Morning'
                          when hour(time) between 12 and 17 then'Afternoon'
						  else 'Evening'
                          end as shift,
        COUNT(*) AS num_invoices
        from wallmart
		group by branch, shift
        order by branch,num_invoices DESC;

-- Q9: Identify the 5 branches with the highest revenue decrease ratio from last year to current year (e.g., 2022 to 2023)
	   with revenue_2022 as (select branch,round(sum(total),2) as revenue_2022
	   from wallmart
       where year(date)=2022
       group by branch
       order by branch),
       
	   revenue_2023 as ( select branch,round(sum(total),2) as revenue_2023
       from wallmart
       where year(date)=2023
       group by branch
       order by branch)
       
       select r1.branch,r1.revenue_2022 as prev_revenue,r2.revenue_2023 as current_revenue,round((r1.revenue_2022-r2.revenue_2023)*100.0/r1.revenue_2022,2) as revenue_decrease_ratio
       from revenue_2022 as r1
       join
       revenue_2023 as r2
       on r1.branch=r2.branch
	   where r1.revenue_2022>r2.revenue_2023
       order by revenue_decrease_ratio desc
       limit 5;
       
       
	
	
       
