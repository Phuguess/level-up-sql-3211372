-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

INSERT INTO ORDERS (CUSTOMERID, ORDERDATE)
VALUES ((SELECT CUSTOMERID 
          FROM CUSTOMERS 
          WHERE UPPER(FIRSTNAME) = 'LORETTA'
            AND UPPER(LASTNAME) = 'HUNDEY'
            AND UPPER(ADDRESS) = '6939 ELKA PLACE')
        , '2022-09-20 14:00:00');

INSERT INTO ORDERSDISHES (ORDERID, DISHID)
VALUES (1001, (SELECT DishID FROM Dishes WHERE UPPER(NAME) = 'HOUSE SALAD'));
INSERT INTO ORDERSDISHES (ORDERID, DISHID)
VALUES (1001, (SELECT DishID FROM Dishes WHERE UPPER(NAME) = 'MINI CHEESEBURGERS'));
INSERT INTO ORDERSDISHES (ORDERID, DISHID)
VALUES (1001, (SELECT DishID FROM Dishes WHERE UPPER(NAME) = 'TROPICAL BLUE SMOOTHIE'));

SELECT A.FirstName
, A.LastName
, C.ORDERID
, SUM(D.PRICE)

FROM CUSTOMERS A
INNER JOIN ORDERS B
  ON A.CUSTOMERID = B.CUSTOMERID
INNER JOIN ORDERSDISHES C
  ON B.ORDERID = C.ORDERID
INNER JOIN DISHES D
  ON C.DishID = D.DishID

WHERE B.ORDERID = 1001

GROUP BY A.FirstName
, A.LastName
, C.ORDERID

