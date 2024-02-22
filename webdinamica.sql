	-- --------------------------------------------------------
	-- Host:                         127.0.0.1
	-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
	-- SO del servidor:              Win64
	-- HeidiSQL Versión:             10.2.0.5599
	-- --------------------------------------------------------

	/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
	/*!40101 SET NAMES utf8 */;
	/*!50503 SET NAMES utf8mb4 */;
	/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
	/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

	-- Volcando estructura para tabla dinamica.categorias
	CREATE TABLE IF NOT EXISTS `categorias` (
	  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
	  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
	  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
	  `created_at` timestamp NULL DEFAULT NULL,
	  `updated_at` timestamp NULL DEFAULT NULL,
	  PRIMARY KEY (`id`)
	) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

	-- Volcando datos para la tabla dinamica.categorias: ~0 rows (aproximadamente)
	/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
	/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

	-- Volcando estructura para tabla dinamica.clientes
	CREATE TABLE IF NOT EXISTS `clientes` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `user_id` int(11) NOT NULL,
	  `nombre` varchar(100) NOT NULL,
	  `image` varchar(250) NOT NULL,
	  `created_at` timestamp NULL DEFAULT NULL,
	  `updated_at` timestamp NULL DEFAULT NULL,
	  PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;

	-- Volcando datos para la tabla dinamica.clientes: ~0 rows (aproximadamente)
	/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
	/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

	-- Volcando estructura para tabla dinamica.failed_jobs
	CREATE TABLE IF NOT EXISTS `failed_jobs` (
	  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
	  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
	  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
	  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
	  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
	  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	  PRIMARY KEY (`id`),
	  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

	-- Volcando datos para la tabla dinamica.failed_jobs: ~0 rows (aproximadamente)
	/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
	/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

	-- Volcando estructura para tabla dinamica.migrations
	CREATE TABLE IF NOT EXISTS `migrations` (
	  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
	  `batch` int(11) NOT NULL,
	  PRIMARY KEY (`id`)
	) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

	-- Volcando datos para la tabla dinamica.migrations: ~6 rows (aproximadamente)
	/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
	INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
		(1, '2014_10_12_000000_create_users_table', 1),
		(2, '2014_10_12_100000_create_password_resets_table', 1),
		(3, '2019_08_19_000000_create_failed_jobs_table', 1),
		(4, '2020_11_16_101800_create_roles_tables', 2),
		(5, '2020_11_16_134223_create_categorias_table', 3),
		(6, '2020_11_16_134411_create_productos_table', 3);
	/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

	-- Volcando estructura para tabla dinamica.password_resets
	CREATE TABLE IF NOT EXISTS `password_resets` (
	  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
	  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
	  `created_at` timestamp NULL DEFAULT NULL,
	  KEY `password_resets_email_index` (`email`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

	-- Volcando datos para la tabla dinamica.password_resets: ~0 rows (aproximadamente)
	/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
	/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

	-- Volcando estructura para tabla dinamica.productos
	CREATE TABLE IF NOT EXISTS `productos` (
	  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
	  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
	  `descriptions` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
	  `extract` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
	  `price` decimal(5,2) NOT NULL,
	  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
	  `visible` tinyint(1) NOT NULL,
	  `categoria_id` int(10) unsigned NOT NULL,
	  `created_at` timestamp NULL DEFAULT NULL,
	  `updated_at` timestamp NULL DEFAULT NULL,
	  PRIMARY KEY (`id`),
	  KEY `productos_categoria_id_foreign` (`categoria_id`),
	  CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE
	) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

	-- Volcando datos para la tabla dinamica.productos: ~0 rows (aproximadamente)
	/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
	/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

	-- Volcando estructura para tabla dinamica.proveedores
	CREATE TABLE IF NOT EXISTS `proveedores` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `user_id` int(11) NOT NULL DEFAULT '0',
	  `name` varchar(250) NOT NULL,
	  `image` varchar(250) NOT NULL,
	  `created_at` timestamp NULL DEFAULT NULL,
	  `updated_at` timestamp NULL DEFAULT NULL,
	  PRIMARY KEY (`id`)
	) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

	-- Volcando datos para la tabla dinamica.proveedores: ~0 rows (aproximadamente)
	/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
	/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;

	-- Volcando estructura para tabla dinamica.publicoferts
	CREATE TABLE IF NOT EXISTS `publicoferts` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `user_id` int(11) NOT NULL,
	  `titulo` varchar(100) NOT NULL,
	  `texto` varchar(255) NOT NULL,
	  `image` varchar(255) NOT NULL,
	  `created_at` timestamp NULL DEFAULT NULL,
	  `updated_at` timestamp NULL DEFAULT NULL,
	  PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;

	-- Volcando datos para la tabla dinamica.publicoferts: ~0 rows (aproximadamente)
	/*!40000 ALTER TABLE `publicoferts` DISABLE KEYS */;
	/*!40000 ALTER TABLE `publicoferts` ENABLE KEYS */;

-- Volcando estructura para tabla dinamica.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla dinamica.roles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
	(1, 'administrador', NULL, '2020-11-16 10:25:50', '2020-11-16 10:25:50'),
	(2, 'personal', NULL, '2020-11-16 10:39:23', '2020-11-16 10:39:23');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;



-- Volcando estructura para tabla dinamica.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` int(9) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla dinamica.users: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `celular`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Jose Luis Diaz Mirano', 'jldm605@gmail.com', 999086095, NULL, '$2y$10$P.d0ksJBn1vaGq/mwPfKT.52jb9C/51Vn26kjLRA4XYD59bs3r/QS', NULL, '2020-11-16 09:55:46', '2020-11-16 13:06:53'),
	(2, 'Dany Soto Huaman', 'danysh93@gmail.com', 999086097, NULL, '$2y$10$dtKOjCDtGG0ddHGFIyuj1O6UQXztbC0dT601PKE0zRPrNb6iOyIsO', NULL, '2020-11-16 10:07:54', '2020-11-16 13:07:11'),
	(3, 'Trabajador', 'trabajador@gmail.com', 988086095, NULL, '$2y$10$4h.9pGOv6sKBLFXaumFlnOWlz3Hpba3MbgoqHdJ7tNZlSEaUGTGNS', NULL, '2020-11-16 11:25:36', '2020-11-28 15:08:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
-- Volcando estructura para tabla dinamica.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla dinamica.role_user: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2020-11-16 10:26:48', '2020-11-16 13:06:53'),
	(2, 1, '2020-11-16 10:39:44', '2020-11-16 13:07:11'),
	(3, 2, '2020-11-16 11:25:36', '2020-11-28 15:08:45'),
	(4, 1, '2020-11-28 15:08:16', '2020-11-28 15:08:16');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
