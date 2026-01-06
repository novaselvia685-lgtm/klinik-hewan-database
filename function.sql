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
Query OK, 0 rows affected (0.293 sec)

mysql>
mysql> DELIMITER ;