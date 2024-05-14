-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT A.FIRSTNAME
, A.EMAIL
, C.TITLE
, B.DUEDATE

FROM PATRONS A
INNER JOIN LOANS B
  ON A.PATRONID = B.PATRONID
INNER JOIN BOOKS C
  ON B.BOOKID = C.BOOKID

WHERE B.DUEDATE <= '2022-07-13'
  AND B.ReturnedDate IS NULL