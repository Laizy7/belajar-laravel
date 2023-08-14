-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Agu 2023 pada 16.34
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `class`
--

CREATE TABLE `class` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `class`
--

INSERT INTO `class` (`id`, `name`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, '1A', 4, '2023-07-23 08:01:24', '2023-07-23 08:01:24'),
(2, '1B', 1, '2023-07-23 08:01:24', '2023-07-23 08:01:24'),
(3, '1C', 6, '2023-07-23 08:01:24', '2023-07-23 08:01:24'),
(4, '1D', 7, '2023-07-23 08:01:24', '2023-07-23 08:01:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `extracurriculars`
--

CREATE TABLE `extracurriculars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `extracurriculars`
--

INSERT INTO `extracurriculars` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Basket', NULL, NULL),
(2, 'Futsal', NULL, NULL),
(3, 'Voli', NULL, NULL),
(4, 'Gaming', NULL, NULL),
(5, 'Idol', NULL, NULL),
(6, 'Manah', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_20_070631_create_students_table', 2),
(6, '2023_07_20_071331_add_gender_column_to_students_table', 3),
(9, '2023_07_20_072250_change_gender_attributes_in_students_table', 4),
(10, '2023_07_20_073423_create_class_table', 4),
(12, '2023_07_20_074253_add_class_id_column_to_students_table', 5),
(14, '2023_07_21_064355_add_unique_rule_in_class_table', 6),
(15, '2023_07_25_141628_create_extracurriculars_table', 7),
(16, '2023_07_25_143507_create_student_extracurricular_table', 8),
(17, '2023_07_26_143353_create_teachers_table', 9),
(18, '2023_07_26_144629_add_teacher_id_column_to_class_table', 10),
(19, '2023_07_28_114445_add_soft_delete_column_to_students_table', 11),
(20, '2023_07_30_213550_add_image_column_to_students_table', 12),
(21, '2023_08_14_102711_create_roles_table', 13),
(22, '2023_08_14_103659_add_role_id_column_to_users_table', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2023-08-14 03:35:22', '2023-08-14 03:35:22'),
(2, 'Teacher', '2023-08-14 03:35:22', '2023-08-14 03:35:22'),
(3, 'Student', '2023-08-14 03:35:22', '2023-08-14 03:35:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `nis` varchar(10) NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`, `gender`, `nis`, `class_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hayu', 'L', '001', 1, NULL, '2023-07-28 05:24:32', '2023-07-28 05:24:32', NULL),
(2, 'Haiya', 'P', '002', 2, NULL, '2023-07-28 05:24:32', '2023-07-28 05:24:32', NULL),
(3, 'Haih', 'L', '003', 2, NULL, '2023-07-28 05:24:32', '2023-07-28 05:24:32', NULL),
(4, 'Hayii', 'P', '004', 1, NULL, '2023-07-28 05:24:32', '2023-07-28 05:24:32', NULL),
(5, 'Kassandra Buckridge', 'L', '7908', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(6, 'Ms. Nellie Erdman V', 'P', '7430', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(7, 'Prof. Garett Von III', 'P', '16399', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(8, 'Domenica Gibson', 'P', '63704', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(9, 'Reta Becker', 'L', '28721', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(10, 'Tyrell Dach', 'P', '95347', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(11, 'Landen Boyer Jr.', 'P', '48868', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(12, 'Mr. Jeffry McLaughlin', 'L', '68897', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(13, 'Georgianna Bogan', 'P', '71252', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(14, 'Johnson Considine', 'P', '69455', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(15, 'Mandy Lubowitz', 'L', '53434', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(16, 'Jacinthe Lynch', 'L', '86455', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(17, 'Dewitt Considine', 'L', '43434', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(18, 'Zander Sporer', 'P', '19606', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(19, 'Alford Hagenes', 'P', '8474', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(20, 'Dina Bergstrom', 'P', '33950', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(21, 'Chauncey Dickinson', 'L', '87794', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(22, 'Russel Watsica I', 'P', '91405', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(23, 'Sabryna Medhurst', 'P', '3408', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(24, 'Katelynn Morissette', 'L', '84150', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(25, 'Jadyn Blanda', 'L', '60203', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(26, 'Dr. Geovanny Kertzmann', 'P', '38881', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(27, 'Ron Conroy', 'L', '31355', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(28, 'Miss Madaline Hodkiewicz', 'L', '11482', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(29, 'Leann Langosh', 'L', '66603', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(30, 'Scottie Kutch', 'P', '11224', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(31, 'Nicolette Zieme', 'L', '72987', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(32, 'Isaiah Kub', 'P', '38975', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(33, 'Wilfrid Flatley III', 'P', '97524', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(34, 'Mrs. Michelle Wintheiser DDS', 'L', '89960', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(35, 'Jasper Kunze', 'P', '52297', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(36, 'Lisette Jast I', 'P', '92328', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(37, 'Estel Shanahan', 'L', '21454', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(38, 'Rowland Weimann Jr.', 'P', '93786', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(39, 'Dr. Reynold Schultz', 'P', '52827', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(40, 'Annabel Lakin', 'P', '27915', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(41, 'Carlie Collins', 'P', '7859', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(42, 'Alicia Waters', 'L', '32889', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(43, 'Kenyatta Conn', 'P', '42485', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(44, 'Isai Casper I', 'L', '3347', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(45, 'Forest Dickens', 'P', '21009', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(46, 'Arno Jacobson', 'P', '18025', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(47, 'Prof. Dalton Schuster Sr.', 'P', '41334', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(48, 'Maxine Buckridge', 'L', '22102', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(49, 'Rosario McLaughlin Sr.', 'P', '59130', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(50, 'Liana Sipes V', 'L', '3554', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(51, 'Tristian Harvey III', 'P', '13369', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(52, 'Roselyn Zulauf', 'L', '4590', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(53, 'Mr. Devin Romaguera I', 'P', '21722', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(54, 'Casandra Conn', 'P', '7810', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(55, 'Daphney Beatty V', 'L', '29026', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(56, 'Dr. Alverta Wuckert DVM', 'P', '24312', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(57, 'Mr. Tad Stokes IV', 'P', '42378', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(58, 'Bert Weber I', 'P', '25312', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(59, 'Sven Leuschke', 'P', '29139', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(60, 'Douglas Kutch', 'P', '82865', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(61, 'Felix Jacobson', 'P', '32349', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(62, 'Damien Pfeffer', 'P', '17046', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(63, 'Dr. Natalia Kovacek', 'P', '57902', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(64, 'Xzavier Braun', 'P', '5652', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(65, 'Prof. Brady Schneider II', 'P', '77544', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(66, 'Jessika Hill', 'P', '42117', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(67, 'Prof. Karson Rosenbaum I', 'P', '22476', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(68, 'Niko Volkman', 'L', '58463', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(69, 'Mr. Vern Lynch I', 'L', '99594', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(70, 'Gregg Cormier', 'P', '49108', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(71, 'Jerry Bergstrom', 'P', '77685', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(72, 'Prof. Vesta Bailey', 'L', '8760', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(73, 'Ms. Laurie Hartmann', 'L', '92289', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(74, 'Lexi Morar', 'P', '60212', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(75, 'Miss Daphne Dietrich DDS', 'L', '30401', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(76, 'Myles Upton', 'P', '19730', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(77, 'Destin Bins DDS', 'L', '77330', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(78, 'Estefania Donnelly', 'L', '8073', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(79, 'Molly Johns Jr.', 'P', '23358', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(80, 'Javier Borer', 'L', '11664', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(81, 'Dayton Murray MD', 'P', '16484', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(82, 'Cleora O\'Hara', 'P', '59551', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(83, 'Norval Kilback', 'P', '38197', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(84, 'Dr. Chandler Barrows', 'L', '84817', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(85, 'Dr. Kiara Klocko Jr.', 'P', '41733', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(86, 'Dr. Charity Durgan', 'P', '94021', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(87, 'Miss Kaylin Schneider III', 'L', '47376', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(88, 'Annabelle Wunsch', 'L', '98392', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(89, 'Eduardo Quigley', 'P', '84836', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(90, 'Russel O\'Connell', 'P', '82092', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(91, 'Catherine Cronin', 'L', '95877', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(92, 'Mac Paucek', 'L', '88019', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(93, 'Miss Leanna Lowe', 'L', '74333', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(94, 'Emmet Terry', 'L', '89505', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(95, 'Krystina Stark', 'L', '73119', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(96, 'Tristian Crona', 'L', '10736', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(97, 'Vince Bergnaum Jr.', 'P', '68355', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(98, 'Liza Hills', 'P', '16056', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(99, 'Jude Balistreri', 'L', '22199', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(100, 'Amy Hills', 'L', '78559', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(101, 'Prof. Arvel Swift Jr.', 'P', '65293', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(102, 'Sienna O\'Reilly', 'L', '44990', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(103, 'Miss Madalyn Langosh I', 'L', '76630', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(104, 'Alaina Connelly', 'L', '16027', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(105, 'Kristoffer Ortiz', 'P', '87587', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(106, 'Fredy Goyette', 'P', '8110', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(107, 'Mrs. Vernice Treutel', 'P', '34214', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(108, 'Kevin Sauer', 'P', '17985', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(109, 'Ashleigh O\'Kon', 'P', '18225', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(110, 'Jonathan Feest IV', 'L', '28373', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(111, 'Mr. Joe Wyman DVM', 'P', '68099', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(112, 'Joannie Blick', 'P', '75522', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(113, 'Mrs. Fatima Hoppe', 'L', '37034', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(114, 'Prof. Aiden Cormier', 'L', '48087', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(115, 'Miss Marielle Padberg', 'P', '18352', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(116, 'Dr. Sigmund Moore PhD', 'P', '42990', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(117, 'Jalyn Heidenreich', 'P', '84042', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(118, 'Mr. Nicholas Lueilwitz Jr.', 'L', '40061', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(119, 'Victor Bahringer', 'L', '54317', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(120, 'Hillary Hegmann', 'L', '98078', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(121, 'Dr. Dusty Vandervort', 'L', '41842', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(122, 'Urban Bode', 'P', '58231', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(123, 'Mr. Jamarcus Auer', 'P', '32647', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(124, 'Dr. Carley Rodriguez IV', 'L', '18226', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(125, 'Derrick Waters', 'P', '52663', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(126, 'Dr. Everardo Kessler', 'P', '6080', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(127, 'Alexandrine Rodriguez', 'P', '39527', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(128, 'Russel Waelchi PhD', 'P', '97875', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(129, 'Mr. Reginald Harber', 'P', '2488', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(130, 'Nelle Kiehn', 'L', '6193', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(131, 'Miss Vada Bogan V', 'L', '62677', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(132, 'Jefferey Hagenes I', 'L', '16460', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(133, 'Parker Langworth', 'L', '6549', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(134, 'Bradly Cassin', 'P', '6926', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(135, 'Dr. Luz Keebler Jr.', 'P', '3807', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(136, 'Jackeline Osinski DDS', 'P', '69223', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(137, 'Craig Crooks Sr.', 'P', '77911', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(138, 'Ms. Amelie Walter PhD', 'P', '7977', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(139, 'Raegan Franecki', 'P', '89935', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(140, 'Dr. Javon Berge', 'L', '55622', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(141, 'Braxton Eichmann', 'P', '49738', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(142, 'Marlon Ryan', 'L', '11267', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(143, 'Dr. Alphonso Cassin', 'L', '14447', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(144, 'Don Stokes Jr.', 'P', '83515', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(145, 'Corene Dooley', 'P', '65871', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(146, 'Elton Howell', 'P', '79885', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(147, 'Golda Casper', 'P', '52117', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(148, 'Mr. Eino Pacocha IV', 'P', '12298', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(149, 'Marjorie Kihn', 'L', '90008', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(150, 'Colby Friesen DDS', 'L', '97702', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(151, 'Merl Bednar', 'L', '44989', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(152, 'Ezekiel Zulauf', 'L', '58045', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(153, 'Raymundo Heller', 'P', '96453', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(154, 'Madaline Lebsack', 'L', '91154', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(155, 'Margaretta Gulgowski', 'L', '78877', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(156, 'Anais Schmitt', 'P', '57476', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(157, 'Dangelo Kovacek V', 'L', '29807', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(158, 'Tyson Swaniawski', 'P', '30496', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(159, 'Melissa Becker', 'L', '71229', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(160, 'Hobart Feil', 'L', '84827', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(161, 'Douglas Okuneva', 'P', '19640', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(162, 'Jordan Kirlin', 'P', '50037', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(163, 'Ike Ratke', 'P', '33004', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(164, 'Mrs. Rosalee Daniel', 'L', '57398', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(165, 'Syble Weimann', 'P', '6178', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(166, 'Delfina Marquardt', 'L', '41901', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(167, 'Morton Reichert', 'P', '9765', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(168, 'Sylvester Johns', 'L', '95939', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(169, 'Kiarra Lubowitz', 'P', '7201', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(170, 'Prof. Derick Herzog PhD', 'P', '80107', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(171, 'Antoinette Fritsch', 'L', '27255', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(172, 'Myrtice Legros', 'P', '38660', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(173, 'Aisha Kutch', 'L', '93490', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(174, 'Cali McLaughlin IV', 'P', '8083', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(175, 'Reyes Stamm', 'L', '50692', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(176, 'Eliane Breitenberg', 'L', '32206', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(177, 'Dr. Cyrus Stamm PhD', 'P', '16025', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(178, 'Lincoln Lebsack', 'P', '30749', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(179, 'Declan Dare', 'P', '75196', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(180, 'Kamryn Pfannerstill', 'L', '59972', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(181, 'Milo Deckow', 'P', '70897', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(182, 'Audrey Kuvalis', 'P', '94869', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(183, 'Hilbert Bergstrom', 'P', '72047', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(184, 'Rossie Kutch', 'L', '10710', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(185, 'Nova Haag', 'P', '66661', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(186, 'Shaylee Welch', 'L', '12572', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(187, 'Emma Kuhlman', 'P', '95105', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(188, 'Mrs. Jakayla Dach', 'P', '98384', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(189, 'Ray Dach DVM', 'P', '32580', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(190, 'Jed Watsica', 'P', '45985', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(191, 'Mr. Braden Kiehn DVM', 'P', '80532', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(192, 'Tyshawn Shanahan', 'L', '29195', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(193, 'Prof. Dominic Gleichner', 'P', '305', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(194, 'Vincent Price', 'L', '40783', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(195, 'Trevor Dach', 'L', '38123', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(196, 'Arianna Becker', 'L', '69738', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(197, 'Cullen Schulist', 'P', '19660', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(198, 'Mrs. Magdalena Bosco', 'P', '21020', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(199, 'Chanel Kling', 'L', '81115', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(200, 'Mrs. Raina Stehr V', 'P', '40445', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(201, 'Valentina Homenick IV', 'P', '11351', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(202, 'Arnaldo Simonis', 'P', '85989', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(203, 'Albert Lebsack', 'P', '89305', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(204, 'Colten Macejkovic', 'L', '1782', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(205, 'Myriam Gottlieb', 'L', '22576', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(206, 'Prof. Daphnee Bahringer PhD', 'L', '26632', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(207, 'Dameon Gibson', 'L', '18204', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(208, 'Rita Kessler', 'P', '87344', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(209, 'Dr. Marilou Kerluke Jr.', 'L', '87183', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(210, 'Mr. Nelson Maggio', 'L', '64274', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(211, 'Prof. Pamela Thiel', 'P', '29318', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(212, 'Lempi Balistreri', 'L', '57026', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(213, 'Mr. Tony Daniel II', 'L', '45231', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(214, 'Lysanne Kozey', 'P', '54913', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(215, 'Dr. Bridget Halvorson', 'L', '41404', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(216, 'Mr. Enoch Strosin Sr.', 'P', '5616', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(217, 'Mrs. Dina Will', 'L', '99906', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(218, 'Mr. Isaias Sawayn', 'L', '55774', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(219, 'Noble Cole', 'P', '96792', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(220, 'Gus Hodkiewicz', 'P', '76213', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(221, 'Ms. Idell Bahringer', 'L', '50870', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(222, 'Mohamed Mraz', 'P', '20283', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(223, 'Domenic Herzog', 'L', '49927', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(224, 'Foster Kohler', 'P', '30036', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(225, 'Luigi Block', 'P', '83662', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(226, 'Mr. Enrico Hayes II', 'P', '35319', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(227, 'Miss Noemie Bode', 'P', '47206', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(228, 'Samantha Hauck Jr.', 'L', '80614', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(229, 'Mrs. Maci Lubowitz MD', 'P', '98737', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(230, 'Joelle Schowalter', 'L', '41327', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(231, 'Dr. Merle Dickens MD', 'P', '95030', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(232, 'Dovie Barton PhD', 'L', '82959', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(233, 'Taya Stiedemann', 'P', '65222', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(234, 'Dr. Mark Price V', 'P', '94611', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(235, 'Maggie Pagac', 'L', '50993', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(236, 'Prof. Boyd Conn', 'L', '9106', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(237, 'Alexis Gaylord', 'L', '12954', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(238, 'Mrs. Adrianna Hills IV', 'L', '11713', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(239, 'Reuben Considine', 'P', '98080', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(240, 'Rubie Gusikowski', 'L', '40245', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(241, 'Dr. Abby Breitenberg', 'P', '77719', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(242, 'Mrs. Irma Zieme MD', 'L', '5187', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(243, 'Marianna Hilpert I', 'P', '6974', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(244, 'Edmond Vandervort', 'P', '12984', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(245, 'Barbara Stehr', 'L', '82874', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(246, 'Mr. Kellen Fritsch MD', 'L', '2911', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(247, 'Miss Neha Goldner', 'P', '56924', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(248, 'Dr. Krystina Hettinger Sr.', 'L', '6516', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(249, 'Zetta Predovic', 'P', '22407', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(250, 'Ms. Helen Rau DDS', 'P', '21516', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(251, 'Cassie Feil DDS', 'P', '52896', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(252, 'Dr. Layne Kessler IV', 'P', '18642', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(253, 'Nelle King DVM', 'P', '2879', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(254, 'Bulah Beatty', 'L', '36464', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(255, 'Shanna McClure', 'P', '1408', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(256, 'Marlen Smith IV', 'L', '64825', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(257, 'Alexandra Mitchell', 'P', '79442', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(258, 'Dr. Rodrigo Grady', 'P', '71188', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(259, 'Dr. Brook Thiel', 'L', '17092', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(260, 'Colton Zieme', 'P', '9669', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(261, 'Amir Baumbach', 'P', '78580', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(262, 'Elroy Collier', 'L', '96587', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(263, 'Marjorie Ziemann', 'L', '34417', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(264, 'Lupe Rempel', 'L', '90863', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(265, 'Dr. Darren Wisozk MD', 'P', '27705', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(266, 'Cassandra Fisher', 'L', '65460', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(267, 'Evelyn Volkman', 'L', '59878', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(268, 'Isidro Hagenes', 'P', '51867', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(269, 'Cortez Breitenberg', 'P', '88409', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(270, 'Mrs. Camylle Schowalter', 'P', '31658', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(271, 'Mrs. Gladys Pfeffer II', 'L', '49954', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(272, 'Carley Dickens Jr.', 'L', '59147', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(273, 'Georgianna Little', 'P', '5498', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(274, 'Kelly Keeling', 'P', '2770', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(275, 'Libbie Emard III', 'P', '75257', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(276, 'Prof. Elmore Huels', 'L', '22773', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(277, 'Marianna Purdy Sr.', 'L', '75635', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(278, 'Jason Fisher', 'L', '26204', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(279, 'Florida Berge', 'P', '70652', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(280, 'Mandy Dooley', 'L', '88253', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(281, 'Faye Littel', 'P', '7850', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(282, 'Mr. Amari Lehner I', 'P', '31008', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(283, 'Mariela Schaden PhD', 'L', '32369', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(284, 'Cicero Botsford', 'P', '47070', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(285, 'Leone Howell', 'P', '86882', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(286, 'Jarrell Littel', 'L', '9921', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(287, 'Mr. Jess White', 'P', '82104', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(288, 'Unique Rosenbaum Jr.', 'L', '9176', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(289, 'Maxine Miller Jr.', 'L', '41919', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(290, 'Veda Ebert', 'L', '50139', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(291, 'Hershel Kerluke', 'L', '28007', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(292, 'Angel Jakubowski', 'P', '14152', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(293, 'Prof. Everardo Skiles', 'P', '83190', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(294, 'Christ Tremblay DVM', 'P', '60667', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(295, 'Mr. Leopoldo Effertz', 'L', '69208', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(296, 'Ms. Orpha Bode', 'P', '76879', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(297, 'Kayli Lang', 'L', '73155', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(298, 'Prof. Jan Wiza', 'P', '63664', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(299, 'Holly Hahn', 'L', '42168', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(300, 'Dr. Sandrine Gleichner V', 'L', '93577', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(301, 'Lilian D\'Amore', 'L', '15016', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(302, 'Stefanie Beahan', 'L', '27524', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(303, 'Keenan Cruickshank', 'L', '58346', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(304, 'Colten Ledner', 'L', '58028', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(305, 'Oral Dicki', 'L', '75461', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(306, 'Dr. Emily Bins Jr.', 'P', '8849', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(307, 'Marcelino Casper', 'L', '56844', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(308, 'Mr. Carter Hansen V', 'P', '23246', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(309, 'Prof. Amelia Breitenberg', 'P', '43987', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(310, 'Ada Considine', 'L', '83325', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(311, 'Deondre Hauck', 'P', '56709', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(312, 'Makenna Nienow', 'L', '52789', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(313, 'Trent Rodriguez', 'L', '48450', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(314, 'Dr. Ahmed Jones', 'L', '92354', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(315, 'Pattie Hoppe', 'P', '99662', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(316, 'Prof. Erich Hand', 'P', '29518', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(317, 'Scot Swift', 'L', '39971', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(318, 'Verona Bogan', 'L', '36779', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(319, 'Adaline Kovacek', 'L', '98049', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(320, 'Prof. Willa Bogisich', 'P', '86796', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(321, 'Kaitlyn Stanton PhD', 'L', '74129', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(322, 'Brycen Reynolds', 'P', '93699', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(323, 'Tressa Wilkinson', 'P', '40912', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(324, 'Norberto Kling', 'L', '23253', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(325, 'Bessie Yundt', 'L', '57828', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(326, 'Prof. Santiago Bernier III', 'P', '20048', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(327, 'Jocelyn Feeney', 'P', '93088', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(328, 'Kiarra Mann', 'L', '41539', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(329, 'Miss Enola Jones II', 'P', '72452', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(330, 'Mollie Johnston Sr.', 'P', '64958', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(331, 'Wallace Kunze', 'L', '47884', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(332, 'Christa Lebsack', 'L', '10007', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(333, 'Rowan Kuhlman', 'P', '91603', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(334, 'Wilson Rice III', 'L', '29390', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(335, 'Lorena Runolfsdottir I', 'L', '80219', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(336, 'Josiane Williamson IV', 'P', '13117', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(337, 'Hanna Goodwin', 'P', '19482', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(338, 'Harmony Williamson', 'L', '50895', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(339, 'Brody Flatley', 'L', '61405', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(340, 'Lera Sauer DDS', 'L', '37044', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(341, 'Toby Hills', 'L', '35240', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(342, 'Giovanny Little', 'L', '52423', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(343, 'Jaiden Powlowski', 'P', '61377', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(344, 'Ms. Kaitlin Langworth DDS', 'L', '40737', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(345, 'Karolann Walter MD', 'P', '29695', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(346, 'Philip Jaskolski DVM', 'P', '4177', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(347, 'Tamara Bergnaum', 'L', '28579', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(348, 'Dr. Beryl Sawayn', 'L', '28162', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(349, 'Kyleigh Wehner', 'P', '64047', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(350, 'Vicky Tremblay', 'P', '25068', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(351, 'Janet Koss PhD', 'P', '33742', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(352, 'Joaquin Kemmer', 'L', '74292', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(353, 'Miss Helene Yundt V', 'L', '26925', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(354, 'Dr. Jammie Aufderhar', 'P', '60646', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(355, 'Cecile Hayes', 'L', '74638', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(356, 'Amparo Hettinger', 'L', '65738', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(357, 'Troy Walsh', 'L', '44018', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(358, 'Prof. Natalia Hand MD', 'P', '3852', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(359, 'Kieran Quigley', 'L', '99697', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(360, 'Leonardo Anderson', 'P', '93793', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(361, 'Dr. Alize Abernathy', 'L', '62613', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(362, 'Jarred Krajcik PhD', 'L', '78815', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(363, 'Junius Batz', 'P', '46119', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(364, 'Marley Gutkowski', 'P', '47328', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(365, 'Suzanne Okuneva', 'L', '14382', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(366, 'Larue Ledner', 'P', '54403', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(367, 'Alia McGlynn', 'P', '17610', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(368, 'Joana Cruickshank', 'L', '51553', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(369, 'Maya Douglas Jr.', 'L', '2046', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(370, 'Chaya Koepp', 'L', '1020', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(371, 'Susan Prohaska IV', 'L', '99923', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(372, 'Demond Mayert III', 'P', '55688', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(373, 'Dr. Herbert Auer', 'P', '78194', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(374, 'Dr. Andre Schroeder III', 'P', '66809', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(375, 'Pascale Kozey', 'L', '92041', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(376, 'Jovani Bednar', 'L', '37670', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(377, 'Ashlee Schumm Sr.', 'L', '94645', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(378, 'Emerald Bednar MD', 'P', '34842', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(379, 'Miss Maryse Braun', 'L', '87529', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(380, 'Mr. Archibald Larkin DVM', 'L', '95452', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(381, 'Abagail Rice', 'P', '71434', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(382, 'Efren Cormier', 'L', '1920', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(383, 'Titus Block', 'P', '13855', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(384, 'Fannie Sawayn', 'L', '52625', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(385, 'Gia Morar', 'L', '35022', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(386, 'Karina Hammes', 'L', '21604', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(387, 'Prof. Thad Olson V', 'L', '34614', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(388, 'Leanne Abernathy', 'L', '76679', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(389, 'Mr. Mario Botsford MD', 'L', '58618', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(390, 'Kristy Ledner Jr.', 'P', '29155', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(391, 'Prof. Lacy Maggio', 'P', '64573', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(392, 'Dr. Cynthia O\'Reilly DVM', 'P', '72342', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(393, 'Jordane Swift', 'L', '58754', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(394, 'Dr. Guiseppe Morissette II', 'L', '86831', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(395, 'Prof. Carleton Collier', 'P', '63619', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(396, 'Austyn Abshire', 'P', '65742', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(397, 'Abdul Ondricka', 'L', '72137', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(398, 'Meggie Becker', 'L', '24196', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(399, 'Jaeden Robel', 'P', '70502', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(400, 'Dr. Angie Hessel MD', 'P', '25207', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(401, 'Samara Emard', 'P', '25037', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(402, 'Kristofer Wiegand', 'L', '18885', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(403, 'Mr. Marquis Auer I', 'P', '52237', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(404, 'Oswald Beier', 'P', '47405', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(405, 'Trace Howe', 'L', '5731', 1, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(406, 'Mr. Kurt Hermiston II', 'P', '7808', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(407, 'Mr. Delaney Mayert III', 'L', '38639', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(408, 'Dr. Bradly Pfeffer', 'P', '81737', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(409, 'Marcel Bednar', 'P', '50751', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(410, 'Madalyn Treutel', 'L', '49680', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(411, 'Carey Kohler I', 'P', '51231', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(412, 'Pamela DuBuque MD', 'P', '20418', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(413, 'Marcelina Lynch', 'L', '30630', 4, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(414, 'Royal Robel DVM', 'P', '79410', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(415, 'Lambert Lakin', 'L', '54660', 3, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(416, 'Prof. Columbus Lemke', 'L', '61586', 2, NULL, '2023-07-28 05:24:33', '2023-07-28 05:24:33', NULL),
(417, 'Foster Dibbert', 'L', '15014', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(418, 'Angel Yost', 'L', '28539', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(419, 'Mr. Brook Moore Jr.', 'P', '25104', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(420, 'Edgardo Ziemann', 'L', '45383', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(421, 'Aron Klein', 'P', '85039', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(422, 'Jessyca Okuneva II', 'P', '53170', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(423, 'Billie Turcotte', 'P', '97867', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(424, 'Sabina Boyle III', 'L', '46901', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(425, 'Geovanni Bergnaum', 'P', '31983', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(426, 'Erich Funk IV', 'L', '52591', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(427, 'Vena Parisian', 'P', '65840', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(428, 'Andrew Trantow', 'P', '86517', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(429, 'Zoe Sanford', 'P', '32787', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(430, 'Ms. Maya Huel', 'L', '53741', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(431, 'Torrance Walsh', 'L', '55575', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(432, 'Kameron Haag DVM', 'P', '75894', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(433, 'Miss Rosalinda Grimes', 'P', '7956', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(434, 'Ms. Billie Schaden', 'P', '9592', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(435, 'Mr. Dino Okuneva PhD', 'L', '92413', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(436, 'Rhea Hirthe', 'P', '24680', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(437, 'Astrid Jaskolski V', 'L', '36048', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(438, 'Dr. Ivory Bogan DVM', 'L', '47430', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(439, 'Ramon Johnson', 'L', '20831', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(440, 'Kurtis Towne', 'P', '23750', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(441, 'Annetta Nolan', 'L', '35800', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(442, 'Miss Katheryn Dicki', 'L', '41911', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(443, 'Charity Huels', 'L', '99394', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(444, 'Rosina Cruickshank', 'L', '51149', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(445, 'Lenore Connelly V', 'P', '36180', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(446, 'Yasmine King', 'L', '76073', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(447, 'Evan Schroeder DVM', 'L', '498', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(448, 'Ms. Bette Hills', 'L', '69228', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(449, 'Mr. Roosevelt McLaughlin', 'P', '85437', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(450, 'Herminio Huels', 'L', '73806', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(451, 'Marilou Collins', 'L', '61637', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(452, 'Mrs. Florence Macejkovic PhD', 'P', '76422', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(453, 'Jo Kuhn', 'L', '23703', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(454, 'Keyon Anderson', 'P', '85044', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(455, 'Mylene Hoeger', 'P', '64282', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(456, 'Kenyon Little', 'L', '47805', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(457, 'Gilda Dibbert', 'L', '38175', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(458, 'Myles Shields', 'L', '21988', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(459, 'Monty Hayes III', 'P', '46822', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(460, 'Orval Thompson MD', 'P', '31166', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(461, 'Jennifer Kub', 'L', '5380', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(462, 'Chet Armstrong', 'L', '24358', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(463, 'Santino Klein', 'L', '78371', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(464, 'Kennedi Bogan', 'P', '39231', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(465, 'Kenton Tremblay', 'L', '22466', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(466, 'Prof. Cristopher Bailey DDS', 'L', '977', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(467, 'Louvenia Sauer', 'L', '83894', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(468, 'Dr. Prince Breitenberg', 'P', '63058', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(469, 'Christian McClure', 'P', '51535', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(470, 'Holly Tillman', 'L', '84379', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(471, 'Loyal Cormier', 'P', '24326', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(472, 'Dr. Tony Morar', 'L', '10681', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(473, 'Sonia Daugherty MD', 'L', '51750', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(474, 'Mr. Garrett Parisian', 'L', '70337', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(475, 'Foster Dooley DDS', 'L', '38629', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(476, 'Tracy Jacobi DDS', 'L', '60110', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(477, 'Samir Schamberger', 'L', '4734', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(478, 'Herminia Morar', 'L', '11347', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(479, 'Ms. Lucy Collins III', 'L', '72408', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(480, 'Ena Kilback', 'L', '35317', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(481, 'Dr. Douglas Collier DVM', 'P', '88827', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(482, 'Ms. Trisha Gutkowski IV', 'P', '4613', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(483, 'Ava Schroeder', 'L', '67362', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(484, 'Dannie Haley', 'L', '53822', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(485, 'Miss Evelyn Bechtelar', 'P', '15860', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(486, 'Narciso Hirthe', 'P', '57506', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(487, 'Mrs. Rosetta Veum MD', 'P', '46858', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(488, 'Lourdes Monahan', 'P', '9950', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(489, 'Blair Runolfsdottir', 'P', '38135', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(490, 'Berneice Kilback', 'L', '46799', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(491, 'Damion Runolfsson I', 'L', '29097', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(492, 'Wilhelmine Flatley', 'L', '86785', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(493, 'Santina Green', 'L', '71316', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(494, 'Bernice Abbott', 'P', '35161', 2, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(495, 'Benjamin Hayes', 'P', '7238', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(496, 'Edward Nikolaus', 'P', '50540', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(497, 'Clarissa Sawayn', 'P', '93500', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(498, 'Sally Hahn', 'P', '31561', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(499, 'Mathew Schinner Jr.', 'L', '93823', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(500, 'Carli Padberg', 'P', '99343', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(501, 'Daren Zieme', 'P', '53470', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL);
INSERT INTO `students` (`id`, `name`, `gender`, `nis`, `class_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(502, 'Kurt Howe', 'L', '49470', 3, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(503, 'Prof. Mohamed Hartmann', 'L', '58566', 1, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(504, 'Karolann Kreiger MD', 'P', '47520', 4, NULL, '2023-07-28 05:24:34', '2023-07-28 05:24:34', NULL),
(505, 'Lzy', 'L', '7777', 1, 'C:\\xampp\\tmp\\phpDCE2.tmp', '2023-07-30 15:28:52', '2023-07-30 15:28:52', NULL),
(506, 'Tes gambar', 'P', '4353', 3, 'C:\\xampp\\tmp\\php59B.tmp', '2023-07-30 15:57:26', '2023-07-30 15:57:26', NULL),
(507, 'Tesgambar 2', 'L', '5650', 2, 'C:\\xampp\\tmp\\php9540.tmp', '2023-07-30 16:25:21', '2023-07-30 16:25:21', NULL),
(508, 'Hade', 'L', '3389', 4, 'C:\\xampp\\tmp\\phpD053.tmp', '2023-07-30 16:44:10', '2023-07-30 16:44:10', NULL),
(509, 'Tes lagi', 'P', '4523', 2, 'C:\\xampp\\tmp\\php8BE4.tmp', '2023-07-31 14:13:52', '2023-07-31 14:13:52', NULL),
(510, 'Tesss A', 'L', '2354', 3, 'C:\\xampp\\tmp\\phpFB34.tmp', '2023-07-31 14:26:20', '2023-07-31 14:26:20', NULL),
(511, 'Tesster A', 'L', '3456', 2, 'C:\\xampp\\tmp\\php836A.tmp', '2023-07-31 14:38:56', '2023-07-31 14:38:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_extracurricular`
--

CREATE TABLE `student_extracurricular` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `extracurricular_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `student_extracurricular`
--

INSERT INTO `student_extracurricular` (`student_id`, `extracurricular_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 4),
(8, 3),
(9, 6),
(10, 2),
(11, 2),
(12, 4),
(13, 6),
(14, 6),
(15, 4),
(16, 1),
(17, 1),
(18, 5),
(19, 5),
(20, 4),
(1, 4),
(2, 4),
(5, 3),
(7, 6),
(8, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Abi', NULL, NULL),
(2, 'Baye', NULL, NULL),
(3, 'Cudy', NULL, NULL),
(4, 'Dida', NULL, NULL),
(5, 'Ebeng', NULL, NULL),
(6, 'Fani', NULL, NULL),
(7, 'Gujo', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 1, NULL, '$2y$10$KIKQMDKQTNaUUZo.7IGQXOnbU7OhWp1g9rmFW9.HVlauye6TpTj7u', NULL, NULL, NULL),
(2, 'student', 'student@gmail.com', 3, NULL, '$2y$10$drP9c6gSQ84tWBlO45GgbOf/uogMr/nKMTtG9TgqFhFeEYbRWaid6', NULL, NULL, NULL),
(3, 'Teacher', 'teacher@gmail.com', 2, NULL, '$2y$10$7PLH5RF8lN67CIexns75Geg76zNoYVdWhZsy063sewr5nrLDjisIe', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_name_unique` (`name`),
  ADD KEY `class_teacher_id_foreign` (`teacher_id`);

--
-- Indeks untuk tabel `extracurriculars`
--
ALTER TABLE `extracurriculars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_class_id_foreign` (`class_id`);

--
-- Indeks untuk tabel `student_extracurricular`
--
ALTER TABLE `student_extracurricular`
  ADD KEY `student_extracurricular_student_id_foreign` (`student_id`),
  ADD KEY `student_extracurricular_extracurricular_id_foreign` (`extracurricular_id`);

--
-- Indeks untuk tabel `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `class`
--
ALTER TABLE `class`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `extracurriculars`
--
ALTER TABLE `extracurriculars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT untuk tabel `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Ketidakleluasaan untuk tabel `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`);

--
-- Ketidakleluasaan untuk tabel `student_extracurricular`
--
ALTER TABLE `student_extracurricular`
  ADD CONSTRAINT `student_extracurricular_extracurricular_id_foreign` FOREIGN KEY (`extracurricular_id`) REFERENCES `extracurriculars` (`id`),
  ADD CONSTRAINT `student_extracurricular_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
