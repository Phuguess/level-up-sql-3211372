-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT A.CUSTOMERID
, A.FIRSTNAME
, A.LASTNAME
, B.*
FROM CUSTOMERS A
INNER JOIN RESERVATIONS B
  ON A.CUSTOMERID = B.CUSTOMERID
WHERE (UPPER(FIRSTNAME) = 'NORBY'
  OR UPPER(LASTNAME) = 'NORBY')
AND B.DATE >= '2022-07-24'
;

DELETE FROM RESERVATIONS WHERE ReservationID = 2000;

SELECT *
FROM Reservations
WHERE CUSTOMERID = 64;