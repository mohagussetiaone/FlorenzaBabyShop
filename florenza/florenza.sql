-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2016 at 05:49 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `penjualanmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `faktur`
--

CREATE TABLE IF NOT EXISTS `faktur` (
  `no_faktur` int(10) NOT NULL,
  `kode_pembeli` int(10) NOT NULL,
  `kode_barang` int(10) NOT NULL,
  `tgl_faktur` varchar(10) NOT NULL,
  `jam_faktur` varchar(10) NOT NULL,
  PRIMARY KEY (`no_faktur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faktur`
--

INSERT INTO `faktur` (`no_faktur`, `kode_pembeli`, `kode_barang`, `tgl_faktur`, `jam_faktur`) VALUES
(1, 1001, 1, '15/11/2016', '10:20:21'),
(1996, 1001, 1, '14/11/2016', '00:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE IF NOT EXISTS `stok_barang` (
  `kode_barang` int(10) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(20) NOT NULL,
  PRIMARY KEY (`kode_mobil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `stok_barang` (`kode_barang`, `nama_barang`, `merk`, `deskripsi`, `stok`, `harga`) VALUES
(1, 'AVANSA', 'AE1903SH', 'HITAM', 2016, 250000000),
(2, 'ALPAT', 'D110PS', 'PINK', 2011, 900000000),
(3, 'FERARI', 'ST4324PK', 'SILVER', 2019, 150000000),
(4, 'minti', 'ug1323', 'biru', 1998, 89000189);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `kode_penjualan` int(15) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `jumlah` int(30) NOT NULL,
  `total_bayar` int(10) NOT NULL,
  
  PRIMARY KEY (`kode_penjualan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `penjualan` (`kode_penjualan`, `nama_barang`, `harga`, `jumlah`, `total bayar`) VALUES
(1, popok besar, 20000, 2, 40000),
(2, madu, 4000, 3, 12000),
(3, handuk kecil, 15000, 1, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `no_transaksi` int(10) NOT NULL,
  `no_faktur` int(10) NOT NULL,
  `tgl_faktur` varchar(10) NOT NULL,
  `jam_faktur` varchar(10) NOT NULL,
  `kode_pembeli` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kode_barang` int(10) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `deskripsi` varchar(20) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(20) NOT NULL,
  PRIMARY KEY (`no_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `no_faktur`, `tgl_faktur`, `jam_faktur`, `kode_pembeli`, `nama`, `kode_barang`, `nama_barang`, `merk`, `deskripsi`, `stok`, `harga`) VALUES
(1, 1, '15/11/2016', '10:20:21', 1001, 'sumanto', 2, 'ALPAT', 'D110PS', 'PINK', 2011, 900000000),
(2, 1, '15/11/2016', '10:20:21', 2, 'sumidi', 3, 'FERARI', 'ST4324PK', 'SILVER', 2019, 150000000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
