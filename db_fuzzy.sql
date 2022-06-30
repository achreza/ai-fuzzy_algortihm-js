-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2018 at 08:22 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fuzzy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelompok`
--

CREATE TABLE `tb_kelompok` (
  `id` int(11) NOT NULL,
  `nama_kelompok` varchar(20) DEFAULT NULL,
  `field_akses` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelompok`
--

INSERT INTO `tb_kelompok` (`id`, `nama_kelompok`, `field_akses`) VALUES
(1, 'Nilai', 'nilai'),
(2, 'Minat', 'minat'),
(3, 'Bakat', 'bakat');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id` int(11) NOT NULL,
  `nama_kriteria` varchar(30) DEFAULT NULL,
  `bawah` float(10,2) DEFAULT NULL,
  `tengah` float(10,2) DEFAULT NULL,
  `atas` float(10,2) DEFAULT NULL,
  `kelompok` tinyint(2) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id`, `nama_kriteria`, `bawah`, `tengah`, `atas`, `kelompok`, `keterangan`) VALUES
(1, 'buruk', 1.00, 2.00, 4.00, 1, ''),
(2, 'cukup', 3.00, 5.00, 7.00, 1, ''),
(3, 'bagus', 6.00, 8.00, 10.00, 1, ''),
(4, 'rendah', 1.00, 3.00, 5.00, 2, ''),
(5, 'sedang', 2.00, 4.00, 6.00, 2, ''),
(6, 'tinggi', 5.00, 8.00, 10.00, 2, ''),
(7, 'tidakberbakat', 1.00, 2.00, 4.00, 3, ''),
(8, 'biasa', 3.00, 6.00, 8.00, 3, ''),
(9, 'berbakat', 7.00, 9.00, 10.00, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `nilai` int(10) DEFAULT NULL,
  `minat` int(10) DEFAULT NULL,
  `bakat` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nama`, `nilai`, `minat`, `bakat`) VALUES
(1, 'anang', 8, 5, 7),
(2, 'syaifur', 9, 9, 9),
(3, 'rochman', 3, 5, 7),
(4, 'dimas', 5, 5, 5),
(5, 'setiyono', 6, 9, 6),
(6, 'rizal', 4, 7, 8),
(7, 'syafii', 9, 7, 8),
(8, 'agung', 4, 4, 4),
(9, 'ramadhan', 7, 7, 7),
(11, 'nugraha', 2, 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kelompok`
--
ALTER TABLE `tb_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kelompok`
--
ALTER TABLE `tb_kelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
