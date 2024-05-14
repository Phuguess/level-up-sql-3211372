-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT A.TITLE
, A.AUTHOR
, A.PUBLISHED

FROM BOOKS A

WHERE A.PUBLISHED BETWEEN '1890' AND '1899'
  AND A.BOOKID NOT IN (
    SELECT SUB.BookID
    FROM LOANS SUB
    WHERE SUB.ReturnedDate IS NULL)