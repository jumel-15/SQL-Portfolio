SQL Query Portfolio

A collection of SQL queries showcasing my ability to retrieve, filter, and sort data from a mobile devices dataset using **SQL Server Management Studio (SSMS)**. This portfolio demonstrates key SQL concepts such as filtering with `WHERE`, sorting with `ORDER BY`, and pattern matching with `LIKE`.

---
📁 Folder Structure

| Folder             | Description |
|--------------------|-------------|
| `/price-filter`    | Mobiles launched in 2024 priced under or equal to USD 799 |
| `/apple-a17-chips` | Apple devices featuring A17-series processors |
| `/samsung-camera`  | Samsung devices with 50MP rear cameras |

---

🧾 Sample Queries

1. Mobile Devices Under USD 799 in 2024  
📁 File: `/price-filter/mobiles_under_799_usd_2024.sql`

📌 Lists mobile devices launched in **2024** with a price **less than or equal to USD 799**, sorted by price descending.

📝 Example Output:
| Company_Name | Model_Name     | Launched_Price_USA_USD  | Launched Year |
|--------------|----------------|-------------------------|---------------|
| Google       | Pixel 9 128GB  | 799                     | 2024          |
| Oppo         | A5 Pro 512GB   | 699                     | 2024          |

```sql
SELECT 
    Company_Name, 
    Model_Name, 
    Launched_Price_USA_USD, 
    [Launched Year] 
FROM ['Mobiles Dataset (2025)$']
WHERE 
    Launched_Price_USA_USD <= 799 
    AND [Launched Year] = 2024 
ORDER BY 
    Launched_Price_USA_USD DESC, 
    Company_Name ASC;
```

2. Apple Devices with A17 Processor  
📁 File: `/apple-a17-chips/apple_devices_with_a17_processor.sql`

📌 Filters Apple devices that include A17 in their processor name, sorted by price descending.

📝 Example Output:
| Company_Name | Model_Name             | Processor               | Launched_Price_USA_USD | Launched Year |
|--------------|------------------------|-------------------------|------------------------|---------------|
| Apple        | iPhone 16 512GB        | A17 Bionic              | 899                    | 2024          |
| Apple        | iPhone 16 Pro 128GB    | A17 Pro                 | 999                    | 2024          |

```sql
SELECT 
    Company_Name, 
    Model_Name, 
    Processor, 
    Launched_Price_USA_USD, 
    [Launched Year] 
FROM ['Mobiles Dataset (2025)$']
WHERE 
    Company_Name = 'Apple'
    AND Processor LIKE '%A17%'
ORDER BY 
    Launched_Price_USA_USD DESC;
```

3. Samsung Devices with 50MP Camera  
📁 File: `/samsung-camera/samsung_devices_with_50mp_camera.sql`

📌 Lists Samsung devices with a 50MP rear camera, sorted by price descending.

📝 Example Output:
| Company_Name | Model_Name       | Back_Camera             | Launched_Price_USA_USD |
|--------------|------------------|-------------------------|------------------------|
| Samsung      | Galaxy S22 128GB | 50MP                    | 699                    |
| Samsung      | Galaxy S23 128GB | 50MP                    | 799                    |

```sql
SELECT 
    Company_Name, 
    Model_Name, 
    Back_Camera, 
    Launched_Price_USA_USD 
FROM ['Mobiles Dataset (2025)$']
WHERE 
    Company_Name = 'Samsung'
    AND Back_Camera LIKE '%50MP%'
ORDER BY 
    Launched_Price_USA_USD DESC;
```
