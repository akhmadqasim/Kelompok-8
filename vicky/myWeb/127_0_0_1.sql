-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 12:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vicky`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Operator');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
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
-- Table structure for table `auth_user`
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
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$03w5hzTb5irZNxE4B6M4ht$jcQkyWucMWHH0A2gPm5587AOI0t6OIREIDNHXrOYp4c=', '2024-06-20 12:57:48.795149', 1, 'drajat', '', '', 'vickydrajat80@gmail.com', 1, 1, '2024-03-25 01:55:56.000000'),
(2, 'pbkdf2_sha256$720000$078WglR4oO5zKGXarT3ACO$ffGhRhAf6Akju2Hmggf/UVOBDh1ngMyvXT7NYeThZDE=', NULL, 0, 'vicky', 'vicky', 'drajat', '2211102441@umkt.ac.id', 0, 1, '2024-06-17 15:19:44.485733'),
(3, 'pbkdf2_sha256$720000$0ethEeWjj9Tm44jGvoRBZg$GLucNgK/fef439rzH7TlonfM6t0ycY6/8PagElucGkg=', '2024-06-17 15:21:45.841506', 0, 'rifky', 'rifky', 'putra', 'rifky8@gmail.com', 0, 1, '2024-06-17 15:21:29.330354');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita_artikel`
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
-- Dumping data for table `berita_artikel`
--

INSERT INTO `berita_artikel` (`id`, `judul`, `isi`, `thumbnail`, `author_id`, `kategori_id`, `created_at`, `slug`) VALUES
(1, 'biliard', 'Bola sodok atau biliar adalah sebuah cabang olahraga yang masuk dalam kategori cabang olahraga konsentrasi, sehingga sangat dibutuhkan ketahanan dan pemahaman mental yang benar serta harus ditunjang oleh kemampuan fisik yang prima agar mampu berprestasi lebih tinggi dan stabil.\r\n\r\nCabang olahraga ini dimainkan di atas meja dan dengan peralatan bantu khusus serta peraturan tersendiri. Permainan ini terbagi dari beberapa Jenis, antara lain jenis Carom, English Billiard dan Pool. Dapat dimainkan secara perorangan maupun tim.\r\n\r\nSebagai contoh, jenis Carom dimainkan di meja yang tidak memiliki lubang sama sekali. Ini berbeda dengan jenis English Billiard dan Pool yang dimainkan di meja yang memiliki lubang sebanyak 6 buah. Meski sama-sama memilki 6 buah lubang, ukuran atau luas meja antara English Billiar dan Pool pun berbeda, lebih luas meja jenis English Billiard.', 'artikel/billiard.jpg', 1, 6, '2024-06-17 14:17:18.284494', '2024-6-17-biliard');

-- --------------------------------------------------------

--
-- Table structure for table `berita_kategori`
--

CREATE TABLE `berita_kategori` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita_kategori`
--

INSERT INTO `berita_kategori` (`id`, `nama`) VALUES
(6, 'olahraga');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-21 03:17:50.651198', '4', 'Kategori object (4)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2024-05-21 03:18:53.299397', '4', 'Kategori object (4)', 3, '', 8, 1),
(3, '2024-05-21 03:18:53.305793', '3', 'Kategori object (3)', 3, '', 8, 1),
(4, '2024-05-21 03:19:40.751916', '5', 'Kategori object (5)', 1, '[{\"added\": {}}]', 8, 1),
(5, '2024-06-13 14:33:26.346389', '6', 'Kategori object (6)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2024-06-17 14:17:18.285733', '1', 'Artikel object (1)', 1, '[{\"added\": {}}]', 9, 1),
(7, '2024-06-17 15:32:04.643973', '1', 'Operator', 1, '[{\"added\": {}}]', 3, 1),
(8, '2024-06-17 15:39:01.620522', '1', 'Operator', 3, '', 3, 1),
(9, '2024-06-17 16:12:53.926335', '1', 'drajat', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
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
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-25 01:44:38.117489'),
(2, 'auth', '0001_initial', '2024-03-25 01:44:38.376174'),
(3, 'admin', '0001_initial', '2024-03-25 01:44:38.438987'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-25 01:44:38.438987'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-25 01:44:38.438987'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-03-25 01:44:38.480152'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-03-25 01:44:38.504974'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-03-25 01:44:38.516184'),
(9, 'auth', '0004_alter_user_username_opts', '2024-03-25 01:44:38.519208'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-03-25 01:44:38.540233'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-03-25 01:44:38.540233'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-03-25 01:44:38.549738'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-03-25 01:44:38.559210'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-03-25 01:44:38.567793'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-03-25 01:44:38.577377'),
(16, 'auth', '0011_update_proxy_permissions', '2024-03-25 01:44:38.581689'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-03-25 01:44:38.589194'),
(18, 'sessions', '0001_initial', '2024-03-25 01:44:38.597404'),
(19, 'pengguna', '0001_initial', '2024-03-25 02:27:22.341737'),
(20, 'berita', '0001_initial', '2024-03-25 02:31:57.281520'),
(21, 'berita', '0002_artikel_created_at_artikel_slug_and_more', '2024-06-17 14:14:21.662574');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4vc4ti4lfnb15rfwqdmc59oy1qvr56j9', '.eJxVjEEOwiAQRe_C2hAGUigu3XsGMjCDVA0kpV013t026UK3_733NxFwXUpYO89hInEVIC6_W8T04noAemJ9NJlaXeYpykORJ-3y3ojft9P9OyjYy14PmpkSawU5ZYOeFVpvQLN2jiJQJAeeYtaDG7W3mQAMWtwZuzErJT5fBHo4jA:1roZbC:GadK1881l2SfHj1k_NJs8XIAP8k1PwwpmJlfbg6EFpg', '2024-04-08 01:58:06.926565'),
('7rvje8ynnp9a433ykbuqg5j0gjocwbhh', '.eJxVjEEOwiAQRe_C2hAqDHRcuvcMZGBAqoYmpV0Z725JutDtf-_9t_C0rcVvLS1-YnERgzj9boHiM9UO-EH1Pss413WZguyKPGiTt5nT63q4fweFWtlr1JxtIgQ42zFmB4HVqLVBbQ2hiah2oyMVeNCACI7BKAOGOaOz4vMFyCc23Q:1sKHMK:PdzZAKNqXSP8SWF2xxtKH0xiPiQhRFb3d1SaSqIN0mo', '2024-07-04 12:57:48.800102'),
('rvuwef2ovm3p494q1tm2mho273tfz6zr', '.eJxVjEEOwiAQRe_C2hAGUigu3XsGMjCDVA0kpV013t026UK3_733NxFwXUpYO89hInEVIC6_W8T04noAemJ9NJlaXeYpykORJ-3y3ojft9P9OyjYy14PmpkSawU5ZYOeFVpvQLN2jiJQJAeeYtaDG7W3mQAMWtwZuzErJT5fBHo4jA:1s5wtT:IqeFQMpzO8-KUaXpzerSXl0OMarsEVU4ZO60dQdmG1Y', '2024-05-26 00:16:47.108540');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_biodata`
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
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `berita_artikel`
--
ALTER TABLE `berita_artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `berita_artikel_author_id_3519cf92_fk_auth_user_id` (`author_id`),
  ADD KEY `berita_artikel_kategori_id_d39da5d8_fk_berita_kategori_id` (`kategori_id`);

--
-- Indexes for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berita_artikel`
--
ALTER TABLE `berita_artikel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `berita_artikel`
--
ALTER TABLE `berita_artikel`
  ADD CONSTRAINT `berita_artikel_author_id_3519cf92_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `berita_artikel_kategori_id_d39da5d8_fk_berita_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `berita_kategori` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  ADD CONSTRAINT `pengguna_biodata_user_id_e6b22e27_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
