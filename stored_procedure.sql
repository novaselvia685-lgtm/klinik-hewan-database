mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE sp_rekam_medis_hewan(IN p_id_periksa INT)
    -> BEGIN
    ->     SELECT
    ->         id_rekam,
    ->         id_periksa,
    ->         tanggal_periksa,
    ->         diagnosis,
    ->         tindakan
    ->     FROM rekam_medis
    ->     WHERE id_periksa = p_id_periksa;
    -> END //

mysql>
mysql> DELIMITER ;