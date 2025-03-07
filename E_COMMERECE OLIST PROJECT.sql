
# KPI 1#

select day_of_week, concat(round(count(payment_value)/103880*100 ),"%") as payment_statistics 
from olist_orders_dataset
join olist_order_payments_dataset using (order_id)
group by day_of_week;
SELECT COUNT(ORDER_ID) FROM olist_order_reviews_dataset;
SELECT COUNT(ORDER_ID) FROM olist_order_payments_dataset;

#KPI 2
SELECT "with review score 5 & pay type as credit card" AS DESCRIPTION , CONCAT (ROUND((COUNT(ORDER_ID)/1000),1),"k") as NO_OF_ORDERS 
from olist_order_payments_dataset 
join olist_order_reviews_dataset using (order_id)
where payment_type in ("credit_card") and review_score in (5);

#KPI 3
SELECT  CONCAT(ROUND(avg(no_of_days_for_delevery),2),"  DAYS") AS AvG_number_of_days_taken_for_pet_shop  FROM olist_orders_dataset
JOIN olist_order_items_dataset USING (order_id)
JOIN olist_products_dataset USING (product_id)
WHERE product_category_name IN ("pet_shop");

# KPI 4
SELECT ROUND(avg(price),2) as AVERAGE_PRICE, ROUND(avg(payment_value),2) AS PAYMENT_VALUE from olist_order_items_dataset
 join olist_order_payments_dataset using (order_id)
join olist_orders_dataset using (order_id)
join olist_customers_dataset using(customer_id)
where customer_city in ("sao paulo");

#KPI 5
SELECT no_of_days_for_delevery as NO_OF_DAYS_TAKEN_FOR_DELIVERY, round(avg(review_score),2) as reviw_scores from olist_orders_dataset
JOIN olist_order_reviews_dataset USING (order_id)
group by no_of_days_for_delevery
order by no_of_days_for_delevery asc;
# CITY WISE ORDERS
SELECT distinct customer_city, CONCAT(ROUND(COUNT(order_id)/ 1000 ,1),"K")as TOTAL_ORDERS FROM olist_customers_dataset
JOIN olist_orders_dataset using (customer_id)
group by customer_city
order by COUNT(order_id) DESC;
# PAYMENT_TYPE VS NO OF ORDERS VS TOTAL PAYMENT
select payment_type, CONCAT(ROUND(count(order_id)/1000 ),"K")as NO_OF_ORDERS ,
CONCAT(ROUND(sum(payment_value)/1000,2),"K") AS TOTAL_PAYMENT
from olist_order_payments_dataset group by payment_type
order by sum(payment_value) desc ,count(order_id) desc;
# PRODUCT CATOGERY NAME VS NO OF ORDERS
SELECT product_category_name_english AS PRODUCT_CATOGERY_NAME, 
concat(round(COUNT(ORDER_ID)/1000,1),"K")AS NO_OF_ORDERS FROM olist_order_items_dataset
JOIN olist_products_dataset USING (product_id)
join product_category_name_translation using (product_category_name)
group by product_category_name_english
order by COUNT(ORDER_ID) desc;
# YEAR WISE NO OF ORDERS VS TOTAL PAYMENT
 select order_purchase_year, concat(round(count(order_id)/1000),2,"K") AS NO_OF_ORDERS, 
  CONCAT(ROUND(sum(payment_value)/1000),"K") AS TOTAL_PAYMENT from olist_orders_dataset 
 join olist_order_payments_dataset using (order_id)
 group by order_purchase_year
 ORDER BY concat(round(count(order_id)/1000),2,"K") DESC,CONCAT(ROUND(sum(payment_value)/1000),"K") DESC;
# City wise order ranking
SELECT customer_city, 
       COUNT(order_id) AS order_count,
       dense_rank() OVER(ORDER BY COUNT(order_id) DESC) AS city_rank
FROM olist_customers_dataset 
JOIN olist_orders_dataset USING(customer_id)
GROUP BY customer_city;

 






