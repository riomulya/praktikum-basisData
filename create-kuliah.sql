CREATE database kuliah;

use kuliah;

CREATE TABLE
    `dosen` (
        `kd_dosen` varchar(50) NOT NULL,
        `nama_dosen` varchar(50) NOT NULL,
        `jk` enum('L', 'P') NOT NULL,
        `tgl_lahir` date NOT NULL,
        `alamat` varchar(255) NOT NULL,
        `no_telp` varchar(50) NOT NULL
    );

INSERT INTO `dosen`
VALUES (
        '110021',
        'Jefry M.Kom',
        'L',
        '1980-12-18',
        'Jl. Utan Kayu No 10',
        '0812896745'
    ), (
        '110031',
        'Lusi M.Kom',
        'P',
        '1980-12-18',
        'Jl. Pulo Nangka No 59',
        '08964532178'
    ), (
        '110041',
        'Maria M.Kom',
        'P',
        '1981-03-15',
        'Jl. Rawa Sari No 76',
        '089753961276'
    );

SELECT * FROM dosen;

CREATE TABLE
    `mahasiswa` (
        `nim` varchar(50) NOT NULL,
        `nama_mhs` varchar(255) NOT NULL,
        `jk` enum('L', 'P') NOT NULL,
        `tgl_lahir` date NOT NULL,
        `alamat` varchar(255) NOT NULL,
        `no_telp` varchar(50) NOT NULL
    );

INSERT INTO `mahasiswa`
VALUES (
        '2015100111',
        'Irfan',
        'L',
        '1996-09-21',
        'Jl. Kramat Raya No 5',
        '089694553552'
    ), (
        '2015100112',
        'Jessica',
        'P',
        '1996-01-17',
        'Jl. Pulomas Nangka No 59',
        '0811958476'
    ), (
        '2015100113',
        'Bella',
        'P',
        '1996-07-25',
        'Jl. Rawa Sari No 11',
        '0896953665776'
    );

SELECT * FROM mahasiswa;

CREATE TABLE
    `matakuliah` (
        `kd_matkul` varchar(50) NOT NULL,
        `nama_matkul` varchar(50) NOT NULL,
        `sks` int(11) NOT NULL,
        `semester` int(11) NOT NULL,
        `biaya` varchar(30) NOT NULL,
        `kd_dosen` varchar(50) NOT NULL
    );

SELECT * FROM matakuliah;

INSERT INTO `matakuliah`
VALUES (
        'MK1501',
        'Algoritma',
        4,
        2,
        '400000',
        '110031'
    ), (
        'MK1502',
        'Pengenalan Sistem',
        3,
        2,
        '300000',
        '110021'
    ), (
        'MK1503',
        'Pengenalan Komunikasi',
        2,
        3,
        '200000',
        '110041'
    );

CREATE TABLE
    `nilai` (
        `nim` varchar(50) NOT NULL,
        `nama_mhs` varchar(50) NOT NULL,
        `kd_matkul` varchar(50) NOT NULL,
        `nama_matkul` varchar(50) NOT NULL,
        `nilai` int(11) NOT NULL
    );

INSERT INTO `nilai`
VALUES (
        '2015100111',
        'Irfan',
        'MK1501',
        'Algoritma',
        80
    ), (
        '2015100111',
        'Irfan',
        'MK1502',
        'Pengenalan Sistem',
        77
    ), (
        '2015100111',
        'Irfan',
        'MK1503',
        'Pengenalan Komunikasi',
        82
    ), (
        '2015100112',
        'Jessica',
        'MK1501',
        'Algoritma',
        79
    ), (
        '2015100112',
        'Jessica',
        'MK1502',
        'Pengenalan Sistem',
        84
    ), (
        '2015100112',
        'Jessica',
        'MK1503',
        'Pengenalan Komunikasi',
        90
    ), (
        '2015100113',
        'Bella',
        'MK1501',
        'Algoritma',
        84
    ), (
        '2015100113',
        'Bella',
        'MK1502',
        'Pengenalan Sistem',
        78
    ), (
        '2015100113',
        'Bella',
        'MK1503',
        'Pengenalan Komunikasi',
        66
    );

SELECT * FROM nilai;

use kuliah;

SELECT DISTINCT nama_matkul from matakuliah;

SELECT DISTINCT nama_matkul FROM nilai;

SELECT
    nim,
    nama_mhs,
    nama_matkul,
    min(nilai) as "Nilai Minimal"
FROM nilai
WHERE nama_mhs = "Jessica";

SELECT
    nim,
    nama_mhs,
    nama_matkul,
    avg(nilai) as "Nilai Rata Rata"
FROM nilai
GROUP BY nim
having avg(nilai) >= '80';

SELECT *
FROM nilai
where
    nama_matkul = 'Algoritma'
    and nilai BETWEEN '80' and '90';

select
    kd_dosen,
    nama_dosen,
    kd_matkul,
    nama_matkul,
    sks
from matakuliah
    INNER JOIN dosen using(kd_dosen);

select
    dosen.kd_dosen,
    nama_dosen,
    jk,
    matakuliah.kd_matkul,
    nama_matkul,
    sks,
    semester
from dosen
    RIGHT JOIN matakuliah on dosen.kd_dosen = matakuliah.kd_dosen;

select
    dosen.kd_dosen,
    nama_dosen,
    alamat,
    matakuliah.nama_matkul,
    sks,
    semester,
    biaya
from dosen, matakuliah
WHERE
    dosen.kd_dosen = matakuliah.kd_dosen
    and matakuliah.biaya = (
        SELECT min(biaya)
        from matakuliah
    );

SELECT
    kd_matkul,
    nama_matkul,
    sks,
    biaya
from matakuliah
where biaya < any(
        select biaya
        from matakuliah
    );

select nama_mhs from mahasiswa where nama_mhs like '%a';

select
    nama_mhs,
    sum(nilai) as jumlah_nilai
from nilai
WHERE nama_mhs = "Bella";

select COUNT(*)
from nilai
WHERE
    nama_matkul = "Algoritma"
    and nilai >= '80';

UPDATE mahasiswa
SET
    nama_mhs = 'Rio Mulya Syawal'
WHERE nim = '2015100111';

SELECT * FROM mahasiswa;