SELECT Company_Name, Model_Name, Launched_Price_USA_USD, [Launched Year] FROM ['Mobiles Dataset (2025)$']
WHERE Launched_Price_USA_USD <= 799 
AND [Launched Year] = 2024 
ORDER BY Launched_Price_USA_USD DESC, Company_Name ASC