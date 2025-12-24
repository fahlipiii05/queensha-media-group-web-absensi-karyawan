-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 02:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `20210910034`
--
CREATE DATABASE IF NOT EXISTS `20210910034` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `20210910034`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `kd_barang` int(11) NOT NULL,
  `nama_barang` varchar(35) NOT NULL,
  `harga_jual` varchar(35) NOT NULL,
  `harga_beli` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`kd_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `kd_barang` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `dbjnm`
--
CREATE DATABASE IF NOT EXISTS `dbjnm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbjnm`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` varchar(6) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama`, `alamat`, `kelas`) VALUES
('NIS001', 'Alfian Baharudin', 'Jl Pepaya No 55', '1'),
('NIS002', 'Bambang', 'Jl Durian No 44', '2'),
('NIS003', 'Alin Arfianti', 'Jl Anggur No 87', '1'),
('NIS004', 'Benny Ramdhani', 'Jl Duku No 35', '1'),
('NIS005', 'Ihwan Samad', 'Jl Belimbing No 99', '3'),
('NIS006', 'Rudi Syahputra', 'JL Dirgantara No 77', '2'),
('NIS007', 'Habibi', 'Jl Kungingan No 12', '1'),
('NIS008', 'Putri Sari', 'Jl Pisang Ijo No 89', '3'),
('NIS009', 'Wahyu Adi', 'Jl Kapuk No 66', '3'),
('NIS010', 'Budi Sakti', 'JL Nusantara No 1', '3'),
('NIS011', 'Akbar Rosidin', 'JL Palangka No 71', '2'),
('NIS012', 'Bagus Sandy', 'Jl. Juragan No 123', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);
--
-- Database: `db_absen`
--
CREATE DATABASE IF NOT EXISTS `db_absen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_absen`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_absen`
--

CREATE TABLE `tbl_absen` (
  `id_absen` int(30) NOT NULL,
  `no_kartu` varchar(20) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `history_absen` varchar(20) DEFAULT '',
  `bukti_foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(35) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username` varchar(35) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `status` enum('offline','online') DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `nama_admin`, `username`, `password`, `status`, `foto`) VALUES
(2, 'Muhammad Hijar Fahlifi', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'online', 'adsad.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history`
--

CREATE TABLE `tbl_history` (
  `id_history` int(40) NOT NULL,
  `tanggal_history` date DEFAULT NULL,
  `nik` int(40) DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `methode_absen` enum('admin','mesin','aplikasi') DEFAULT NULL,
  `status_karyawan` varchar(40) DEFAULT NULL,
  `bukti_foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_history`
--

INSERT INTO `tbl_history` (`id_history`, `tanggal_history`, `nik`, `jam_masuk`, `jam_keluar`, `methode_absen`, `status_karyawan`, `bukti_foto`) VALUES
(274, '2022-10-14', 737112438, '23:32:24', '23:37:05', 'mesin', 'HADIR', ''),
(275, '2022-10-15', 737112438, '00:05:14', '23:12:12', 'mesin', 'HADIR', ''),
(276, '2022-10-15', 823234348, '15:07:08', '23:20:06', 'mesin', 'HADIR', ''),
(277, '2022-10-16', 823234348, '00:07:27', '00:00:00', 'mesin', 'HADIR', ''),
(278, '2022-10-16', 737112438, '00:08:39', '00:00:00', 'mesin', 'HADIR', ''),
(279, '2022-10-25', 737112438, '10:06:58', '10:07:23', 'aplikasi', 'HADIR', 'Screenshot_2022-10-15-00-21-36-727_com.android.chrome.jpg'),
(280, '2022-10-26', 823234348, '13:59:24', '00:00:00', 'admin', 'HADIR', ''),
(281, '2022-10-26', 737112438, '13:59:28', '14:04:15', 'admin', 'HADIR', ''),
(282, '2022-10-26', 737112438, '14:02:51', '14:04:15', 'aplikasi', 'HADIR', '16667641497082783191094466316411.jpg'),
(283, '2022-10-27', 823234348, '23:50:33', '23:50:34', 'admin', 'HADIR', ''),
(284, '2022-10-28', 737112438, '00:00:00', '00:00:00', 'admin', 'SAKIT', ''),
(285, '2022-10-28', 823234348, '00:17:19', '00:00:00', 'admin', 'HADIR', ''),
(286, '2025-01-01', 823234348, '11:50:22', '11:50:46', 'aplikasi', 'HADIR', 'WhatsApp Image 2024-07-29 at 17.13.52_4e98a273.jpg'),
(287, '2025-01-01', 214314321, '11:53:04', '16:08:12', 'aplikasi', 'HADIR', 'Screenshot 2024-10-30 191453.png'),
(288, '2025-01-02', 214314321, '00:00:00', '16:47:02', 'admin', 'SAKIT', ''),
(289, '2025-01-09', 34576445, NULL, NULL, 'aplikasi', 'SAKIT', NULL),
(290, '2025-01-09', 34576445, NULL, NULL, 'aplikasi', 'SAKIT', NULL),
(291, '2025-01-09', 34576445, NULL, NULL, 'aplikasi', 'SAKIT', NULL),
(292, '2025-01-09', 34576445, NULL, NULL, 'aplikasi', 'IZIN', NULL),
(293, '2025-01-22', 34576445, NULL, NULL, 'aplikasi', 'SAKIT', NULL),
(294, '2025-01-02', 214314321, '16:35:13', '16:47:02', 'aplikasi', 'HADIR', 'about.jpg'),
(295, '2025-01-02', 34576445, '16:36:30', '16:36:31', 'aplikasi', 'HADIR', 'about.jpg'),
(296, '2025-01-05', 13432432, NULL, NULL, 'aplikasi', 'IZIN', NULL),
(297, '2025-01-02', 13432432, '16:38:41', '16:38:42', 'aplikasi', 'HADIR', 'about.jpg'),
(298, '2025-01-02', 214314321, NULL, '16:47:02', 'aplikasi', 'SAKIT', NULL),
(299, '2025-01-02', 214314321, '16:44:43', '16:47:02', 'aplikasi', 'HADIR', 'about.jpg'),
(300, '2025-01-14', 823234348, NULL, NULL, 'aplikasi', 'SAKIT', NULL),
(301, '2025-01-07', 823234348, NULL, NULL, 'aplikasi', 'CUTI', NULL),
(302, '2025-01-08', 823234348, NULL, NULL, 'aplikasi', 'SAKIT', NULL),
(303, '2025-01-03', 214314321, '02:28:55', '02:28:59', 'aplikasi', 'HADIR', 'about.jpg'),
(304, '2025-01-03', 12321332, '00:00:00', '00:00:00', 'admin', 'SAKIT', ''),
(305, '2025-01-03', 737112438, '00:00:00', '00:00:00', 'admin', 'ALFA', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jam` int(10) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jam`, `jam_masuk`, `jam_keluar`, `lokasi`) VALUES
(0, '03:00:00', '13:00:00', '-5.122174,119.5065316,17z');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `nik` int(40) NOT NULL,
  `no_kartu` varchar(20) DEFAULT NULL,
  `nama_karyawan` varchar(50) DEFAULT NULL,
  `tanggal_lahir` varchar(50) DEFAULT NULL,
  `jk` enum('P','L') DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `foto_karyawan` text DEFAULT NULL,
  `status` enum('offline','online') DEFAULT NULL,
  `status_absen` enum('izin','sakit','alfa','hadir') DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `departemen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`nik`, `no_kartu`, `nama_karyawan`, `tanggal_lahir`, `jk`, `alamat`, `email`, `password`, `foto_karyawan`, `status`, `status_absen`, `jabatan`, `departemen`) VALUES
(12321332, '', 'Mario Palandeng', '2025-01-15', 'L', 'jadikjwaidja', 'mario@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', 'offline', '', 'HRD', 'Marketing'),
(13432432, '', 'Rio Ferdinan', '2025-01-29', 'L', 'adadadaw', 'rioferdinan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', 'online', '', 'Karyawan', 'Teknologi'),
(34576445, '31312321', 'Ramadhan', '2025-01-23', 'L', 'fawdawdwda', 'Ramadhan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', 'offline', '', 'Karyawan', 'Marketing'),
(214314321, '21324324', 'Hijar Fahli', '2003-10-05', 'L', 'adawdaw', 'hijarfach@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'about.jpg', 'online', '', NULL, NULL),
(737112438, '22610411253', 'Muhammad Farhan Enre', '2002-02-28', 'L', 'Jalan Lanraki Ruko No.1', 'farhanenre@gmail.com', 'ecadd9b7a3ea7d48267b4dca564d5260', 'IMG_20220309_221133.jpg', 'online', '', NULL, NULL),
(823234348, '981096253', 'Angelita Maspaitella', '2001-01-06', 'P', 'Jalan Bone Raya Taman Sudiang', 'angelitamaspaitella@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user.png', 'offline', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rfid`
--

CREATE TABLE `tbl_rfid` (
  `no_kartu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_absen`
-- (See below for the actual view)
--
CREATE TABLE `view_absen` (
`nik` int(40)
,`nama_karyawan` varchar(50)
,`tanggal_lahir` varchar(50)
,`alamat` text
,`email` varchar(50)
,`password` varchar(50)
,`foto_karyawan` text
,`status` enum('offline','online')
,`status_absen` enum('izin','sakit','alfa','hadir')
,`id_absen` int(30)
,`tanggal` date
,`jam_masuk` time
,`jam_keluar` time
,`history_absen` varchar(20)
,`no_kartu` varchar(20)
,`bukti_foto` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_history`
-- (See below for the actual view)
--
CREATE TABLE `view_history` (
`nik` int(40)
,`no_kartu` varchar(20)
,`nama_karyawan` varchar(50)
,`status_absen` enum('izin','sakit','alfa','hadir')
,`id_history` int(40)
,`tanggal_history` date
,`jam_masuk` time
,`jam_keluar` time
,`methode_absen` enum('admin','mesin','aplikasi')
,`status_karyawan` varchar(40)
,`bukti_foto` text
);

-- --------------------------------------------------------

--
-- Structure for view `view_absen`
--
DROP TABLE IF EXISTS `view_absen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_absen`  AS SELECT `tbl_karyawan`.`nik` AS `nik`, `tbl_karyawan`.`nama_karyawan` AS `nama_karyawan`, `tbl_karyawan`.`tanggal_lahir` AS `tanggal_lahir`, `tbl_karyawan`.`alamat` AS `alamat`, `tbl_karyawan`.`email` AS `email`, `tbl_karyawan`.`password` AS `password`, `tbl_karyawan`.`foto_karyawan` AS `foto_karyawan`, `tbl_karyawan`.`status` AS `status`, `tbl_karyawan`.`status_absen` AS `status_absen`, `tbl_absen`.`id_absen` AS `id_absen`, `tbl_absen`.`tanggal` AS `tanggal`, `tbl_absen`.`jam_masuk` AS `jam_masuk`, `tbl_absen`.`jam_keluar` AS `jam_keluar`, `tbl_absen`.`history_absen` AS `history_absen`, `tbl_karyawan`.`no_kartu` AS `no_kartu`, `tbl_absen`.`bukti_foto` AS `bukti_foto` FROM (`tbl_karyawan` join `tbl_absen` on(`tbl_karyawan`.`no_kartu` = `tbl_absen`.`no_kartu`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_history`
--
DROP TABLE IF EXISTS `view_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_history`  AS SELECT `tbl_karyawan`.`nik` AS `nik`, `tbl_karyawan`.`no_kartu` AS `no_kartu`, `tbl_karyawan`.`nama_karyawan` AS `nama_karyawan`, `tbl_karyawan`.`status_absen` AS `status_absen`, `tbl_history`.`id_history` AS `id_history`, `tbl_history`.`tanggal_history` AS `tanggal_history`, `tbl_history`.`jam_masuk` AS `jam_masuk`, `tbl_history`.`jam_keluar` AS `jam_keluar`, `tbl_history`.`methode_absen` AS `methode_absen`, `tbl_history`.`status_karyawan` AS `status_karyawan`, `tbl_history`.`bukti_foto` AS `bukti_foto` FROM (`tbl_history` join `tbl_karyawan` on(`tbl_karyawan`.`nik` = `tbl_history`.`nik`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_absen`
--
ALTER TABLE `tbl_absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_history`
--
ALTER TABLE `tbl_history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indexes for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `tbl_rfid`
--
ALTER TABLE `tbl_rfid`
  ADD PRIMARY KEY (`no_kartu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_absen`
--
ALTER TABLE `tbl_absen`
  MODIFY `id_absen` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_history`
--
ALTER TABLE `tbl_history`
  MODIFY `id_history` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;
--
-- Database: `db_ecommerce`
--
CREATE DATABASE IF NOT EXISTS `db_ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `kd_buku` int(11) NOT NULL,
  `kd_jns_buku` varchar(5) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `penerbit` varchar(4) NOT NULL,
  `tahun` text NOT NULL,
  `deskripsi` text NOT NULL,
  `photo_buku` text NOT NULL,
  `stok` int(3) NOT NULL,
  `harga` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`kd_buku`, `kd_jns_buku`, `judul_buku`, `pengarang`, `penerbit`, `tahun`, `deskripsi`, `photo_buku`, `stok`, `harga`) VALUES
(1211, 'BK01', 'Metode Numerik', 'Abdul Kadir', 'Andi', '2003', 'buku tentang dasar pemerograman web dinamis', 'sql.jpg', 5, '150000'),
(1222, 'BK02', 'The Complete Reference SQL', 'James R Groff', 'Orac', '2010', 'the book complete reference sql', 'sql.jpg', 10, '175000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jns_buku`
--

CREATE TABLE `tbl_jns_buku` (
  `kd_jns_buku` varchar(5) NOT NULL,
  `jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id_member` int(10) NOT NULL,
  `nama_member` varchar(30) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `poto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id_member`, `nama_member`, `jk`, `alamat`, `no_hp`, `email`, `password`, `poto`) VALUES
(15, 'Hijar Fahlipi', 'L', 'Desa Babatan', '081824731765', 'hijar@gmail.com', 'c65d5e83a1cb079f397145beeb30fa77', 'About.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`kd_buku`),
  ADD UNIQUE KEY `kd_jns_buku` (`kd_jns_buku`);

--
-- Indexes for table `tbl_jns_buku`
--
ALTER TABLE `tbl_jns_buku`
  ADD PRIMARY KEY (`kd_jns_buku`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id_member`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `kd_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1223;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id_member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `db_login`
--
CREATE DATABASE IF NOT EXISTS `db_login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_login`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `users_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `db_mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `db_mahasiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_mahasiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee'),
(4, 'test', '098f6bcd4621d373cade4e832627b4f6'),
(5, 'dessya', '8bc9ee73429f40eb902569eb9db9442b'),
(6, 'dessya', '8bc9ee73429f40eb902569eb9db9442b'),
(7, 'dessya', '8bc9ee73429f40eb902569eb9db9442b'),
(8, 'dessya', '8bc9ee73429f40eb902569eb9db9442b'),
(9, 'user', 'ee11cbb19052e40b07aac0ca060c23ee'),
(10, 'user', 'ee11cbb19052e40b07aac0ca060c23ee'),
(11, 'user', 'ee11cbb19052e40b07aac0ca060c23ee'),
(12, 'user', 'ee11cbb19052e40b07aac0ca060c23ee'),
(13, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(14, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(15, '', 'd41d8cd98f00b204e9800998ecf8427e'),
(16, '', 'd41d8cd98f00b204e9800998ecf8427e'),
(17, '', 'd41d8cd98f00b204e9800998ecf8427e'),
(18, '', 'd41d8cd98f00b204e9800998ecf8427e'),
(19, '', 'd41d8cd98f00b204e9800998ecf8427e'),
(20, 'dessya', '8bc9ee73429f40eb902569eb9db9442b'),
(21, 'dessya', '8bc9ee73429f40eb902569eb9db9442b'),
(22, 'user', 'ee11cbb19052e40b07aac0ca060c23ee'),
(23, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `kelas` varchar(2) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `semester` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `kelas`, `jurusan`, `semester`) VALUES
(28, 'wadawd', '1231093013', '12', 'awdawdaw', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Database: `db_mobil`
--
CREATE DATABASE IF NOT EXISTS `db_mobil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_mobil`;

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `jenis_mobil` varchar(100) NOT NULL,
  `tahun_mobil` varchar(100) NOT NULL,
  `kursi_mobil` varchar(50) NOT NULL,
  `harga_sewa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `jenis_mobil`, `tahun_mobil`, `kursi_mobil`, `harga_sewa`) VALUES
(20, 'Honda Crv', '2011', '5 kursi', 1000000),
(21, 'Honda Freed', '2012', '6 kursi', 1000000),
(22, 'Mercedes Benz C', '2012', '5 kursi', 1850000),
(23, 'Daihatsu Xenia', '2024', '6', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Database: `db_perpus`
--
CREATE DATABASE IF NOT EXISTS `db_perpus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_perpus`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `kode_admin` varchar(10) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`kode_admin`, `nama_admin`, `password`) VALUES
('A1', 'Muhammad Hijar Fahlipi', '2003'),
('A3', 'Rio Ferdinan', '2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`kode_admin`);
--
-- Database: `jasa`
--
CREATE DATABASE IF NOT EXISTS `jasa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jasa`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_hp` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nomor_plat` varchar(10) NOT NULL,
  `type_mobil` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `no_hp`, `alamat`, `nomor_plat`, `type_mobil`) VALUES
(24, 'Elsa', '081222111222', 'Pucakwangi', 'K 445 QQ', 'SUV'),
(27, 'Karin', '081999777888', 'Ngagel', 'K 121 UY', 'Jazz'),
(28, 'Sinta', '089787767787', 'Pati', 'K 111 KL', 'Sedan'),
(29, 'Yudha', '089111222333', 'Dukuhseti', 'K 123 OP', 'Pickup'),
(31, 'Usman', '089789878987', 'Tayu', 'K 123 TT', 'MPV'),
(34, 'Rian', '089789111222', 'Kajen', 'K 876 FA', 'Pickup'),
(35, 'Yulia', '087777666555', 'Gunugwungkal', 'K 456 YU', 'SUV'),
(36, 'Toni', '08777766999', 'Dukuhseti', 'K 888 AA', 'Innova'),
(37, 'Omar', '089111222333', 'Kejen', 'K 251 YY', 'Innova'),
(38, 'Zahra', '089777666555', 'Solo', 'K 254 AS', 'Jazz'),
(39, 'Hamdan', '081222000111', 'Winong', 'K 232 QQ', 'MPV');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_cucian`
--

CREATE TABLE `jenis_cucian` (
  `id_jenis_cucian` int(1) NOT NULL,
  `jenis_cucian` varchar(50) NOT NULL,
  `biaya` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jenis_cucian`
--

INSERT INTO `jenis_cucian` (`id_jenis_cucian`, `jenis_cucian`, `biaya`) VALUES
(2, 'Cucian Body', 35000),
(5, 'Cucian Menyeluruh', 45000);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `no_antrian` varchar(20) NOT NULL,
  `id_customer` int(10) NOT NULL,
  `id_jenis_cucian` int(1) NOT NULL,
  `tgl_pendaftaran` date NOT NULL,
  `jam_pendaftaran` time NOT NULL,
  `total_biaya` int(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `no_antrian`, `id_customer`, `id_jenis_cucian`, `tgl_pendaftaran`, `jam_pendaftaran`, `total_biaya`, `status`) VALUES
(22, '2022-09-05/1', 21, 5, '2022-09-05', '13:16:00', 45000, 'Lunas'),
(24, '2022-09-05/3', 23, 2, '2022-09-05', '13:21:00', 35000, 'Lunas'),
(25, '2022-09-05/4', 24, 5, '2022-09-05', '13:24:00', 45000, 'Lunas'),
(27, '2022-09-05/6', 26, 5, '2022-09-05', '13:26:00', 45000, 'Lunas'),
(28, '2022-09-05/7', 27, 5, '2022-09-05', '13:50:00', 45000, 'Lunas'),
(31, '2022-09-05/6', 28, 5, '2022-09-05', '13:40:00', 45000, 'Lunas'),
(32, '2022-09-05/7', 29, 2, '2022-09-05', '13:43:00', 35000, 'Lunas'),
(34, '2022-09-05/9', 31, 5, '2022-09-05', '13:55:00', 45000, 'Lunas'),
(37, '2022-09-05/12', 34, 2, '2022-09-05', '14:10:00', 35000, 'Lunas'),
(38, '2022-09-05/10', 35, 5, '2022-09-05', '14:30:00', 45000, 'Lunas'),
(39, '2022-09-05/11', 36, 5, '2022-09-05', '14:35:00', 0, 'Batal'),
(40, '2022-09-05/12', 37, 5, '2022-09-05', '14:47:00', 45000, 'Dalam Pengerjaan'),
(41, '2022-09-05/13', 38, 5, '2022-09-05', '14:50:00', 45000, 'Dalam Pengerjaan'),
(42, '2022-09-05/14', 39, 5, '2022-09-05', '15:00:00', 45000, 'Dalam Pengerjaan');

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `id_saran` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` varchar(150) NOT NULL,
  `kebersihan` int(3) NOT NULL,
  `keramahan` int(3) NOT NULL,
  `ketelitian` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`id_saran`, `nama`, `email`, `pesan`, `kebersihan`, `keramahan`, `ketelitian`) VALUES
(1, 'Adit', 'aditwijaya@gmail.com', 'Pelayanannya sangat baik dan memuaskan', 90, 80, 90),
(2, 'erdiman', 'erdiman@gmail.com', 'sangat puas', 90, 90, 90),
(3, 'SDA', 'DASDA@gmail.com', 'DASD', 67, 89, 56);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `no_nota` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_user` tinyint(1) NOT NULL,
  `nama_pencuci` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pendaftaran`, `no_nota`, `tanggal`, `bayar`, `kembali`, `total`, `status`, `id_user`, `nama_pencuci`) VALUES
(17, 22, 'C002', '2022-09-05', 50000, 5000, 45000, 'Lunas', 1, 'Agos'),
(18, 28, 'C003', '2022-09-05', 100000, 55000, 45000, 'Lunas', 1, 'Agos'),
(19, 27, 'C004', '2022-09-05', 100000, 55000, 45000, 'Lunas', 1, 'Dedi'),
(20, 25, 'C005', '2022-09-05', 50000, 5000, 45000, 'Lunas', 1, 'Dedi'),
(21, 24, 'C006', '2022-09-05', 50000, 15000, 35000, 'Lunas', 1, 'Agos'),
(22, 31, 'C007', '2022-09-05', 100000, 55000, 45000, 'Lunas', 1, 'Dedi'),
(23, 32, 'C008', '2022-09-05', 50000, 15000, 35000, 'Lunas', 1, 'Agos'),
(24, 37, 'C009', '2022-09-05', 50000, 15000, 35000, 'Lunas', 1, 'Dedi'),
(25, 34, 'C010', '2022-09-05', 100000, 55000, 45000, 'Lunas', 1, 'Agos'),
(27, 38, 'C011', '2022-09-05', 50000, 5000, 45000, 'Lunas', 1, 'Agos');

-- --------------------------------------------------------

--
-- Table structure for table `type_mobil`
--

CREATE TABLE `type_mobil` (
  `id_type_mobil` int(2) NOT NULL,
  `type_mobil` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `type_mobil`
--

INSERT INTO `type_mobil` (`id_type_mobil`, `type_mobil`) VALUES
(1, 'Avanza'),
(2, 'Innova'),
(4, 'Jazz'),
(5, 'SUV'),
(6, 'MPV'),
(7, 'Sedan'),
(8, 'Off Road'),
(9, 'Pickup'),
(10, 'Sports Car');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(1) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `hp`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Jl. Bangau Sakti', '081111222333', 1),
(2, 'rianto', '058e9643ee9b7658a6b5f83c87f3ab5a', 'Rianto ', 'Pati', '081222112223', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `jenis_cucian`
--
ALTER TABLE `jenis_cucian`
  ADD PRIMARY KEY (`id_jenis_cucian`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `type_mobil`
--
ALTER TABLE `type_mobil`
  ADD PRIMARY KEY (`id_type_mobil`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `jenis_cucian`
--
ALTER TABLE `jenis_cucian`
  MODIFY `id_jenis_cucian` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `type_mobil`
--
ALTER TABLE `type_mobil`
  MODIFY `id_type_mobil` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Fahlipi', '10406c1d7b7421b1a56f0d951e952a95');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `perpus`
--
CREATE DATABASE IF NOT EXISTS `perpus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `perpus`;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `penerbit_buku` varchar(100) NOT NULL,
  `genre_buku` varchar(50) NOT NULL,
  `harga_buku` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `penerbit_buku`, `genre_buku`, `harga_buku`) VALUES
(11, 'awfwaf', 'wdcwafwfa', 'weadwad', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `perpustakaan`
--
CREATE DATABASE IF NOT EXISTS `perpustakaan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `perpustakaan`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(10) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_anggota`, `jenis_kelamin`, `alamat`, `no_telp`) VALUES
('AG002', 'Abdul Manaf', 'Laki-laki', 'Jl. Dua gang 5', '0812121325'),
('AG003', 'Yuni', 'Perempuan', 'Jl. Tiga', '0823432xxx'),
('AG004', 'Markum', 'Laki-laki', 'Jl. Tiga Pati', '095653400');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(10) NOT NULL,
  `id_pengarang` int(11) NOT NULL,
  `id_penerbit` int(11) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `tahun_terbit` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_pengarang`, `id_penerbit`, `judul_buku`, `tahun_terbit`, `jumlah`) VALUES
('BK004', 3, 3, 'Algoritma Pemrograman', 2017, 10),
('BK005', 2, 2, 'Database', 2004, 8),
('BK006', 5, 8, 'Membangun Web dengan PHP dan MySQL', 2015, 20),
('BK007', 6, 9, 'Dasar Pemrograman Web PHP - MySQL dengan Dream Wea', 2013, 20),
('BK008', 7, 8, 'Rekayasa Perangkat Lunak', 2016, 20),
('BK009', 8, 8, 'Pemrograman Basis Data di Matlab', 2016, 25),
('BK010', 9, 7, 'Sukses Mengelola Layanan Teknologi Informasi', 2017, 10),
('BK011', 10, 6, 'Sistem Informasi Akademik Kampus Berbasis Web deng', 2011, 5),
('BK012', 11, 5, 'Algoritma dan Pemrograman Menggunakan Java', 2012, 8),
('BK013', 12, 4, 'Pengantar Sistem Informasi', 2005, 4);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pm` varchar(10) NOT NULL,
  `id_anggota` varchar(10) NOT NULL,
  `id_buku` varchar(10) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_pm`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`) VALUES
('PM001', 'AG002', 'BK005', '2021-07-10', '2021-07-17'),
('PM002', 'AG003', 'BK005', '2021-07-15', '2021-07-22'),
('PM003', 'AG004', 'BK008', '2021-07-18', '2021-07-25'),
('PM004', 'AG004', 'BK013', '2021-07-18', '2021-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` int(11) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`) VALUES
(2, 'Penerbt 1'),
(3, 'Penerbit 2'),
(4, 'Salemba Empat'),
(5, 'Andi'),
(6, 'Lokomedia'),
(7, 'AISINDO'),
(8, 'Informatika'),
(9, 'Gava Media');

-- --------------------------------------------------------

--
-- Table structure for table `pengarang`
--

CREATE TABLE `pengarang` (
  `id_pengarang` int(11) NOT NULL,
  `nama_pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengarang`
--

INSERT INTO `pengarang` (`id_pengarang`, `nama_pengarang`) VALUES
(2, 'Andre DD'),
(3, 'Candra Dewa'),
(4, 'Ariani'),
(5, 'R H Sianipar'),
(6, 'Bunafit Nugroho'),
(7, 'Rosa A S'),
(8, 'Rahmadya Trias Handayanto'),
(9, 'Tony Dwi Susanto'),
(10, 'Roki Aditama'),
(11, 'Abdul Kadir'),
(12, 'James A O\'Brian');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_anggota` varchar(10) NOT NULL,
  `id_buku` varchar(10) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `tgl_pengembalian`) VALUES
(1, 'AG002', 'BK004', '2021-07-01', '2021-07-08', '2021-07-12'),
(2, 'AG003', 'BK005', '2021-07-02', '2021-07-09', '2021-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
(2, 'Arif', 'arif', '827ccb0eea8a706c4c34a16891f84e7b', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pm`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indexes for table `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`id_pengarang`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id_penerbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengarang`
--
ALTER TABLE `pengarang`
  MODIFY `id_pengarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"perpustakaan\",\"table\":\"peminjaman\"},{\"db\":\"perpustakaan\",\"table\":\"tbl_buku\"},{\"db\":\"perpustakaan\",\"table\":\"mahasiswa\"},{\"db\":\"db_ecommerce\",\"table\":\"tbl_member\"},{\"db\":\"db_ecommerce\",\"table\":\"tbl_jns_buku\"},{\"db\":\"db_ecommerce\",\"table\":\"tbl_buku\"},{\"db\":\"20210910034\",\"table\":\"mahasiswa\"},{\"db\":\"20210910034\",\"table\":\"Mahasiswa\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-05-09 18:44:04', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `portalnilai`
--
CREATE DATABASE IF NOT EXISTS `portalnilai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `portalnilai`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `nama`, `password`) VALUES
('admin', 'Sinta Wilayanti', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `jenis_kelamin`, `tanggal_lahir`) VALUES
(1, 'Rahmat Ismaya', 'Laki-laki', '1956-11-01'),
(2, 'Rio Andriyat', 'Laki-laki', '1977-04-21'),
(3, 'Toni Khalimi', 'Laki-laki', '1939-05-23'),
(5, 'Wisnu Ahmad', 'Laki-laki', '1981-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(5) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `jurusan`) VALUES
(1, 'Teknik Informatika'),
(2, 'Sistem Informasi'),
(3, 'Manajemen Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(5) NOT NULL,
  `kelas` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
(1, 'TI 2014 B'),
(2, 'TI 2014 A');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `id_jurusan` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `password` char(32) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `id_jurusan`, `id_kelas`, `password`, `jenis_kelamin`, `tanggal_lahir`) VALUES
('2014081001', 'Fahmi Ramadhan', 1, 1, '22820349b38cd109f7a5b5eb10f68e0e', 'Laki-laki', '1968-01-11'),
('2014081002', 'Sinta Wilayanti', 1, 1, '30792d9d1d8a55743e300d5bb061a7db', 'Perempuan', '1976-02-02'),
('2014081021', 'Fatimah', 1, 2, 'eb0ba870c062ee119bda2123de1405f5', 'Perempuan', '1995-11-14'),
('2014081022', 'Budi', 1, 2, 'baf655bbc5428d8d242ab2bf77c5e6ae', 'Laki-laki', '1996-04-01'),
('2014081049', 'Eka Putra', 1, 1, '62d01ae745e76e248f60ea3705a387fc', 'Laki-laki', '1945-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(5) NOT NULL,
  `matakuliah` varchar(30) NOT NULL,
  `sks` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `matakuliah`, `sks`) VALUES
(1, 'Rangkaian Digital', 2),
(2, 'Pemrograman Web 2', 2),
(3, 'Kecerdasan Buatan', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(5) NOT NULL,
  `nim` char(10) NOT NULL,
  `id_matakuliah` int(5) NOT NULL,
  `id_dosen` int(5) NOT NULL,
  `nilai` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nim`, `id_matakuliah`, `id_dosen`, `nilai`) VALUES
(1, '2014081001', 1, 1, 'A'),
(2, '2014081002', 1, 1, 'A'),
(3, '2014081049', 1, 1, 'B'),
(4, '2014081021', 1, 1, 'A'),
(6, '2014081001', 2, 2, 'A'),
(7, '2014081002', 2, 2, 'A'),
(8, '2014081049', 2, 2, 'A'),
(9, '2014081001', 3, 3, 'A'),
(10, '2014081002', 3, 3, 'A'),
(11, '2014081049', 3, 3, 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `nim` (`nim`),
  ADD KEY `id_matakuliah` (`id_matakuliah`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idcart`, `invoice`, `kode_produk`, `nama_produk`, `harga`, `harga_modal`, `qty`, `subtotal`) VALUES
(84, 'AD4724153857', '102', 'Burung Nuri Redlory', 0, 0, 6, 0),
(85, 'AD4724153857', '101', 'Burung Betet Jawa', 0, 0, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv`
--

CREATE TABLE `inv` (
  `invid` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `tgl_inv` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pembayaran` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inv`
--

INSERT INTO `inv` (`invid`, `invoice`, `tgl_inv`, `pembayaran`, `kembalian`, `status`) VALUES
(46, 'AD6123203901', '2023-01-06 13:39:51', 1000000, 200000, 'selesai'),
(47, 'AD6123205640', '2023-01-06 13:57:01', 1000000, 100000, 'selesai'),
(48, 'AD9123185657', '2023-01-09 11:56:16', 0, 0, 'proses'),
(54, 'AD4724142057', '2024-07-04 07:20:27', 0, 0, 'proses'),
(55, 'AD4724142357', '2024-07-04 07:23:44', 2000000, 400000, 'selesai'),
(56, 'AD4724153857', '2024-07-04 08:38:54', 0, 0, 'proses');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `idlaporan` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`idlaporan`, `invoice`, `kode_produk`, `nama_produk`, `harga`, `harga_modal`, `qty`, `subtotal`) VALUES
(46, 'AD6123203901', '101', 'Burung Betet Jawa', 800000, 200000, 1, 800000),
(47, 'AD6123205640', '102', 'Burung Nuri Redlory', 900000, 700000, 1, 900000),
(49, 'AD4724142357', '103', 'Burung Nuri Pelangi', 800000, 500000, 2, 1600000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `toko` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `username`, `password`, `toko`, `alamat`, `telepon`, `logo`) VALUES
(1, 'admin', '$2y$10$9dDss.KlvKC5aYPbVQwDZe2UHc4DoZ0kSiUzu5KY1WEekv1BA9Gy.', 'Berkah Pets', 'blok. tanjung sari rt.02/01 kel.purwawinangun  kec. kuningan kab. kuningan - Jawa barat', '083841077017', 'Berkah.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `email_pelanggan` varchar(255) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  `telepon_pelanggan` varchar(15) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `nama_pelanggan`, `email_pelanggan`, `alamat_pelanggan`, `telepon_pelanggan`, `tgl_input`) VALUES
(1, 'Hijar Fahlifi', 'hijar@gamil.com', 'Kadugede', '0821231332', '2024-07-04 08:20:07'),
(2, 'rusamtah', 'usam@gmail.com', 'Cijoho', '082123123', '2024-07-04 08:20:37');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `kode_produk`, `nama_produk`, `harga_modal`, `harga_jual`, `tgl_input`) VALUES
(6, '101', 'Burung Betet Jawa', 200000, 800000, '2023-01-06 13:30:55'),
(7, '102', 'Burung Nuri Redlory', 700000, 900000, '2023-01-06 13:31:49'),
(8, '103', 'Burung Nuri Pelangi', 500000, 800000, '2023-01-06 13:33:12'),
(9, '104', 'Burung Nuri Dora', 500000, 800000, '2023-01-06 13:33:28'),
(10, '105', 'Burung Nuri Tanimbar', 900000, 1200000, '2023-01-06 13:33:56'),
(11, '106', 'Burung Nuri Dusky', 600000, 800000, '2023-01-06 13:35:07'),
(12, '107', 'Burung Nuri Paltem', 900000, 1200000, '2023-01-06 13:36:47'),
(13, '108', 'Burung Nuri Bayan', 900000, 2000000, '2023-01-06 13:37:46'),
(14, '109', 'Burung Kakatua Jamkun', 1400000, 2000000, '2023-01-06 13:38:16'),
(15, '110', 'Burung Kakatua Goffin', 1200000, 1500000, '2023-01-06 13:38:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`);

--
-- Indexes for table `inv`
--
ALTER TABLE `inv`
  ADD PRIMARY KEY (`invid`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`idlaporan`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `inv`
--
ALTER TABLE `inv`
  MODIFY `invid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `idlaporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `rental_db`
--
CREATE DATABASE IF NOT EXISTS `rental_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rental_db`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `rent_start` date DEFAULT NULL,
  `rent_end` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `status` enum('pending','reserved','completed','cancelled') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `available` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
--
-- Database: `rental_mobil`
--
CREATE DATABASE IF NOT EXISTS `rental_mobil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rental_mobil`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akun`
--

CREATE TABLE `tbl_akun` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_akun`
--

INSERT INTO `tbl_akun` (`id`, `nama`, `username`, `password`, `foto`) VALUES
(4, 'Administrator', 'admin', '$2y$10$tf2VKfD.kjhXFc16fbaNY.EvtMhvhb8iYFWvHVr5MURTg443VwmIm', 'administrator-1579273408.png'),
(5, 'Fakhrul Fanani Nugroho', 'nugrohoff', '$2y$10$MzYgUN41HVHtmLixc40jxuBwXbstCYqeCxMTitlUsTcEIO8KdN.Su', 'fakhrul-fanani-nugroho-1579279638.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_bayar`
--

CREATE TABLE `tbl_jenis_bayar` (
  `id` int(11) NOT NULL,
  `jenis_bayar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jenis_bayar`
--

INSERT INTO `tbl_jenis_bayar` (`id`, `jenis_bayar`) VALUES
(3, 'Cash'),
(4, 'Kredit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `id` int(11) NOT NULL,
  `merk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_merk`
--

INSERT INTO `tbl_merk` (`id`, `merk`) VALUES
(8, 'Toyota'),
(9, 'Suzuki');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mobil`
--

CREATE TABLE `tbl_mobil` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `no_polisi` varchar(10) DEFAULT NULL,
  `jumlah_kursi` int(1) DEFAULT NULL,
  `tahun_beli` int(4) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_mobil`
--

INSERT INTO `tbl_mobil` (`id`, `nama`, `warna`, `no_polisi`, `jumlah_kursi`, `tahun_beli`, `gambar`, `id_merk`) VALUES
(13, 'Toyota Kijang Innova', 'Putih', 'R 6788 KM', 6, 2019, 'toyota-kijang-innova-1577631464.png', NULL),
(14, 'Toyota Kijang Innova', 'Abu Abu', 'R 1309 KN', 7, 2018, 'toyota-kijang-innova-1579004786.png', 8),
(15, 'Suzuki All New Ertiga', 'Putih', 'R 1739 KN', 8, 2018, 'suzuki-all-new-ertiga-1579279546.png', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemesan`
--

CREATE TABLE `tbl_pemesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pemesan`
--

INSERT INTO `tbl_pemesan` (`id`, `nama`, `alamat`, `jenis_kelamin`, `foto`) VALUES
(6, 'Fakhrul', 'Sidareja', 'L', 'fakhrul-1579004931.jpg'),
(7, 'Fanani', 'Sidareja', 'L', 'fanani-1579275545.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perjalanan`
--

CREATE TABLE `tbl_perjalanan` (
  `id` int(11) NOT NULL,
  `asal` varchar(20) DEFAULT NULL,
  `tujuan` varchar(20) DEFAULT NULL,
  `jarak` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_perjalanan`
--

INSERT INTO `tbl_perjalanan` (`id`, `asal`, `tujuan`, `jarak`) VALUES
(3, 'Cilacap', 'Jogjakarta', 300),
(4, 'Cilacap', 'Ciamis', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesanan`
--

CREATE TABLE `tbl_pesanan` (
  `id` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `id_pemesan` int(11) DEFAULT NULL,
  `id_mobil` int(11) DEFAULT NULL,
  `id_perjalanan` int(11) DEFAULT NULL,
  `id_jenis_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pesanan`
--

INSERT INTO `tbl_pesanan` (`id`, `harga`, `tgl_pinjam`, `tgl_kembali`, `id_pemesan`, `id_mobil`, `id_perjalanan`, `id_jenis_bayar`) VALUES
(1, 1000000, '2020-01-01', '2020-01-04', NULL, 13, NULL, NULL),
(6, 2000000, '2020-01-17', '2020-01-20', 6, 14, 3, 3),
(8, 1500000, '2020-01-18', '2020-01-21', 7, 15, 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jenis_bayar`
--
ALTER TABLE `tbl_jenis_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_mobil_ibfk_2` (`id_merk`);

--
-- Indexes for table `tbl_pemesan`
--
ALTER TABLE `tbl_pemesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_perjalanan`
--
ALTER TABLE `tbl_perjalanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pemesan` (`id_pemesan`),
  ADD KEY `id_mobil` (`id_mobil`),
  ADD KEY `id_perjalanan` (`id_perjalanan`),
  ADD KEY `id_jenis_bayar` (`id_jenis_bayar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_jenis_bayar`
--
ALTER TABLE `tbl_jenis_bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_pemesan`
--
ALTER TABLE `tbl_pemesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_perjalanan`
--
ALTER TABLE `tbl_perjalanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  ADD CONSTRAINT `tbl_mobil_ibfk_2` FOREIGN KEY (`id_merk`) REFERENCES `tbl_merk` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD CONSTRAINT `tbl_pesanan_ibfk_1` FOREIGN KEY (`id_pemesan`) REFERENCES `tbl_pemesan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_2` FOREIGN KEY (`id_mobil`) REFERENCES `tbl_mobil` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_3` FOREIGN KEY (`id_perjalanan`) REFERENCES `tbl_perjalanan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_4` FOREIGN KEY (`id_jenis_bayar`) REFERENCES `tbl_jenis_bayar` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Database: `sewamobil`
--
CREATE DATABASE IF NOT EXISTS `sewamobil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sewamobil`;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `penerbit_buku` varchar(100) NOT NULL,
  `genre_buku` varchar(50) NOT NULL,
  `harga_buku` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `penerbit_buku`, `genre_buku`, `harga_buku`) VALUES
(1, 'Matematika Cerdas IC', 'Trigata Media', 'Paket Belajar', 100000),
(6, 'Cerdas Cermat IIA', 'Trilangga', 'LKS', 45000),
(7, 'Sains SD Lengkap', 'Cepat Gita', 'Penunjang', 120000),
(9, 'Indonesia IB', 'Imam', 'Paket Belajar', 105000),
(10, 'Coding PHP Pemula', 'Imam', 'Paket Belajar', 99000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `sisfonilai_db`
--
CREATE DATABASE IF NOT EXISTS `sisfonilai_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sisfonilai_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `nama`, `password`) VALUES
('admin', 'Sinta Wilayanti', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `jenis_kelamin`, `tanggal_lahir`) VALUES
(1, 'Rahmat Ismaya', 'Laki-laki', '1956-11-01'),
(2, 'Rio Andriyat', 'Laki-laki', '1977-04-21'),
(3, 'Toni Khalimi', 'Laki-laki', '1939-05-23'),
(5, 'Wisnu Ahmad', 'Laki-laki', '1981-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(5) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `jurusan`) VALUES
(1, 'Teknik Informatika'),
(2, 'Sistem Informasi'),
(3, 'Manajemen Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(5) NOT NULL,
  `kelas` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
(1, 'TI 2014 B'),
(2, 'TI 2014 A');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `id_jurusan` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `password` char(32) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `id_jurusan`, `id_kelas`, `password`, `jenis_kelamin`, `tanggal_lahir`) VALUES
('2014081001', 'Fahmi Ramadhan', 1, 1, '22820349b38cd109f7a5b5eb10f68e0e', 'Laki-laki', '1968-01-11'),
('2014081002', 'Sinta Wilayanti', 1, 1, '30792d9d1d8a55743e300d5bb061a7db', 'Perempuan', '1976-02-02'),
('2014081021', 'Fatimah', 1, 2, 'eb0ba870c062ee119bda2123de1405f5', 'Perempuan', '1995-11-14'),
('2014081022', 'Budi', 1, 2, 'baf655bbc5428d8d242ab2bf77c5e6ae', 'Laki-laki', '1996-04-01'),
('2014081049', 'Eka Putra', 1, 1, '62d01ae745e76e248f60ea3705a387fc', 'Laki-laki', '1945-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(5) NOT NULL,
  `matakuliah` varchar(30) NOT NULL,
  `sks` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `matakuliah`, `sks`) VALUES
(1, 'Rangkaian Digital', 2),
(2, 'Pemrograman Web 2', 2),
(3, 'Kecerdasan Buatan', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(5) NOT NULL,
  `nim` char(10) NOT NULL,
  `id_matakuliah` int(5) NOT NULL,
  `id_dosen` int(5) NOT NULL,
  `nilai` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nim`, `id_matakuliah`, `id_dosen`, `nilai`) VALUES
(1, '2014081001', 1, 1, 'A'),
(2, '2014081002', 1, 1, 'A'),
(3, '2014081049', 1, 1, 'B'),
(4, '2014081021', 1, 1, 'A'),
(6, '2014081001', 2, 2, 'A'),
(7, '2014081002', 2, 2, 'A'),
(8, '2014081049', 2, 2, 'A'),
(9, '2014081001', 3, 3, 'A'),
(10, '2014081002', 3, 3, 'A'),
(11, '2014081049', 3, 3, 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `nim` (`nim`),
  ADD KEY `id_matakuliah` (`id_matakuliah`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `web_personal`
--
CREATE DATABASE IF NOT EXISTS `web_personal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `web_personal`;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `kode_artikel` char(10) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `isi_artikel` text NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'gambar_default.png',
  `tanggal` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `kode_artikel`, `judul_artikel`, `isi_artikel`, `gambar`, `tanggal`, `status`, `id_kategori`, `id_pengguna`) VALUES
(98, 'A0094', 'Manfaat buah untuk kesehatan', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris&lt;/p&gt;', 'fruit.png', '2020-10-19 16:43:13', 1, 14, 0),
(100, 'A0100', 'Jenis-jenis Basis Data', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim &amp;nbsp; veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris&lt;/p&gt;', '40 CONTOH SOAL BASIS DATA.png', '2020-10-27 21:37:19', 1, 16, 0),
(101, 'A0101', '5 Teknologi smartphone masa depan', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &amp;nbsp; Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. &amp;nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris&lt;/p&gt;', 'tekno hp.png', '2020-10-29 14:36:37', 1, 16, 0),
(102, 'A0102', 'Implementasi Teknologi Augmented Reality', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &amp;nbsp; Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit&lt;/p&gt;\r\n\r\n&lt;p&gt;amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim &amp;nbsp; veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. &amp;nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna&lt;/p&gt;\r\n\r\n&lt;p&gt;aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris&lt;/p&gt;', 'augmented reality.png', '2020-10-29 13:43:05', 1, 16, 0),
(103, 'A0103', 'Wisata Pantai Terbaik', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &amp;nbsp; Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit&lt;/p&gt;\r\n\r\n&lt;p&gt;amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim &amp;nbsp; veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. &amp;nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur&lt;/p&gt;\r\n\r\n&lt;p&gt;adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris&lt;/p&gt;', 'Wisata pantai terbaik.png', '2020-10-27 21:45:16', 1, 20, 0),
(104, 'A0104', 'Wisata Pegunungan yang Indah', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut&lt;/p&gt;\r\n\r\n&lt;p&gt;labore et dolore magna aliqua. &amp;nbsp; Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim &amp;nbsp; veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. &amp;nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna&lt;/p&gt;\r\n\r\n&lt;p&gt;aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris&lt;/p&gt;', 'gambar pegunungan.png', '2020-10-27 21:46:45', 1, 20, 0),
(105, 'A0105', 'Tips Belajar Berenang', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &amp;nbsp; Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. &amp;nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur&lt;/p&gt;\r\n\r\n&lt;p&gt;adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris&lt;/p&gt;', 'Desain tanpa judul(10).png', '2020-10-27 21:50:47', 1, 18, 0),
(106, 'A0106', 'Makanan Enak', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud&lt;/p&gt;\r\n\r\n&lt;p&gt;exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &amp;nbsp; Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. &amp;nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris Lorem ipsum dolor sit amet, consectetur&lt;/p&gt;\r\n\r\n&lt;p&gt;adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris&lt;/p&gt;', 'Desain tanpa judul(9).png', '2020-10-27 21:51:28', 1, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `gambar_kategori` varchar(200) NOT NULL DEFAULT 'gambar_default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar_kategori`) VALUES
(13, 'Edukasi', 'edukasi.png'),
(14, 'Kesehatan', 'kesehatan.png'),
(16, 'Teknologi', 'teknologi.png'),
(18, 'Olahraga', 'olahraga (2).png'),
(20, 'Wisata', 'wisata.png'),
(21, 'Makanan', 'makanan.png');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `isi_komentar` text NOT NULL,
  `status_komentar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_artikel`, `nama`, `email`, `isi_komentar`, `status_komentar`) VALUES
(7, 101, 'Setiawan Dimas', 'arimurti295.sd@gmail.com', 'Saya terkagum membaca artikel ini karena setelah membaca artikel ini pikiran saya menjadi terbuka. Saya sadar, selama ini saya terlalu tertutup dengan hal-hal yang baru dan merasa sudah tahu. Hal ini berimbas kepada saya yakni saya menjadi orang yang Sok Tahu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `kode_pengguna` char(9) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_telp` char(14) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `kode_pengguna`, `nama_pengguna`, `email`, `no_telp`, `username`, `password`, `status`) VALUES
(19, 'U010', 'Dimas', 'arimurti95.sd@gmail.com', '082322230343', 'dimas', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(20, 'U020', 'Bayu', 'bayu@gmail.com', '082322230343', 'bayu', 'a430e06de5ce438d499c2e4063d60fd6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `nama_website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`nama_website`) VALUES
('Portal Informasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD UNIQUE KEY `judul_artikel` (`judul_artikel`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
