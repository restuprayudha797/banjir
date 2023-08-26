-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Agu 2023 pada 11.57
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reportflooding`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hardware`
--

CREATE TABLE `hardware` (
  `id` int(11) NOT NULL,
  `name_location` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `water_level` varchar(12) NOT NULL,
  `temperature` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hardware`
--

INSERT INTO `hardware` (`id`, `name_location`, `state`, `water_level`, `temperature`) VALUES
(1, 'Jl. Mustafa Sari No.1, Tengkerang Sel., Kec. Bukit Raya, Kota Pekanbaru, Riau 28125', 'AMAN', '12', '11'),
(2, 'Jl. Mustafa Sari No.1, Tengkerang Sel., Kec. Bukit Raya, Kota Pekanbaru, Riau 28125', 'BAHAYA', '8', '9'),
(3, 'Jl. Mustafa Sari No.1, Tengkerang Sel., Kec. Bukit Raya, Kota Pekanbaru, Riau 28125', 'WASPADA', '10', '26'),
(14, 'tes', 'tes', '12', '9'),
(15, 'z', 'z', '4', '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_report`
--

CREATE TABLE `login_report` (
  `log_user` int(11) NOT NULL,
  `log_ip` varchar(20) NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login_report`
--

INSERT INTO `login_report` (`log_user`, `log_ip`, `log_time`) VALUES
(1, '172.225.72.90', 1692024610),
(1, '172.225.72.90', 1692024693),
(1, '146.75.160.29', 1692024771),
(1, '::1', 1692040819),
(1, '::1', 1692042770),
(1, '::1', 1692194732),
(1, '::1', 1692386136);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_flooding`
--

CREATE TABLE `report_flooding` (
  `report_number` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `name_location` text NOT NULL,
  `proof_image` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `timestamp` varchar(20) NOT NULL,
  `state_of_report` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `report_flooding`
--

INSERT INTO `report_flooding` (`report_number`, `name`, `phone`, `name_location`, `proof_image`, `message`, `timestamp`, `state_of_report`) VALUES
(2, 'Genta Sihera', '082385989476', 'jakarta utara jalan cilacap no 10', 'tes_banjir.jpeg', 'di sini banjir 10 meter', '1692034314', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL,
  `role_id` int(1) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name`, `username`, `password`, `date_created`, `role_id`, `is_active`) VALUES
(1, 'Administrator', 'admin', '$2y$10$gxIUugh1yDpcGuNhkA9iq.slmxj1oedcuPnyRZAJLJSANnTktsIfK', '2023-06-01 19:58:44', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `report_flooding`
--
ALTER TABLE `report_flooding`
  ADD PRIMARY KEY (`report_number`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hardware`
--
ALTER TABLE `hardware`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `report_flooding`
--
ALTER TABLE `report_flooding`
  MODIFY `report_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
