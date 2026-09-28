select Gender, Count(Gender) as TotalCount,
Count(Gender) * 100.0 / (select Count(*) from stg_Churn) as Percentage
from stg_Churn
Group By Gender

select Contract, Count(Contract) as TotalCount,
Count(Contract) * 100.0 / (select Count(*) from stg_Churn) as Percentage
from stg_Churn
Group By Contract

select Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) * 100.0 / (select Sum(Total_Revenue) from stg_Churn) * 100 as RevPercentage
from stg_Churn
Group By Customer_Status

select State, Count(State) as TotalCount,
Count(State) * 100.0 / (select Count(*) from stg_Churn) as Percentage
from stg_Churn
Group By State
Order by Percentage desc

Select Distinct Internet_Type
From stg_Churn 
