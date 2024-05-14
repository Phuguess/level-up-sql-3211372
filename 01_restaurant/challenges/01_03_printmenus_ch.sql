-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT *
FROM DISHES
ORDER BY PRICE;

SELECT *
FROM DISHES
WHERE UPPER(TYPE) IN ('APPETIZER','BEVERAGE');

SELECT *
FROM DISHES
WHERE UPPER(TYPE) <> 'BEVERAGE';