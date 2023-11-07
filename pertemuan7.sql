-- Tugas Praktikum - MySQL Workbench Documentation

-- a) Buatlah Struktur Database "perusahaan" dengan tabel "karyawan"

/* Membuat database "perusahaan" */

CREATE DATABASE perusahaan;

USE perusahaan;

/* Membuat tabel "karyawan" */

CREATE TABLE
    karyawan (
        nik CHAR(10),
        nama CHAR(20),
        alamat VARCHAR(30),
        email CHAR(20),
        no_tlp CHAR(15),
        PRIMARY KEY (nik)
    );

/* Menampilkan struktur tabel "karyawan" */

DESC karyawan;

-- b) Menambahkan Data pada Tabel "karyawan"

/* Menambahkan data pada tabel "karyawan" */

INSERT INTO karyawan
VALUES (
        '10011',
        'Rini',
        'Ciputat',
        'rini@yahoo.co.id',
        '08561009111'
    );

INSERT INTO karyawan
VALUES (
        '10012',
        'Agung',
        'Tangerang',
        'agung@yahoo.com',
        '08561009134'
    );

INSERT INTO karyawan
VALUES (
        '10008',
        'Cici',
        'Jakarta',
        'cici@gmail.com',
        '08561009566'
    );

INSERT INTO karyawan
VALUES (
        '10004',
        'Hendra',
        'Tangerang',
        'hendra@gmail.com',
        '08561009177'
    );

INSERT INTO karyawan
VALUES (
        '10002',
        'Geri',
        'Tangerang',
        'geri@yahoo.com',
        '08561009187'
    );

-- c) Menampilkan Data Karyawan yang berasal dari Tangerang

/* Menampilkan data karyawan berasal dari Tangerang */

SELECT * FROM karyawan WHERE alamat = 'Tangerang';

-- d) Menampilkan Data Karyawan dengan Operator Matematika

/* Menampilkan data karyawan dengan operator matematika */

SELECT * FROM karyawan WHERE nik >= '10008';

-- e) Buat Database "Universitas" dengan Tabel "Dosen" dan Isi Data

/* Membuat database "Universitas" */

CREATE DATABASE Universitas;

USE Universitas;

/* Membuat tabel "Dosen" dan mengisi data */

CREATE TABLE
    Dosen (
        NIK CHAR(10),
        Nama CHAR(20),
        Alamat VARCHAR(30),
        Email CHAR(20),
        No_Telepon CHAR(15)
    );

/* Mengisi data pada tabel "Dosen" */

INSERT INTO Dosen
VALUES (
        '0809111',
        'Anang',
        'Serpong',
        'anang@yahoo.com',
        '0856777777'
    );

INSERT INTO Dosen
VALUES (
        '0809112',
        'Baudiono',
        'Jakarta',
        'budi@gmail.com',
        '0856888888'
    );

INSERT INTO Dosen
VALUES (
        '0809113',
        'Sariyani',
        'Ciputat',
        'sari@gmail.com',
        '0812455555'
    );

INSERT INTO Dosen
VALUES (
        '0809114',
        'Wahyudi',
        'Jakarta',
        'wahyudi@yahoo.com',
        '0817676666'
    );

INSERT INTO Dosen
VALUES (
        '0809115',
        'Suharta',
        'Tangerang',
        'harta@yahoo.com',
        '0817674444'
    );

-- f) Menampilkan Data Karyawan yang beralamat Jakarta

/* Menampilkan data karyawan yang beralamat Jakarta */

SELECT * FROM Dosen WHERE Alamat = 'Jakarta';

-- g) Menampilkan Data Karyawan dengan NIK > 0809113 atau beralamat Ciputat

/* Menampilkan data karyawan dengan NIK > 0809113 atau beralamat Ciputat */

SELECT * FROM Dosen WHERE NIK > '0809113' OR Alamat = 'Ciputat';

-- h) Menampilkan Data Karyawan dengan No Telepon, NIK, dan Nama tertentu

/* Menampilkan data karyawan dengan No Telepon 0856777777, NIK 0809113, dan Nama */

SELECT NIK, Nama
FROM Dosen
WHERE
    No_Telepon = '0856777777'
    AND NIK = '0809113';

-- i) Menampilkan Data Nama Dosen dengan LIMIT 4

/* Menampilkan nama dosen dengan LIMIT 4 */

SELECT Nama FROM Dosen LIMIT 4;