-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 25, 2024 at 05:11 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detailtransaksi`
--

CREATE TABLE `tbl_detailtransaksi` (
  `id_detail` int NOT NULL,
  `no_transaksi` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `id_menu` int NOT NULL,
  `qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_detailtransaksi`
--

INSERT INTO `tbl_detailtransaksi` (`id_detail`, `no_transaksi`, `id_menu`, `qty`) VALUES
(1, '9438716502', 1, 1),
(2, '8692147053', 2, 1),
(3, '3510789426', 3, 3),
(4, '3510789426', 2, 2),
(5, '3402871695', 3, 2),
(6, '3402871695', 2, 2),
(7, '2715048369', 3, 2),
(8, '2715048369', 2, 2),
(9, '1053287694', 3, 3),
(10, '1053287694', 2, 1),
(11, '4750213896', 3, 1),
(12, '4750213896', 2, 2),
(13, '1379206485', 4, 2),
(14, '0169523487', 4, 1),
(15, '0169523487', 3, 1),
(19, '1259743608', 4, 2),
(20, '1259743608', 3, 2),
(21, '7268105349', 4, 2),
(22, '7268105349', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis`
--

CREATE TABLE `tbl_jenis` (
  `id_jenis` int NOT NULL,
  `jenis` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jenis`
--

INSERT INTO `tbl_jenis` (`id_jenis`, `jenis`) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(4, 'dessert');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_meja`
--

CREATE TABLE `tbl_meja` (
  `id_meja` int NOT NULL,
  `nomor_meja` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `status_meja` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_meja`
--

INSERT INTO `tbl_meja` (`id_meja`, `nomor_meja`, `status_meja`) VALUES
(1, '001', 'T'),
(2, '002', 'T'),
(3, '003', 'T'),
(5, '004', 'T'),
(6, '005', 'T'),
(8, '006', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` int NOT NULL,
  `nama_menu` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `id_jenis` int NOT NULL,
  `harga` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `stok` int NOT NULL,
  `gambar` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `nama_menu`, `id_jenis`, `harga`, `stok`, `gambar`) VALUES
(2, 'Jus', 2, '2000', 100, '65fbfd442756c.jpg'),
(3, 'Jus Duren', 2, '10000', 95, '65fbff0d2c8fc.jfif'),
(4, 'test', 1, '10000', 5, '65ff1896b658f.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `no_transaksi` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `nama_customer` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `id_meja` int DEFAULT NULL,
  `total_diskon` int DEFAULT NULL,
  `ppn` int DEFAULT NULL,
  `bayar` int DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`no_transaksi`, `tanggal`, `nama_customer`, `id_meja`, `total_diskon`, `ppn`, `bayar`, `user_id`) VALUES
('1259743608', '2024-03-24', 'HOHOHO', 5, 0, 1000, 42000, 21),
('6021435987', '2024-03-25', 'Sir rian', NULL, NULL, NULL, NULL, 23),
('7268105349', '2024-03-24', 'tes', 6, 0, 0, 45000, 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int NOT NULL,
  `nama` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `level` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Bagus', 'bagus', '202cb962ac59075b964b07152d234b70', 'Admin'),
(17, 'Kasir', 'kasir', '202cb962ac59075b964b07152d234b70', 'Kasir'),
(18, 'Nico', 'owner', '202cb962ac59075b964b07152d234b70', 'Owner'),
(20, 'Miss adel', 'adeline', '698d51a19d8a121ce581499d7b701668', 'Kasir'),
(21, 'Syaki', 'waiter', '202cb962ac59075b964b07152d234b70', 'Waiter'),
(23, 'Iwan', 'nawi', '202cb962ac59075b964b07152d234b70', 'Waiter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_detailtransaksi`
--
ALTER TABLE `tbl_detailtransaksi`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `tbl_meja`
--
ALTER TABLE `tbl_meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_detailtransaksi`
--
ALTER TABLE `tbl_detailtransaksi`
  MODIFY `id_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  MODIFY `id_jenis` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_meja`
--
ALTER TABLE `tbl_meja`
  MODIFY `id_meja` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
