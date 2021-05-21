CREATE DEFINER=`root`@`localhost` PROCEDURE `return_orders`()
BEGIN
  insert into dim_region (region) select distinct region from orders
  where orders.Order_ID not in(select orders.Order_ID from orders  
  JOIN fato_vendas on orders.Order_ID = fato_vendas.order_id);
  

END