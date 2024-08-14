SELECT p.[FirstName]    
      ,p.[LastName]	
	  ,e.[JobTitle]
	  ,ep.[Rate]
	  ,[AverageRate] = AVG(ep.[Rate]) OVER()
	  ,[MaximumRate] = MAX(ep.[Rate]) OVER()
	  ,[DiffFromAvgRate] = ep.[Rate] - (AVG(ep.[Rate]) OVER())
	  ,[PercentofMaxRate] = ep.[Rate] / (MAX(ep.[Rate]) OVER()) * 100
  FROM [AdventureWorks2019].[Person].[Person] p
inner join HumanResources.Employee e
on p.BusinessEntityID = e.BusinessEntityID
inner join HumanResources.EmployeePayHistory ep
on ep.BusinessEntityID = e.BusinessEntityID
