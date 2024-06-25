-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 06:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
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
(1, 'Operator');

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
(25, 'Can add kategori', 7, 'add_kategori'),
(26, 'Can change kategori', 7, 'change_kategori'),
(27, 'Can delete kategori', 7, 'delete_kategori'),
(28, 'Can view kategori', 7, 'view_kategori'),
(29, 'Can add artikel', 8, 'add_artikel'),
(30, 'Can change artikel', 8, 'change_artikel'),
(31, 'Can delete artikel', 8, 'delete_artikel'),
(32, 'Can view artikel', 8, 'view_artikel'),
(33, 'Can add biodata', 9, 'add_biodata'),
(34, 'Can change biodata', 9, 'change_biodata'),
(35, 'Can delete biodata', 9, 'delete_biodata'),
(36, 'Can view biodata', 9, 'view_biodata');

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
(1, 'pbkdf2_sha256$720000$6F24kw8997KgtgzF5z3CjT$NoUQiLFUWuLlSQX4VHJBBfEEKr6Zwm5L7x5+YzQY48c=', '2024-06-20 12:14:16.792135', 1, 'rifky', '', '', 'prifky80@gmail.com', 1, 1, '2024-03-24 20:24:54.000000'),
(2, 'pbkdf2_sha256$720000$yDK3m7fBn4hfh44JN47xLk$wRq/3VLfB0xxOTgHEw0vxn0B88H8WJcXXi+ivGIHveE=', '2024-06-17 15:19:06.616194', 0, 'audy', 'audy', 'afsari', 'audy@gmail.com', 0, 1, '2024-06-12 15:13:43.926282');

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
(1, 1, 1);

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
(1, 'sepak bola', '<p>Sepak bola atau bola kaki[5] (bahasa Inggris: football/soccer; bentuk tidak baku: sepakbola),[6][a] adalah cabang olahraga yang dimainkan antara dua tim yang terdiri dari 11 pemain. Permainan ini menggunakan bola sepak berukuran 68&ndash;70 cm (27&ndash;28 in) dan dimainkan di lapangan berbentuk persegi panjang. Tujuan dari permainan ini adalah untuk mencetak lebih banyak gol daripada tim lawan dengan menggerakkan bola melewati garis gawang ke dalam gawang yang dijaga oleh tim lawan.</p>', 'bolaaa.webp', 1, 2, '2024-06-02 10:14:51.688244', '2024-6-11-sepak-bola'),
(2, 'iPhone termurah', '<p>iPhone adalah merek ponsel cerdas yang dirancang dan dipasarkan oleh Apple Inc. dan menggunakan sistem operasi telepon genggam iOS. iPhone generasi pertama diumumkan oleh CEO Apple Steve Jobs pada tanggal 9 Januari 2007. Sejak saat itu, Apple merilis model iPhone baru dan pembaruan iOS setiap tahun. Pada 1 November 2018, lebih dari 2,2 miliar iPhone telah terjual di seluruh dunia.</p>', 'artikel/iphone_13_pink_1.jpg', 1, 1, '2024-06-02 10:14:51.688244', '2024-6-17-iphone-termurah'),
(4, 'tes 1', '<h1>selamat datang</h1>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2024/06/15/kyy.webp\" style=\"height:200px; width:200px\" /></p>\r\n\r\n<p>&nbsp;</p>', 'artikel/Bromo_lXf1aR7.jpg', 1, 2, '2024-06-15 09:17:51.933763', '2024-6-15-tes-1');

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
(1, 'gadgets'),
(2, 'sport');

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
(1, '2024-05-16 15:11:33.915393', '1', 'gadget', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-05-20 08:17:27.341251', '1', 'lorem ipsum', 1, '[{\"added\": {}}]', 8, 1),
(3, '2024-05-23 10:09:34.657292', '1', 'lorem ipsum', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(4, '2024-05-23 10:16:28.492720', '2', 'iPhone', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(5, '2024-05-23 10:21:08.238813', '2', 'iPhone', 2, '[]', 8, 1),
(6, '2024-05-23 10:22:50.265625', '1', 'sepak bola', 2, '[{\"changed\": {\"fields\": [\"Judul\", \"Isi\", \"Kategori\", \"Thumbnail\"]}}]', 8, 1),
(7, '2024-05-23 10:22:58.973221', '1', 'sepak bola', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(8, '2024-05-23 11:19:25.529060', '1', 'sepak bola', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(9, '2024-05-23 11:19:32.191489', '1', 'sepak bola', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(10, '2024-05-23 11:19:35.458318', '1', 'sepak bola', 2, '[]', 8, 1),
(11, '2024-06-11 08:42:22.653687', '2', 'iPhone', 2, '[]', 8, 1),
(12, '2024-06-11 08:43:04.468410', '2', 'iPhone termurah', 2, '[{\"changed\": {\"fields\": [\"Judul\"]}}]', 8, 1),
(13, '2024-06-11 08:43:26.192317', '2', 'iPhone termurah', 2, '[]', 8, 1),
(14, '2024-06-11 08:43:42.884002', '2', 'iPhone', 2, '[{\"changed\": {\"fields\": [\"Judul\"]}}]', 8, 1),
(15, '2024-06-11 08:51:01.836142', '2', 'iPhone termurah', 2, '[{\"changed\": {\"fields\": [\"Judul\", \"Slug\"]}}]', 8, 1),
(16, '2024-06-11 08:51:09.563278', '2', 'iPhone termurah', 2, '[]', 8, 1),
(17, '2024-06-11 08:52:00.139364', '2', 'iPhone termurah', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 8, 1),
(18, '2024-06-11 08:54:06.186847', '2', 'iPhone termurah', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 8, 1),
(19, '2024-06-11 08:54:51.520200', '2', 'iPhone termurah', 2, '[]', 8, 1),
(20, '2024-06-11 08:54:54.418061', '1', 'sepak bola', 2, '[]', 8, 1),
(21, '2024-06-11 08:54:58.092498', '1', 'sepak bola', 2, '[]', 8, 1),
(22, '2024-06-11 09:02:04.640756', '2', 'iPhone termurah', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 8, 1),
(23, '2024-06-13 07:20:43.135797', '1', 'rifky', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(24, '2024-06-13 14:39:51.302303', '1', 'Biodata object (1)', 1, '[{\"added\": {}}]', 9, 1),
(25, '2024-06-15 09:17:51.936761', '4', 'tes 1', 1, '[{\"added\": {}}]', 8, 1),
(26, '2024-06-17 13:56:46.878625', '2', 'iPhone termurah', 2, '[]', 8, 1),
(27, '2024-06-17 14:06:48.856230', '2', 'iPhone termurah', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 8, 1),
(28, '2024-06-17 14:06:53.561415', '2', 'iPhone termurah', 2, '[]', 8, 1),
(29, '2024-06-18 10:47:00.870072', '4', 'tes 1', 2, '[{\"changed\": {\"fields\": [\"Author\"]}}]', 8, 1),
(30, '2024-06-18 11:41:19.174825', '4', 'tes 1', 2, '[{\"changed\": {\"fields\": [\"Author\"]}}]', 8, 1),
(31, '2024-06-18 12:42:02.092548', '2', 'iPhone termurah', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(32, '2024-06-18 12:43:21.281509', '2', 'iPhone termurah', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 8, 1),
(33, '2024-06-18 12:55:32.289686', '1', 'sepak bola', 2, '[{\"changed\": {\"fields\": [\"Isi\"]}}]', 8, 1),
(34, '2024-06-18 12:56:32.448873', '1', 'sepak bola', 2, '[]', 8, 1);

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
(8, 'berita', 'artikel'),
(7, 'berita', 'kategori'),
(5, 'contenttypes', 'contenttype'),
(9, 'pengguna', 'biodata'),
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
(1, 'contenttypes', '0001_initial', '2024-03-24 18:49:43.409704'),
(2, 'auth', '0001_initial', '2024-03-24 18:49:43.753741'),
(3, 'admin', '0001_initial', '2024-03-24 18:49:43.822198'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-03-24 18:49:43.829729'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-24 18:49:43.835549'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-03-24 18:49:43.879621'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-03-24 18:49:43.913807'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-03-24 18:49:43.924339'),
(9, 'auth', '0004_alter_user_username_opts', '2024-03-24 18:49:43.930016'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-03-24 18:49:43.959842'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-03-24 18:49:43.962848'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-03-24 18:49:43.967860'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-03-24 18:49:43.978843'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-03-24 18:49:43.988038'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-03-24 18:49:43.998041'),
(16, 'auth', '0011_update_proxy_permissions', '2024-03-24 18:49:44.004038'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-03-24 18:49:44.014049'),
(18, 'sessions', '0001_initial', '2024-03-24 18:49:44.034071'),
(19, 'berita', '0001_initial', '2024-03-24 21:53:18.038315'),
(20, 'pengguna', '0001_initial', '2024-03-24 21:53:18.112721'),
(21, 'berita', '0002_artikel_created_at_alter_artikel_thumbnail', '2024-06-02 10:14:51.711905'),
(22, 'berita', '0003_artikel_slug', '2024-06-11 08:41:16.417522'),
(23, 'pengguna', '0002_biodata_foto', '2024-06-13 14:38:20.534502');

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
('19oa6vkx78vyv54vzpec6tvpi23oychw', '.eJxVjMsOwiAUBf-FtSEQzAVcuvcbCPeBVA0kpV01_rs26UK3Z2bOplJel5rWIXOaWF2UVaffDTM9pe2AH7ndu6belnlCvSv6oEPfOsvrerh_BzWP-q0hAJgQgwfAIlHYxuiYSJgQnWOfrSAU4y0huQDRcA7FWs8Fz8BGvT_0BDio:1sKGgC:USMzepQRqNPjMSOmcmwaBPoXkhAQAknzjvA0Lw9Bro0', '2024-07-04 12:14:16.814870'),
('3gmtq732cipjlivs0qgn0vsfhrg1oaz1', '.eJxVjMsOwiAUBf-FtSEQzAVcuvcbCPeBVA0kpV01_rs26UK3Z2bOplJel5rWIXOaWF2UVaffDTM9pe2AH7ndu6belnlCvSv6oEPfOsvrerh_BzWP-q0hAJgQgwfAIlHYxuiYSJgQnWOfrSAU4y0huQDRcA7FWs8Fz8BGvT_0BDio:1s5N39:HElZQjqD3l6hbyJEpug6E--px1nAl-AO00GZrgFdwkk', '2024-05-24 10:00:23.777919'),
('4xiysdgvenusscvzkjem3tzdxcanu67g', '.eJxVjMsOwiAUBf-FtSEQzAVcuvcbCPeBVA0kpV01_rs26UK3Z2bOplJel5rWIXOaWF2UVaffDTM9pe2AH7ndu6belnlCvSv6oEPfOsvrerh_BzWP-q0hAJgQgwfAIlHYxuiYSJgQnWOfrSAU4y0huQDRcA7FWs8Fz8BGvT_0BDio:1sBQ8h:EZV27Jvb6e6K4kP8bmYHtkoYAN1edF0QolJFMMOMKYA', '2024-06-10 02:31:07.374632'),
('l2gce89n001k86yin69ydcx9m79ilrqx', '.eJxVjMsOwiAUBf-FtSEQzAVcuvcbCPeBVA0kpV01_rs26UK3Z2bOplJel5rWIXOaWF2UVaffDTM9pe2AH7ndu6belnlCvSv6oEPfOsvrerh_BzWP-q0hAJgQgwfAIlHYxuiYSJgQnWOfrSAU4y0huQDRcA7FWs8Fz8BGvT_0BDio:1sJZOb:7dWWhFEPwpvwDCvJIU2MR2o8IbarrXyrCSAdwcmX0-4', '2024-07-02 14:01:13.371277'),
('powo13d0woel5f28w47gta8x4cn0k6fk', '.eJxVjMsOwiAUBf-FtSEQzAVcuvcbCPeBVA0kpV01_rs26UK3Z2bOplJel5rWIXOaWF2UVaffDTM9pe2AH7ndu6belnlCvSv6oEPfOsvrerh_BzWP-q0hAJgQgwfAIlHYxuiYSJgQnWOfrSAU4y0huQDRcA7FWs8Fz8BGvT_0BDio:1roURB:GevRSRFGBYeBrHNlIziaT8NPhXa7QFb_M7QiRGNOdEQ', '2024-04-07 20:27:25.608656');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_biodata`
--

CREATE TABLE `pengguna_biodata` (
  `id` bigint(20) NOT NULL,
  `alamat` longtext DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna_biodata`
--

INSERT INTO `pengguna_biodata` (`id`, `alamat`, `telpon`, `user_id`, `foto`) VALUES
(1, 'sempaja bengkuring', '083159274236', 1, 'pengguna/alun.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
