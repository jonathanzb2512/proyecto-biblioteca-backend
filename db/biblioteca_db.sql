-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2025 a las 02:19:38
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `biografia` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id`, `nombre`, `apellidos`, `biografia`, `created_at`, `updated_at`) VALUES
(1, 'Gabriel', 'García Márquez', 'Autor colombiano de realismo mágico', '2025-10-31 01:29:44', '2025-10-31 01:29:44'),
(3, 'George', 'R. R. Martin', 'George R. R. Martin es un escritor, guionista y productor estadounidense, nacido el 20 de septiembre de 1948 en Bayonne, Nueva Jersey. Es mundialmente conocido por la saga de novelas de fantasía épica Canción de hielo y fuego, .', '2025-10-31 01:31:54', '2025-10-31 01:31:54'),
(4, 'Tatsuki', 'Fujimoto', 'sfsdfdsfds', '2025-10-31 02:00:24', '2025-10-31 02:00:24'),
(5, 'tochiro', 'togata', 'autor japones', '2025-10-31 02:01:48', '2025-10-31 02:01:48'),
(6, 'Eichiro', 'Oda', 'Manga de ONE PIECE', '2025-10-31 22:57:48', '2025-10-31 22:57:48'),
(7, 'Gabriel', 'García Márquez', 'Autor colombiano de realismo mágico', '2025-10-31 23:46:19', '2025-10-31 23:46:19'),
(8, 'Mayerli', 'Zanguña', 'nomina', '2025-11-01 00:12:43', '2025-11-01 00:12:43'),
(9, 'Akira', 'Toriyama', 'Escritor del mejor anime de la historia', '2025-11-06 22:54:35', '2025-11-06 22:54:35'),
(10, 'kmui', 'azuki', 'escritor japones', '2025-11-07 01:23:20', '2025-11-07 01:23:20'),
(11, 'Jonathan', 'Zanguña', 'Escritor colombiano', '2025-11-08 20:28:35', '2025-11-08 20:28:35'),
(12, 'Ines', 'Echeverría', 'El libro mas importante de mi madre', '2025-11-11 06:09:39', '2025-11-11 06:09:39'),
(13, 'diego', 'De dios', 'Diseñador grafico', '2025-11-11 07:06:56', '2025-11-11 07:06:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autors`
--

CREATE TABLE `autors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `anio_publicacion` year(4) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `autor_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `isbn`, `anio_publicacion`, `stock`, `autor_id`, `created_at`, `updated_at`) VALUES
(1, 'Chaiwsaw Man', '978-0-306-40615-7', '2013', 100, 4, '2025-11-01 00:10:50', '2025-11-11 07:33:32'),
(2, '100 años de soldedas', '978-0-306-40615-9', '2009', 200, 1, '2025-11-01 00:11:26', '2025-11-01 00:11:26'),
(3, 'Programación de nomina', '978-0-306-40615-2', '1990', 10, 8, '2025-11-01 00:13:20', '2025-11-06 22:56:50'),
(4, 'Berserk', '978-0-306-40612-5', '2012', 50, 6, '2025-11-02 00:17:33', '2025-11-02 00:17:33'),
(5, 'Naruto', '978-0-306-40615-1', '2010', 20, 6, '2025-11-02 00:18:37', '2025-11-02 00:18:37'),
(6, 'One Piece', '975-0-306-40615-9', '1998', 1000, 6, '2025-11-02 00:20:38', '2025-11-07 01:22:06'),
(7, 'Dragon Ball Z', '978-0-306-40612-2', '1999', 500, 9, '2025-11-06 22:56:26', '2025-11-06 22:56:26'),
(8, 'Black Clover', '978-0-306-45615-9', '2010', 200, 10, '2025-11-07 01:24:08', '2025-11-07 01:24:08'),
(9, 'el libro de mi querida madre', '978-0-306-49615-9', '1992', 5, 12, '2025-11-11 06:10:14', '2025-11-11 06:10:14'),
(10, 'Aprendiendo a diseñar', '958-0-306-40612-5', '2020', 14, 13, '2025-11-11 07:10:20', '2025-11-11 07:20:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2025_10_27_210101_create_failed_jobs_table', 0),
(8, '2025_10_27_210101_create_password_resets_table', 0),
(9, '2025_10_27_210101_create_personal_access_tokens_table', 0),
(11, '2025_10_27_210101_create_users_table', 0),
(15, '2025_10_27_210711_create_autors_table', 2),
(46, '2014_10_12_000000_create_users_table', 3),
(47, '2014_10_12_100000_create_password_resets_table', 3),
(48, '2019_08_19_000000_create_failed_jobs_table', 3),
(49, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(50, '2025_10_27_210101_create_autores_table', 3),
(51, '2025_10_27_210101_create_libros_table', 3),
(52, '2025_10_27_210101_create_prestamos_table', 3),
(53, '2025_10_27_210101_create_usuarios_table', 3),
(54, '2025_10_27_210104_add_foreign_keys_to_libros_table', 3),
(55, '2025_10_27_210104_add_foreign_keys_to_prestamos_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '3bbfbb850ca37d903f52fe7184fbc0158200497d1c5c7c4b4c8fd666c8386ed1', '[\"*\"]', NULL, NULL, '2025-10-31 01:27:10', '2025-10-31 01:27:10'),
(2, 'App\\Models\\User', 1, 'auth_token', 'dd151697e1253474a7b1e7a2f3be12285d53f80fe09b226f9c4bff4b58422459', '[\"*\"]', '2025-11-02 00:44:13', NULL, '2025-10-31 01:29:17', '2025-11-02 00:44:13'),
(3, 'App\\Models\\User', 2, 'auth_token', '877422998715cd0b19467714f6d8f746baccf9dbe69c55637d371db98a28b243', '[\"*\"]', NULL, NULL, '2025-10-31 02:01:11', '2025-10-31 02:01:11'),
(4, 'App\\Models\\User', 1, 'auth_token', '434b6654ad0fdaa981feeaf717c7f5a8d9c8228671a511111a19d72dc4e030ee', '[\"*\"]', '2025-10-31 02:01:47', NULL, '2025-10-31 02:01:26', '2025-10-31 02:01:47'),
(5, 'App\\Models\\User', 1, 'auth_token', 'c7f372cc1c2c2c2f53f944927db061bf07949c0ace8afda5af2c0cc2c04c0691', '[\"*\"]', '2025-11-01 00:11:26', NULL, '2025-10-31 22:57:22', '2025-11-01 00:11:26'),
(6, 'App\\Models\\User', 1, 'auth_token', 'd4d424f4a8254d69d036237dc49b37efd477bd5c6b5dae36fd485a9b65dd9449', '[\"*\"]', '2025-11-02 00:20:38', NULL, '2025-11-01 00:12:20', '2025-11-02 00:20:38'),
(7, 'App\\Models\\User', 2, 'auth_token', 'a3ff8a3726a4f8a1faef1debc89de06482133af4d4a9272ed8669789d86a6256', '[\"*\"]', '2025-11-02 00:44:43', NULL, '2025-11-02 00:21:26', '2025-11-02 00:44:43'),
(8, 'App\\Models\\User', 2, 'auth_token', '940636efd0eda537b3f3e274355f7e411fac006803db2c162938e3b540200af1', '[\"*\"]', '2025-11-02 00:55:16', NULL, '2025-11-02 00:44:58', '2025-11-02 00:55:16'),
(9, 'App\\Models\\User', 2, 'auth_token', '34b9d5cb524f0f1f6fe6419c52f8521fb32bd4d622ba441b5e0cb08cde1702c5', '[\"*\"]', '2025-11-02 01:40:36', NULL, '2025-11-02 00:55:38', '2025-11-02 01:40:36'),
(10, 'App\\Models\\User', 2, 'auth_token', '6cfc8f0351efecc7059c02ea456bf1a5eb221e2835fb558613871c76ad470830', '[\"*\"]', '2025-11-02 02:46:06', NULL, '2025-11-02 01:42:19', '2025-11-02 02:46:06'),
(11, 'App\\Models\\User', 1, 'auth_token', '9ccfefc629ec7337ea81b72fa6fc21e32077bc84aab50e2115641c7339813e8b', '[\"*\"]', '2025-11-02 03:07:29', NULL, '2025-11-02 02:51:57', '2025-11-02 03:07:29'),
(12, 'App\\Models\\User', 1, 'auth_token', 'c4e5f231f15db109a525a4d72d88ffc3525686789207230de8a6b266a2cf8a10', '[\"*\"]', '2025-11-04 22:04:28', NULL, '2025-11-04 21:52:10', '2025-11-04 22:04:28'),
(13, 'App\\Models\\User', 2, 'auth_token', 'f98c6376a347d102faaa3a283c429807e0969233a391288b8ca50ac65239d23d', '[\"*\"]', '2025-11-06 05:11:43', NULL, '2025-11-06 05:10:19', '2025-11-06 05:11:43'),
(14, 'App\\Models\\User', 1, 'auth_token', '90a1a4c860a0ec0c5bb26ec228440f2147595af5d5d835fe6e012e1be05784b0', '[\"*\"]', '2025-11-06 05:11:58', NULL, '2025-11-06 05:11:51', '2025-11-06 05:11:58'),
(15, 'App\\Models\\User', 2, 'auth_token', '516f0ea849198042200bf8019a080a09aaaa0f247ba6fc21d3162faaa2af9f1e', '[\"*\"]', '2025-11-06 06:06:10', NULL, '2025-11-06 05:13:53', '2025-11-06 06:06:10'),
(16, 'App\\Models\\User', 1, 'auth_token', '4fc03ee8b16d2ac173ea07c159becc93c992edaa318045510ad5904f89c2dd8f', '[\"*\"]', '2025-11-06 06:31:03', NULL, '2025-11-06 06:06:28', '2025-11-06 06:31:03'),
(17, 'App\\Models\\User', 4, 'auth_token', 'c566c529f6beaf69b20f0d1426e87eefde4b129b37dfcbda989e0227ca97a3fb', '[\"*\"]', '2025-11-06 22:51:58', '2025-11-06 23:49:55', '2025-11-06 22:49:56', '2025-11-06 22:51:58'),
(18, 'App\\Models\\User', 1, 'auth_token', '3705e42eb1967a1579c0bfbd1e41b6832faab60a54e67d5484f2f7248cff7acc', '[\"*\"]', '2025-11-06 23:06:39', '2025-11-06 23:53:16', '2025-11-06 22:53:16', '2025-11-06 23:06:39'),
(19, 'App\\Models\\User', 1, 'auth_token', '5ba656af77e9e10f43fea3f601cd7dda69f8d95b3447c4446d9b5fe8892070db', '[\"*\"]', '2025-11-06 23:30:34', '2025-11-07 00:06:49', '2025-11-06 23:06:49', '2025-11-06 23:30:34'),
(20, 'App\\Models\\User', 1, 'auth_token', 'c5348787eef6d7af0c9cb6ea35f6f1520b15bfc7662ea183413cc985a51389b9', '[\"*\"]', '2025-11-07 01:19:46', '2025-11-07 01:30:16', '2025-11-07 00:30:16', '2025-11-07 01:19:46'),
(21, 'App\\Models\\User', 5, 'auth_token', '950894a500569c99ffbfca66ea523e4dcaf9a6701dabc689305a5fe342421322', '[\"*\"]', '2025-11-07 01:21:51', '2025-11-07 02:20:55', '2025-11-07 01:20:55', '2025-11-07 01:21:51'),
(22, 'App\\Models\\User', 1, 'auth_token', '7072e7e8b474c147c1f38489d38e5444cbfcf6f14c346564770b219b04f06a3a', '[\"*\"]', '2025-11-07 01:28:21', '2025-11-07 02:21:59', '2025-11-07 01:21:59', '2025-11-07 01:28:21'),
(23, 'App\\Models\\User', 1, 'auth_token', '92835b14a80ea96adb3980002c31cc8ae0e23855e42d39bcb7a36905cf3f90a0', '[\"*\"]', '2025-11-08 20:35:13', '2025-11-08 21:28:12', '2025-11-08 20:28:12', '2025-11-08 20:35:13'),
(24, 'App\\Models\\User', 1, 'auth_token', '0e5f8bf2a778fe55e1fcb7c04beabde459b733f455e93a0d847f6d9f30a9d2ac', '[\"*\"]', '2025-11-08 21:27:29', '2025-11-08 21:40:28', '2025-11-08 20:40:28', '2025-11-08 21:27:29'),
(25, 'App\\Models\\User', 1, 'auth_token', '3ffe9239898d59a433a0122e5f6550009c2b831baffe9929408df2d640e63107', '[\"*\"]', '2025-11-11 06:44:52', '2025-11-11 07:06:44', '2025-11-11 06:06:44', '2025-11-11 06:44:52'),
(26, 'App\\Models\\User', 1, 'auth_token', '8bac6acfbf56a44d9f515540d17403bd2ffdb9005dff35ee2a1b89eae15264f8', '[\"*\"]', NULL, '2025-11-11 07:45:42', '2025-11-11 06:45:42', '2025-11-11 06:45:42'),
(27, 'App\\Models\\User', 1, 'auth_token', 'dc62dd0ffb15dffb853e96ceacbb1c6e742ebf922d6a44c33a6520c871017869', '[\"*\"]', NULL, '2025-11-11 07:46:19', '2025-11-11 06:46:19', '2025-11-11 06:46:19'),
(28, 'App\\Models\\User', 1, 'auth_token', 'a9375c943d82c753c153f11b4c5d8a27cd89a42f5ee39006bc12ecff9046e167', '[\"*\"]', '2025-11-11 07:10:24', '2025-11-11 08:03:16', '2025-11-11 07:03:16', '2025-11-11 07:10:24'),
(29, 'App\\Models\\User', 2, 'auth_token', 'e6b4956acc6f6ac0fe231f950b301fd4bc0ce0d525dc15439f439a665810aaaf', '[\"*\"]', '2025-11-11 07:30:44', '2025-11-11 08:10:44', '2025-11-11 07:10:44', '2025-11-11 07:30:44'),
(30, 'App\\Models\\User', 1, 'auth_token', '55444ad1465b0c9609a8ace11d153c4b61feaf12c27db997831fad654a578207', '[\"*\"]', '2025-11-11 07:33:34', '2025-11-11 08:32:54', '2025-11-11 07:32:54', '2025-11-11 07:33:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `libro_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion_estimada` date NOT NULL,
  `fecha_devolucion_real` date DEFAULT NULL,
  `estado` enum('prestado','devuelto','vencido') DEFAULT 'prestado',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id`, `usuario_id`, `libro_id`, `cantidad`, `fecha_prestamo`, `fecha_devolucion_estimada`, `fecha_devolucion_real`, `estado`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0, '2025-11-02', '2025-11-05', NULL, 'prestado', '2025-11-02 02:02:36', '2025-11-02 02:02:36'),
(2, 2, 4, 0, '2025-11-12', '2025-11-28', NULL, 'prestado', '2025-11-06 05:11:12', '2025-11-06 05:11:12'),
(3, 2, 1, 5, '2025-11-20', '2025-12-06', NULL, 'devuelto', '2025-11-06 06:05:24', '2025-11-06 06:30:58'),
(4, 2, 1, 50, '2025-12-05', '2025-12-11', NULL, 'devuelto', '2025-11-06 06:06:10', '2025-11-06 06:22:05'),
(5, 4, 3, 4, '2025-11-07', '2025-12-18', NULL, 'devuelto', '2025-11-06 22:51:32', '2025-11-06 22:56:50'),
(6, 5, 6, 300, '2025-11-13', '2025-11-13', NULL, 'devuelto', '2025-11-07 01:21:34', '2025-11-07 01:22:06'),
(7, 2, 10, 1, '2025-11-11', '2025-11-25', NULL, 'prestado', '2025-11-11 07:20:42', '2025-11-11 07:20:42'),
(8, 2, 1, 1, '2025-11-11', '2025-11-25', NULL, 'devuelto', '2025-11-11 07:21:30', '2025-11-11 07:33:28'),
(9, 2, 1, 1, '2025-11-11', '2025-11-25', NULL, 'devuelto', '2025-11-11 07:22:20', '2025-11-11 07:33:30'),
(10, 2, 1, 1, '2025-11-11', '2025-11-25', NULL, 'devuelto', '2025-11-11 07:22:23', '2025-11-11 07:33:32'),
(11, 2, 1, 10, '2025-11-11', '2025-11-25', NULL, 'devuelto', '2025-11-11 07:30:40', '2025-11-11 07:33:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jonathan zanguña', 'jonathanzb40@gmail.com', '$2y$10$XE6tESnrZPX8p1Csl8HQeOH.ip6apDzDqTu7IfgGEaxC.8EYvS8MK', 'admin', NULL, '2025-10-31 01:26:45', '2025-10-30 20:26:56'),
(2, 'diego guevara', 'diego@gmail.com', '$2y$10$BRaeT3mzuZ5hSi0rG7a.ZOg92uknukBUQcT8bTDtMDtWAmejB0BNq', 'user', NULL, '2025-10-31 02:00:55', '2025-10-31 02:00:55'),
(4, 'mayerli Zanguña', 'majerli95@hotmail.com', '$2y$10$3f1RvKj/ldo9m4SWj4c.8OqKisYdp5/RNubtCt9hmZ2guQW22pBle', 'user', NULL, '2025-11-06 22:49:29', '2025-11-06 22:49:29'),
(5, 'carlo', 'carlo@gmail.com', '$2y$10$n1NhOmD6uS38GVXeLhP31Oq/CGic3SV96xfvEFuGvtRaO.2YCbbLO', 'user', NULL, '2025-11-07 01:20:41', '2025-11-07 01:20:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `autors`
--
ALTER TABLE `autors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `fk_libros_autores` (`autor_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_prestamos_usuarios` (`usuario_id`),
  ADD KEY `fk_prestamos_libros` (`libro_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `autors`
--
ALTER TABLE `autors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `fk_libros_autores` FOREIGN KEY (`autor_id`) REFERENCES `autores` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `fk_prestamos_libros` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prestamos_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
