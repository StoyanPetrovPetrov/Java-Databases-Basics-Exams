DELETE w FROM waiters AS w 
WHERE
    w.id NOT IN (SELECT 
        waiter_id
    FROM
        orders);
