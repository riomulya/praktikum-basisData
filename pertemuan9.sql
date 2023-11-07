-- Tugas Praktikum - MySQL Workbench Documentation

-- a) Buatlah Struktur Database "Penjualan" dengan tabel "buku"

/* Membuat database "Penjualan" */

CREATE DATABASE Penjualan;

USE Penjualan;

/* Membuat tabel "buku" */

CREATE TABLE
    buku (
        isbn VARCHAR(15),
        judul CHAR(20),
        pengarang CHAR(30),
        harga VARCHAR(15),
        stok CHAR(10),
        PRIMARY KEY (isbn)
    );

/* Menampilkan struktur tabel "buku" */

DESC buku;

-- b) Menambahkan Data pada Tabel "buku"

/* Menambahkan data pada tabel "buku" */

INSERT INTO buku
VALUES (
        '11231',
        'Matematika Diskrit',
        'Hanafi',
        '60000',
        '25'
    );

INSERT INTO buku
VALUES (
        '11232',
        'Pintar Java',
        'Median',
        '50000',
        '20'
    );

INSERT INTO buku
VALUES (
        '11233',
        'Struktur Data',
        'Andrianto',
        '70000',
        '15'
    );

INSERT INTO buku
VALUES (
        '11234',
        'Algoritma',
        'SintaSari',
        '45000',
        '16'
    );

INSERT INTO buku
VALUES (
        '11235',
        'Kewarganegaraan',
        'Ramdani',
        '64000',
        '22'
    );

INSERT INTO buku
VALUES (
        '11236',
        'Basisdata',
        'Suginanto',
        '46000',
        '33'
    );

INSERT INTO buku
VALUES (
        '11237',
        'Sistem Berkas',
        'Suginanto',
        '60000',
        '20'
    );

INSERT INTO buku
VALUES (
        '11238',
        'Web PHP',
        'Median',
        '50000',
        '25'
    );

-- c) Menampilkan Data Pengarang dengan DISTINCT

/* Menampilkan data pengarang dengan DISTINCT */

SELECT DISTINCT pengarang FROM buku;

-- d) Menampilkan Data Harga dengan DISTINCT

/* Menampilkan data harga dengan DISTINCT */

SELECT DISTINCT harga FROM buku;

-- e) Menampilkan Hasil Operasi Aritmatika

/* Menampilkan hasil operasi aritmatika */

SELECT
    ABS(-90),
    ACOS(-0.90),
    ASIN(-0.90),
    ATAN(10),
    EXP(9),
    ATAN2(5, 4),
    FLOOR(8.98),
    BIN(10),
    FORMAT(12345.67, 4),
    CEILING(6.123),
    GREATEST(9, 200, 344, 4, 3, 1),
    CONV(5, 15, 4),
    HEX(15),
    COS(9),
    LEAST(15, 3, 0, 100, 355),
    COT(9),
    LOG(10),
    DEGREES(5),
    LOG10(15),
    MOD(15, 5),
    OCT(18);

-- f) Menampilkan Hasil Operasi Aritmatika Lainnya

/* Menampilkan hasil operasi aritmatika lainnya */

SELECT
    PI(),
    POW(5, 4),
    RADIANS(150),
    RAND(180),
    ROUND(6.43),
    RAND(10),
    ROUND(5.4315, 3),
    SIGN(-5.5637),
    SIN(300),
    SQRT(50),
    TAN(150),
    TRUNCATE(1234.56789, 2);

-- g) Menampilkan Jumlah Data Record pada Tabel "buku"

/* Menampilkan jumlah data record pada tabel "buku" */

SELECT COUNT(*) FROM buku;

-- h) Menampilkan Nilai Tertinggi, Terendah, dan Rata-rata dari Seluruh Harga Buku

/* Menampilkan nilai tertinggi, terendah, dan rata-rata dari seluruh harga buku */

SELECT
    MAX(harga) AS Nilai_Tertinggi,
    MIN(harga) AS Nilai_Terendah,
    AVG(harga) AS Rata_Rata
FROM buku;

-- i) Menampilkan Total Seluruh Harga Buku

/* Menampilkan total seluruh harga buku */

SELECT SUM(harga) AS Total_Harga FROM buku;

-- j) Menampilkan Total Harga Setelah Harga Buku Dikalikan dengan Stok

/* Menampilkan total keseluruhan harga setelah harga buku dikalikan dengan stok buku */

SELECT SUM(harga * stok) AS Total_Harga_Setelah_Dikalikan FROM buku;