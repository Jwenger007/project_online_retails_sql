\copy online_retail(invoiceno)   FROM 'PASTE_PATH_HERE/online_retail.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
\copy online_retail(stockcode)   FROM 'PASTE_PATH_HERE/online_retail.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
\copy online_retail(description) FROM 'PASTE_PATH_HERE/online_retail.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
\copy online_retail(quantity)    FROM 'PASTE_PATH_HERE/online_retail.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
\copy online_retail(invoicedate) FROM 'PASTE_PATH_HERE/online_retail.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
\copy online_retail(unitprice)   FROM 'PASTE_PATH_HERE/online_retail.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
\copy online_retail(customerid)  FROM 'PASTE_PATH_HERE/online_retail.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
\copy online_retail(country)     FROM 'PASTE_PATH_HERE/online_retail.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
*/

-- This SQL script was executed using PostgreSQL via pgAdmin 4 (Query Tool / psql)
-- Database: online_retail
-- Purpose: Table structure modifications and schema adjustments
