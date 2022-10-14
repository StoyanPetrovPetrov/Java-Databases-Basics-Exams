CREATE PROCEDURE `udp_reduce_price`(`category_name` VARCHAR(50))
BEGIN
    UPDATE products p
        JOIN reviews r on r.id = p.review_id
        JOIN categories c on c.id = p.category_id
    SET p.price = price * 0.70
    WHERE c.name = category_name
      AND r.rating < 4;
END
