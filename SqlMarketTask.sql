Create Database Market
use Market

Create Table Products
(
Id int identity primary key,
Name nvarchar(50),
Price smallmoney
)

Alter Table Products 
Add Brand nvarchar(50) 

Insert Into Products
values
('Computer',2000,'Asus'),
('Computer',3000,'Omen'),
('Television',4000,'LG'),
('Phone',1000,'Iphone'),
('Phone',2000,'Samsung')

Select CONCAT(Name,' ',Brand) 'Product Info',Price From Products where (Select Avg(Price) From Products) > Price

Select CONCAT(Name,' ',Brand) 'Product Info',Price From Products where Price>1000

Select CONCAT(Name,' ',Brand) 'Product Info',Price From Products where LEN(Brand)>5

