-- top 10 country with gold medals
SELECT TOP (10) 
			[TeamCountry],
			[Gold]
FROM [Olympic_data_dl].[dbo].[medals]
order by [Gold] desc

-- top 10 countries with medals
SELECT TOP(10) TeamCountry, Total
from Olympic_data_dl.dbo.medals
order by Total desc

-- Countries with no of atheletes
select top(10) Country, count(PersonName) as no_of_athletes
from Olympic_data_dl.dbo.athletes
GROUP by Country
order by no_of_athletes desc

--  Top 10 Disciplines with the Most Participants Countries
SELECT top(10) Discipline, count(DISTINCT Country) as Countries 
from Olympic_data_dl.dbo.athletes
GROUP by Discipline
order by Countries desc

select TOP (100) * from Olympic_data_dl.dbo.athletes
select TOP (100) * from Olympic_data_dl.dbo.coaches
select TOP (100) * from Olympic_data_dl.dbo.entriesgender
select TOP (100) * from Olympic_data_dl.dbo.medals
select TOP (100) * from Olympic_data_dl.dbo.teams