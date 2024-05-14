-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT C.TITLE
, COUNT(C.BOOKID)
FROM BOOKS C
WHERE UPPER(C.TITLE)='DRACULA'
  AND C.BOOKID NOT IN (SELECT A.BOOKID
                      FROM BOOKS A
                      INNER JOIN LOANS B 
                      ON A.BOOKID = B.BOOKID
                      WHERE UPPER(A.TITLE) = 'DRACULA'
                      AND B.ReturnedDate IS NULL)                      

GROUP BY C.TITLE