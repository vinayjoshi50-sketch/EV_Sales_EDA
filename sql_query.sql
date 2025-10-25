
--                                            Data Analysis

--                        Topic - Electric Vehicles(EV) Sales by States in India(2014-2024)


 
 
 -- Import Data from Local CSV file (Electric Vehicle Sales by State in India)
 
-- Create Database
Create Database if not exists Electric_Vehicles ;

-- Use Database
USE Electric_Vehicles;

-- Alter Table Name to EV_Sales 
alter table Sales rename to EV_Sales ;


-- 1) Describe Table 
   desc EV_Sales ; 


-- 2) View All the Items in the Table
select * from EV_Sales ; 


 -- 3) Show State Names
 select distinct (State) from EV_Sales ;  
 
 
 -- 4) No of States
select count(distinct State) as No_Of_States from EV_Sales ;


-- 5) Number of Vehicle Classes in the Table 
select count(distinct Vehicle_Class) as Vehicle_Class  from EV_Sales ;


-- 6) Vehicle Classes in the Table 
select distinct (Vehicle_Class) from EV_Sales ;


-- 7) Number of Vehicle Types in the Table
select count(distinct Vehicle_Type) as Vehicle_Types from EV_Sales ;


-- 8) Vehicle Types in the Table 
 select distinct (Vehicle_Type) from EV_Sales ;


-- 9) Number of Vehicle Category in the Table
select count(distinct Vehicle_Category) as Vehicle_Category from EV_Sales ;


-- 10) Vehicle Category in the Table 
select distinct (Vehicle_Category) from EV_Sales ;


-- 11) States by Overall Vehicle Sales
select State,sum(EV_Sales_Quantity) as Total_Sales 
from EV_Sales 
group by State 
order by Total_Sales desc ;
 
 
-- 12) Top 5 States by Sales
select State,sum(EV_Sales_Quantity) as Total_Sales 
from EV_Sales 
group by State 
order by Total_Sales desc limit 5 ;


-- 13) Sales By Vehicle Class
select Vehicle_Class,sum(EV_Sales_Quantity) as Total_Sales
 from EV_Sales 
 group by Vehicle_Class
 order by Total_Sales desc ;


-- 14) Top 5 vehicle Classes by Sales
select Vehicle_Class,sum(EV_Sales_Quantity) as Total_Sales 
from EV_Sales 
group by Vehicle_Class
order by Total_Sales desc limit 5;


-- 15) Sales By Vehicle Category
select Vehicle_Category,sum(EV_Sales_Quantity) as Total_Sales
 from EV_Sales 
 group by Vehicle_Category 
 order by Total_Sales desc ;


-- 16) Most Purchased Vehicle_Category 
select Vehicle_Category,sum(EV_Sales_Quantity) as Total_Sales 
from EV_Sales 
group by Vehicle_Category 
order by Total_Sales desc limit 1 ;


-- 17) Sales by Vehicle Type
 select Vehicle_Type,sum(EV_Sales_Quantity) as Total_Sales 
 from EV_Sales 
 group by Vehicle_Type 
 order by Total_Sales desc ;


-- 18) Top 3 Vehicle_Type By Sales
select Vehicle_Type,sum(EV_Sales_Quantity) as Total_Sales 
from EV_Sales 
group by Vehicle_Type 
order by Total_Sales desc limit 3 ;


-- 19) Yearly Sales
select Year,sum(EV_Sales_Quantity) as Total_Sales 
from EV_Sales 
group by Year 
order by Total_Sales desc ;


-- 20) Most Sales in a Particular Year
select Year,sum(EV_Sales_Quantity) as Total_Sales 
from EV_Sales 
group by Year order by Total_Sales desc limit 1;


-- 21) Vehicle Class Preferred by a Particular State 
SELECT state, vehicle_class, SUM(EV_Sales_Quantity) AS Total_sales
FROM EV_Sales
WHERE EV_Sales_Quantity > 0
GROUP BY State, Vehicle_Class
ORDER BY Total_sales DESC;


-- 22) Vehicle_Category Preferred by a Particular State
SELECT state, vehicle_category, SUM(EV_Sales_Quantity) AS Total_sales
FROM EV_Sales
WHERE EV_Sales_Quantity > 0
GROUP BY State, Vehicle_Category
ORDER BY Total_sales DESC;


-- 23) Vehicle_Type Preferred by a Particular State
SELECT state, vehicle_type, SUM(EV_Sales_Quantity) AS Total_sales
FROM EV_Sales
WHERE EV_Sales_Quantity > 0
GROUP BY State, Vehicle_type
ORDER BY Total_sales DESC;


-- 24) Yearly Sales of all States
SELECT state, year, SUM(EV_Sales_Quantity) AS Total_sales
FROM EV_Sales
WHERE EV_Sales_Quantity > 0
GROUP BY State, year
ORDER BY State ;


-- 25)Yearly Sales by a particular State (Input Required)
with CTE as (
SELECT state, year, SUM(EV_Sales_Quantity) AS Total_sales
FROM EV_Sales
WHERE EV_Sales_Quantity > 0
GROUP BY State, year
ORDER BY State 
)
select State,Year,Total_sales from CTE where State = "Gujarat" ;    



--                                                Basics Of EV_Sales Table

 select * from EV_Sales ;
-- Table Contains 8 Columns inc Month Name,Year and date with
-- States(34),Vehicle Class(73),Vehicle Category(5),Vehicle Type(12) and EV_Sales_Quantity.
-- Period Starts from 2014 till 2024 .
-- Sales Quantity is categorised Monthwise.


/*                                                 Insights


1) Top 5 States with most Sales are;
Uttar Pradesh,Maharashtra,Karnataka,Delhi and Rajasthan.
with UP at the top with 732074 units sold till date.

2) Most Preferred Vehicle Category is 2-Wheelers with approx 1.8M units sold.

3) Most Preferred Vehicle Type is 2W-Personal with approx 1.79M units sold.

4) Top 5 Vehicle Classes inc M-CYCLE/SCOOTER,E-RICKSHAW(P),MOTOR CAR,E-RICKSHAW WITH CART (G),THREE WHEELER (PASSENGER)

5) a Decade of Sales data shows that Sales of EV picked up pace since 2014 till 2024 and the graph would show that it has been a linear upward journey
   only to have broken its Upward route 2 times i.e in 2020 during covid and in 2024 due to General Elections ,Uncertainity of FAME Scheme
   and Global Economic Slowdown.
   Also 2023 tops the chart with Approximately 1.5M sales .

6) Sales crossed 1M only Two times i.e in 2022 and 2023.

7) Going through Sales data of Top-5 States also Suggests some Interesting Patterns.
For Eg -
For UP and Delhi the most Sought after EVs are 3W_Shared_LowSpeed which suggest some Business use cases(Considering their higher Populations
which can be seen in Bihar too)
On the Other Hand,
States like Maharashtra,Karnataka and Rajasthan the most Preferred EV was 2W_personal which is used only for Personal
Consumption (Considering their Higher GSDP as seen in Gujarat and Tamil Nadu too).

8) Only Delhi among the listed Union Territories have a considerable share of EVs , which can be attributed to its higher level of Economic Development. 

*/























 SELECT * FROM EV_Sales; 





