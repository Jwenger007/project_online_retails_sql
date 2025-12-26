--Remove and return invalid quantities
DELETE FROM online_retail
WHERE quantity <= 0;

--Remove and return invalied unitprices
DELETE FROM online_retail
WHERE unitprice <= 0;

-- Remove blank rows
DELETE FROM online_retail
WHERE description IS NULL;

--Remove and return invalid costumer id's
DELETE FROM online_retail
WHERE customerid IS NULL;

--quick check
SELECT COUNT(*) FROM online_retail;
