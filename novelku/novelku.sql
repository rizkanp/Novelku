-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2021 pada 17.37
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `novelku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `genres`
--

CREATE TABLE `genres` (
  `id_genre` int(11) NOT NULL,
  `nama_genre` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `soft_delete` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `genres`
--

INSERT INTO `genres` (`id_genre`, `nama_genre`, `created_at`, `updated_at`, `soft_delete`) VALUES
(6, 'Fantasy', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(7, 'Young Adult Fiction', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(8, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(9, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(10, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(11, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(12, 'Mystery & Thriller', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(13, 'Historical Fiction', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(14, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(15, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(16, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre_follow`
--

CREATE TABLE `genre_follow` (
  `id_genre` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `soft_delete` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id_menu`, `nama_menu`, `file`) VALUES
(1, 'Genre', 'genre'),
(2, 'Write', 'novel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_role`
--

CREATE TABLE `menu_role` (
  `id_menu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `is_create` tinyint(4) NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `is_update` tinyint(4) NOT NULL,
  `is_delete` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu_role`
--

INSERT INTO `menu_role` (`id_menu`, `id_role`, `is_create`, `is_read`, `is_update`, `is_delete`) VALUES
(1, 1, 1, 1, 1, 1),
(1, 2, 1, 1, 0, 0),
(2, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 0, 0),
(3, 1, 1, 1, 1, 1),
(3, 2, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `novel`
--

CREATE TABLE `novel` (
  `id_novel` int(11) NOT NULL,
  `judul_novel` varchar(255) NOT NULL,
  `file_cover` varchar(255) NOT NULL,
  `file_novel` varchar(255) NOT NULL,
  `sinopsis` text NOT NULL,
  `tgl_terbit` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `soft_delete` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `novel`
--

INSERT INTO `novel` (`id_novel`, `judul_novel`, `file_cover`, `file_novel`, `sinopsis`, `tgl_terbit`, `id_user`, `created_at`, `updated_at`, `soft_delete`) VALUES
(10, 'What I Talk About When I Talk About Running', 'upload/file_cover_haruki.jpg', 'upload/file_novel_haruki.pdf', 'In 1982, having sold his jazz bar to devote himself to writing, Murakami began running to keep fit. Through this marvelous lens of sport emerges a panorama of memories and insights: the eureka moment when he decided to become a writer, his greatest triumphs and disappointments, his passion for vintage LPs, and the experience, after fifty, of seeing his race times improve and then fall back. By turns funny and sobering, playful and philosophical, What I Talk About When I Talk About Running is rich and revelatory, both for fans of this masterful yet guardedly private writer and for the exploding population of athletes who find similar satisfaction in distance running.\"', '2019-02-19', 1, '2020-12-23 03:42:14', '2020-12-23 03:42:14', 0),
(12, 'Norwegian Wood', 'upload/file_cover_wood.jpg', 'upload/file_novel_wood.pdf', 'Toru, a quiet and preternaturally serious young college student in Tokyo, is devoted to Naoko, a beautiful and introspective young woman, but their mutual passion is marked by the tragic death of their best friend years before. Toru begins to adapt to campus life and the loneliness and isolation he faces there, but Naoko finds the pressures and responsibilities of life unbearable. As she retreats further into her own world, Toru finds himself reaching out to others and drawn to a fiercely independent and sexually liberated young woman.', '2020-12-14', 1, '2020-12-23 03:48:09', '2020-12-23 03:48:09', 0),
(18, 'Everything I Never Told You', 'upload/file_cover_never.jpg', 'upload/file_novel_never.pdf', 'lydia is dead. But they don\'t know this yet.\r\n\r\nSo begins this exquisite novel about a Chinese American family living in 1970s small-town Ohio. Lydia is the favorite child of Marilyn and James Lee, and her parents are determined that she will fulfill the dreams they were unable to pursue. But when Lydia\'s body is found in the local lake, the delicate balancing act that has been keeping the Lee family together is destroyed, tumbling them into chaos. \r\n\r\nA profoundly moving story of family, secrets, and longing, Everything I Never Told You is both a gripping page-turner and a sensitive family portrait, uncovering the ways in which mothers and daughters, fathers and sons, and husbands and wives struggle, all their lives, to understand one another.', '2021-01-05', 1, '2021-01-05 14:48:13', '2021-01-05 14:48:13', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `novel_genre`
--

CREATE TABLE `novel_genre` (
  `id_novel` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `soft_delete` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `novel_genre`
--

INSERT INTO `novel_genre` (`id_novel`, `id_genre`, `created_at`, `updated_at`, `soft_delete`) VALUES
(10, 6, '2020-12-23 03:42:14', '2020-12-23 03:42:14', 0),
(10, 7, '2020-12-23 03:42:14', '2020-12-23 03:42:14', 0),
(10, 12, '2020-12-23 03:42:14', '2020-12-23 03:42:14', 0),
(11, 6, '2020-12-23 03:46:34', '2020-12-23 03:46:34', 0),
(11, 7, '2020-12-23 03:46:34', '2020-12-23 03:46:34', 0),
(11, 12, '2020-12-23 03:46:34', '2020-12-23 03:46:34', 0),
(11, 13, '2020-12-23 03:46:34', '2020-12-23 03:46:34', 0),
(12, 7, '2020-12-23 03:48:09', '2020-12-23 03:48:09', 0),
(12, 12, '2020-12-23 03:48:09', '2020-12-23 03:48:09', 0),
(12, 13, '2020-12-23 03:48:09', '2020-12-23 03:48:09', 0),
(13, 6, '2020-12-23 03:59:32', '2020-12-23 03:59:32', 0),
(13, 12, '2020-12-23 03:59:32', '2020-12-23 03:59:32', 0),
(13, 13, '2020-12-23 03:59:32', '2020-12-23 03:59:32', 0),
(14, 6, '2020-12-23 04:00:14', '2020-12-23 04:00:14', 0),
(14, 12, '2020-12-23 04:00:14', '2020-12-23 04:00:14', 0),
(14, 13, '2020-12-23 04:00:14', '2020-12-23 04:00:14', 0),
(15, 7, '2020-12-23 04:22:21', '2020-12-23 04:22:21', 0),
(15, 12, '2020-12-23 04:22:21', '2020-12-23 04:22:21', 0),
(15, 13, '2020-12-23 04:22:21', '2020-12-23 04:22:21', 0),
(16, 6, '2020-12-23 04:25:29', '2020-12-23 04:25:29', 0),
(16, 7, '2020-12-23 04:25:29', '2020-12-23 04:25:29', 0),
(16, 13, '2020-12-23 04:25:29', '2020-12-23 04:25:29', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_novel` int(11) NOT NULL,
  `isi_review` text NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `soft_delete` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`id_review`, `id_user`, `id_novel`, `isi_review`, `rating`, `created_at`, `updated_at`, `soft_delete`) VALUES
(9, 2, 12, 'I don\'t have many meaningful things to say about Norwegian Wood. First, a disclaimer. This is, by no means, a romance book - no offence meant. I cannot suffer to attach such a tacky word on this book. Oh, what do I know, it IS a romance book. But it is laterally more than that.', '5.0', '2020-12-26 09:29:42', '2020-12-26 09:29:42', 0),
(39, 2, 10, '\"Most runners run not because they want to live longer, but because they want to live life to the fullest. If you\'re going to while away the years, it\'s far better to live them with clear goals and fully alive then in a fog, and I believe running helps you to do that. Exerting yourself to the fullest within your individual limits: that\'s the essence of running, and a metaphor for life and for me, for writing as whole.\"\r\nHaruki Murakami ~~ What I Talk About When I Talk About Running', '4.0', '2020-12-28 12:26:18', '2020-12-28 12:33:06', 0),
(40, 2, 18, 'One of the most upsetting novels I\'ve read this year. Ms Ng portrays the Lee family masterfully, leading the reader through the minds and feelings of her characters and their development. It seems there is not a single sentence which is unnecessary. And the narration is exquisite!', '4.0', '2021-01-05 00:00:00', '2021-01-06 00:00:00', 0),
(43, 1, 12, 'Welcome to Norwegian Wood by Haruki Murakami, a tale of a bunch of suicidal perverts in Japanese universities.\r\n', '5.0', '2020-12-28 12:40:16', '2021-01-05 14:44:00', 0),
(47, 1, 10, 'You know when you read a book and it just speaks to you? Something about the time and place and just all the circumstances match up and you know you read the book at the perfect time? This was that.', '5.0', '2020-12-28 13:04:08', '2021-01-05 14:31:57', 0),
(48, 1, 18, 'There\'s a quiet and almost simple beauty to Celeste Ng\'s storytelling. She\'s not a writer that relies on a breakneck pace or frilly overtures to capture readers.', '4.0', '2021-01-05 14:55:51', '2021-01-05 14:55:51', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id_role` tinyint(4) NOT NULL,
  `nama_role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id_role`, `nama_role`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `soft_delete` tinyint(4) NOT NULL,
  `id_role` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email`, `password`, `created_at`, `updated_at`, `soft_delete`, `id_role`) VALUES
(1, 'dylan o\'brian', 'dylanobrian@gmail.com', '', '2021-01-05 00:00:00', '2021-01-05 20:02:14', 0, 1),
(2, 'zayn malik', 'zaynmalik@gmail.com', '', '2021-01-05 00:00:00', '2021-01-05 19:52:37', 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `novel`
--
ALTER TABLE `novel`
  ADD PRIMARY KEY (`id_novel`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `genres`
--
ALTER TABLE `genres`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `novel`
--
ALTER TABLE `novel`
  MODIFY `id_novel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id_role` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
