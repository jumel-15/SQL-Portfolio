SELECT Company_Name, Model_Name, Processor, Launched_Price_USA_USD, [Launched Year] FROM ['Mobiles Dataset (2025)$']
WHERE Company_Name = 'Apple'
AND Processor LIKE '%A17%'
ORDER BY Launched_Price_USA_USD DESC