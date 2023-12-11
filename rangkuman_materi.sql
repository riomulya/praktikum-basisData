## Like dan not like

-- Memilih semua data dari tabel 'pegawai' yang nama_depan-nya diawali dengan 'Joh'

SELECT * FROM pegawai WHERE nama_depan LIKE 'Joh%';

-- Memilih semua data dari tabel 'produk' yang tidak mengandung kata 'diskon' pada nama_produk

SELECT * FROM produk WHERE nama_produk NOT LIKE '%diskon%';

-- Menggabungkan tabel 'pegawai' dengan 'departemen' berdasarkan id_departemen

-- Join dalam SQL:

-- JOIN digunakan untuk menggabungkan baris dari dua atau lebih tabel berdasarkan suatu kondisi.

-- Terdapat beberapa jenis JOIN seperti INNER JOIN, LEFT JOIN (atau LEFT OUTER JOIN), RIGHT JOIN (atau RIGHT OUTER JOIN), dan FULL JOIN (atau FULL OUTER JOIN).

-- Kondisi bergantung pada kolom yang dihubungkan antara tabel-tabel tersebut.

-- Format dasar query JOIN adalah: SELECT kolom1, kolom2, ... FROM tabel1 JOIN tabel2 ON tabel1.kolom = tabel2.kolom;

SELECT
    pegawai.nama,
    departemen.nama_departemen
FROM pegawai
    INNER JOIN departemen ON pegawai.id_departemen = departemen.id_departemen;

-- Mengambil semua data dari tabel 'pegawai' dan data yang sesuai dari 'departemen'

SELECT
    pegawai.nama,
    departemen.nama_departemen
FROM pegawai
    LEFT JOIN departemen ON pegawai.id_departemen = departemen.id_departemen;

-- Mengambil semua data dari tabel 'departemen' dan data yang sesuai dari 'pegawai'

SELECT
    pegawai.nama,
    departemen.nama_departemen
FROM pegawai
    RIGHT JOIN departemen ON pegawai.id_departemen = departemen.id_departemen;

-- Mengambil semua data dari kedua tabel, mencocokkan data jika ada, dan mengisi NULL jika tidak ada yang sesuai

SELECT
    pegawai.nama,
    departemen.nama_departemen
FROM pegawai FULL
    JOIN departemen ON pegawai.id_departemen = departemen.id_departemen;

-- Routine

--- Stored PROCEDURE

CREATE PROCEDURE NAMA_PROSEDUR() BEGIN 
-- ISI PROSEDUR 
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- isi prosedur
	END;


--dengan parameter

CREATE PROCEDURE NAMA_PROSEDUR(PARAMETER1 INT, OUT 
PARAMETER2 INT) BEGIN 
-- ISI PROSEDUR 
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- ISI PROSEDUR
	-- isi prosedur
	END;


-- isi procedure

CREATE PROCEDURE CONTOH_PROSEDUR() BEGIN SELECT 
	SELECT
	SELECT
	SELECT
	SELECT
	SELECT
	SELECT
	SELECT
	SELECT
	SELECT
	SELECT
	SELECT *
	FROM tabel;
	END;


-- memanggil PROCEDURE

CALL nama_prosedur();

-- Stored FUNCTION

CREATE FUNCTION NAMA_FUNGSI() RETURNS INT BEGIN 
-- ISI FUNGSI 
	-- ISI FUNGSI
	-- ISI FUNGSI
	-- ISI FUNGSI
	-- ISI FUNGSI
	-- ISI FUNGSI
	-- ISI FUNGSI
	-- ISI FUNGSI
	-- isi fungsi
	END;


CREATE FUNCTION NAMA_FUNGSI(PARAMETER1 INT) RETURNS 
INT BEGIN 
-- ISI FUNGSI 
	-- ISI FUNGSI
	-- ISI FUNGSI
	-- ISI FUNGSI
	-- ISI FUNGSI
	-- ISI FUNGSI
	-- ISI FUNGSI
	-- isi fungsi
	END;


CREATE FUNCTION CONTOH_FUNGSI() RETURNS INT BEGIN DECLARE 
	DECLARE DECLARE DECLARE DECLARE DECLARE DECLARE hasil INT;
	-- logika bisnis
	RETURN hasil;
	END;


SELECT nama_fungsi(parameter1);

-- TRIGGER

CREATE TRIGGER NAMA_TRIGGER BEFORE INSERT ON NAMA_TABEL 
FOR EACH ROW BEGIN 
-- LOGIKA TRIGGER 
	-- LOGIKA TRIGGER
	-- LOGIKA TRIGGER
	-- LOGIKA TRIGGER
	-- logika trigger
	END;


-- isi TRIGGER

CREATE TRIGGER CONTOH_TRIGGER BEFORE INSERT ON TABEL 
FOR EACH ROW BEGIN SET 
	SET SET SET NEW.kolom_tanggal = NOW();
	END;


-- VIEW

CREATE VIEW nama_pandangan AS
SELECT kolom1, kolom2
FROM nama_tabel
WHERE kondisi;

-- memperbarui VIEW

CREATE VIEW view_updatable AS
SELECT kolom1, kolom2
FROM nama_tabel
WHERE kondisi
WITH CHECK OPTION;