-- TUGAS PRAKTIKUM

-- a) Buatlah Struktur Database "Elektronik" dan Tabel "Televisi" sebagai Table

CREATE DATABASE Elektronik;

USE Elektronik;

CREATE TABLE
    Televisi (
        kode_tv varchar(15),
        merk char(20),
        Tipe char(20),
        unit char(5),
        primary key(kode_tv)
    );

-- b) Dari Point a) di atas, Tambahkan Data Sebagai Berikut:

INSERT INTO Televisi VALUES ('a1', 'Samsung', 'AF2', '21');

INSERT INTO Televisi VALUES ('a2', 'Toshiba', 'AL2', '15');

INSERT INTO Televisi VALUES ('a3', 'Politron', 'AC1', '13');

INSERT INTO Televisi VALUES ('a4', 'Sharp', 'AF1', '10');

-- c) Dari Point a) dan b) di atas, Buatlah Backup Data dengan mysqldump

-- Buat folder di Drive D dengan nama "semester5" dan simpan backup1.sql di dalam folder tersebut.

D:\semester5\backup1.sql 

-- d) Dari Point a) dan b) di atas, Lakukan Penghapusan Database "Elektronik" dan Buat Kembali Database dengan Nama yang Sama

DROP DATABASE Elektronik;

CREATE DATABASE Elektronik;

-- e) Dari Point a), b), c), dan d) di atas, Buatlah Restore Data

-- Source D:\semester5\backup1.sql

-- f) Dari Point a), b), c), d), dan e) di atas, Cek Struktur Database yang Telah Direstore

USE Elektronik;

SHOW TABLES;

SELECT * FROM Televisi;

-- g) Buatlah Struktur Database Berdasarkan Table di Bawah Ini:

-- Nama Database: Perpustakaan

-- Nama Tabel: Buku

CREATE DATABASE Perpustakaan;

USE Perpustakaan;

CREATE TABLE
    Buku (
        Kode varchar(15),
        Judul char(20),
        Pengarang char(20),
        Stok int,
        Jumlah_Terpinjam int
    );

-- h) Dari Point g) di atas, Buatlah Backup Data dengan mysqldump dan Disimpan dengan Nama "backup2.sql" pada Direktori D:/Semester5

D:\semester5\backup2.sql 

-- i) Dari Point g) dan h) di atas, Hapus Database Perpustakaan dan Buat Kembali Database dengan Nama "Perpustakaan_baru"

DROP DATABASE Perpustakaan;

CREATE DATABASE Perpustakaan_baru;

-- j) Dari Point g), h), dan i) di atas, Buatlah Proses Restore Data

-- Source D:\semester5\backup2.sql

-- k) Dari Point g), h), i), dan j) di atas, Cek Struktur Database yang Telah Direstore

USE Perpustakaan_baru;

SHOW TABLES;

SELECT * FROM Buku;