CREATE DEFINER=`root`@`localhost` PROCEDURE `return_orders`()
BEGIN
  insert into dim_region (region) select distinct region from orders
  where orders.Order_ID not in(select orders.Order_ID from orders  
  JOIN fato_vendas on orders.Order_ID = fato_vendas.order_id) 
  and orders.region not in(select orders.region from orders 
  JOIN dim_region on dim_region.region = orders.region);
  

END