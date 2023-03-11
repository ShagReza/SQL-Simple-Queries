/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (10) [Student Number]
      ,[Full Name]
      ,[Address]
      ,[Class ID]
  FROM [School].[dbo].[StudentInfo]

/****** Select just one collumn  ******/
SELECT TOP (2) [Student Number]
      ,[Full Name]
  FROM [School].[dbo].[StudentInfo]

/****** Changing Column Name  ******/
SELECT TOP (2) 
      StudentIDNumber=[Student Number]
  FROM [School].[dbo].[StudentInfo]

/****** Filter with Where  ******/
SELECT TOP (2) [Student Number]
      ,[Full Name]
  FROM [School].[dbo].[StudentInfo]
  WHERE [Full Name]='Ram Jack'

/****** Filter with Where  ******/
SELECT TOP (2) [Student Number]
      ,[Full Name]
  FROM [School].[dbo].[StudentInfo]
  WHERE [Full Name] in ('Ram Jack', 'lke posdk')

/****** Filter with Where  ******/
SELECT TOP (2) [Student Number]
      ,[Full Name]
  FROM [School].[dbo].[StudentInfo]
  WHERE [Full Name] Not in ('Ram Jack', 'lke posdk')

/****** Filter with Where  ******/
SELECT TOP (2) [Student Number]
      ,[Full Name]
  FROM [School].[dbo].[StudentInfo]
  WHERE [Full Name] like ('Ram%')

/****** Filter with Where  ******/
SELECT TOP (2) [Student Number]
      ,[Full Name]
  FROM [School].[dbo].[StudentInfo]
  WHERE [Student Number]>45657

 /****** Filter with Where  ******/
SELECT TOP (2) [Student Number]
      ,[Full Name]
  FROM [School].[dbo].[StudentInfo]
  WHERE [Student Number] between 452587 and 697125

 /****** Filter with combined conditions  ******/
SELECT TOP (2) [Student Number]
      ,[Full Name]
  FROM [School].[dbo].[StudentInfo]
  WHERE [Student Number] >20000
  and [Full Name] like ('R%')

 /****** Using Order  ******/
SELECT TOP (10) [Student Number]
      ,[Full Name]
      ,[Address]
      ,[Class ID]
  FROM [School].[dbo].[StudentInfo]
  order by
  [Class ID] Desc

 /****** Using Order  ******/
SELECT TOP (10) [Student Number]
      ,[Full Name]
      ,[Address]
      ,[Class ID]
  FROM [School].[dbo].[StudentInfo]
  order by
  [Class ID] Desc

/****** Using Alias  ******/
SELECT TOP (10) [Student Number]
      ,[Full Name] AS FirstLast
  FROM [School].[dbo].[StudentInfo]


/****** Using Group by  ******/
SELECT
      [Class ID],
	  AVG([Student Number]) As Av
  FROM 
  [School].[dbo].[StudentInfo]
  GROUP By 
  [Class ID]

 /****** Using case (when-then) ******/
SELECT TOP (10) 
      [Full Name],
      [Address],
      [Class ID],
	  Maturity=CASE
	  when[Student Number]>20000
	  then 'new'
	  else
	  'old'
	  end
  FROM [School].[dbo].[StudentInfo]

/****** Aggregate Functios ******/
SELECT
      AVG([Student Number]) As AVG_table,
	  MIN([Student Number]) As MIN_table
  FROM [School].[dbo].[StudentInfo]
