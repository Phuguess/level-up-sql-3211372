-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

SELECT *
FROM CUSTOMERS
WHERE UPPER(EMAIL) = 'ATAPLEY2J@KINETECOINC.COM';

INSERT INTO ANNIVERSARY (CUSTOMERID, GUESTS)
VALUES (92, 3);

SELECT *
FROM ANNIVERSARY;