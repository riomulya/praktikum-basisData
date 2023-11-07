-- Tugas Praktikum - MySQL Workbench Documentation

-- a) Buat Struktur Database "rumahsakit" dengan Tabel "pasien"

CREATE DATABASE rumahsakit;

USE rumahsakit;

CREATE TABLE
    pasien (
        id_pasien VARCHAR(5),
        nama CHAR(20),
        alamat CHAR(20),
        no_antrian VARCHAR(5),
        tgl_masuk DATE,
        PRIMARY KEY (id_pasien)
    );

-- b) Tambahkan Data pada Tabel "pasien"

INSERT INTO pasien
VALUES (
        'a1',
        'yahya',
        'pondok cabe',
        'a11',
        '2014-05-21'
    );

INSERT INTO pasien
VALUES (
        'a2',
        'yanto',
        'cinere',
        'a12',
        '2014-05-23'
    );

INSERT INTO pasien
VALUES (
        'a4',
        'wandi',
        'ciputat',
        'a14',
        '2014-05-24'
    );

INSERT INTO pasien
VALUES (
        'a3',
        'lulu',
        'cinere',
        'a15',
        '2014-05-24'
    );

INSERT INTO pasien
VALUES (
        'a5',
        'sari',
        'cilandak',
        'a16',
        '2014-05-25'
    );

INSERT INTO pasien
VALUES (
        'a6',
        'bari',
        'cinere',
        'a16',
        '2014-05-25'
    );

-- c) Buat Objek Trigger "trigger1" dengan Operasi INSERT

DELIMITER //

CREATE TRIGGER TRIGGER1 BEFORE INSERT ON PASIEN FOR 
EACH ROW BEGIN 
-- ISI TRIGGER1 SESUAI KEBUTUHAN 
	-- ISI TRIGGER1 SESUAI KEBUTUHAN
	-- ISI TRIGGER1 SESUAI KEBUTUHAN
	-- Isi trigger1 sesuai kebutuhan
	-- Contoh: Insert ke tabel lain atau operasi lain
	END // 


DELIMITER ;

-- d) Buat Struktur Database "bioskop" dengan Tabel "JadwalFilm"

CREATE DATABASE bioskop;

USE bioskop;

CREATE TABLE
    JadwalFilm (
        Id_film VARCHAR(15),
        Judul CHAR(20),
        Waktu DATETIME,
        PRIMARY KEY (Id_film)
    );

-- e) Tambahkan Data pada Tabel "JadwalFilm"

INSERT INTO JadwalFilm
VALUES (
        'D11',
        'In Fear',
        '2014-03-07 18:30:00'
    );

INSERT INTO JadwalFilm
VALUES (
        'H12',
        'Haunt',
        '2014-03-07 19:00:00'
    );

INSERT INTO JadwalFilm
VALUES (
        'C13',
        'Bad Words',
        '2014-03-07 19:30:00'
    );

INSERT INTO JadwalFilm
VALUES (
        'A14',
        'Divergent',
        '2014-03-07 20:00:00'
    );

INSERT INTO JadwalFilm
VALUES (
        'E15',
        'Enemy',
        '2014-03-07 20:30:00'
    );

-- f) Buat Tabel "stdio"

CREATE TABLE
    stdio (
        kode_stdio VARCHAR(15),
        namaStdio CHAR(20),
        Id_Film VARCHAR(10),
        judul CHAR(20),
        PRIMARY KEY (kode_stdio)
    );

-- g) Tambahkan Data pada Tabel "stdio"

-- Tambahkan Data pada Tabel "stdio"

INSERT INTO
    stdio (
        kode_stdio,
        namaStdio,
        Id_Film,
        judul
    )
VALUES (
        'STD4',
        'Stdio 4',
        'E15',
        'Enemy'
    ), (
        'STD3',
        'Stdio 3',
        'D11',
        'In Fear'
    ), (
        'STD2',
        'Stdio 2',
        'C13',
        'Bad Words'
    ), (
        'STD5',
        'Stdio 5',
        'A14',
        'Divergent'
    ), (
        'STD1',
        'Stdio 1',
        'H12',
        'Haunt'
    );

-- h) Buat Objek View "tblview"

CREATE VIEW tblview AS
SELECT
    stdio.kode_stdio AS Kode_stdio,
    stdio.namaStdio AS NamaStdio,
    JadwalFilm.Id_film AS Id_film,
    JadwalFilm.Judul AS Judul
FROM stdio
    JOIN JadwalFilm ON stdio.Id_Film = JadwalFilm.Id_film;

select *from tblview;

-- i) Tampilkan Data dari "tblview" dengan SELECT dan WHERE

SELECT Judul, Waktu, namaStdio
FROM tblview
WHERE namaStdio = 'stdio 1';

