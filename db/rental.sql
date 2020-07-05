-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05 Jul 2020 pada 13.09
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
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `kdmobil` char(5) NOT NULL,
  `jenis` char(10) NOT NULL,
  `tahun` char(4) NOT NULL,
  `harga` int(8) NOT NULL,
  `nopol` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`kdmobil`, `jenis`, `tahun`, `harga`, `nopol`) VALUES
('AVP01', 'AVP', '2006', 400000, 'B 1234 KL'),
('SDH01', 'SEDAN', '2000', 300000, 'B 1234 VB'),
('SDS01', 'SEDAN', '2003', 350000, 'B 1234 MN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `nopen` char(5) NOT NULL,
  `nama` char(20) NOT NULL,
  `telp` char(15) NOT NULL,
  `alamat` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`nopen`, `nama`, `telp`, `alamat`) VALUES
('P0001', 'NAHIYAH', '77886293', 'DEPOK'),
('P0002', 'ZAHRAH', '98688181', 'JAKARTA'),
('P0003', 'SAFITRI', '45678888', 'DEPOK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa`
--

CREATE TABLE `sewa` (
  `nokw` char(5) NOT NULL,
  `tglsewa` date NOT NULL,
  `kdmobil` char(5) NOT NULL,
  `nopen` char(5) NOT NULL,
  `lama` int(11) NOT NULL,
  `bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sewa`
--

INSERT INTO `sewa` (`nokw`, `tglsewa`, `kdmobil`, `nopen`, `lama`, `bayar`) VALUES
('KW001', '2010-03-12', 'SDH01', 'P0001', 3, 900000),
('KW002', '2010-03-16', 'AVP01', 'P0001', 2, 800000),
('KW003', '2010-05-03', 'SDS01', 'P0003', 2, 700000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`kdmobil`);

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`nopen`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`nokw`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
