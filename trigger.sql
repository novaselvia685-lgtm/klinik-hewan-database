-- Trigger: Cek Jadwal Dokter
DELIMITER //

CREATE TRIGGER trg_cek_jadwal_dokter
BEFORE INSERT ON jadwal
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1
        FROM jadwal
        WHERE id_dokter = NEW.id_dokter
        AND tanggal = NEW.tanggal
        AND jam = NEW.jam
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Jadwal dokter sudah terisi';
    END IF;
END //

DELIMITER ;