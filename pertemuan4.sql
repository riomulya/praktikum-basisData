-- Tugas Praktikum - MySQL Workbench Documentation

-- a) Buatlah Struktur Database

/* Membuat database "toko" */

CREATE DATABASE toko;

USE toko;

/* Membuat tabel "karyawan" */

CREATE TABLE
    karyawan (
        nik INT(10),
        nama CHAR(20) NOT NULL,
        tempattinggal VARCHAR(30),
        kota CHAR(10),
        pendidikan CHAR(10),
        PRIMARY KEY(nik)
    );

/* Membuat tabel "pelanggan" */

CREATE TABLE
    pelanggan (
        kode_plg INT(10),
        nama VARCHAR(20),
        alamat VARCHAR(20),
        tlp VARCHAR(20)
    );

/* Membuat tabel "barang" */

CREATE TABLE
    barang (
        kode_brg INT(10),
        nama_brg CHAR(15),
        stok VARCHAR(10),
        harga VARCHAR(10),
        PRIMARY KEY(kode_brg)
    );

-- b) Mengubah Struktur Database

/* 1. Menambah field "pendidikan" pada tabel "karyawan" */

ALTER TABLE karyawan ADD pendidikan CHAR(10) AFTER nama;

/* 2. Mengubah nama sebuah kolom pada tabel "karyawan" */

ALTER TABLE karyawan CHANGE tempattinggal alamat VARCHAR(25);

/* 3. Mengganti nama tabel "pelanggan" menjadi "pembeli" */

ALTER TABLE pelanggan RENAME TO pembeli;

/* 4. Menghapus kolom "kota" pada tabel "karyawan" */

ALTER TABLE karyawan DROP kota;

/* 5. Memodifikasi kolom "nama_brg" pada tabel "barang" */

ALTER TABLE barang MODIFY nama_brg CHAR(20);

/* 6. Memodifikasi kolom "nama_brg" pada tabel "barang" menjadi "not null" dan "auto_increment" */

ALTER TABLE barang MODIFY nama_brg CHAR(20) NOT NULL AUTO_INCREMENT;

/* 7. Memodifikasi kolom untuk menentukan awal auto increment pada tabel "barang" */

ALTER TABLE barang AUTO_INCREMENT = 1000;

-- c) Buatlah Struktur Database berdasarkan tabel

/* Membuat database "rumah_sakit" */

CREATE DATABASE rumah_sakit;

USE rumah_sakit;

/* Membuat tabel "pasien" */

CREATE TABLE
    pasien (
        kode_pasien CHAR(20) PRIMARY KEY,
        nama VARCHAR(15),
        penyakit VARCHAR(20),
        kode_dokter VARCHAR(13),
        kode_obat CHAR(10),
        biaya CHAR(15),
        FOREIGN KEY (kode_dokter) REFERENCES jam_praktek(kd_dokter)
    );

/* Membuat tabel "jam_praktek" */

CREATE TABLE
    jam_praktek (
        kd_dokter CHAR(10) PRIMARY KEY,
        nama_dokter CHAR(20),
        spesialis VARCHAR(15),
        jam_praktek DATETIME
    );

-- d) Mengubah Struktur Database

/* 1. Mengubah "kode_pasien" menjadi "id_pasien" pada tabel "pasien" */

ALTER TABLE pasien CHANGE kode_pasien id_pasien CHAR(20);

/* 2. Mengubah "nama" menjadi "nama_pasien" pada tabel "pasien" */

ALTER TABLE pasien CHANGE nama nama_pasien VARCHAR(15);

/* 3. Mengubah "kode_dokter" menjadi "kd_dokter" pada tabel "pasien" dan "jam_praktek" */

ALTER TABLE pasien CHANGE kode_dokter kd_dokter CHAR(10);

ALTER TABLE jam_praktek CHANGE kode_dokter kd_dokter CHAR(10);

/* 4. Menggunakan auto increment "kd_dokter" dimulai dari 20 pada tabel "jam_praktek" */

ALTER TABLE
    jam_praktek MODIFY kd_dokter CHAR(10) AUTO_INCREMENT = 20;

/* 5. Menambah kolom "kode_obat" CHAR(10) setelah "kd_dokter" pada tabel "pasien" */

ALTER TABLE pasien ADD kode_obat CHAR(10) AFTER kd_dokter;

/* 6. Menambahkan foreign key "kd_dokter" pada tabel "pasien" */

ALTER TABLE pasien
ADD
    FOREIGN KEY (kd_dokter) REFERENCES jam_praktek(kd_dokter);

/* 7. Menambahkan primary key "kd_dokter" pada tabel "jam_praktek" */

ALTER TABLE jam_praktek ADD PRIMARY KEY (kd_dokter);

/* 8. Mengubah "nama" menjadi "nama_dokter" pada tabel "jam_praktek" */

ALTER TABLE jam_praktek CHANGE nama nama_dokter CHAR(20);

/* 9. Mengubah "spesialis" CHAR menjadi VARCHAR(15) pada tabel "jam_praktek" */

ALTER TABLE jam_praktek MODIFY spesialis VARCHAR(15);

/* 10. Mengubah "waktu_praktek" menjadi "jam_praktek" dengan tipe data datetime pada tabel "jam_praktek" */

ALTER TABLE jam_praktek CHANGE waktu_praktek jam_praktek DATETIME;