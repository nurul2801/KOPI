-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2021 pada 02.53
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `kode` int(11) NOT NULL,
  `nama_menu` varchar(75) NOT NULL,
  `harga_menu` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`kode`, `nama_menu`, `harga_menu`) VALUES
(10, 'Es Cappucino', 11000),
(11, 'Es Coklat', 9000),
(12, 'Es Joshua', 7000),
(13, 'Kopi Hitam', 5000),
(14, 'Kopi Susu', 7000),
(15, 'Susu Hangat', 8000),
(16, 'Teh Hangat', 6000),
(17, 'Jeruk Hangat\r\n', 6000),
(18, 'Roti Goreng', 14000),
(19, 'Ayam Bakar', 17000),
(20, 'Ayam Geprek', 15000),
(21, 'Kentang Goreng', 12000),
(22, 'Nasi Goreng', 15000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kode` int(15) NOT NULL,
  `menu_pesanan` varchar(45) NOT NULL,
  `total_pesanan` int(15) NOT NULL,
  `bayar` int(15) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kode`, `menu_pesanan`, `total_pesanan`, `bayar`, `tanggal`) VALUES
(48702, 'Joshua', 0, 15000, '2021-12-16 14:02:46'),
(66242, 'Kopi Hitam', 30000, 30000, '2021-12-16 14:05:02'),
(87103, 'Kentang Goreng ', 38000, 40000, '2021-12-16 14:06:17'),
(11021, 'Joshua', 26000, 30000, '2021-12-16 14:15:18'),
(11021, 'Kopi Hitam', 26000, 30000, '2021-12-16 14:15:18'),
(97957, 'Joshua', 21000, 25000, '2021-12-17 02:23:05'),
(31087, 'Nasi Goreng', 30000, 30000, '2021-12-19 06:28:06'),
(7878, 'Kopi Hitam', 31000, 35000, '2021-12-19 11:46:07'),
(71355, 'Es Joshua', 31000, 35000, '2021-12-19 11:46:07'),
(82473, 'Kopi Susu', 26000, 30000, '2021-12-19 11:48:02'),
(89145, 'Teh Hangat', 26000, 30000, '2021-12-19 11:48:02'),
(50695, 'Es Cappucino', 22000, 25000, '2021-12-19 11:49:08'),
(27437, 'Es Cappucino', 22000, 25000, '2021-12-19 11:53:21'),
(56798, 'Es Cappucino', 22000, 25000, '2021-12-19 12:07:11'),
(85176, 'Es Cappucino', 68000, 70000, '2021-12-19 12:43:14'),
(47871, 'Teh Hangat', 68000, 70000, '2021-12-19 12:43:14'),
(42722, 'Ayam Bakar', 68000, 70000, '2021-12-19 12:43:14'),
(76790, 'Es Cappucino', 22000, 25000, '2021-12-19 13:18:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
