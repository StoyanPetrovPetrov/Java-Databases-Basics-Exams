UPDATE orders AS o 
SET 
    o.table_id = o.table_id - 1
WHERE
    o.id BETWEEN 12 AND 23;
