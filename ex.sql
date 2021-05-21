insert into fato_vendas
 (id_region ,id_country, Item_Type, id_channel,Order_Priority, Order_Date ,Order_ID ,Ship_Date ,Units_Sold ,Unit_Price ,Unit_Cost ,
Total_Revenue,Total_Cost, Total_Profit)
select dim_region.id_region,
 dim_country.id_country , 
 Item_Type, 
 dim_saleschannel.id_channel, 
 Order_Priority,
 str_to_date(Order_Date, '%c/%e/%Y'), 
Order_ID, 
str_to_date(Ship_Date, '%c/%e/%Y'),
cast(Units_Sold as decimal (10,2 )), 
cast(Unit_Price as decimal (10,2)), 
cast(Unit_Cost as decimal (10,2)), 
cast(Total_Revenue as decimal (10,2)),
cast(Total_Cost as decimal (10,2)), 
cast(Total_Profit as decimal (10,2))



from stage

 

inner join dim_region on dim_region.Region = stage.Region  
inner join dim_country on dim_country.Country = stage.Country
inner join dim_saleschannel on dim_saleschannel.Sales_Channel = stage.Sales_Channel

where stage.Order_ID not in ( select stage.Order_ID from stage
inner join fato_vendas on stage.Order_ID = fato_vendas.Order_ID);