-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 08:18 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpenjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_barang` int(4) NOT NULL,
  `nama_barang` text NOT NULL,
  `satuan` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_barang`, `nama_barang`, `satuan`, `harga`) VALUES
(2001, 'Lemari Es Toshiba 2 Pintu', 'Unit', 2700000),
(2002, 'TV Xiomi Android 32 inc', 'Unit', 2000000),
(2003, 'Kabel Antena ', 'Roll', 750000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kd_pelanggan` int(4) NOT NULL,
  `nama_pelanggan` text NOT NULL,
  `telp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kd_pelanggan`, `nama_pelanggan`, `telp`) VALUES
(1001, 'Dinny Susilowati', '8577110779'),
(1002, 'Afif Mahar Widodo', '8988981908'),
(1003, 'Didik Setya Budi', '83830082299'),
(1004, 'Fahri Saputra', '85156298710'),
(1005, 'Galumbang Christo Marbun', '81263816274'),
(1006, 'Hendika Saputro', '81385745468'),
(1007, 'Kunto Wibisono', '81387690506'),
(1008, 'Nur Ain Pradana', '82125652279'),
(1009, 'Rizqi Fawaz Al-Fahri', '81295120669'),
(1010, 'Rizki Wahyudi', '85211345481'),
(1011, 'Ravi Budi Rizkiaji', '83869147788'),
(1012, 'Lailatul Zahro', '81388438315'),
(1013, 'Rico Irmansyah', '81804847455'),
(1014, 'Ariq Andrean', '81285459750'),
(1015, 'Dede Khairuddin', '85714266056');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(4) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `kd_pelanggan` int(4) NOT NULL,
  `kd_barang` int(4) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `tgl_penjualan`, `kd_pelanggan`, `kd_barang`, `qty`) VALUES
(3001, '2020-11-26', 1001, 2001, 1),
(3002, '2020-11-26', 1002, 2002, 2),
(3003, '2020-11-26', 1003, 2003, 5),
(3004, '2020-11-26', 1004, 2004, 2),
(3005, '2020-11-26', 1005, 2005, 2);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `kd_produk` text NOT NULL,
  `nama_produk` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `kd_produk`, `nama_produk`, `harga`) VALUES
(1, '8998127912370', 'Dunhil Fine Cut Mild', 23),
(2, '8998127912371', 'Aqua Botol 300ml', 2000),
(3, '8998127912372', 'Kopi Susu ABC', 1000),
(4, '8998127912373', 'Fine choco 27g', 1500),
(7, '2222222222222', 'KAOS', 450000),
(8, '3333333333333', 'Yeahhhhhhhhhhhh', 123000),
(9, '4444444444444', 'okey', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kd_barang` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2004;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `kd_pelanggan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3006;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
