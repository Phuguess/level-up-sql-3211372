-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT CUSTOMERID
, COUNT(ORDERID) NUMORDERS
FROM ORDERS
GROUP BY CUSTOMERID
ORDER BY NUMORDERS DESC