insert into fato_vendas 
   (id_region ,id_country, Item_Type, id_channel,Order_Priority, Order_Date ,Order_ID ,Ship_Date ,Units_Sold ,Unit_Price, Unit_Cost,
Total_Revenue,Total_Cost, Total_Profit)
  select dim_region.id_region,
   dim_country.id_country,
   Item_Type, 
   dim_saleschannel.id_channel,
    Order_Priority,
    str_to_date(order_date,'%c/%e/%Y'), 
     Order_ID,
     str_to_date(Ship_Date,'%c/%e/%Y')
     cast(Units_Sold as decimal (10,2 )), 
cast(Unit_Price as decimal (10,2)), 
cast(Unit_Cost as decimal (10,2)), 
cast(Total_Revenue as decimal (10,2)),
cast(Total_Cost as decimal (10,2)), 
cast(Total_Profit as decimal (10,2))
  
  
  from orders
  join dim_region on dim_region.region = orders.Region
  join dim_country on dim_country.country = orders.Country
  join dim_saleschannel on dim_saleschannel.sales_channel = orders.Sales_Channel
  where orders.Order_ID not in(select orders.Order_ID from orders join fato_vendas on orders.Order_ID = fato_vendas.order_id); 

id_region int, 
id_country int, 
Item_Type varchar(40),
id_channel int,   
Order_Priority varchar(40),
Order_Date  date, 
Order_ID int,
Ship_Date date,
Units_Sold int, 
Unit_Price dec (6,2),
Unit_Cost dec (6,2), 
Total_Revenue float, 
Total_Cost float, 
Total_Profit float, 