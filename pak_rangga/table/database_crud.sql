-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14 Mar 2018 pada 03.12
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id_job` int(11) NOT NULL,
  `nomor` varchar(55) NOT NULL,
  `tanggal` date NOT NULL,
  `store` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `kategori` varchar(55) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jobs`
--

INSERT INTO `jobs` (`id_job`, `nomor`, `tanggal`, `store`, `alamat`, `kategori`, `keterangan`) VALUES
(1, '1005', '2019-04-03', 'Store 1', 'di gandaria I', 'Maintenace', 'Belum'),
(4, '1002', '2018-03-14', 'Pondok Indah II', 'Pondok Indah', 'Standby', 'Sudah'),
(7, '12345 ', '2018-04-10', 'Store 1', 'gandaria', 'Maintenace', 'Sudah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pic`
--

CREATE TABLE `pic` (
  `id_pic` int(11) NOT NULL,
  `nama_pic` varchar(100) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `id_store` int(11) NOT NULL,
  `nama_store` varchar(55) NOT NULL,
  `alamat_store` varchar(150) NOT NULL,
  `id_pic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_customer_name` varchar(255) NOT NULL,
  `order_item` varchar(255) NOT NULL,
  `order_value` double(12,2) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_customer_name`, `order_item`, `order_value`, `order_date`) VALUES
(1, 'David E. Gary', 'Shuttering Plywood', 1500.00, '2017-01-14'),
(2, 'Eddie M. Douglas', 'Aluminium Heavy Windows', 2000.00, '2017-01-08'),
(3, 'Oscar D. Scoggins', 'Plaster Of Paris', 150.00, '2016-12-29'),
(4, 'Clara C. Kulik', 'Spin Driller Machine', 350.00, '2016-12-30'),
(5, 'Christopher M. Victory', 'Shopping Trolley', 100.00, '2017-01-01'),
(6, 'Jessica G. Fischer', 'CCTV Camera', 800.00, '2017-01-02'),
(7, 'Roger R. White', 'Truck Tires', 2000.00, '2016-12-28'),
(8, 'Susan C. Richardson', 'Glass Block', 200.00, '2017-01-04'),
(9, 'David C. Jury', 'Casing Pipes', 500.00, '2016-12-27'),
(10, 'Lori C. Skinner', 'Glass PVC Rubber', 1800.00, '2016-12-30'),
(11, 'Shawn S. Derosa', 'Sony HTXT1 2.1-Channel TV', 180.00, '2017-01-03'),
(12, 'Karen A. McGee', 'Over-the-Ear Stereo Headphones ', 25.00, '2017-01-01'),
(13, 'Kristine B. McGraw', 'Tristar 10\" Round Copper Chef Pan with Glass Lid', 20.00, '2016-12-30'),
(14, 'Gary M. Porter', 'ROBO 3D R1 Plus 3D Printer', 600.00, '2017-01-02'),
(15, 'Sarah D. Hunter', 'Westinghouse Select Kitchen Appliances', 35.00, '2016-12-29'),
(16, 'Diane J. Thomas', 'SanDisk Ultra 32GB microSDHC', 12.00, '2017-01-05'),
(17, 'Helena J. Quillen', 'TaoTronics Dimmable Outdoor String Lights', 16.00, '2017-01-04'),
(18, 'Arlette G. Nathan', 'TaoTronics Bluetooth in-Ear Headphones', 25.00, '2017-01-03'),
(19, 'Ronald S. Vallejo', 'Scotchgard Fabric Protector, 10-Ounce, 2-Pack', 20.00, '2017-01-03'),
(20, 'Felicia L. Sorensen', 'Anker 24W Dual USB Wall Charger with Foldable Plug', 12.00, '2017-01-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `image`) VALUES
(18, 'Joseph', 'Harman', '1.jpg'),
(19, 'John', 'Moss', '4.jpg'),
(20, 'Lillie', 'Ferrarium', '3.jpg'),
(21, 'Yolanda', 'Green', '5.jpg'),
(22, 'Cara', 'Gariepy', '7.jpg'),
(23, 'Christine', 'Johnson', '11.jpg'),
(24, 'Alana', 'Decruze', '12.jpg'),
(25, 'Krista', 'Correa', '13.jpg'),
(26, 'Charles', 'Martin', '14.jpg'),
(70, 'Cindy', 'Canady', '18211.jpg'),
(73, 'Daphne', 'Frost', '8288.jpg'),
(69, 'Frank', 'Lemons', '22610.jpg'),
(66, 'Margaret', 'Ault', '14365.jpg'),
(71, 'Christina', 'Wilke', '9248.jpg'),
(68, 'Roy', 'Newton', '27282.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id_job`),
  ADD UNIQUE KEY `nomor` (`nomor`);

--
-- Indexes for table `pic`
--
ALTER TABLE `pic`
  ADD PRIMARY KEY (`id_pic`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_store` (`id_store`),
  ADD KEY `store_pic` (`id_pic`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id_job` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pic`
--
ALTER TABLE `pic`
  MODIFY `id_pic` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_pic` FOREIGN KEY (`id_pic`) REFERENCES `pic` (`id_pic`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
