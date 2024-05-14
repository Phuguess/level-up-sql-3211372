-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT A.*
, B.*
FROM CUSTOMERS A
INNER JOIN RESERVATIONS B
  ON A.CUSTOMERID = B.CUSTOMERID
WHERE B.PartySize = 4
  AND (UPPER(A.FIRSTNAME) LIKE 'ST%'
    OR UPPER(A.LASTNAME) LIKE 'ST%')
  AND DATE LIKE '%-06-14%'