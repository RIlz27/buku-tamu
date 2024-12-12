-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 03:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_bukutamu`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku tamu`
--

CREATE TABLE `buku tamu` (
  `id_tamu` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_tamu` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `bertemu` varchar(255) NOT NULL,
  `kepentingan` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku tamu`
--

INSERT INTO `buku tamu` (`id_tamu`, `tanggal`, `nama_tamu`, `alamat`, `no_hp`, `bertemu`, `kepentingan`, `gambar`) VALUES
('12345', '2024-09-18', 'peron', 'kp.loji', '082123769278', 'Di SMKN 1 Cianjur', 'tugas sekolah', '671709ba80461.jpg'),
('zt424', '2024-09-20', 'paja', 'smp 2', '027647364', 'turky', 'mabar', ''),
('zt425', '2024-09-20', 'rivaldy', 'leles', '0293734', 'mas perong', 'pengen digendong naga perong', ''),
('zt426', '2024-09-27', 'egi', 'kampung pamoyanan', '085795872764', 'mas perong', 'login', ''),
('zt427', '2024-09-30', 'anto', 'nagrak', '8347238734', 'saky', 'ngoding', ''),
('zt428', '2024-10-14', 'ival tim', 'leles', '08578273282', 'egi tim', 'ngomongin tim', '670c971ed7124.jpg'),
('zt429', '2024-10-14', 'test', 'tekjtasldk', '1232131', 'skdfsdjf', 'dfjsadfhk', ''),
('zt430', '2024-10-15', 'test2', 'sdfkjasdjf', 'ksdfakdsj', 'kdfkaj', 'kknsdflak', '67105b14abd91.jpg'),
('zt431', '2024-10-17', 'azid', 'blk', '1242432', 'turky', 'ngendong', '67105d0639d39.jpg'),
('zt432', '2024-10-22', 'bebey', 'gg guntur', '66587970854', 'ffsdfg', 'unity', '67170f7d0e735.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` varchar(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` enum('admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `username`, `password`, `user_role`) VALUES
('usr00', 'perong', '$2y$10$qcLUTTenaVS.zbUwcOUHEuzcRm8fTBCWFvNi/BxT165boyabR/8JW', 'admin'),
('usr01', 'egi', '$2y$10$.GBjpUUGdsegTYYsirca6uCNNWHrAP5T9yWxyCa912C/kk1YCBWke', 'admin'),
('usr02', 'admin', '$2y$10$MPAPqk7b6S2gtozj0BbnUuG7fgTjyuvWMNugHCJYuWUgE4E9GK9XS', 'admin'),
('usr04', 'Naga perong', '$2y$10$xmqkSuMKmymBhfD1Xz2AGeovMOFFmCPNsnIcO/nuBZfbNMIUsE2u6', 'admin'),
('usr05', 'yz', '$2y$10$DeHxPcnQT7fw7crm5X9D4uHksoM2ClnLj1zqb1A/c9I/x74QI05FO', 'operator'),
('usr06', 'argha', '$2y$10$tnQ2lgbq2LkVfVZw0cVgl.d1QVpaxqTlJPnHYGqbSovEQBYCBBOwK', 'admin'),
('usr07', 'rvl', '$2y$10$k0jJFdkVBJgvBXvpdWla5.yEwpm8hwzWK6s9Au9AO5Q/xhOC8tL.O', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku tamu`
--
ALTER TABLE `buku tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
