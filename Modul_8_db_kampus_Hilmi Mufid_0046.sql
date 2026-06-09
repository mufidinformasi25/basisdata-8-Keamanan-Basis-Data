-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2026 pada 00.41
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` char(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bidang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`, `bidang`) VALUES
('1983040404', 'Dr. Eng. Hermawan', 'Jaringan Komputer'),
('1984090909', 'Dr. Linda Wahyuni', 'Data Science'),
('1985010101', 'Budi Santoso, M.T.', 'Teknologi Informasi'),
('1987060606', 'Roni Wijaya, M.T.', 'Keamanan Siber'),
('1988020202', 'Siti Aminah, M.Kom.', 'Sistem Basis Data'),
('1989070707', 'Eka Putri, M.Kom.', 'Rekayasa Perangkat Lunak'),
('1990030303', 'Ahmad Fauzi, Ph.D.', 'Kecerdasan Buatan'),
('1991080808', 'Hendra Kusuma, M.Si.', 'Sistem Operasi'),
('1992050505', 'Dewi Lestari, M.Cs.', 'Pemrograman'),
('1993101010', 'Ferry Setiawan, M.T.', 'Grafika Komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`) VALUES
('1234567890', 'Andi', 'Informatika'),
('2505060001', 'Rian Hidayat', 'Teknologi Informasi'),
('2505060002', 'Aldi Pratama', 'Teknologi Informasi'),
('2505060003', 'Lintang Cahaya', 'Teknologi Informasi'),
('2505060004', 'Bagas Saputra', 'Teknologi Informasi'),
('2505060005', 'Amalia Putri', 'Teknologi Informasi'),
('2505060006', 'Fikri Haikal', 'Teknologi Informasi'),
('2505060007', 'Dinda Lestari', 'Teknologi Informasi'),
('2505060008', 'Reza Aditya', 'Teknologi Informasi'),
('2505060009', 'Siti Rahma', 'Teknologi Informasi'),
('2505060010', 'Arif Budiman', 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` char(6) NOT NULL,
  `nama_mk` varchar(50) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`) VALUES
('INF101', 'Pengantar Teknologi Informasi', 3),
('INF102', 'Dasar Pemrograman', 4),
('INF201', 'Struktur Data', 3),
('INF202', 'Basis Data', 4),
('INF203', 'Pemrograman Berorientasi Objek', 3),
('INF301', 'Jaringan Komputer', 3),
('INF302', 'Pemrograman Web', 3),
('INF303', 'Sistem Operasi', 3),
('INF401', 'Kecerdasan Buatan', 3),
('INF402', 'Keamanan Siber', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagihan`
--

CREATE TABLE `tagihan` (
  `id_tagihan` int(11) NOT NULL,
  `nim` char(10) DEFAULT NULL,
  `jumlah` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tagihan`
--

INSERT INTO `tagihan` (`id_tagihan`, `nim`, `jumlah`, `status`) VALUES
(1, '2505060001', 3500000.00, 'Lunas'),
(2, '2505060002', 3500000.00, 'Lunas'),
(3, '2505060003', 3750000.00, 'Belum Lunas'),
(4, '2505060004', 3500000.00, 'Belum Lunas'),
(5, '2505060005', 4000000.00, 'Lunas'),
(6, '2505060006', 3500000.00, 'Belum Lunas'),
(7, '2505060007', 3750000.00, 'Lunas'),
(8, '2505060008', 3500000.00, 'Belum Lunas'),
(9, '2505060009', 3500000.00, 'Lunas'),
(10, '2505060010', 4000000.00, 'Belum Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp_tabel`
--

CREATE TABLE `temp_tabel` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id_tagihan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
