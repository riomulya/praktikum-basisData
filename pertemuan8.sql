-- Tugas Praktikum - MySQL Workbench Documentation

-- a) Buatlah Struktur Database "penjualan" dengan tabel "suplier"

/* Membuat database "penjualan" */

CREATE DATABASE penjualan;

USE penjualan;

/* Membuat tabel "suplier" */

CREATE TABLE
    suplier (
        id_suplier VARCHAR(15),
        nama_suplier CHAR(20),
        alamat VARCHAR(30),
        no_tlp CHAR(15),
        PRIMARY KEY (id_suplier)
    );

/* Menampilkan struktur tabel "suplier" */

DESC suplier;

-- b) Menambahkan Data pada Tabel "suplier"

/* Menambahkan data pada tabel "suplier" */

INSERT INTO suplier
VALUES (
        '11234',
        'Elex Media',
        'PalMerah',
        '0215455454'
    );

INSERT INTO suplier VALUES ('11236', 'BIP', 'Cakung', '0215455234');

INSERT INTO suplier
VALUES (
        '11235',
        'AgroMedia',
        'Ciganjur',
        '0215455776'
    );

INSERT INTO suplier
VALUES (
        '11232',
        'Erlangga',
        'Ciracas',
        '0215454242'
    );

INSERT INTO suplier
VALUES (
        '11231',
        'Mizan',
        'Cilandak',
        '0215455899'
    );

INSERT INTO suplier
VALUES (
        '11230',
        'KompasMedia',
        'PalMerah',
        '0215455433'
    );

-- c) Menampilkan Data Suplier dengan id_suplier antara 11231 dan 11235

/* Menampilkan data suplier dengan id_suplier antara 11231 dan 11235 */

SELECT * FROM suplier WHERE id_suplier BETWEEN '11231' AND '11235';

-- d) Buat Tabel "buku" dan Isi Data

/* Membuat tabel "buku" dan mengisi data */

CREATE TABLE
    buku (
        Isbn CHAR(7),
        Judul CHAR(20),
        Pengarang CHAR(20),
        Penerbit CHAR(20),
        Harga DECIMAL(10, 2)
    );

/* Mengisi data pada tabel "buku" */

INSERT INTO buku
VALUES (
        '2001145',
        'IPS Terpadu',
        'Tim Guru',
        'Erlangga',
        54000.00
    );

INSERT INTO buku
VALUES (
        '2005666',
        'Cerdas Berbahasa',
        'Srikanti',
        'KompasMedia',
        60000.00
    );

INSERT INTO buku
VALUES (
        '2007575',
        'Teknik Industri',
        'Suryanto',
        'Penerbit Andi',
        50000.00
    );

INSERT INTO buku
VALUES (
        '2000698',
        'Akuntansi Lanjutan',
        'Tonikurnia',
        'Graha Ilmu',
        40000.00
    );

INSERT INTO buku
VALUES (
        '2000543',
        'Good English',
        'Michael R',
        'ElexMedia',
        45000.00
    );

INSERT INTO buku
VALUES (
        '2054449',
        'Kimia Dasar',
        'Michael Purba',
        'Erlangga',
        60000.00
    );

-- e) Menampilkan Data Buku dengan Harga antara 50,000 dan 60,000

/* Menampilkan data buku dengan harga antara 50,000 dan 60,000 */

SELECT * FROM buku WHERE Harga BETWEEN 50000.00 AND 60000.00;

-- f) Menampilkan Data Buku dengan Penerbit yang Berawalan dengan "E"

/* Menampilkan data buku dengan penerbit yang berawalan dengan "E" */

SELECT * FROM buku WHERE Penerbit LIKE 'E%';

-- g) Menampilkan Data Buku dengan Penerbit yang Tidak Berawalan dengan "E"

/* Menampilkan data buku dengan penerbit yang tidak berawalan dengan "E" */

SELECT * FROM buku WHERE Penerbit NOT LIKE 'E%';

-- h) Menampilkan Data Buku dengan Pengarang Srikanti, Suryanto, atau Tim Guru

/* Menampilkan data buku dengan pengarang Srikanti, Suryanto, atau Tim Guru */

SELECT *
FROM buku
WHERE
    Pengarang IN (
        'Srikanti',
        'Suryanto',
        'Tim Guru'
    );

-- i) Menampilkan Data Nama Suplier dengan Group by dan Having

/* Menampilkan data nama suplier dengan Group by dan Having */

SELECT nama_suplier
FROM suplier
GROUP BY nama_suplier
HAVING COUNT(nama_suplier) > 1;

-- j) Menampilkan Data ISBN dengan Order by Asc dan Desc

/* Menampilkan data ISBN dengan Order by Asc */

SELECT Isbn FROM buku ORDER BY Isbn ASC;

/* Menampilkan data ISBN dengan Order by Desc */

SELECT Isbn FROM buku ORDER BY Isbn DESC;