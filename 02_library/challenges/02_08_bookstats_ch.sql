-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT PUBLISHED
, COUNT(BARCODE)

FROM BOOKS
GROUP BY PUBLISHED;

SELECT A.TITLE
, COUNT(LOANID) LOANCOUNT

FROM BOOKS A
INNER JOIN LOANS B
  ON A.BOOKID = B.BOOKID

GROUP BY TITLE
ORDER BY LOANCOUNT DESC
LIMIT 5