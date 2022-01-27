--1
select ProductID, Name, Color, ListPrice
from Production.Product;

--2
select ProductID, Name, Color, ListPrice
from Production.Product
where ListPrice != 0;

--3
select ProductID, Name, Color, ListPrice
from Production.Product
where Color IS NULL;

--4
select ProductID, Name, Color, ListPrice
from Production.Product
where Color IS NOT NULL;

--5
select ProductID, Name, Color, ListPrice
from Production.Product
where Color IS NOT NULL and ListPrice > 0;

--6
select Name, Color
from Production.Product
where Color IS NOT NULL;

--7
select Top (6) 'NAME:' + Name + ' -- COLOR:' + Color
from Production.Product
where Color IS NOT NULL;

--8
select ProductID, Name
from Production.Product
where ProductID between 400 and 500;

--9
select ProductID, Name, Color
from Production.Product
--where Color = 'black' or Color = 'blue';
where  Color in ('black', 'blue')

--10
select Name
from Production.Product
where Name like 'S%';

--11
select Name, ListPrice
from Production.Product
where Name like 'Seat%' or Name Like 'S%, L' or Name Like 'S%, M'
order by Name asc;

--12
select Top 5 Name, ListPrice
from Production.Product
where Name Like 'A%' or Name Like 'S%'
order by Name;

--13
select *
from Production.Product
where Name Like 'SPO[^K]%'
order by Name;

--14
select distinct Color
from Production.Product
order by Color DESC;

--15
select distinct ProductSubcategoryID, Color
from Production.Product
where ProductSubcategoryID IS NOT NULL and Color IS Not NULL
order by ProductSubcategoryID