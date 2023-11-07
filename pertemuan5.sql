-- Tugas Praktikum - MySQL Workbench Documentation

-- a) Buatlah Struktur Database

/* Membuat database "universitas" */

CREATE DATABASE universitas;

USE universitas;

/* Membuat tabel "mahasiswa" */

CREATE TABLE
    mahasiswa (
        nim INT(10),
        nama CHAR(20),
        alamat VARCHAR(30),
        email CHAR(20),
        no_tlp CHAR(10),
        PRIMARY KEY (nim)
    );

/* Menampilkan daftar tabel */

SHOW TABLES;

/* Menampilkan struktur tabel "mahasiswa" */

DESC mahasiswa;

-- b) Menambah Data pada Tabel "mahasiswa"

/* Menambah data pada tabel "mahasiswa" */

INSERT INTO
    mahasiswa (nim, nama, alamat, email, no_tlp)
VALUES (
        '080911002',
        'Sari',
        'Pamulang',
        'sari@gmail.com',
        '08561009999'
    );

INSERT INTO
    mahasiswa (nim, nama, alamat, email, no_tlp)
VALUES (
        '080911001',
        'lala',
        'jakarta',
        'lala@gmail.com',
        '08561009124'
    );

INSERT INTO mahasiswa
VALUES (
        '080911003',
        'Tono',
        'Parung',
        'tono@gmail.com',
        '08561009888'
    );

INSERT INTO mahasiswa
VALUES (
        '080911006',
        'Toti',
        'ciputat',
        'toti@gmail.com',
        '08561009555'
    );

INSERT INTO mahasiswa
SET
    nim = '080911014',
    nama = 'Ida',
    alamat = 'Serpong',
    email = 'ida@gmail.com',
    no_tlp = '08561009777';

INSERT INTO mahasiswa
SET
    nim = '080911004',
    nama = 'Iya',
    alamat = 'Semarang',
    email = 'iya@gmail.com',
    no_tlp = '08561009999';

/* Menampilkan data dari tabel "mahasiswa" */

SELECT * FROM mahasiswa;

-- c) Mengubah Data pada Tabel "mahasiswa"

/* Mengubah data pada tabel "mahasiswa" dengan UPDATE */

UPDATE mahasiswa SET alamat = 'ciputat' WHERE nim = '080911002';

UPDATE mahasiswa
SET email = 'jaya@yahoo.com'
WHERE nim = '080911002';

UPDATE mahasiswa SET nama = 'Bambang' WHERE nim = '080911003';

UPDATE mahasiswa SET alamat = 'ciputat' WHERE nim = '080911003';

UPDATE mahasiswa
SET email = 'yaho@yahoo.com'
WHERE nim = '080911004';

UPDATE mahasiswa SET email = 'Ida@yahoo.com' WHERE nim = '080911004';

-- d) Menghapus Data pada Tabel "mahasiswa"

/* Menghapus data pada tabel "mahasiswa" dengan DELETE */

DELETE FROM mahasiswa WHERE nim = '080911002';

DELETE FROM mahasiswa WHERE nim = '080911001';

DELETE FROM mahasiswa WHERE nim = '080911003';

DELETE FROM mahasiswa WHERE nim = '080911006';

-- e) Membuat Database "Perusahaan" dan Tabel "karyawan" serta mengisi tabel

/* Membuat database "Perusahaan" */

CREATE DATABASE Perusahaan;

USE Perusahaan;

/* Membuat tabel "karyawan" dan mengisi data */

CREATE TABLE
    karyawan (
        NIK CHAR(10),
        Nama CHAR(20),
        Alamat VARCHAR(30),
        Email CHAR(20),
        No_Telepon CHAR(10)
    );

/* Mengisi data pada tabel "karyawan" */

INSERT INTO karyawan
VALUES (
        '080911001',
        'Susi',
        'Serpong',
        'susi@yahoo.com',
        '0856777777'
    );

INSERT INTO karyawan
VALUES (
        '080911002',
        'Nuri',
        'Jakarta',
        'nuri@gmail.com',
        '0856888888'
    );

INSERT INTO karyawan
VALUES (
        '080911003',
        'Santi',
        'Ciputat',
        'santi@gmail.com',
        '0812455555'
    );

INSERT INTO karyawan
VALUES (
        '080911004',
        'Nunu',
        'Kebayoran',
        'nunu@yahoo.com',
        '0817677776'
    );

-- f) Mengubah Data pada Tabel "karyawan" menjadi seperti tabel di bawah ini

/* Mengubah data pada tabel "karyawan" */

UPDATE karyawan SET Alamat = 'Muncul' WHERE NIK = '080911001';

UPDATE karyawan SET Nama = 'Sari' WHERE NIK = '080911002';

UPDATE karyawan SET Email = 'sari@ymail.com' WHERE NIK = '080911002';

UPDATE karyawan SET Alamat = 'Cinere' WHERE NIK = '080911003';

UPDATE karyawan
SET Email = 'sindy@yahoo.com'
WHERE NIK = '080911004';

UPDATE karyawan
SET Email = 'sandra@yahoo.com'
WHERE NIK = '080911004';

/* Menampilkan data dari tabel "karyawan" */

SELECT * FROM karyawan;