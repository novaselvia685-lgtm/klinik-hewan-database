-- Function: Hitung Total Biaya
DELIMITER //

CREATE FUNCTION fn_total_biaya(p_id_rekam INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT SUM(biaya)
    INTO total
    FROM detail_perawatan
    WHERE id_rekam = p_id_rekam;

    RETURN total;
END //

DELIMITER ;