-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2024 pada 12.23
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Operator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add biodata', 7, 'add_biodata'),
(26, 'Can change biodata', 7, 'change_biodata'),
(27, 'Can delete biodata', 7, 'delete_biodata'),
(28, 'Can view biodata', 7, 'view_biodata'),
(29, 'Can add kategori', 8, 'add_kategori'),
(30, 'Can change kategori', 8, 'change_kategori'),
(31, 'Can delete kategori', 8, 'delete_kategori'),
(32, 'Can view kategori', 8, 'view_kategori'),
(33, 'Can add artikel', 9, 'add_artikel'),
(34, 'Can change artikel', 9, 'change_artikel'),
(35, 'Can delete artikel', 9, 'delete_artikel'),
(36, 'Can view artikel', 9, 'view_artikel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$m6BAz7ZWunhxWZI8VW4EW7$LDcLYKzjYdx6ZvomaldlntqrROk23rlwugAot8kV8YM=', '2024-06-22 10:15:01.188625', 1, 'ran', '', '', 'frandiferdyan@gmail.com', 1, 1, '2024-03-24 22:06:45.000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita_artikel`
--

CREATE TABLE `berita_artikel` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(25) NOT NULL,
  `isi` longtext DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `kategori_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita_artikel`
--

INSERT INTO `berita_artikel` (`id`, `judul`, `isi`, `thumbnail`, `author_id`, `kategori_id`, `created_at`, `slug`) VALUES
(1, 'vol1', '<p>Pada awal penemuannya, olahraga permainan bola voli ini diberi nama Mintonette. Olahraga ini pertama kali ditemukan oleh seorang Instruktur pendidikan jasmani (Director of Phsycal Education) yang bernama William G. Morgan di YMCA pada tanggal 9 Februari 1895, di Holyoke, Massachusetts (Amerika Serikat).</p>\r\n\r\n<p>&nbsp;Morgan, yang juga merupakan lulusan Springfield College of YMCA, menciptakan permainan ini empat tahun setelah diciptakannya olahraga bola basket oleh James Naismith. Olahraga Mintonette ini sebenarnya merupakan sebuah permainan yang diciptakan dengan menggabungkan beberapa jenis permainan, yaitu bola basket, bisbol, tenis, dan bola tangan (handball). Pada awalnya, permainan ini diciptakan khusus bagi anggota YMCA yang sudah tidak berusia muda lagi, sehingga permainan ini pun dibuat tidak seaktif permainan bola basket.</p>', 'artikel/voli.jpg', 1, 2, '2024-06-18 13:40:10.409294', '2024-6-18-vol1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita_kategori`
--

CREATE TABLE `berita_kategori` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita_kategori`
--

INSERT INTO `berita_kategori` (`id`, `nama`) VALUES
(2, 'olahraga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-06-13 14:35:06.870994', '1', 'Kategori object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2024-06-18 12:33:15.748412', '1', 'ran', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(3, '2024-06-18 13:32:16.363372', '2', 'Kategori object (2)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2024-06-18 13:32:20.891296', '2', 'Kategori object (2)', 2, '[]', 8, 1),
(5, '2024-06-18 13:32:32.212711', '1', 'Kategori object (1)', 3, '', 8, 1),
(6, '2024-06-18 13:32:39.926722', '2', 'Kategori object (2)', 2, '[]', 8, 1),
(7, '2024-06-18 13:40:10.409294', '1', 'Artikel object (1)', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'berita', 'artikel'),
(8, 'berita', 'kategori'),
(5, 'contenttypes', 'contenttype'),
(7, 'pengguna', 'biodata'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-24 21:47:38.574461'),
(2, 'auth', '0001_initial', '2024-03-24 21:47:39.325708'),
(3, 'admin', '0001_initial', '2024-03-24 21:47:39.447261'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-24 21:47:39.457263'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-24 21:47:39.465264'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-03-24 21:47:39.527620'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-03-24 21:47:39.575259'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-03-24 21:47:39.593261'),
(9, 'auth', '0004_alter_user_username_opts', '2024-03-24 21:47:39.599260'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-03-24 21:47:39.646271'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-03-24 21:47:39.648271'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-03-24 21:47:39.659271'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-03-24 21:47:39.673271'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-03-24 21:47:39.689185'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-03-24 21:47:39.705291'),
(16, 'auth', '0011_update_proxy_permissions', '2024-03-24 21:47:39.712288'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-03-24 21:47:39.727289'),
(18, 'sessions', '0001_initial', '2024-03-24 21:47:39.759979'),
(19, 'pengguna', '0001_initial', '2024-03-24 23:33:32.114396'),
(20, 'berita', '0001_initial', '2024-03-24 23:35:42.817840'),
(21, 'berita', '0002_artikel_created_at_artikel_slug_and_more', '2024-06-18 10:50:49.632055');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0vzr8wjli6uc5kaepubxpshngq8jalxo', '.eJxVjEEOwiAQRe_C2pABKlCX7j0DGQZGqgaS0q6Md7dNutDte-__twi4LiWsPc9hSuIilDj9soj0zHUX6YH13iS1usxTlHsiD9vlraX8uh7t30HBXra1YSajMTryo2fNiljhMKJmYsMKMgKcibxzfiCMlgHsRoC9TT5qFp8vCSU4hw:1sHlDC:eAZjDyp0gmFQj_sYQQvn7a3jaisCIqO1A1aD2ulQk3U', '2024-06-27 14:13:58.007946'),
('99hclfcwoauul8omh6w914cpbp75n6b2', '.eJxVjMsOwiAQRf-FtSHlzbh07zeQAQapGkhKuzL-uzbpQrf3nHNfLOC21rANWsKc2ZkJdvrdIqYHtR3kO7Zb56m3dZkj3xV-0MGvPdPzcrh_BxVH_dYqFkjgJrIOrDQecFIAVNAmMi6C0WidLt6CykUKcKiK9N6jFgDOJPb-ANE9Nyc:1sEqKL:1Z496gsvbuyedTJXGylOSNyw8fCcL0qUyLO-hV9zEUc', '2024-06-19 13:05:17.257435'),
('esxrc3uuohfjhy5d2hsl7ou9kykl10o8', '.eJxVjMsOwiAQRf-FtSHlzbh07zeQAQapGkhKuzL-uzbpQrf3nHNfLOC21rANWsKc2ZkJdvrdIqYHtR3kO7Zb56m3dZkj3xV-0MGvPdPzcrh_BxVH_dYqFkjgJrIOrDQecFIAVNAmMi6C0WidLt6CykUKcKiK9N6jFgDOJPb-ANE9Nyc:1roVzt:aM7JdZRo9hWl4_YHxMTWUiX-SuSuaCBeh376Gvdgsuw', '2024-04-07 22:07:21.333383'),
('lqncqrfuoai1ydanh2incc4y48tlqfyq', '.eJxVjMsOwiAQRf-FtSHlzbh07zeQAQapGkhKuzL-uzbpQrf3nHNfLOC21rANWsKc2ZkJdvrdIqYHtR3kO7Zb56m3dZkj3xV-0MGvPdPzcrh_BxVH_dYqFkjgJrIOrDQecFIAVNAmMi6C0WidLt6CykUKcKiK9N6jFgDOJPb-ANE9Nyc:1s9Gbp:1VfgZuKzsdzcCr5XpOmOMfr9x6abBKotYBrXaGqA2xA', '2024-06-04 03:56:17.768606'),
('o54tyujxq3othekhjew8wpmkasvl1rn6', '.eJxVjEEOwiAQRe_C2pABKlCX7j0DGQZGqgaS0q6Md7dNutDte-__twi4LiWsPc9hSuIilDj9soj0zHUX6YH13iS1usxTlHsiD9vlraX8uh7t30HBXra1YSajMTryo2fNiljhMKJmYsMKMgKcibxzfiCMlgHsRoC9TT5qFp8vCSU4hw:1sKxlt:gsov8JMhB3TVCJs9L8lJMpsiGy0oiLg7788JWXxtsWg', '2024-07-06 10:15:01.196638');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna_biodata`
--

CREATE TABLE `pengguna_biodata` (
  `id` bigint(20) NOT NULL,
  `alamat` longtext DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `berita_artikel`
--
ALTER TABLE `berita_artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `berita_artikel_author_id_3519cf92_fk_auth_user_id` (`author_id`),
  ADD KEY `berita_artikel_kategori_id_d39da5d8_fk_berita_kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `berita_kategori`
--
ALTER TABLE `berita_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `berita_artikel`
--
ALTER TABLE `berita_artikel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `berita_kategori`
--
ALTER TABLE `berita_kategori`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `berita_artikel`
--
ALTER TABLE `berita_artikel`
  ADD CONSTRAINT `berita_artikel_author_id_3519cf92_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `berita_artikel_kategori_id_d39da5d8_fk_berita_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `berita_kategori` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  ADD CONSTRAINT `pengguna_biodata_user_id_e6b22e27_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
