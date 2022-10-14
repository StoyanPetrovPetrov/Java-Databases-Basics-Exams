SELECT COUNT(c.id) AS 'items_count', c.name, sum(p.quantity_in_stock) AS 'total_quantity'
FROM products p
         JOIN categories c on c.id = p.category_id
GROUP BY c.id
ORDER BY `items_count` desc, total_quantity ASC
LIMIT 5;
