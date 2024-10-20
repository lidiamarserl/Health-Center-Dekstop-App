-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2016 at 03:57 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
  `kd_dokter` varchar(10) NOT NULL,
  `nama_dokter` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_dokter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE IF NOT EXISTS `pasien` (
  `kd_pasien` varchar(10) NOT NULL,
  `nama_pasien` varchar(20) NOT NULL,
  `umur` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  PRIMARY KEY (`kd_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

CREATE TABLE IF NOT EXISTS `pemeriksaan` (
  `kd_pemeriksaan` varchar(10) NOT NULL,
  `kd_dokter` varchar(10) NOT NULL,
  `nama_dokter` varchar(20) NOT NULL,
  `kd_pasien` varchar(10) NOT NULL,
  `nama_pasien` varchar(20) NOT NULL,
  `diagnosa` varchar(100) NOT NULL,
  `tgl_pemeriksaan` varchar(10) NOT NULL,
  `hasil` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_pemeriksaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perawat`
--

CREATE TABLE IF NOT EXISTS `perawat` (
  `kd_perawat` varchar(10) NOT NULL,
  `nama_perawat` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_perawat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rawat_inap`
--

CREATE TABLE IF NOT EXISTS `rawat_inap` (
  `kd_inap` varchar(10) NOT NULL,
  `kd_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL,
  `kd_dokter` varchar(10) NOT NULL,
  `nama_dokter` varchar(20) NOT NULL,
  `kd_pasien` varchar(10) NOT NULL,
  `nama_pasien` varchar(20) NOT NULL,
  `kd_perawat` varchar(10) NOT NULL,
  `nama_perawat` varchar(20) NOT NULL,
  `tgl_inap` varchar(10) NOT NULL,
  `tgl_keluar` varchar(10) NOT NULL,
  PRIMARY KEY (`kd_inap`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rawat_jalan`
--

CREATE TABLE IF NOT EXISTS `rawat_jalan` (
  `kd_jalan` varchar(10) NOT NULL,
  `kd_dokter` varchar(10) NOT NULL,
  `nama_dokter` varchar(20) NOT NULL,
  `kd_pasien` varchar(10) NOT NULL,
  `nama_pasien` varchar(20) NOT NULL,
  `kd_resep` varchar(10) NOT NULL,
  `resep_obat` varchar(100) NOT NULL,
  `tgl_periksa` varchar(10) NOT NULL,
  PRIMARY KEY (`kd_jalan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE IF NOT EXISTS `resep` (
  `kd_resep` varchar(10) NOT NULL,
  `resep_obat` varchar(100) NOT NULL,
  PRIMARY KEY (`kd_resep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE IF NOT EXISTS `ruangan` (
  `kd_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_ruangan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `namauser` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nama`, `namauser`, `password`) VALUES
('1', 'fery', 'fery', 'fery');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
