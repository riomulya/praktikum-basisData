## Pertemuan 3

/* 
 Tugas Praktikum - MySQL Workbench Documentation
 */

-- a) Membuat, Menampilkan, Memilih, dan Menghapus Database

/* 1. Membuat Database "unpam" */

CREATE DATABASE unpam;

/* 2. Menampilkan Database yang Ada */

SHOW DATABASES;

-- Hasilnya akan menampilkan daftar database yang ada.

/* 3. Memilih Database "unpam" untuk Digunakan */

USE unpam;

/* 4. Menghapus Database "unpam" */

DROP DATABASE unpam;

-- b) Membuat, Menampilkan, Merubah Nama, dan Menghapus Tabel

/* 1. Membuat Database "kampus" Terlebih Dahulu (jika belum ada) */

CREATE DATABASE kampus;

/* 2. Membuat Tabel "dosen" */

USE kampus;

CREATE TABLE
    dosen (
        nip INT(12),
        nama CHAR(20),
        telepon VARCHAR(12),
        PRIMARY KEY(nip)
    );

/* 3. Menampilkan Tabel yang Ada dalam Database "kampus" */

SHOW TABLES;

-- Ini akan menampilkan daftar tabel yang ada dalam database "kampus."

/* 4. Menampilkan Field dalam Tabel "dosen" */

DESCRIBE dosen;

-- Perintah di atas akan menampilkan struktur kolom (field) dalam tabel "dosen."

/* 5. Merubah Nama Tabel "dosen" menjadi "data_dosen" */

RENAME TABLE dosen TO data_dosen;

/* 6. Menghapus Tabel "data_dosen" */

DROP TABLE data_dosen;

-- c) Buatlah Struktur Database:

-- Untuk membuat struktur database, Anda perlu mendefinisikan tabel-tabel dan kolom-kolom yang sesuai dengan kebutuhan. Ini dilakukan dengan perintah seperti yang ditunjukkan pada langkah-langkah di atas.

-- d) Membuat Struktur Database "Universitas" dengan Tabel "Mahasiswa":

CREATE DATABASE Universitas;

-- USE Universitas;

CREATE TABLE
    Mahasiswa (
        Nim INT(12),
        Nama VARCHAR(15),
        Alamat TEXT,
        Email VARCHAR(15),
        Telepon VARCHAR(12)
    );

-- Ini akan membuat database "Universitas" dan tabel "Mahasiswa" dengan struktur yang telah Anda tentukan.