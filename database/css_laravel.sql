-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.20-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- membuang struktur untuk table css_laravel.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel css_laravel.categories: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `photo`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Food', 'assets/category/Fs01jdGj929zHtq3ZT1QhpgKQN40tURp3FQOroVK.svg', 'food', '2022-04-09 03:35:46', '2022-04-09 03:32:47', '2022-04-09 03:35:46'),
	(2, 'Food', 'assets/category/BGVMSHk24vsIn6t11Y3FKHioFNVi3K6lkoZEaFNV.svg', 'food', NULL, '2022-04-09 03:36:21', '2022-04-09 03:36:21'),
	(3, 'Drink', 'assets/category/sY8n1SQeU5rqGbGleeZGAHfxqtTMS4357CCMepkJ.svg', 'drink', NULL, '2022-04-09 03:40:36', '2022-04-09 03:40:36'),
	(4, 'Tools', 'assets/category/nBlv9zPhufj0JWs3uFeP4iKYYrAqn8jT5v4apHEv.svg', 'tools', NULL, '2022-04-09 03:41:08', '2022-04-09 03:41:08'),
	(5, 'Medical', 'assets/category/gwLCAB696sXVAj4HqPUCJrKpNv7rRiBKb1tFOyeq.svg', 'medical', NULL, '2022-04-09 03:45:16', '2022-04-09 03:45:16'),
	(6, 'Craft', 'assets/category/ySRBJAXYZ8gxFHYPOLuKrnScHzKxcDrvsRFGM8Gj.svg', 'craft', NULL, '2022-04-09 03:48:24', '2022-04-09 03:48:24'),
	(7, 'Fashion', 'assets/category/2xAzrgK0Ax4iQGBv6mwO0y5NwVpusyg3JILbT9Iv.svg', 'fashion', NULL, '2022-04-09 03:52:21', '2022-04-09 03:52:21');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- membuang struktur untuk table css_laravel.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel css_laravel.failed_jobs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table css_laravel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel css_laravel.migrations: ~8 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_04_03_172200_create_categories_table', 1),
	(6, '2022_04_03_172339_create_products_table', 1),
	(7, '2022_04_03_172555_create_product_galeries_table', 1),
	(8, '2022_04_09_013309_create_product_reviews_table', 1),
	(9, '2022_04_09_160645_add_review_type_field_to_product_reviews_table', 2),
	(10, '2022_04_09_163635_add_description_field_to_product_reviews_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table css_laravel.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel css_laravel.password_resets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table css_laravel.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel css_laravel.personal_access_tokens: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- membuang struktur untuk table css_laravel.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_wa` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel css_laravel.products: ~19 rows (lebih kurang)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `slug`, `owner`, `categories_id`, `price`, `stock`, `description`, `link_wa`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Keripik Sawo - Dheliz | 160gr', 'keripik-sawo-dheliz-160gr', 'Dheliza', 2, 20000, 5, '<p>Keripik Sawo Dheliz terbuat dari sawo sukatali asli, diolah dari sawo yang baru dipetik dari pohonnya. Dan diproses secara higienis, sehingga menghasilkan keripik sawo yang berkualitas!<br />\r\n<br />\r\nKeunggulan Keripik Sawo Dheliz :</p>\r\n\r\n<ul>\r\n	<li>Rasanya yang tidak terlalu manis, sehingga tidak mudah &quot;giung&quot;.</li>\r\n	<li>Sawo yang dipakai menggunakan sawo sukatali asli yang langsung diproses setelah di panen.</li>\r\n	<li>Tekstur yang &quot;PAS&quot; (tidak keras, dan tidak lembek). Sehingga cocok di konsumsi untuk siapa saja.</li>\r\n	<li>Tahan sampai 3 bulan tanpa bahan pengawet.</li>\r\n</ul>\r\n\r\n<p>Produk ini merupakan varian kecil, Keripik Sawo Dheliz memiliki varian yang lainnya yaitu sedang, dan besar.</p>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Keripik%20Sawo%20-%20Dheliz%20%7C%20160gr*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-09 04:37:21', '2022-04-10 10:04:56'),
	(2, 'Nugget Stick - Isi 8', 'nugget-stick-isi-8', 'Bumdes Karya Muda Mandiri', 2, 10000, 10, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit :</p>\r\n\r\n<ul>\r\n	<li>Repudiandae rem asperiores</li>\r\n	<li>et vel soluta id quia.</li>\r\n	<li>Eius, provident. Et natus</li>\r\n	<li>aspernatur temporibus</li>\r\n	<li>maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Nugget%20Stick%20-%20Isi%208*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-09 05:02:09', '2022-04-10 10:06:48'),
	(3, 'Bolen Pisang Keju - Isi 6', 'bolen-pisang-keju-isi-6', 'Dapoer Rose', 2, 15000, 30, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet</li>\r\n	<li>consectetur adipisicing elit.</li>\r\n	<li>epudiandae rem asperiores</li>\r\n	<li>et vel soluta id quia. Eius, provident.</li>\r\n	<li>Et natus aspernatur temporibus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Bolen%20Pisang%20Keju%20-%20Isi%206*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-09 05:06:44', '2022-04-10 10:09:40'),
	(4, 'Keju Lilit - Isi 6', 'keju-lilit-isi-6', 'Dapoer Rose', 2, 10000, 10, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, : provident.</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet</li>\r\n	<li>consectetur adipisicing elit. Repudiandae</li>\r\n	<li>rem asperiores et vel soluta id quia. Eius, provident.</li>\r\n	<li>Et natus aspernatur temporibus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>', 'https://wa.me/+6281563897894?text=Halo%20Admin!%0A%0AApakah%20produk%20Balad%20Opak%20masih%20tersedia%3F', '2022-04-10 09:55:46', '2022-04-09 05:12:53', '2022-04-10 09:55:46'),
	(5, 'Coklat Keju Lilit - Isi 6', 'coklat-keju-lilit-isi-6', 'Dapoer Rose', 2, 10000, 10, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Repudiandae rem asperiores et vel soluta id quia. Eius :&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor</li>\r\n	<li>sit amet consectetur adipisicing</li>\r\n	<li>elit. Repudiandae rem asperiores et vel</li>\r\n	<li>soluta id quia. Eius, provident. Et natus</li>\r\n	<li>aspernatur temporibus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Coklat%20Keju%20Lilit%20-%20Isi%206*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-09 05:14:56', '2022-04-10 10:01:34'),
	(6, 'Cipeng (Cireng Gepeng) - 150gr', 'cipeng-cireng-gepeng-150gr', 'Dyah', 2, 5000, 50, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Cipeng%20(Cireng%20Gepeng)%20-%20150gr*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-09 05:16:34', '2022-04-10 10:10:59'),
	(7, 'Kacang Umpet - 150gr', 'kacang-umpet-150gr', 'Bumdes Karya Muda Mandiri', 2, 8000, 24, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>em asperiores et vel soluta id quia. Eius, pro :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit ame</li>\r\n	<li>t consectetur adipisicing elit. Re</li>\r\n	<li>pudiandae rem asperiores et vel so</li>\r\n	<li>luta id quia. Eius, provident. Et natus</li>\r\n	<li>aspernatur temporibus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Kacang%20Umpet%20-%20150gr*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-09 05:19:08', '2022-04-10 10:12:01'),
	(8, 'Kolongtong - 250gr', 'kolongtong-250gr', 'Dikjaya', 2, 20000, 10, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!.&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>provident. Et natus aspernatur temporibus maiores, animi vero! :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperior</li>\r\n	<li>es et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</li>\r\n	<li>\r\n	<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores</p>\r\n	</li>\r\n	<li>\r\n	<p>et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!.&nbsp;Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Kolongtong%20-%20250gr*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-09 05:22:17', '2022-04-10 10:12:51'),
	(9, 'Cireng Isi - Isi 8', 'cireng-isi-isi-8', 'Bumdes Karya Muda Mandiri', 2, 12000, 30, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Cireng%20Isi%20-%20Isi%208*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-10 10:37:48', '2022-04-10 10:37:48'),
	(10, 'Dodol Mangga - Ukuran Kecil', 'dodol-mangga-ukuran-kecil', 'HR', 2, 7500, 12, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Dodol%20Mangga%20-%20Ukuran%20Kecil*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-10 10:51:35', '2022-04-10 10:51:35'),
	(11, 'Gorengan Cita Rasa - Teri', 'gorengan-cita-rasa-teri', 'Bu Cicih', 2, 10000, 12, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<div id="gtx-trans" style="position: absolute; left: -16px; top: 62.8px;">\r\n<div class="gtx-trans-icon">&nbsp;</div>\r\n</div>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Gorengan%20Cita%20Rasa%20-%20Teri*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-10 12:34:58', '2022-04-10 12:34:58'),
	(12, 'Hijab Pasmina Trendy!!', 'hijab-pasmina-trendy', 'Intan Noer', 7, 25000, 10, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<div id="gtx-trans" style="position: absolute; left: 1px; top: 62.8px;">\r\n<div class="gtx-trans-icon">&nbsp;</div>\r\n</div>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Hijab%20Pasmina%20Trendy!!*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-10 12:36:25', '2022-04-10 12:36:25'),
	(13, 'Sangray Suuk "AROW"', 'sangray-suuk-arow', 'Mang Arow', 2, 10000, 4, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<div id="gtx-trans" style="position: absolute; left: -14px; top: 62.8px;">\r\n<div class="gtx-trans-icon">&nbsp;</div>\r\n</div>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Sangray%20Suuk%20%22AROW%22*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-10 12:38:30', '2022-04-10 12:38:30'),
	(14, 'Keripik Singkong "Goodtela" - Rasa Telur Asin | 150gr', 'keripik-singkong-goodtela-rasa-telur-asin-150gr', 'Adhi Jaya', 2, 12500, 69, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>', 'Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Keripik%20Singkong%20%22Goodtela%22%20-%20Rasa%20Telur%20Asin%20%7C%20150gr*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-10 12:41:12', '2022-04-10 12:41:12'),
	(15, 'Ketan Hitam Yahai | 150gr', 'ketan-hitam-yahai-150gr', 'Neng Kroso', 2, 15000, 10, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<div id="gtx-trans" style="position: absolute; left: -5px; top: 62.8px;">\r\n<div class="gtx-trans-icon">&nbsp;</div>\r\n</div>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Ketan%20Hitam%20Yahai%20%7C%20150gr*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-10 12:43:17', '2022-04-10 12:43:17'),
	(16, 'Krupuk Bangreng Cita Rasa | 150gr', 'krupuk-bangreng-cita-rasa-150gr', 'Cita Rasa', 2, 15000, 23, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>&nbsp;</p>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Krupuk%20Bangreng%20Cita%20Rasa%20%7C%20150gr*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-10 12:44:52', '2022-04-10 12:52:22'),
	(17, 'Nugget Bulat - Isi 8', 'nugget-bulat-isi-8', 'Bumdes Karya Muda Mandiri', 2, 8000, 15, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<div id="gtx-trans" style="position: absolute; left: -3px; top: 62.8px;">\r\n<div class="gtx-trans-icon">&nbsp;</div>\r\n</div>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Nugget%20Bulat%20-%20Isi%208*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-10 12:50:08', '2022-04-10 12:50:08'),
	(18, 'Nutrisi Tanaman Deloni X | 500ML', 'nutrisi-tanaman-deloni-x-500ml', 'BUMDes Rempug Sauyunan', 5, 35000, 15, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>', 'https://wa.me/+6285155347796?text=Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Nutrisi%20Tanaman%20Deloni%20X%20%7C%20500ML*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-10 13:00:12', '2022-04-10 13:00:12'),
	(19, 'Sapu Ijuk Bumdes Cijati', 'sapu-ijuk-bumdes-cijati', 'Bumdes Desa Cijati', 4, 20000, 10, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. :</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit am</li>\r\n	<li>et consectetur adipisicing elit. Rep</li>\r\n	<li>udiandae rem asperiores et vel soluta id quia. E</li>\r\n	<li>ius, provident. Et natus aspernatur temp</li>\r\n	<li>oribus maiores, animi vero!</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae rem asperiores et vel soluta id quia. Eius, provident. Et natus aspernatur temporibus maiores, animi vero!</p>\r\n\r\n<div id="gtx-trans" style="position: absolute; left: -10px; top: 62.8px;">\r\n<div class="gtx-trans-icon">&nbsp;</div>\r\n</div>', 'Halloo%20Admin%20%F0%9F%91%8B%F0%9F%8F%BB%0A%0ASaya%20ingin%20pesan%20produk%20*Sapu%20Ijuk%20Bumdes%20Cijati*%20apakah%20masih%20tersedia%3F', NULL, '2022-04-10 13:02:14', '2022-04-10 13:02:14');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- membuang struktur untuk table css_laravel.product_galleries
CREATE TABLE IF NOT EXISTS `product_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel css_laravel.product_galleries: ~48 rows (lebih kurang)
/*!40000 ALTER TABLE `product_galleries` DISABLE KEYS */;
INSERT INTO `product_galleries` (`id`, `photos`, `products_id`, `created_at`, `updated_at`) VALUES
	(3, 'assets/product/eBrc4yc9kKUFzpkY0XzgwWVVmzc9rGuqZBsiHM91.jpg', 3, '2022-04-10 10:15:54', '2022-04-10 10:15:54'),
	(4, 'assets/product/pRgPe9LRQDaQJPoEfXWzpv2yt7SqdY8uRfCDZlLQ.jpg', 3, '2022-04-10 10:16:18', '2022-04-10 10:16:18'),
	(5, 'assets/product/t6QG6ty3RzCHaRWmv7qGipmTjXgxsp3iO1nfXjzE.jpg', 3, '2022-04-10 10:16:42', '2022-04-10 10:16:42'),
	(6, 'assets/product/H9zFv1khmXYXnIvjG9pJeuDn64ZcHXi8kGY0zGHt.jpg', 5, '2022-04-10 10:23:40', '2022-04-10 10:23:40'),
	(7, 'assets/product/P3D7twldmPGQ2b2ljztZgEdYC2x5f1HO3OW3w7qV.jpg', 5, '2022-04-10 10:24:10', '2022-04-10 10:24:10'),
	(8, 'assets/product/oAucsAD6sg6CfV7vsMInjxLcJV6fI9ZPyRhb7t1x.jpg', 5, '2022-04-10 10:27:52', '2022-04-10 10:27:52'),
	(9, 'assets/product/cKHb6mDqD6R0meoTnjlMaZ5nYybLRgNCmffsdihz.jpg', 9, '2022-04-10 10:38:53', '2022-04-10 10:38:53'),
	(10, 'assets/product/nn1Q8wuVKAf7bRiQMMdso3dCO3pgkIDs0Rv3nAlv.jpg', 9, '2022-04-10 10:42:57', '2022-04-10 10:42:57'),
	(11, 'assets/product/DmOEfGudfi8MDeVbKPOn6WgehAVr6vUELe061YLr.jpg', 9, '2022-04-10 10:47:30', '2022-04-10 10:47:30'),
	(12, 'assets/product/DgtYoGrzker8WIJDHSRf1I6NEHO1R7CZFoBbr9mk.jpg', 9, '2022-04-10 10:48:59', '2022-04-10 10:48:59'),
	(13, 'assets/product/VHN8elZnoPQFhsCFTH4quySL9Ff6XiJICtQpR12d.jpg', 10, '2022-04-10 13:04:17', '2022-04-10 13:04:17'),
	(14, 'assets/product/HZTNA2AJYlB8LlTuiHuTXqdVZ8naIvUn7zl7tZTF.jpg', 10, '2022-04-10 13:05:32', '2022-04-10 13:05:32'),
	(15, 'assets/product/EbtikR8KY7JQgm7BUpEoffom3EU9zRomNA3AESOl.jpg', 10, '2022-04-10 13:06:06', '2022-04-10 13:06:06'),
	(16, 'assets/product/WsrM3FdtxdXWAL1Rsr1bHB2IXZolj38eWlnawDfT.jpg', 10, '2022-04-10 13:08:04', '2022-04-10 13:08:04'),
	(17, 'assets/product/iFFCI0VTKwHf6O3XA3umVYbqnuH8fDCHf4c9Pasb.jpg', 11, '2022-04-10 13:09:24', '2022-04-10 13:09:24'),
	(18, 'assets/product/t9LmmvzWKAsKhOUfHUQVmhXZPLrgPmyEuT4dVmb7.jpg', 11, '2022-04-10 13:10:48', '2022-04-10 13:10:48'),
	(19, 'assets/product/2x62iPaMerRcNBH7PzfNBgKmAri63VDaTFZVp37s.jpg', 11, '2022-04-10 13:11:16', '2022-04-10 13:11:16'),
	(20, 'assets/product/DZuHqZHoFlYwAQE86CSOo8QQ58aE2a63IqqTQ8Wg.jpg', 11, '2022-04-10 13:12:11', '2022-04-10 13:12:11'),
	(21, 'assets/product/j3ls6zJIRqyYNNMWDEe14CRWAK4LY0BzfGRiMEmy.jpg', 12, '2022-04-10 13:13:18', '2022-04-10 13:13:18'),
	(22, 'assets/product/cRb4jbcHddTKvllLBb61wknV2CW0T8K3yuAVM81b.jpg', 12, '2022-04-10 13:13:51', '2022-04-10 13:13:51'),
	(23, 'assets/product/GCeYNH3nAUJUdHyixXCqX397ax8WLGnrYxiyi58W.jpg', 12, '2022-04-10 13:14:29', '2022-04-10 13:14:29'),
	(24, 'assets/product/qmxKHwlnRPAN5BprL5yxXlMnP43gHiQxAjzwNMvM.jpg', 12, '2022-04-10 13:14:56', '2022-04-10 13:14:56'),
	(25, 'assets/product/V0usNZKVfqwzMiIJFTEO3dGaReuEeGFm5bpUsBZO.jpg', 13, '2022-04-10 13:15:44', '2022-04-10 13:15:44'),
	(26, 'assets/product/Ozx6aJpGuf1qGim0V51vGXqu9wvZ96NGKouor9wN.jpg', 13, '2022-04-10 13:16:14', '2022-04-10 13:16:14'),
	(27, 'assets/product/1UnQ28RNimVdq5V1UixDaFbCcXi9PjRJ6qqFKaQY.jpg', 13, '2022-04-10 13:17:51', '2022-04-10 13:17:51'),
	(28, 'assets/product/fWUSsb3jpZTQLuTgSRjUJ8i1uLHgj4V6VJloloNq.jpg', 13, '2022-04-10 13:18:23', '2022-04-10 13:18:23'),
	(29, 'assets/product/i9Yy6hHAD5CorGuiXyp7vD0uVDRTaTuusZIeCyGp.jpg', 14, '2022-04-10 13:19:05', '2022-04-10 13:19:05'),
	(30, 'assets/product/LjqU84p1RfMlus9vWSI9qLmllY4DCWZOtShLByR8.jpg', 14, '2022-04-10 13:20:08', '2022-04-10 13:20:08'),
	(31, 'assets/product/zf8Y0A8zhvI31EDM43A5lGw9lkQAqRRf252aY2tL.jpg', 14, '2022-04-10 13:24:00', '2022-04-10 13:24:00'),
	(32, 'assets/product/ktnwHuAEoxKaO6C8CUMpNy2MbYX8KLgCSJ3FCNdc.jpg', 14, '2022-04-10 13:24:33', '2022-04-10 13:24:33'),
	(33, 'assets/product/c5XdQ9PfmvN7XnHxsx6FNh0VHfZw07cRHA4CvVrA.jpg', 15, '2022-04-10 13:25:24', '2022-04-10 13:25:24'),
	(34, 'assets/product/1b4gjAu3UBUD2nKjPTqmTmDrnkvydfPVqZM9ZObq.jpg', 15, '2022-04-10 13:26:54', '2022-04-10 13:26:54'),
	(35, 'assets/product/vAPXmi9GNPe8bgikeaJTgLC23mtB4cUE22kd5q2B.jpg', 15, '2022-04-10 13:28:29', '2022-04-10 13:28:29'),
	(37, 'assets/product/MXHS7zJtCd9IiExNFemTSAqo8RGtsqg0u5OTU0xQ.jpg', 15, '2022-04-10 13:34:05', '2022-04-10 13:34:05'),
	(38, 'assets/product/CUst95xCuUoPuBYYI8ESDmamfcFUKKgoyk79HrM8.jpg', 16, '2022-04-10 13:37:32', '2022-04-10 13:37:32'),
	(39, 'assets/product/7vGxDA3iksjwuwXiyRiiNVQRcp5lZ3T5bE1DjtCu.jpg', 16, '2022-04-10 13:39:22', '2022-04-10 13:39:22'),
	(40, 'assets/product/FcZSJHhkbU5OChthFkvjfu0hRbpwHvwqYMh8GO3y.jpg', 16, '2022-04-10 13:39:49', '2022-04-10 13:39:49'),
	(41, 'assets/product/ZDls1jXEcNjHIVd59k4YovZV44dFQHvxU9u2wVCg.jpg', 16, '2022-04-10 13:40:21', '2022-04-10 13:40:21'),
	(42, 'assets/product/6OFV8LUOf9DiDw6NH25Rhp0NtRDOVEBwXfNFJl9Y.jpg', 17, '2022-04-10 13:41:15', '2022-04-10 13:41:15'),
	(43, 'assets/product/s6oQKOAGqCbDxsbnoF8oC3QpdHs2zRKi2JAuDsiU.jpg', 17, '2022-04-10 13:42:18', '2022-04-10 13:42:18'),
	(44, 'assets/product/AfeHx4cf8yIpTmCj9MqhAMvxBShcqu9dgKXz0p9d.jpg', 17, '2022-04-10 13:42:49', '2022-04-10 13:42:49'),
	(45, 'assets/product/NUMVX6FHg7da7CY5LHBWULHFQvvmeuEpIUbrgJnp.jpg', 17, '2022-04-10 13:43:51', '2022-04-10 13:43:51'),
	(46, 'assets/product/qtsvysw3ulEJ0z7HxaWnryksxoURUnZVIRez6hOV.jpg', 18, '2022-04-10 13:55:07', '2022-04-10 13:55:07'),
	(47, 'assets/product/R4UN7muKqvt4XpwviEJGZKU3Bk42hFqYuzJGGBhp.jpg', 18, '2022-04-10 13:56:10', '2022-04-10 13:56:10'),
	(48, 'assets/product/QmGqgrGGDVq7miyjY3Kf5HktBi4bcKUThzsV5rPh.jpg', 18, '2022-04-10 13:56:43', '2022-04-10 13:56:43'),
	(49, 'assets/product/fMDfwWqoGbi8t1OAtHjnxaemqKCiaDVsaY17r3Gn.jpg', 18, '2022-04-10 13:57:17', '2022-04-10 13:57:17'),
	(50, 'assets/product/vyLqh68cMXNec0lUYUMjkdwWmhCG9BPwjwIAANpB.jpg', 19, '2022-04-10 13:58:28', '2022-04-10 13:58:28'),
	(51, 'assets/product/JsZLCAnr8nhrw8laSvv6nswsS4Fuuf5KoyCj7FXZ.jpg', 19, '2022-04-10 13:58:54', '2022-04-10 13:58:54');
/*!40000 ALTER TABLE `product_galleries` ENABLE KEYS */;

-- membuang struktur untuk table css_laravel.product_reviews
CREATE TABLE IF NOT EXISTS `product_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `descripton` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel css_laravel.product_reviews: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `product_reviews` DISABLE KEYS */;
INSERT INTO `product_reviews` (`id`, `users_id`, `products_id`, `descripton`, `created_at`, `updated_at`, `review_type`) VALUES
	(1, 2, 1, '<p>Keripiknya enak, rasanya engga terlalu manis. Saya suka!!!</p>', '2022-04-09 17:02:25', '2022-04-09 17:02:25', 'Good'),
	(2, 3, 1, '<p>Untuk harga segitu dan isi yang engga terlalu banyak, menurut penilaian ku sih biasa aja ya.<br />\r\n<br />\r\nMungkin kedepannya bisa dibanyakin isinya</p>', '2022-04-10 04:21:52', '2022-04-10 04:21:52', 'Ok'),
	(3, 1, 7, '<p>Kacang engga ada rasa, saya juga bisa bikin kayak ginian doang!</p>\r\n\r\n<p>Udah harganya mahal lagi!!</p>', '2022-04-10 07:24:39', '2022-04-10 07:24:39', 'Bad'),
	(4, 1, 1, '<p>Rasanya kayak sale pisang, engga ada unik uniknya. Harga Produk mahal!</p>', '2022-04-10 07:31:58', '2022-04-10 07:31:58', 'Bad'),
	(5, 2, 8, '<p>Rasanya enak, manis, kemasannya pas buat dimakan sekeluarga bertiga. JOSS deh!</p>', '2022-04-10 08:27:30', '2022-04-10 08:27:30', 'Good'),
	(6, 1, 18, '<p>Nutrisi tanaman asli, tanaman cabe saya buahnya besar-bear!</p>\r\n\r\n<p>Terimakasih!!</p>', '2022-04-10 14:21:49', '2022-04-10 14:21:49', 'Good');
/*!40000 ALTER TABLE `product_reviews` ENABLE KEYS */;

-- membuang struktur untuk table css_laravel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel css_laravel.users: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone_number`, `address`, `roles`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Hadi Akbar', 'hadi62176@gmail.com', NULL, '$2y$10$j.g4xCipOFrq8aKriOUnXuHTzoUq/A6VphP10xlr/fEI7CwJyjnXC', NULL, NULL, 'ADMIN', NULL, NULL, '2022-04-09 03:30:52', '2022-04-09 03:30:52'),
	(2, 'Heri Perdiayansah', 'heri_perdi69@gmail.com', NULL, '$2y$10$O350pQNSBsb3I4exGQZN2.oNAgO4DqXP6Plny27l/dq2cHMhgRZkK', '081298765432', 'Dsn. Kudeng Koneng Rt 01 Rw 02 No. 69, Ds. Cijati, Kec. Situraja, Kab. Sumedang 45374', 'USER', NULL, NULL, '2022-04-09 09:31:29', '2022-04-09 16:00:51'),
	(3, 'Chikal Miftahul', 'berdagang@gmail.com', NULL, '$2y$10$r8uWrQC2vAXTOcXOuNdb9uT16bvOt.ufm0QwYFjGzP86ttGa0fta.', '087812345681', 'Jl. Pereng, Ganeas, Kec. Ganeas, Kabupaten Sumedang, Jawa Barat 45356', 'USER', NULL, NULL, '2022-04-10 04:19:51', '2022-04-10 04:19:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
