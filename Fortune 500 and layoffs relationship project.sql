DELETE FROM fortune500.`fortune 500 companies` WHERE year NOT IN (2022,2023);

SELECT *
From fortune500.`fortune 500 companies`;

-- Fortune 500 data has full name, but layoffs only has the simple name

SELECT L.company AS 'from layoffs', F.name AS 'from fortune 500'
FROM fortune500.`fortune 500 companies` AS F
JOIN layoffs.tech_layoffs AS L ON L.company LIKE CONCAT('%'," ",F.name," ",'%');

