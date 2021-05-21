CREATE PROCEDURE `return_orders` ()
BEGIN
  insert into dim_region (region) select distinct region from orders
  where orders.id_orders not in(select orders.id_orders from orders  
  JOIN fato_vendas on orders.id_orders = fato_vendas.id_orders);
  

END 



 