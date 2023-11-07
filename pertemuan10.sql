-- Tugas Praktikum - MySQL Workbench Documentation

-- a) Buatlah Struktur Database "koperasi" dengan tabel "member" dan "pinjam"

/* Membuat database "koperasi" */

CREATE DATABASE koperasi;

USE koperasi;

/* Membuat tabel "member" */

CREATE TABLE
    member (
        Id_member VARCHAR(15),
        Nama CHAR(20),
        Alamat CHAR(20),
        PRIMARY KEY (Id_member)
    );

/* Menampilkan struktur tabel "member" */

DESC member;

/* Membuat tabel "pinjam" */

CREATE TABLE
    pinjam (
        Nota VARCHAR(15),
        Id_member VARCHAR(20),
        Tanggal DATE,
        Jumlah CHAR(10),
        PRIMARY KEY (Nota)
    );

/* Menampilkan struktur tabel "pinjam" */

DESC pinjam;

-- b) Menambahkan Data pada Tabel "member"

/* Menambahkan data pada tabel "member" */

INSERT INTO member VALUES ('1111', 'Anang', 'Cipondoh');

INSERT INTO member VALUES ('1112', 'Budi', 'Ciledug');

INSERT INTO member VALUES ('1113', 'Cici', 'Cinangka');

INSERT INTO member VALUES ('1114', 'Darma', 'Cikupa');

INSERT INTO member VALUES ('1115', 'Endang', 'Cipondoh');

-- c) Menambahkan Data pada Tabel "pinjam"

/* Menambahkan data pada tabel "pinjam" */

INSERT INTO pinjam VALUES ('A100', '1111', '2014-02-04', '500000');

INSERT INTO pinjam VALUES ('B100', '1113', '2014-02-06', '700000');

INSERT INTO pinjam VALUES ('C100', '1112', '2014-02-07', '400000');

INSERT INTO pinjam VALUES ('D100', '1114', '2014-02-09', '900000');

-- d) Menggunakan INNER JOIN

/* Menggunakan INNER JOIN dengan menggunakan "USING" */

SELECT * FROM member INNER JOIN pinjam USING(Id_member);

/* Menggunakan INNER JOIN dengan "ON" */

SELECT
    a.Id_member,
    a.Nama,
    a.Alamat,
    b.Nota,
    b.Tanggal,
    b.Jumlah
FROM member a
    INNER JOIN pinjam b ON (a.Id_member = b.Id_member);

-- e) Menggunakan LEFT OUTER JOIN

/* Menggunakan LEFT OUTER JOIN */

SELECT
    a.Id_member,
    a.Nama,
    a.Alamat,
    b.Nota,
    b.Tanggal,
    b.Jumlah
FROM member a
    LEFT OUTER JOIN pinjam b ON (a.Id_member = b.Id_member);

-- f) Menggunakan LEFT OUTER JOIN dengan WHERE "IS NOT NULL"

/* Menggunakan LEFT OUTER JOIN dengan WHERE "IS NOT NULL" */

SELECT
    a.Id_member,
    a.Nama,
    a.Alamat,
    b.Nota,
    b.Tanggal,
    b.Jumlah
FROM member a
    LEFT OUTER JOIN pinjam b ON (a.Id_member = b.Id_member)
WHERE b.Id_member IS NOT NULL;

-- g) Menggunakan RIGHT OUTER JOIN

/* Menggunakan RIGHT OUTER JOIN */

SELECT
    a.Id_member,
    a.Nama,
    a.Alamat,
    b.Nota,
    b.Tanggal,
    b.Jumlah
FROM member a
    RIGHT OUTER JOIN pinjam b ON (a.Id_member = b.Id_member);

-- j) Menggunakan CROSS JOIN

/* Menggunakan CROSS JOIN */

SELECT * FROM member CROSS JOIN pinjam;

-- k) Menggunakan UNION

/* Menggunakan UNION */

SELECT Nama, Jumlah
FROM member
UNION
SELECT Nota, Jumlah
FROM pinjam;

-- l) Menggunakan SubQuery

/* Menggunakan SubQuery untuk menampilkan data dengan nota terbesar */

SELECT * FROM pinjam WHERE Nota = (SELECT MAX(Nota) FROM pinjam);