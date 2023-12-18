CREATE DATABASE kuliah;

use kuliah;

--

-- Table structure for table `dosen`

--

CREATE TABLE
    `dosen` (
        `kd_dosen` varchar(50) NOT NULL,
        `nama_dosen` varchar(50) NOT NULL,
        `jk` enum('L', 'P') NOT NULL,
        `tgl_lahir` date NOT NULL,
        `alamat` varchar(255) NOT NULL,
        `no_telp` varchar(50) NOT NULL
    );

-- --------------------------------------------------------

--

-- Table structure for table `mahasiswa`

--

CREATE TABLE
    `mahasiswa` (
        `nim` varchar(50) NOT NULL,
        `nama_mhs` varchar(255) NOT NULL,
        `jk` enum('L', 'P') NOT NULL,
        `tgl_lahir` date NOT NULL,
        `alamat` varchar(255) NOT NULL,
        `no_telp` varchar(50) NOT NULL
    );

-- --------------------------------------------------------

--

-- Table structure for table `matakuliah`

--

CREATE TABLE
    `matakuliah` (
        `kd_matkul` varchar(50) NOT NULL,
        `nama_matkul` varchar(50) NOT NULL,
        `sks` int(11) NOT NULL,
        `semester` int(11) NOT NULL,
        `biaya` varchar(30) NOT NULL,
        `kd_dosen` varchar(50) NOT NULL
    );

-- --------------------------------------------------------

--

-- Table structure for table `nilai`

--

CREATE TABLE
    `nilai` (
        `nim` varchar(50) NOT NULL,
        `nama_mhs` varchar(50) NOT NULL,
        `kd_matkul` varchar(50) NOT NULL,
        `nama_matkul` varchar(50) NOT NULL,
        `nilai` int(11) NOT NULL
    );