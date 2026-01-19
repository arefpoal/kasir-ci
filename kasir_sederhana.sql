-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2026 at 08:15 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_sederhana`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `harga`, `stok`) VALUES
(1, 'Kopi Susu Gula Aren', 18000, 49),
(2, 'Mie Goreng Spesial', 15000, 24),
(3, 'Es Teh Manis', 5000, 94),
(4, 'Roti Bakar Coklat', 12000, 200),
(5, 'Air Mineral', 3000, 200);

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id` int(11) NOT NULL,
  `penjualan_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `penjualan_id`, `barang_id`, `jumlah`, `subtotal`) VALUES
(1, 1, 4, 1, 12000),
(2, 2, 2, 1, 15000),
(3, 3, 3, 1, 5000),
(4, 4, 4, 1, 12000),
(5, 5, 2, 1, 15000),
(6, 6, 1, 1, 18000),
(7, 7, 3, 1, 5000),
(8, 8, 3, 1, 5000),
(9, 9, 2, 1, 15000),
(10, 10, 3, 1, 5000),
(11, 11, 3, 1, 5000),
(12, 12, 4, 1, 12000),
(13, 13, 3, 1, 5000),
(14, 14, 2, 1, 15000),
(15, 15, 2, 1, 15000),
(16, 16, 2, 1, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `no_transaksi` varchar(20) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `metode_pembayaran` varchar(50) DEFAULT 'Tunai'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_transaksi`, `tanggal`, `total_bayar`, `metode_pembayaran`) VALUES
(2, 'TRX-1768801563', '2026-01-19 06:46:03', 15000, 'Tunai'),
(3, 'TRX-1768801586', '2026-01-19 06:46:26', 5000, 'QRIS'),
(4, 'TRX-1768801633', '2026-01-19 06:47:13', 12000, 'Tunai'),
(5, 'TRX-1768801824', '2026-01-19 06:50:24', 15000, 'Tunai'),
(6, 'TRX-1768801846', '2026-01-19 06:50:46', 18000, 'Tunai'),
(7, 'TRX-1768801942', '2026-01-19 06:52:22', 5000, 'Tunai'),
(8, 'TRX-1768801960', '2026-01-19 06:52:40', 5000, 'Tunai'),
(9, 'TRX-1768802413', '2026-01-19 07:00:13', 15000, 'Tunai'),
(10, 'TRX-1768802432', '2026-01-19 07:00:32', 5000, 'Tunai'),
(11, 'TRX-1768803033', '2026-01-19 07:10:33', 5000, 'Tunai'),
(12, 'TRX-1768803175', '2026-01-19 07:12:55', 12000, 'Tunai'),
(13, 'TRX-1768803593', '2026-01-19 07:19:53', 5000, 'Tunai'),
(14, 'TRX-1768803615', '2026-01-19 07:20:15', 15000, 'Tunai'),
(15, 'TRX-1768803669', '2026-01-19 07:21:09', 15000, 'QRIS'),
(16, 'TRX-1768806283', '2026-01-19 08:04:43', 15000, 'Tunai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
