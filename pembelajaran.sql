-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 12:31 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dailynews`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Ekonomi', 'ekonomi', '2022-06-22 14:12:20', '2022-06-22 14:12:20'),
(2, 'Hukum & Kriminal', 'hukumdankriminal', '2022-06-22 14:12:30', '2022-06-22 14:21:38'),
(3, 'Sepak Bola', 'sepakbola', '2022-06-22 14:20:15', '2022-06-22 14:20:15'),
(4, 'Teknologi', 'teknologi', '2022-06-22 14:20:28', '2022-06-22 14:20:28'),
(5, 'Budaya', 'budaya', '2022-06-22 14:20:41', '2022-06-22 14:20:59'),
(6, 'Wisata', 'wisata', '2022-06-22 14:21:14', '2022-06-22 14:21:14'),
(7, 'Kuliner', 'kuliner', '2022-06-22 14:21:24', '2022-06-22 14:21:24'),
(8, 'Lainnya', 'lainnya', '2022-06-22 14:25:48', '2022-06-22 14:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(33, '2022_06_19_082515_create_news_table', 1),
(34, '2022_06_19_084338_add_image_at_news_table', 1),
(35, '2022_06_22_021208_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `judul`, `penerbit`, `category_id`, `slug`, `description`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Yusuf Mansur Respons Kasus Tabung Tanah: Menang Tanpa Ngasorake', 'Agus Salim', 8, 'trending', 'Jakarta, CNN Indonesia -- Ustaz Yusuf Mansur mengutip petuah jawa \'menang tanpa ngasorake\' usai Majelis Hakim Pengadilan Negeri Tangerang menolak gugatan terhadap Ustaz Yusuf Mansur dalam kasus menabung tanah pada hari ini, Rabu (22/6)', '2022-06-22 14:29:37', '2022-06-22 14:29:37', 'news-images/1655933377.jpg'),
(2, 'Putra Buya Arrazy Meninggal Tertembak Pistol Anggota Polri', 'Renaldi Yoga', 2, 'fyp', 'Surabaya, CNN Indonesia -- Putra ulama kondang Ustaz Arrazy Hasyim atau Buya Arrazy, HSW yang berusia tiga tahun, meninggal dunia usai tertembak dengan senjata api oleh kakaknya sendiri, H yang berusia lima tahun', '2022-06-22 14:36:50', '2022-06-22 14:36:50', 'news-images/1655933810.jpeg'),
(4, 'Polisi Kuak Peran 2 Tersangka Mahasiswi Tewas di Apartemen Cipulir', 'Fajrul Narendra', 2, 'tersangka', 'Polisi menetapkan dua orang tersangka dalam kasus kematian mahasiswi berinisial I (31) di apartemen daerah Cipulir, Kebayoran Lama, Jakarta Selatan.', '2022-06-22 14:38:48', '2022-06-22 14:38:48', 'news-images/1655933928.jpg'),
(5, 'Pelaku Tawuran Rombongan Pengantar Jenazah di Makassar Ditangkap', 'Gian Bagus', 2, 'tawuran', 'Makassar, CNN Indonesia -- Empat pelaku pengadangan terhadap rombongan pengantar jenazah di Kecamatan Biringkanaya, Kota Makassar, Sulawesi Selatan, ditangkap pihak kepolisian. Dalam kejadian itu menyebabkan enam orang terkena panah.', '2022-06-22 14:40:42', '2022-06-22 14:40:42', 'news-images/1655934042.jpeg'),
(6, 'Bank Mandiri Proyeksi Ekonomi RI Tumbuh 5,3 Persen Kuartal II 2022', 'Jason Archie', 1, 'proyeksi ekonomi', 'Jakarta, CNN Indonesia -- PT Bank Mandiri (Persero) Tbk memprediksi pertumbuhan ekonomi Indonesia  berkisar 5,2 persen hingga 5,3 persen pada kuartal II 2022. \"Pertumbuhan kuartal II akan berkisar 5,2 persen sampai dengan 5,3 persen seiring dengan dukungan perbaikan belanja masyarakat,\" ungkap Direktur Treasury & International Banking Bank Mandiri Panji Irawan dalam Media Gathering & Presentasi Macroeconomic outlook dari Tim Office of Chief Economist, Rabu (22/6).', '2022-06-22 14:42:55', '2022-06-22 14:42:55', 'news-images/1655934175.jpeg'),
(7, 'Nyetir Ratusan Kilometer, Berapa Konsumsi BBM Suzuki Ertiga Hybrid', 'Farli Nahrul', 4, 'suzuki ertiga', 'Malang, CNN Indonesia -- Suzuki Indomobil Sales (SIS) mengadakan sesi test drive Ertiga Hybrid di Jawa Timur, Selasa (21/6). Dalam kesempatan ini sekaligus untuk membuktikan sebarapa efisien konsumsi bahan bakar low MPV itu.', '2022-06-22 14:45:08', '2022-06-22 14:45:08', 'news-images/1655934308.png');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
