SELECT
    o.orderid
   ,o.customerid
   ,o.netamount
   ,SUM(o.netamount) OVER (
        PARTITION BY o.customerid -- Partitions by customerid.
        ORDER BY o.orderid -- Takes into account the previous and the current value.
   ) AS "Cumulative Sum"
FROM orders AS o
ORDER BY o.customerid;

  

