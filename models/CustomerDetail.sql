{{ config(
    materialized='view'
) }}

with CustomerDetail as (
SELECT [CustomerAlternateKey], [FirstName] + ' '+[MiddleName]+ ' '+[LastName] as FullName
      ,[NameStyle]
      ,[BirthDate]
      ,[Gender]
      ,[EmailAddress]
      ,[YearlyIncome]
      ,[TotalChildren]
	  ,b.EnglishCountryRegionName
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] a
  left join DimGeography b
  on a.GeographyKey = b.GeographyKey
  )
  select FullName, BirthDate, YearlyIncome, EnglishCountryRegionName from CustomerDetail