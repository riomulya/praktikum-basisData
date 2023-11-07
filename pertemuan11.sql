-- Tugas Praktikum - MySQL Workbench Documentation

-- a) Buatlah Struktur Database "Routine."

CREATE DATABASE Routine;

-- b) Buat Fungsi Tersimpan "fungsi1" dengan Parameter a

DELIMITER //

CREATE FUNCTION FUNGSI1(A SMALLINT) RETURNS INT BEGIN 
RETURN 
	RETURN RETURN (a + a);
	END // 


DELIMITER ;

-- c) Buat Fungsi Tersimpan "fungsi2" dengan Parameter kar

DELIMITER //

CREATE FUNCTION FUNGSI2(KAR CHAR(50)) RETURNS INT BEGIN 
RETURN 
	RETURN RETURN LENGTH(kar);
	END // 


DELIMITER ;

-- d) Buat Fungsi Tersimpan "fungsi3" dengan Parameter a

DELIMITER //

CREATE FUNCTION FUNGSI3(A SMALLINT) RETURNS INT BEGIN 
-- ISI FUNGSI3 DI SINI (SESUAI KEBUTUHAN) 
	-- ISI FUNGSI3 DI SINI (SESUAI KEBUTUHAN)
	-- Isi fungsi3 di sini (sesuai kebutuhan)
	RETURN 0;
	END // 


DELIMITER ;

-- e) Tampilkan Informasi Tentang "fungsi1"

SHOW CREATE FUNCTION fungsi1;

-- f) Tampilkan Informasi Tentang "fungsi2" dan "fungsi3"

SHOW CREATE FUNCTION fungsi2;

SHOW CREATE FUNCTION fungsi3;

-- g) Hapus Fungsi Tersimpan "fungsi3"

DROP FUNCTION fungsi3;

-- h) Buat Struktur Database "sekolah" dengan Tabel "siswa"

CREATE DATABASE sekolah;

USE sekolah;

CREATE TABLE
    siswa (
        nis VARCHAR(15),
        nama CHAR(20),
        angkatan VARCHAR(30),
        PRIMARY KEY (nis)
    );

-- i) Tambahkan Data pada Tabel "siswa"

INSERT INTO siswa VALUES ('11234', 'ana', '2008/2009');

INSERT INTO siswa VALUES ('11235', 'bayu', '2009/2010');

INSERT INTO siswa VALUES ('11236', 'canda', '2010/2011');

INSERT INTO siswa VALUES ('11237', 'dirga', '2012/2013');

INSERT INTO siswa VALUES ('11238', 'endang', '2013/2014');

-- j) Buat Procedure "jumlahsiswa"

DELIMITER //

CREATE PROCEDURE JUMLAHSISWA(OUT PARAMETER1 INT) BEGIN 
SELECT 
	SELECT COUNT(*) INTO parameter1 FROM siswa;
	END ;


DELIMITER ;

-- k) Panggil Procedure "jumlahsiswa" dan Tampilkan Hasil

CALL jumlahsiswa(@a);

SELECT (@a);

-- l) Buat Struktur Database "toko" dengan Tabel "barang"

CREATE DATABASE toko;

USE toko;

CREATE TABLE
    barang (
        NamaBarang CHAR(20),
        Satuan CHAR(10),
        Harga INT,
        Jumlah INT
    );

-- Tambahkan Data pada Tabel "barang"

INSERT INTO barang VALUES ('Sabun', 'Bungkus', 3000, 20);

INSERT INTO barang VALUES ('Sikat gigi', 'Bungkus', 4000, 50);

INSERT INTO barang VALUES ('Sampho', 'Botol', 10000, 30);

INSERT INTO barang VALUES ('Kopi', 'Kg', 30000, 20);

INSERT INTO barang VALUES ('Teh', 'Bungkus', 5000, 40);

INSERT INTO barang VALUES ('Beras', 'Kg', 10000, 10);