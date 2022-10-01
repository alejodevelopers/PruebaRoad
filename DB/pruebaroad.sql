-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-10-2022 a las 09:02:50
-- Versión del servidor: 5.7.33
-- Versión de PHP: 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebaroad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_09_30_214640_create_sessions_table', 1),
(7, '2022_09_30_215833_create_students_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JJby6eROMeBfubYE69bVVIRJqqbUbHP7eQIgxU1o', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicWs4RW0wakpxVEFVNE5neE9uT3BzWGJ6VUNsZ0lVczlhczgxTUF2QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjAyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbGl2ZXdpcmUvcHJldmlldy1maWxlL0c1anFLd1o5UmNhbUR3RFFtNllnRlh0N01JOEw4bC1tZXRhZEdWemRHbHRiMjVwWVd3dE15NXFjR2M9LS5qcGc/ZXhwaXJlcz0xNjY0NjE2Njg2JnNpZ25hdHVyZT0xMjgzOWM2YzJhNzY3ZDEwNDkxMjUzNTU1YTg3MmM3MTAzODNhMGJhZjgzNzQ0ZjE3MWYwZTY3Nzg5OTdhNzg1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MTp7aTowO3M6NzoibWVzc2FnZSI7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ5MklYVU5wa2pPMHJPUTVieU1pLlllNG9Lb0VhM1JvOWxsQy8ub2cvYXQyLnVoZVdHL2lnaSI7fQ==', 1664614938);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `name`, `photo`, `age`, `identification`, `description`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Cristal Beier', 'public/profile_photo/fHZPtEoy65w7FjrMEsvExd0ZOtXrChaCon8bxEJE.jpg', '17', '1293415241', 'Ut atque dolorem aspernatur perspiciatis reprehenderit est deserunt. Et velit minima aut magnam impedit. Quia quod enim qui culpa.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:58:17'),
(2, 'Mr. Kraig Hills', 'public/profile_photo/F1C68Cw1wY1R82kvLkfkkoyFF8Ib51bProjLqoYz.jpg', '23', '895991756', 'Fugit optio libero recusandae omnis. Ea rem ut quia velit amet quia. Exercitationem omnis et unde rerum delectus.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:59:11'),
(3, 'Meaghan Herman', 'public/profile_photo/ypFqWJRCGtRVkXfCoyJvNGsCR1ekuzKVC7SwAgxQ.jpg', '28', '1725855085', 'Eveniet facilis veniam rerum perferendis. Quos consequuntur deleniti eum commodi totam. Sed autem aut aut voluptate.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 14:01:27'),
(4, 'Kadin O\'Hara', 'public/profile_photo/nqoIgaMZJV5GUzI9toPyZ5FdtBF7CGjPoD40FFc5.jpg', '17', '1786661730', 'Accusantium quibusdam aspernatur est nihil officiis. Natus fugiat perspiciatis ea et aut earum. Et corrupti id dolores rerum tempora perferendis modi. Et id praesentium ut sit qui atque debitis.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 14:00:39'),
(5, 'Miss Burdette Beahan MD', 'public/profile_photo/nBVVTBM1IIQ5GzJlTQ8ZJCmw5ycnrRoHLKW3t0hJ.jpg', '21', '263006926', 'Omnis assumenda at voluptatem eos. Veritatis est laudantium recusandae eos. Libero tenetur qui fugiat sequi voluptate deleniti.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 14:01:13'),
(8, 'Edwina Mante', '0', '24', '1710446379', 'Dolorem corporis quaerat minus a sunt officia at qui. Culpa sunt ullam velit dicta error. Ex rerum voluptas laborum suscipit impedit nostrum. Sapiente et eum tenetur sint alias molestiae neque aut.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(9, 'Dolly Dicki', '0', '19', '1152509736', 'Voluptatem earum tempore dolor. Laboriosam reprehenderit facere perspiciatis accusantium magni omnis qui. Ut natus aut necessitatibus dolores quia.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(10, 'Dr. Ludwig Maggio III', '0', '28', '2053464325', 'Similique provident similique enim odio possimus. Non doloremque perspiciatis et dolor eum qui. Nobis laboriosam odit ullam rerum. Qui omnis doloribus et et atque.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(11, 'Dr. Wade Renner DDS', '0', '29', '1646396546', 'Enim est ducimus delectus voluptas ad cupiditate totam. Cumque inventore sit consequatur et blanditiis ullam. Error in vel esse repellat non iusto maxime.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(12, 'Nat Pacocha Sr.', '0', '30', '247258592', 'Repellat dolores totam perferendis cumque beatae quia natus. Quae quidem eligendi eligendi eos omnis. Possimus et fugit voluptatem minus voluptatem quo. Ut natus eum quas non.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(13, 'Dr. Ashly Haag', '0', '23', '1938657614', 'Libero culpa fuga ut facere. Qui mollitia dolor temporibus dolorem. Culpa reiciendis officiis sit perspiciatis quis id.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(14, 'Keven Larson', '0', '30', '592960675', 'Sint aliquid dolorem eum laudantium aliquid commodi consequuntur. Dolore magnam sequi maiores dolorem. Illum et facere nobis doloremque ducimus aliquam pariatur.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(15, 'Mrs. Yesenia Prohaska DVM', '0', '27', '924701333', 'Officiis deserunt repellat qui animi praesentium qui. Ut quasi vitae vitae tempore. Eos in dolore quo facere inventore temporibus quidem id. Modi sapiente quaerat nihil et.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(16, 'Mrs. Assunta Heidenreich', '0', '29', '394838102', 'Est et reiciendis minima ut vero delectus ut. Fugit ut corporis inventore aut atque architecto ut. Non sed itaque perferendis eveniet.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(17, 'Dr. Noemy Koelpin', '0', '21', '1911353725', 'Odio sunt doloribus vel aut blanditiis amet voluptate. Voluptatem nostrum aut harum doloribus.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(18, 'Dr. Jacey Rodriguez IV', '0', '19', '883399118', 'Voluptas dolor rerum consectetur omnis omnis debitis aut voluptatibus. Consequuntur dolores omnis et dolor. Hic unde corrupti consequuntur excepturi quis.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(19, 'Kareem Stiedemann', '0', '27', '776928749', 'Distinctio voluptatum saepe doloremque esse blanditiis. Quod blanditiis rerum et qui. Pariatur alias nihil tempora facilis atque earum sit ratione.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(20, 'Dr. Antone Graham DDS', '0', '25', '1912671065', 'Qui ullam vel voluptate. Impedit enim repudiandae dolor quo. Vel molestiae recusandae fugit dolorem atque.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(21, 'Alexandre Windler', '0', '20', '61713455', 'Ipsa voluptas amet corporis reiciendis voluptatum autem. Omnis dolores odit pariatur.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(22, 'Eulalia O\'Conner', '0', '22', '295443761', 'Soluta temporibus est accusamus rerum. Minima aut et quam delectus est.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(23, 'Darien Waters', '0', '26', '1871821589', 'Nam nemo suscipit similique distinctio voluptas et. Eum perferendis aut aspernatur dignissimos placeat. Libero ipsa alias et consequuntur harum similique.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(24, 'Joana Hirthe', '0', '26', '609886542', 'Occaecati nihil qui laboriosam incidunt impedit suscipit illo. Cumque omnis quos repellat qui sit aut sit. Fugit sequi atque ad quia. Occaecati similique non atque at.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(25, 'Dr. Adrianna Grady Sr.', '0', '29', '1806412201', 'Et debitis nam velit quisquam praesentium quasi. Qui vero qui est minus quis rerum non. Dolorem rem molestiae ut dolor minima quia.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(26, 'Cindy Howell', '0', '28', '167817335', 'Laborum quia id tempore eaque. Debitis ut perspiciatis sed enim. Ut quod eum soluta dicta similique vel optio. Et aliquam quia voluptatum asperiores occaecati ipsa facilis sint.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(27, 'Mrs. Cassandra Swaniawski Jr.', '0', '18', '806366090', 'Molestias magnam quis est optio esse quisquam culpa. Incidunt quod est aut maiores consectetur aliquam ratione aut. Cupiditate corporis facilis facilis minima aut sed officiis.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(28, 'Hilma Hilpert', '0', '21', '1812536264', 'Voluptates occaecati et culpa id temporibus. Consectetur quas blanditiis unde omnis veniam. Eveniet ratione a aut molestiae atque soluta.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(29, 'Jovani Herman', '0', '20', '1784806055', 'Distinctio culpa fugit qui libero. Sunt sunt autem ipsam inventore quisquam sint iusto. A sed officiis impedit sed. Non sed ipsam saepe ea et accusantium qui.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(30, 'Sadye Sipes', '0', '18', '1020554869', 'Sit aut quam soluta ipsum suscipit. Qui neque ratione ut sit est iure. Exercitationem rerum illum et tenetur quam recusandae dicta. Corporis officia excepturi voluptatum animi amet animi.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(31, 'Marc Lubowitz', '0', '19', '1051288443', 'Odio quia est quo placeat reprehenderit illum. At est natus et expedita explicabo animi dolore harum.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(32, 'Tessie Satterfield II', '0', '27', '166032308', 'Velit qui facere eligendi eum. Officia similique quod totam reiciendis.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(33, 'Mr. Edmond Stamm', '0', '18', '935137989', 'Unde nam rerum est consequuntur et. Debitis facilis aliquam quam voluptatem amet et. Voluptates amet voluptas cupiditate numquam. Deleniti qui iusto ut libero quisquam.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(34, 'Madaline Wisoky', '0', '18', '96497940', 'Ad autem veniam velit quisquam voluptatem. Ut deleniti hic tempora et magnam et fugit saepe. Similique delectus est et.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(35, 'Dominique Torphy V', '0', '20', '1145447823', 'Nostrum et quidem enim earum et modi sapiente et. Iure sapiente ea culpa qui. Doloremque corrupti aut fugit aut provident earum id. Non assumenda id consequatur quisquam quos.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(36, 'Idella Trantow', '0', '20', '60747040', 'Occaecati doloribus non sunt esse architecto voluptas. Dolorum iure doloremque alias dicta. Sapiente enim ut rerum et dolor et ea.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(37, 'Ezra Rolfson MD', '0', '19', '1768219775', 'Dolorem et reprehenderit modi recusandae optio quia quis. Eligendi aliquid tempora veniam atque. Excepturi inventore beatae iusto sint nihil. Sint tempora temporibus quas optio et sed minima.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(38, 'Francisca Douglas', '0', '22', '923929187', 'Maxime est ut et ipsum cum recusandae. Recusandae dolores perferendis ipsam facere. Iusto eum minima suscipit ut. Magni eveniet et vel ex explicabo quo nam.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(39, 'Ms. Marcia Torphy Jr.', '0', '17', '969245537', 'Quo a nihil qui occaecati soluta qui. Et earum eos autem pariatur. Vitae non neque commodi excepturi.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(40, 'Mr. Price Tillman IV', '0', '29', '103196787', 'In eaque ut aut. Nobis sequi voluptas et. Et soluta maxime et amet natus. Omnis fugiat quia et voluptatum.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(41, 'Flo Mayert I', '0', '29', '36928954', 'Voluptatem nobis ab sit debitis et quo. Reprehenderit vel dolores omnis enim. Ut quidem ratione iste et dicta ipsa laudantium. Fuga debitis ipsam sed velit.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(42, 'Gideon Legros', '0', '17', '1978255543', 'In ab nemo aut voluptatem quo assumenda inventore. Officia eum suscipit est rerum ab non qui ut. Quae quo omnis et et animi.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(43, 'Carolyne Bradtke', '0', '21', '1382716676', 'Voluptas porro repudiandae in ratione eos. Enim ipsum omnis impedit facilis optio sed animi. Perspiciatis odio molestias laboriosam nihil dignissimos quibusdam.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(44, 'Mr. Gilberto Fadel PhD', '0', '22', '598908839', 'Architecto laborum et officiis ratione similique laboriosam. Ipsa id perspiciatis beatae maxime. Sunt sed quibusdam est. Aut culpa et voluptatibus.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(45, 'Dedric Kuhic', '0', '19', '811167725', 'Voluptatem suscipit ex voluptatem perferendis. Delectus tempore eos aspernatur. Distinctio id nam consequatur suscipit tempore provident vitae.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(46, 'Mylene Wolf', '0', '18', '16229637', 'Repellendus ullam officia ipsam laboriosam. Fugit autem expedita corporis reprehenderit vel rem.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(47, 'Miss Cassandra Turcotte IV', '0', '28', '376074710', 'Assumenda ipsa ipsa aut facere. Nemo quis ea sed doloribus. Reiciendis reprehenderit voluptates voluptates corrupti eius eos. Praesentium modi voluptas reiciendis aperiam provident.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(48, 'Madie Fahey', '0', '30', '1944153427', 'Libero alias optio consequuntur eum recusandae. Optio et voluptatem dignissimos alias. Quo aut maiores expedita sint ea exercitationem. Voluptatem est ex voluptatem adipisci rem.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(49, 'Juliet Goyette DDS', '0', '21', '935146211', 'Ut accusamus beatae doloribus. Earum dolores soluta doloremque qui fuga sit officia tenetur. Rem soluta consequatur illo minima. Quam quam commodi sint rerum.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(50, 'Fatima Windler PhD', '0', '20', '1161933197', 'Illo quo non quis ut eum est ut. Cupiditate molestias dicta vel doloribus possimus animi nulla. Voluptas omnis molestiae odit consectetur.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(51, 'Prof. Stephan Koelpin', '0', '20', '1759670741', 'Laboriosam quidem qui est. Quo ullam placeat fugiat amet. Ea reiciendis repudiandae est aut. Porro suscipit quasi sed nulla voluptatem. Perferendis mollitia soluta et id et.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(52, 'Arnulfo Brown', '0', '30', '298406223', 'Veritatis molestiae nemo quo consequatur id et. Qui doloribus aperiam perferendis dignissimos amet et. Dolore corporis hic cumque inventore. Sunt quam tempore nobis dolor harum sunt et deleniti.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(53, 'Miss Jennifer Gleichner', '0', '17', '760152691', 'Maxime dignissimos amet ipsa ullam ex. Itaque nobis quos sed. Illo fuga saepe quia praesentium explicabo sed deserunt. Expedita commodi dolore suscipit asperiores nihil.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(54, 'Sammy Walter', '0', '24', '775256162', 'In reiciendis molestias qui rerum et et. Officiis laboriosam adipisci dolores vel inventore officia iste voluptatem. Nulla dicta aliquam et qui ipsa magnam. Nam maxime qui id sit.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(55, 'Rodger Jacobson II', '0', '18', '691804481', 'Inventore molestias tenetur ut neque sint dolorum fuga. Porro quos maiores soluta. Quibusdam commodi voluptatem eum praesentium temporibus. Ipsum facere voluptates quasi repellat dolorum labore.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(56, 'Zora Miller', '0', '25', '827722442', 'Corporis sunt a quia vero facilis nobis. Dolore ut dolorum reiciendis amet sint deleniti.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(57, 'Ludie Lind', '0', '18', '1516190574', 'Et alias nihil labore expedita. Et qui non maiores ipsa. Quia autem repellendus ex ratione.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(58, 'Bret Bailey', '0', '18', '27067231', 'Vitae suscipit sed reprehenderit et totam. Cupiditate rerum minus neque veritatis qui. Reprehenderit qui et eveniet qui quia aut.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(59, 'Ceasar Rowe', '0', '28', '1687146414', 'Reiciendis ex officia dolorum sunt similique. Vero maxime est sint accusantium. Odit praesentium et consequatur repellendus incidunt nihil est.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(60, 'Miss Liza Mraz', '0', '24', '1180961900', 'Velit nobis ad est quis quisquam. Tenetur ipsam nostrum aliquid dignissimos. Eum accusantium vel omnis. Dolorem doloribus incidunt est.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(61, 'Evie Toy DVM', '0', '17', '369229993', 'Et error omnis illo ad. Accusamus et ea dolore laborum illum. Expedita error nostrum quia minus ut.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(62, 'Tabitha Champlin I', '0', '22', '1260097401', 'Nostrum soluta deserunt odio rerum voluptas explicabo consequatur. Impedit omnis nostrum cupiditate sit sit.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(63, 'Ms. Aiyana Pollich MD', '0', '25', '391925607', 'Hic quam tempora ipsum velit eum facilis fugiat impedit. Enim laborum sit voluptatem aperiam unde. Nam eaque hic ea ut unde amet doloremque. Et soluta exercitationem ipsa amet.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(64, 'Breanna Koss', '0', '19', '1091129196', 'Animi explicabo ratione sed eligendi in. Earum distinctio dolorem sed rem dolorum. Non modi optio non iusto quaerat. Aut et aut dolores.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(65, 'Sadye Terry', '0', '24', '1977779091', 'Quo deleniti laudantium consequuntur magni officiis dolores. Nihil illo vitae laudantium aliquid quis voluptatum magni.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(66, 'Leif Tromp', '0', '30', '1313848675', 'Et alias voluptas illo nihil quia velit deserunt. Accusamus neque rem tempore minima distinctio dolore. Deleniti tempore voluptates et facere eum.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(67, 'Peyton Krajcik Sr.', '0', '22', '2051808650', 'Quibusdam at nam eum odit voluptate expedita aperiam. Voluptas est officiis consequatur eveniet consequatur asperiores. Error eos maxime quam animi blanditiis.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(68, 'Dr. Delmer Wehner', '0', '26', '1323031252', 'Ut eius id aut et ut. Dolores sint reiciendis culpa. Possimus eius ut reiciendis explicabo velit.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(69, 'Pascale Leuschke', '0', '30', '1321670978', 'Quo similique ut id eum corrupti odit id. Vero explicabo provident magni occaecati modi vel. Harum tempora sed ducimus repellat fuga quia.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(70, 'Mr. Justyn O\'Connell Jr.', '0', '20', '1148432530', 'Explicabo maiores ullam eum suscipit sint eveniet debitis ad. Optio magni fugit at quam. Autem perferendis qui repudiandae qui magni. Omnis laboriosam unde ut non.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(71, 'Miss Dana Yost I', '0', '21', '1026239864', 'Laboriosam repellendus in quidem quod. Fugit ea voluptatem nostrum. Eaque labore ea iure animi inventore et ut enim.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(72, 'Miss Assunta Ortiz PhD', '0', '23', '823916856', 'Qui enim assumenda molestiae voluptatem. Provident ut consequatur dicta quis velit et. Aperiam magnam at sed sint.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(73, 'Alexa Donnelly MD', '0', '21', '154599913', 'Et deserunt cupiditate eius a qui sed dolorem molestias. Ducimus vel sequi sed vel velit. Modi deserunt fugiat vero aut quisquam.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(74, 'Ramona Nienow DDS', '0', '18', '935852125', 'Doloribus accusamus praesentium voluptatibus quisquam. Velit deserunt excepturi possimus dicta praesentium fugit vitae.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(75, 'Annette Herzog', '0', '17', '864270370', 'Rerum praesentium inventore sit officia dolores beatae omnis. Provident quae quas laudantium sunt fugiat. Voluptas corporis omnis quod. Dignissimos modi autem minus impedit optio ut.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(76, 'Jovani Green DDS', '0', '19', '575332737', 'Eum velit id aliquid mollitia quis quaerat odio. Magnam cupiditate eius adipisci voluptatem iusto.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(77, 'Greyson Terry', '0', '27', '809885059', 'Voluptas quos asperiores hic aperiam iste ab optio. Qui sunt magni voluptatem perspiciatis. Saepe nisi id repellendus. Voluptas impedit voluptatem ea numquam in.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(78, 'Wava Goodwin I', '0', '19', '947281308', 'Aut molestiae aut inventore. Placeat molestiae nulla culpa et quo. Velit occaecati enim nesciunt consequatur consequatur.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(79, 'Dr. Valerie Hettinger V', '0', '30', '1999871090', 'Atque autem hic beatae. Est adipisci voluptas ratione nihil placeat accusantium et. Distinctio ad odio maiores sit delectus. Sint dolorum et impedit iusto.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(80, 'Otto Kling IV', '0', '17', '1809540684', 'Id eos id commodi voluptatibus quis blanditiis. Molestiae laudantium minima in in qui corrupti enim. Nobis est aliquam dolores sint vero enim tenetur. Alias at maiores quo nam iure.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(81, 'Soledad Oberbrunner', '0', '23', '231010239', 'Omnis reiciendis omnis vel. Deserunt hic praesentium quam sunt neque nostrum aliquam. Et nobis corporis assumenda quia eveniet ut qui ducimus.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(82, 'Prof. Agustina Cole', '0', '25', '1524661718', 'Quam voluptates ullam voluptas quasi. Et sapiente nihil dolorem. Blanditiis cumque placeat vel quaerat et. Est vero repudiandae non accusamus error ut ratione. Neque aspernatur in alias et et.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(83, 'Daisy Nader', '0', '21', '1308510308', 'Aut delectus ea corporis ullam. Illo aut dolores enim commodi voluptates veritatis voluptatibus. Ducimus quis dolorem sunt esse et quod.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(84, 'Gianni Marvin', '0', '25', '115569701', 'Illo fugiat suscipit asperiores. Mollitia omnis magni aspernatur necessitatibus dolorem quae praesentium veritatis. Eaque nesciunt minus eos minima laudantium occaecati.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(85, 'Kali Davis', '0', '21', '1192497978', 'Ea aut quis occaecati nemo distinctio repellendus. Cupiditate inventore repellat non aut inventore. Qui exercitationem ut et laborum.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(86, 'Ms. Kelly Bosco MD', '0', '23', '1644684143', 'Molestiae veritatis rerum sed. Odio officiis sed minima accusantium adipisci doloremque. Aut consequuntur et deleniti voluptas veniam.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(87, 'Dr. Gussie Roob', '0', '22', '1736177726', 'Dignissimos voluptatem nihil magnam reprehenderit facere sed. Mollitia est ut doloribus. Sequi ut facilis sequi qui. Illum molestiae laboriosam aspernatur dicta voluptatem ab inventore.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(88, 'Maryse Marks', '0', '17', '623490338', 'Ut corporis corrupti dolorem quibusdam. Enim quia et qui ipsum architecto culpa hic. Iste dolorum vitae sapiente esse magnam numquam.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(89, 'Alexie Waelchi', '0', '24', '1152056006', 'Quis dolor voluptatibus repudiandae libero optio aliquid. Et esse aut est aut aut sed. Ut minus id ut. Non a rerum eum architecto tempora mollitia.', '1', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(90, 'Waino Lemke', '0', '22', '1359691989', 'Nostrum architecto non occaecati quibusdam necessitatibus illum. Quo dolor quos exercitationem distinctio minima expedita. Voluptatem vel esse cupiditate facilis sunt repellendus aut.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(91, 'Mr. Jimmie Parker', '0', '18', '1041975881', 'Ut consequatur dolorem ratione eum architecto. A perspiciatis et in quasi et. Vero voluptatibus repellat rerum quas est et reprehenderit. Explicabo ratione aliquid rerum quia aut repellendus.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(92, 'Prof. William Cassin Jr.', '0', '20', '1458963186', 'Repellendus at est repudiandae ut at sunt. Autem sed ullam distinctio voluptas laboriosam adipisci et quis. Aut eum quas id delectus voluptatem. Voluptas qui libero asperiores et sed.', '3', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(93, 'Dr. Hailey Bashirian III', '0', '22', '2069427473', 'Aut nostrum exercitationem ratione. Autem iure consequatur enim eos. Officiis corporis voluptates vel autem dolor saepe assumenda. Omnis est optio doloremque libero hic.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(94, 'Ms. Hermina Klein Sr.', '0', '26', '937532651', 'Sint qui aut est iusto fuga sit. Quia voluptatem quis aperiam aut ullam. Vero velit molestias enim veritatis qui.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(95, 'Marcia Stanton', '0', '26', '1028716926', 'Odio eius ullam vero iste expedita quidem. Est quas totam atque illum animi ipsum.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(96, 'Roberta Beier', '0', '30', '111925732', 'Possimus quod dolore quidem doloremque non sed. Aut alias ipsam dignissimos corrupti. Dolores praesentium sunt dolorum dolorem ut ipsam.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(97, 'Janis Effertz', '0', '19', '835149396', 'Voluptates quia et eveniet iusto. Harum architecto nihil accusamus. Aspernatur repellat sit maiores rerum eos.', '0', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(98, 'Devyn Boehm', '0', '19', '803467071', 'Voluptatem incidunt velit aut eum voluptatem. Voluptate aspernatur aperiam et.', '4', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(99, 'Mariah Crona', '0', '24', '1948983082', 'Et quas corporis eaque voluptatem saepe. Ut nemo nostrum consectetur odit voluptatum eum voluptatum. Qui dolores in eum velit rerum praesentium sunt.', '2', 'Reprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28'),
(100, 'Euna Abernathy', '0', '25', '978049506', 'Alias labore iure odio consectetur amet. Sed optio sequi omnis quam ea natus provident. Quo atque architecto qui nihil. Quisquam saepe et consectetur enim.', '5', 'Aprobado', '2022-10-01 13:52:28', '2022-10-01 13:52:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Alejandro Castillo', 'alejo.desarrolloweb@gmail.com', '2022-10-01 13:52:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'HQLGn8bjWl', NULL, NULL, '2022-10-01 13:52:05', '2022-10-01 13:52:05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
