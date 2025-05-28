SELECT Company_Name, Model_Name, Back_Camera, Launched_Price_USA_USD FROM ['Mobiles Dataset (2025)$']
WHERE Company_Name = 'Samsung'
AND Back_Camera LIKE '%50MP%'
ORDER BY Launched_Price_USA_USD DESC