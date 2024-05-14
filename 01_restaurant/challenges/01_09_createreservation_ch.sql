-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)]

INSERT INTO CUSTOMERS (FIRSTNAME, LASTNAME, EMAIL)
VALUES ('SAM','MCADAMS','SMAC@KINETECOINC.COM');

SELECT *
FROM Customers
WHERE FIRSTNAME = 'SAM'

INSERT INTO RESERVATIONS (CUSTOMERID,DATE,PARTYSIZE)
VALUES ((SELECT CUSTOMERID
          FROM Customers
          WHERE UPPER(FIRSTNAME) = 'SAM'
            AND UPPER(LASTNAME) = 'MCADAMS'
            AND UPPER(EMAIL) = 'SMAC@KINETECOINC.COM')
        , '2022-08-12 18:00:00'
        , 5);

SELECT *
FROM Reservations
WHERE DATE = '2022-08-12 18:00:00'
  AND PartySize = 5