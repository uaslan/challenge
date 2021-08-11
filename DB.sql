-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.19-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- challenge için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `challenge` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `challenge`;

-- tablo yapısı dökülüyor challenge.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `site_url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `company_token` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `companies_site_url_unique` (`site_url`),
  KEY `companies_email_index` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.companies: ~10 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT IGNORE INTO `companies` (`id`, `site_url`, `name`, `lastname`, `company_name`, `email`, `password`, `company_token`, `created_at`, `updated_at`) VALUES
	(1, 'jaskolski.biz', 'Robb', 'Medhurst', 'Hodkiewicz-Welch', 'lula.bernhard@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4vv4anH4PvLGFSydmJm8CPzX5GL4NtotsN3g3lvtC9wZpFf4G7', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(2, 'abernathy.com', 'Breanne', 'Williamson', 'Kihn Group', 'durward.collier@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lVst6PRnaLakz6aaPBrBZlQlektBKe5CpBIb7528mXpsn7axvt', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(3, 'kulas.net', 'Alanis', 'Torp', 'Shields, Kautzer and Hickle', 'yesenia.wuckert@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AkNrONFGDn732agJboZUycq0lzFKqUkhcF7pdUTfHyT8EGfxsv', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(4, 'hamill.com', 'Jannie', 'Nitzsche', 'Rosenbaum, Hills and Reynolds', 'rebeka.prosacco@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VQ536rtkPi9isNjaUN8M5geQetTu0PNyIIuqiFdFwHyHMqq9S8', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(5, 'lemke.com', 'Linnie', 'Mohr', 'Ryan-Collier', 'terry.alejandrin@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OAW4ClOuwoRKBjFT28h7FPtgwQwgeB8FRXXlBEVtqX643MAlZb', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(6, 'goyette.com', 'Opal', 'Reinger', 'Kessler, Collins and Dach', 'kimberly.spencer@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sVicTZSgm3lqwQLt42VeZslzuxzl5PbL0882rlL97jkqYaXaI2', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(7, 'stokes.com', 'Camryn', 'Macejkovic', 'Bode LLC', 'stroman.ned@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7kCkYeIIxOI6ruSBZIrrE8LPbyRR8kE8bPjjKzQIXcUuKFDpTq', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(8, 'berge.com', 'Sydney', 'Torp', 'Kub Inc', 'quitzon.edwin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rVzkbwk8wVCoX69oxwFdvClw2bcS35B52QyJjIWFHe6bSJSCsp', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(9, 'swaniawski.com', 'Lorna', 'Wintheiser', 'Dare, Hermiston and Medhurst', 'toconner@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rau18S6RgCgsfAzclPDRNaUa4hLg8l3E0aU0Vwp7rNWW9tbBHW', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(10, 'gorczany.com', 'Alia', 'Langworth', 'Harris, Robel and King', 'thiel.art@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jof7mylA0lBnGUiiVubVmNLMMQot8MSHqax5wJJwDd1I0J1Ngz', '2021-08-11 01:48:14', '2021-08-11 01:48:14');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.company_packages
CREATE TABLE IF NOT EXISTS `company_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` char(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0:passive 1:active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_packages_package_id_company_id_index` (`package_id`,`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.company_packages: ~10 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `company_packages` DISABLE KEYS */;
INSERT IGNORE INTO `company_packages` (`id`, `company_id`, `package_id`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 8, '2021-07-23', '2021-08-23', '1', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(2, 2, 8, '2021-07-19', '2021-08-12', '1', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(3, 3, 2, '2021-07-18', '2021-08-27', '1', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(4, 4, 1, '2021-07-28', '2021-08-08', '1', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(5, 5, 6, '2021-08-08', '2021-08-24', '1', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(6, 6, 1, '2021-07-21', '2021-08-01', '1', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(7, 7, 2, '2021-08-05', '2021-09-14', '1', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(8, 8, 4, '2021-07-23', '2021-09-05', '1', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(9, 9, 5, '2021-07-22', '2021-08-01', '1', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(10, 10, 6, '2021-07-21', '2021-08-01', '1', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(11, 10, 5, '2021-08-11', '2021-09-10', '1', '2021-08-11 01:52:14', '2021-08-11 01:52:14');
/*!40000 ALTER TABLE `company_packages` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.company_payments
CREATE TABLE IF NOT EXISTS `company_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `package_id` int(10) unsigned NOT NULL,
  `payment_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `process_date` date NOT NULL,
  `again_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_payments_package_id_company_id_index` (`package_id`,`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.company_payments: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `company_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_payments` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.failed_jobs
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

-- challenge.failed_jobs: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.migrations: ~12 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT IGNORE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(8, '2019_08_19_000000_create_failed_jobs_table', 1),
	(9, '2021_08_10_212342_companies', 1),
	(10, '2021_08_10_214317_packages', 1),
	(11, '2021_08_10_214339_company_packages', 1),
	(12, '2021_08_10_214353_company_payments', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.oauth_access_tokens: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT IGNORE INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('6289d9c122f901405524c69b5370e8a1120d85b5205b4ea161ba63459c9f9f47b58c9d22419f59c6', 1, 1, 'Auth Token', '[]', 0, '2021-08-11 01:51:34', '2021-08-11 01:51:34', '2022-08-11 01:51:34'),
	('a116fa3b72b3b08eff98c55a1851cc0d81c8d817f5bfc40b350616a54c1e0e504e43a56dd7f5dda7', 1, 1, 'Auth Token', '[]', 0, '2021-08-11 01:48:56', '2021-08-11 01:48:56', '2022-08-11 01:48:56');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.oauth_auth_codes: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.oauth_clients: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT IGNORE INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'nT7WdY443VOUOr1xBLkpTBMB4FMnIE0dWnaVX6Kf', NULL, 'http://localhost', 1, 0, 0, '2021-08-11 01:48:26', '2021-08-11 01:48:26'),
	(2, NULL, 'Laravel Password Grant Client', 'HICOwOSJXOfkBfdb5ultsTEyXyZl7yQCheWnNJDa', 'users', 'http://localhost', 0, 1, 0, '2021-08-11 01:48:26', '2021-08-11 01:48:26');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.oauth_personal_access_clients: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT IGNORE INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2021-08-11 01:48:26', '2021-08-11 01:48:26');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.oauth_refresh_tokens: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.packages
CREATE TABLE IF NOT EXISTS `packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `lifetime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'montly/annual',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.packages: ~8 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT IGNORE INTO `packages` (`id`, `package_name`, `price`, `lifetime`, `created_at`, `updated_at`) VALUES
	(1, 'Bronze', 259.46, 'Monthly', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(2, 'Bronze', 656.65, 'Annual', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(3, 'Silver', 615.14, 'Monthly', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(4, 'Silver', 250.99, 'Annual', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(5, 'Gold', 423.45, 'Monthly', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(6, 'Gold', 715.9, 'Annual', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(7, 'Diamond', 449.35, 'Monthly', '2021-08-11 01:48:14', '2021-08-11 01:48:14'),
	(8, 'Diamond', 273.84, 'Annual', '2021-08-11 01:48:14', '2021-08-11 01:48:14');
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.password_resets: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- tablo yapısı dökülüyor challenge.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- challenge.users: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Marquis Prosacco', 'abbie68@example.com', '2021-08-11 01:48:14', '$2y$10$tqUd0PU2aIHyG.in7JnZPukxY/ZbUqc82QbdhiYhczO0vs7TKKQCu', 'UPjn6YQMPk', '2021-08-11 01:48:14', '2021-08-11 01:48:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
