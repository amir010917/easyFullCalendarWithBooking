-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 08:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registerr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tempah_db`
--

CREATE TABLE `tempah_db` (
  `id_tempah` int(25) NOT NULL,
  `tarikh_urusan` date DEFAULT NULL,
  `tarikh_tamat` date DEFAULT NULL,
  `masa_urusan` time NOT NULL,
  `masa_tamat` time NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `urusan_kerja` varchar(255) NOT NULL,
  `tempat_urusan` varchar(255) NOT NULL,
  `nama_pemandu` varchar(255) NOT NULL,
  `status_pohon` varchar(255) DEFAULT 'Sedang Edit',
  `no_telefon` int(255) NOT NULL,
  `no_pegawai` int(255) NOT NULL,
  `unitjabatan` varchar(255) NOT NULL,
  `no_kenderaan` varchar(255) NOT NULL,
  `bilangan_kenderaan` varchar(255) NOT NULL,
  `pengguna_id` int(25) NOT NULL,
  `tarikh_pohon` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tempah_db`
--

INSERT INTO `tempah_db` (`id_tempah`, `tarikh_urusan`, `tarikh_tamat`, `masa_urusan`, `masa_tamat`, `nama_pegawai`, `urusan_kerja`, `tempat_urusan`, `nama_pemandu`, `status_pohon`, `no_telefon`, `no_pegawai`, `unitjabatan`, `no_kenderaan`, `bilangan_kenderaan`, `pengguna_id`, `tarikh_pohon`) VALUES
(17, '2024-04-25', '2024-04-27', '16:10:48', '04:32:48', 'nur farah, nur ain, nur sarah', 'hantar staff ke MDTM', 'jajahan kula langat', 'Muhamad Akif Bin Bahrqi', 'Dibatalkan', 199608911, 199608911, 'Penguatkuasaan', 'VKM1979', '1,3,6', 3, '2024-04-30 13:44:51'),
(22, '2024-03-19', '2024-03-19', '22:02:00', '03:03:00', 'amar', 'kk', '44i6iik', '', '', 195545255, 0, 'Perhubungan Awam & Korporat', '', '', 4, '2024-04-30 13:44:51'),
(37, '2024-03-19', '2024-03-19', '22:02:00', '22:02:00', 'akif', 'kkak', 'earyhy', '', '', 15484855, 0, 'Penguatkuasaan', '', '', 6, '2024-04-30 13:44:51'),
(38, '2024-03-19', '2024-03-19', '22:02:00', '22:02:00', 'amar', 'fdvdv', 'ds', '', '', 195545255, 0, 'Pentadbiran & Pengurusan Sumber Manusia', '', '', 6, '2024-04-30 13:44:51'),
(250, '2024-04-26', '2024-04-27', '03:33:00', '04:44:00', 'dfsfds', 'Hantar Staff Osc', 'KL', 'Azmie Bin Salleh', 'Sedang Edit', 0, 0, 'Pusat Setempat (OSC)', 'DBS7226', '6', 3, '2024-04-30 13:44:51'),
(252, '2024-04-29', '2024-04-29', '18:46:00', '15:15:00', 'Encik Zuki', 'Hantar staf', 'Jajahan Kuala Krai', 'Muhammad Adam Bin Majid', 'Sedang Edit', 0, 19848484, 'Penguatkuasaan', 'Vkk', '', 3, '2024-04-30 13:44:51'),
(256, '2024-04-30', '2024-04-29', '12:22:00', '03:03:00', 'dsasad', 'Menghantarr staffff', 'Kuala Langat', 'Azmie Bin Salleh', 'Dibatalkan', 0, 19848484, 'Penguatkuasaan', 'ALK1978', '', 3, '2024-04-30 13:44:51'),
(257, '2024-04-29', '2024-04-29', '22:02:00', '22:02:00', 'amar', 'makan nasi', 'Kuala Langat', 'Azmie Bin Salleh', 'Dihantar', 0, 19848484, 'Pentadbiran & Pengurusan Sumber Manusia', '2d', '', 1, '2024-04-30 13:44:51'),
(258, '2024-04-30', '2024-05-01', '12:00:00', '12:00:00', 'hakim', 'dass', 'jajahan pasir puteh', 'amirul', 'Dibatalkan', 0, 9293891, 'Penguatkuasaan', 'sdfs423', '', 3, '2024-04-30 13:44:51'),
(267, '2024-05-02', '2024-05-02', '08:08:00', '08:08:00', 'amar', 'Hantar staff', 'Kuala Langat', 'Azmie Bin Salleh', 'Diluluskan', 0, 199659488, 'Perhubungan Awam & Korporat', 'ALK1978', '', 4, '2024-05-02 01:16:19'),
(268, '2024-05-02', '2024-05-02', '11:11:00', '11:11:00', 'amaraaqq', 'Menghantar kakitangan', 'Kuala Langat', '3', 'Dihantar', 0, 199659488, 'Penguatkuasaan', '3', '', 3, '2024-05-02 02:56:43'),
(269, '2024-05-02', '2024-05-05', '11:11:00', '11:11:00', 'amaraaqqa', 'hantar staff ke MDTM', 'Kuala Langat', '1', 'Dihantar', 0, 199659488, 'Pentadbiran & Pengurusan Sumber Manusia', 'vce', '', 1, '2024-05-02 03:59:32'),
(270, '2024-05-23', '2024-05-24', '04:44:00', '04:44:00', 'Zahir', 'Mesyurat ', 'Dungun', '3', 'Sedang Edit', 0, 199659488, 'Penguatkuasaan', 'ssss', '', 3, '2024-05-11 08:29:25'),
(271, '2024-05-20', '2024-05-22', '07:07:00', '07:07:00', 'Muhamad Akif Bin Bahrqi', 'hantar staf', 'kluang', 'ahmad zaid', 'Dihantar', 0, 19848484, 'Penguatkuasaan', 'abcd', '', 3, '2024-05-20 07:42:49'),
(272, '2024-05-21', '2024-05-23', '00:00:00', '00:00:00', 'aaaa', 'sasa', 'Kuala Langat', 'sasa', 'Dibatalkan', 0, 1, 'Penguatkuasaan', 'scsac', '', 3, '2024-05-21 04:14:33'),
(275, '2024-05-23', '2024-05-25', '11:11:00', '11:01:00', 'amar', 'Hantar', '44i6iik', 'Adam Nazri Bin Husseinn', 'Dihantar', 0, 199659488, 'Penguatkuasaan', 'Vkk', '', 3, '2024-05-23 15:54:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tempah_db`
--
ALTER TABLE `tempah_db`
  ADD PRIMARY KEY (`id_tempah`),
  ADD KEY `stafftempah` (`pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tempah_db`
--
ALTER TABLE `tempah_db`
  MODIFY `id_tempah` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tempah_db`
--
ALTER TABLE `tempah_db`
  ADD CONSTRAINT `usertempah` FOREIGN KEY (`pengguna_id`) REFERENCES `user` (`pengguna_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
