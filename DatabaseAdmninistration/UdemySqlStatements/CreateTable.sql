CREATE TABLE [AdventureWorks2016].[sales].[visit] (
    visit_id INT PRIMARY KEY IDENTITY (1,1),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    visited_at DATETIME,
    phone VARCHAR(20),
    store_id INT NOT NULL,
    FOREIGN KEY (store_id) REFERENCES sales.storeNEW (store_id) 
);




CREATE TABLE [AdventureWorks2016].[sales].[storenew](

store_id INT PRIMARY KEY,
sales INT 
);

FOREIGN KEY (store_id) REFERENCES sales.store (store_id)
) 

SELECT TABLE_SCHEMA, TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_NAME = 'visit' AND TABLE_SCHEMA = 'sales';

SELECT * FROM [AdventureWorks2016].[sales].[visit];


