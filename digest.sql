-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 10 2021 г., 22:05
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `digest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_08_173906_create_phonebooks_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `phonebooks`
--

CREATE TABLE `phonebooks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `phonebooks`
--

INSERT INTO `phonebooks` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Alexandrine Krajcik II', 'laurianne08@yahoo.com', '+14077850740', '1973-10-11 03:51:43', '2006-04-30 15:01:02'),
(2, 'Yvette Little', 'curtis17@yahoo.com', '+13857731156', '1989-06-13 13:27:22', '1983-11-10 14:06:44'),
(3, 'Meggie Pouros Jr.', 'heber46@hotmail.com', '+19149730143', '1992-12-19 01:35:34', '2017-11-25 13:25:56'),
(4, 'Ulices Hahn V', 'purdy.lolita@hotmail.com', '+13856185634', '1971-11-08 14:54:26', '2008-02-22 23:22:40'),
(5, 'Dr. Clinton Jacobson', 'cindy.legros@hotmail.com', '+13646800673', '2021-03-18 04:24:51', '2000-01-27 19:53:44'),
(6, 'Mr. Percival Bernier', 'fernando.rowe@gmail.com', '+17540788874', '1976-07-02 19:57:07', '1996-11-07 11:09:47'),
(7, 'Aylin Senger', 'piper86@hamill.com', '+15415434559', '1981-12-25 00:41:12', '2009-02-19 23:23:45'),
(8, 'Ms. Deborah Heller PhD', 'clemmie.schroeder@okeefe.com', '+14588543285', '2009-02-23 20:47:42', '2008-12-27 14:27:48'),
(9, 'Arianna Mitchell', 'xdouglas@mccullough.com', '+19892730566', '2005-09-02 22:01:13', '1994-12-26 02:25:32'),
(10, 'Marcelina Jerde', 'plebsack@yahoo.com', '+13233822358', '2006-08-27 19:00:17', '2008-09-01 00:06:17'),
(11, 'Susie Hermiston', 'ngoyette@yahoo.com', '+17703644359', '1971-08-20 14:30:26', '1988-10-17 04:12:39'),
(12, 'Mrs. Verdie Pagac', 'schroeder.aron@cole.com', '+14081167084', '1970-07-27 18:56:35', '1995-02-26 22:54:27'),
(13, 'Mrs. Simone Kilback', 'odell26@yahoo.com', '+18622684145', '1971-08-14 23:23:37', '1985-10-30 06:01:29'),
(14, 'Ida Conroy', 'marielle15@rice.com', '+18789508738', '1999-12-06 21:55:45', '1972-07-19 11:33:46'),
(15, 'Alan Paucek', 'czieme@steuber.info', '+12346136598', '1983-02-13 00:46:09', '1979-09-29 02:40:21'),
(16, 'Flo Steuber PhD', 'rosalia.towne@romaguera.info', '+13525667524', '1997-09-08 01:05:32', '2003-09-19 01:47:33'),
(17, 'Shad Crist', 'magnolia.boehm@gmail.com', '+15511808933', '2001-06-28 05:27:53', '2017-04-10 04:09:22'),
(18, 'Jaqueline Cummerata', 'lakin.lori@gmail.com', '+13029252881', '1987-04-13 02:30:54', '2019-02-26 23:00:01'),
(19, 'Dr. Erling Volkman DVM', 'margarett.harber@gmail.com', '+14693940731', '1974-05-26 22:23:56', '2013-09-26 14:36:08'),
(20, 'Mr. Morgan Hodkiewicz Jr.', 'xlarson@hotmail.com', '+16513491156', '1977-06-17 06:51:52', '2014-06-16 00:06:08'),
(21, 'Dominic Roob', 'monahan.david@hauck.biz', '+18431829373', '1999-02-28 07:47:23', '2015-01-30 23:15:54'),
(22, 'Jacques Lubowitz II', 'ryder.greenholt@hotmail.com', '+17317658572', '1995-02-13 19:07:37', '2011-09-09 20:27:32'),
(23, 'Prof. Sidney Hammes', 'vhills@mueller.com', '+15593002869', '2017-10-20 15:44:01', '1996-07-04 09:31:56'),
(24, 'Ferne Steuber', 'crutherford@hotmail.com', '+19017146865', '1993-02-05 06:03:54', '1996-10-23 12:47:35'),
(25, 'Tyson Hane', 'kenyon.mann@wiza.biz', '+16609925851', '1981-03-05 11:02:20', '1973-01-27 17:38:14'),
(26, 'Robbie Gerhold DDS', 'terrence.carter@yahoo.com', '+16363391650', '2020-03-24 18:25:11', '1981-02-03 13:19:20'),
(27, 'Ambrose Rau', 'chaz.windler@wunsch.com', '+18322612618', '1971-01-02 08:43:46', '2016-05-16 16:20:55'),
(28, 'Corene Denesik', 'quigley.lizeth@yahoo.com', '+17248795809', '1988-12-28 06:03:57', '1987-11-17 15:12:05'),
(29, 'Prof. Darron Gusikowski Sr.', 'djones@pfeffer.biz', '+18069923788', '2009-07-25 09:33:45', '1988-12-27 22:56:47'),
(30, 'Mr. Tad Friesen III', 'kaylin97@hotmail.com', '+14455472868', '2021-07-07 07:10:11', '2005-02-23 22:33:55'),
(31, 'Prof. Anastasia Tillman', 'osteuber@corwin.com', '+14587161351', '1998-09-13 04:16:32', '1979-02-27 06:42:06'),
(32, 'Jerrod Raynor', 'calista.lockman@mraz.biz', '+16514417759', '2005-07-28 01:50:44', '1981-10-23 19:15:36'),
(33, 'Mason Bosco', 'jhilpert@gmail.com', '+15205029844', '2012-11-03 06:42:36', '1986-01-26 15:49:37'),
(34, 'Meagan Mraz', 'corrine51@gmail.com', '+19493578557', '1975-01-02 10:07:53', '1987-11-24 23:46:23'),
(35, 'Ms. Angelita Bergnaum I', 'bradly13@brakus.com', '+16297340292', '1978-01-17 06:25:54', '2011-10-28 06:22:40'),
(36, 'Prof. Lewis Stehr', 'soberbrunner@gmail.com', '+16265113366', '1996-05-24 14:42:32', '1997-05-06 03:40:48'),
(37, 'Juston Gaylord', 'xcrona@gmail.com', '+19732583237', '1973-03-07 18:27:06', '1988-09-02 21:02:26'),
(38, 'Haleigh Grady', 'okeefe.marianne@gmail.com', '+18657588069', '1981-01-09 07:37:01', '2001-10-17 23:27:58'),
(39, 'Dr. Adriana Shields IV', 'iborer@gmail.com', '+16788771422', '2016-04-05 06:00:44', '2011-10-14 23:53:14'),
(40, 'Raina Miller', 'wkuvalis@nitzsche.com', '+16199198619', '1977-07-05 21:11:20', '2021-03-23 21:38:27'),
(41, 'Prof. Glen Lubowitz DVM', 'justine.gleichner@price.com', '+19287754778', '2013-07-16 10:20:09', '1994-07-03 05:20:56'),
(42, 'Maeve Gorczany III', 'lritchie@roberts.biz', '+13379744112', '2005-08-07 01:12:54', '2005-04-16 04:23:34'),
(43, 'Ms. Noemie Nolan', 'arnulfo.ebert@auer.net', '+19374504401', '2021-07-31 18:30:26', '2005-05-25 04:52:45'),
(44, 'Dr. Maynard Feest', 'christy.monahan@gmail.com', '+12510817090', '2021-02-14 09:02:19', '1978-05-11 05:07:15'),
(45, 'Mariana Cummings', 'nemard@yahoo.com', '+18474078020', '1986-07-28 15:25:53', '2012-09-18 00:15:28'),
(46, 'Miss Samara Watsica', 'mlubowitz@wisozk.com', '+18184403768', '2000-05-30 09:36:40', '2009-12-04 15:04:26'),
(47, 'Dr. Clare Hamill', 'zachariah84@keeling.biz', '+19712956417', '2018-09-02 22:28:46', '1977-05-04 05:20:04'),
(48, 'Laverne Reinger V', 'apollich@gmail.com', '+17083618833', '2011-06-10 22:31:32', '1982-09-16 13:58:45'),
(49, 'Micah Botsford', 'beryl.hills@hoeger.org', '+12399259441', '2014-06-11 17:02:22', '2014-10-04 07:05:45'),
(50, 'Merle Gleichner', 'plemke@gmail.com', '+16170166490', '1979-07-15 17:36:05', '1990-04-05 01:58:03');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `phonebooks`
--
ALTER TABLE `phonebooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phonebooks_name_index` (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `phonebooks`
--
ALTER TABLE `phonebooks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
