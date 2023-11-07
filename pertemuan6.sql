-- Tugas Praktikum - MySQL Workbench Documentation

-- a) Buatlah Struktur Database dengan "pasien" sebagai tabel

/* Membuat database "apotek" */

CREATE DATABASE apotek;

USE apotek;

/* Membuat tabel "pasien" */

CREATE TABLE
    pasien (
        id_pasien INT(10),
        nama CHAR(20),
        alamat VARCHAR(30),
        penyakit CHAR(20),
        no_tlp CHAR(15),
        PRIMARY KEY (id_pasien)
    );

/* Menampilkan struktur tabel "pasien" */

DESC pasien;

-- b) Menambahkan Data pada Tabel "pasien"

/* Menambahkan data pada tabel "pasien" */

INSERT INTO pasien
VALUES (
        '10001',
        'Tatang',
        'ciputat',
        'amandel',
        '08561009111'
    );

INSERT INTO pasien
VALUES (
        '10002',
        'Tuti',
        'Tangerang',
        'Anemia',
        '08561009134'
    );

INSERT INTO pasien
VALUES (
        '10003',
        'Tono',
        'Jakarta',
        'Alergi',
        '08561009566'
    );

INSERT INTO pasien
VALUES (
        '10004',
        'Budi',
        'Bekasi',
        'Demam',
        '08561009177'
    );

-- c) Menampilkan Keseluruhan Data pada Tabel "pasien"

/* Menampilkan seluruh data pada tabel "pasien" */

SELECT * FROM pasien;

-- d) Menampilkan Data pada Field Tertentu di Tabel "pasien"

/* Menampilkan data pada field tertentu di tabel "pasien" */

SELECT nama FROM pasien;

SELECT id_pasien, penyakit FROM pasien;

SELECT id_pasien AS 'Kode Pasien', nama, penyakit FROM pasien;

-- e) Mengganti Nama Field pada Tabel "pasien"

/* Mengganti nama field pada tabel "pasien" */

SELECT nama FROM pasien;

SELECT id_pasien, penyakit FROM pasien;

SELECT id_pasien AS 'Kode Pasien', nama, penyakit FROM pasien;

-- f) Buat Database "penjualan" dan Tabel "barang" serta Isi Data Tabel

/* Membuat database "penjualan" */

CREATE DATABASE penjualan;

USE penjualan;

/* Membuat tabel "barang" dan mengisi data */

CREATE TABLE
    barang (
        kode_barang CHAR(5),
        nama_barang VARCHAR(20),
        stok INT(5),
        harga DECIMAL(10, 2)
    );

/* Mengisi data pada tabel "barang" */

INSERT INTO barang VALUES ('B001', 'Pensil', 100, 1.5);

INSERT INTO barang VALUES ('B002', 'Buku', 50, 5.0);

INSERT INTO barang VALUES ('B003', 'Kertas', 75, 2.0);

INSERT INTO barang VALUES ('B004', 'Penghapus', 120, 0.75);

-- g) Menampilkan Seluruh Data pada Tabel "barang"

/* Menampilkan seluruh data pada tabel "barang" */

SELECT * FROM barang;

-- h) Menampilkan Isi Data Field pada Tabel "barang"

/* Menampilkan isi data field pada tabel "barang" */

SELECT kode_barang, nama_barang, stok, harga FROM barang;

-- i) Mengubah Nama Field pada Tabel "barang"

/* Mengubah nama field pada tabel "barang" */

SELECT
    kode_barang AS 'Kode',
    nama_barang AS 'Nama',
    stok AS 'Stok',
    harga AS 'Harga'
FROM barang;