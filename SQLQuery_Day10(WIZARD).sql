/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[Food_Item1]
      ,[Food_Item2] AS Food_Timimg
  FROM [BNM_SCHOOL_DATA].[dbo].[tbl_Canteen_Foods]

  delete from [tbl_Canteen_Foods];