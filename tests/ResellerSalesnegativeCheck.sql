SELECT UnitPrice
  FROM [AdventureWorksDW2022].[dbo].[FactResellerSales]
  where UnitPrice<0 or ProductStandardCost<0