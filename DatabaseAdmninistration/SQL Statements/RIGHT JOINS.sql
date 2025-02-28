SELECT TOP (1000) 
     *
  FROM [BikeStores].[sales].[staffs] st
  RIGHT OUTER JOIN [BikeStores].[sales].[stores] s
  ON s.store_id = st.store_id 
