DELIMITER $$
CREATE FUNCTION udf_client_bill(full_name VARCHAR(50)) 
RETURNS DECIMAL(19,2)
DETERMINISTIC
BEGIN
    DECLARE total_price_of_products_ordered DECIMAL(19,2);
    SET total_price_of_products_ordered := (
    SELECT 
    SUM(p.price) AS 'bill'
FROM
    clients AS c
        JOIN
    orders_clients AS oc ON c.id = oc.client_id
        LEFT JOIN
    orders_products AS op USING (order_id)
        LEFT JOIN
    products AS p ON p.id = op.product_id
WHERE
    concat(c.first_name, ' ', c.last_name) = full_name);
    RETURN total_price_of_products_ordered;
END$$
