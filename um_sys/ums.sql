-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2019 at 07:56 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `from` time NOT NULL,
  `to` time NOT NULL,
  `checker` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `department_id`, `course_id`, `room_id`, `day_id`, `from`, `to`, `checker`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 1, 1, '10:00:00', '10:55:00', 1, '2019-06-18 12:22:44', '2019-06-18 12:22:44'),
(2, 1, 5, 2, 1, '11:00:00', '11:55:00', 1, '2019-06-19 01:16:21', '2019-06-19 01:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `is_booked` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `code`, `name`, `credit`, `description`, `department_id`, `teacher_id`, `semester_id`, `is_booked`, `created_at`, `updated_at`) VALUES
(1, 'nrempel@yahoo.com', 'Dietrich Ltd', 3.00, 'Vitae a quia quod sapiente aut. Similique quo ut magni hic est omnis aut. Sit dolores aut repellendus et a sunt. Ea eos est qui quasi numquam velit.', 11, 2, 6, 0, '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(2, 'mrogahn@breitenberg.com', 'Crona, Pagac and Kautzer', 1.00, 'Delectus ratione omnis illo deleniti modi illum. Blanditiis porro quos qui dolor provident ab molestiae. Placeat magnam eius est alias ullam nemo error.', 5, 3, 7, 0, '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(3, 'zstamm@hotmail.com', 'Jast-Towne', 2.00, 'Autem dolore assumenda unde dolor qui voluptatem. Hic sunt aliquid possimus sequi vitae ipsam consequuntur provident.', 12, 4, 4, 0, '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(4, 'zelda12@lebsack.net', 'Crooks LLC', 0.00, 'Non voluptas vel et omnis ipsa ullam rem. Quae reprehenderit ut iste aut temporibus deserunt incidunt. Excepturi impedit nihil quis blanditiis dolorum.', 10, 3, 8, 0, '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(5, 'arne.spinka@gmail.com', 'Stroman and Sons', 1.00, 'Necessitatibus eum maiores perspiciatis quis sed. Nam dolores veniam iure eius. Sed quod ducimus ratione doloribus exercitationem eligendi.', 4, 3, 6, 0, '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(6, 'maryjane.hand@gmail.com', 'Botsford, Maggio and Stroman', 2.00, 'Inventore qui commodi praesentium consequatur velit velit. Et aut perferendis qui accusantium exercitationem. Explicabo suscipit rerum cum sed et sed mollitia.', 3, 1, 1, 0, '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(7, 'anika.feil@zieme.com', 'Conn-Gusikowski', 1.00, 'Unde dignissimos eos error amet vel voluptatem. Minus deleniti blanditiis quia. Aut similique numquam non inventore. Quia voluptas quos libero repellat.', 12, 1, 2, 0, '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(8, 'sglover@yahoo.com', 'Nitzsche LLC', 3.00, 'Beatae corrupti expedita cumque veniam. Quia explicabo atque eveniet modi ipsa impedit voluptatem. Sed dolores voluptates aut.', 5, 7, 7, 0, '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(9, 'sgerhold@hyatt.com', 'Mertz-Koelpin', 2.00, 'Reiciendis et iusto quia animi perferendis assumenda in. Architecto sed qui voluptatum et praesentium soluta sequi. Ex vero assumenda aliquid saepe corporis voluptatem.', 6, 8, 3, 0, '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(10, 'goyette.raymond@monahan.org', 'Jones-West', 0.00, 'Nulla pariatur voluptatem animi placeat et veniam. Molestiae ipsam quae quia corrupti et quo. Aliquid neque optio deserunt consequuntur voluptatem. Et velit molestiae et in sint quo ut.', 6, 1, 4, 0, '2019-06-18 12:13:06', '2019-06-18 12:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Wednesday', '2019-06-18 12:13:08', '2019-06-18 12:13:08'),
(2, 'Sunday', '2019-06-18 12:13:08', '2019-06-18 12:13:08'),
(3, 'Saturday', '2019-06-18 12:13:08', '2019-06-18 12:13:08'),
(4, 'Tuesday', '2019-06-18 12:13:08', '2019-06-18 12:13:08'),
(5, 'Thursday', '2019-06-18 12:13:08', '2019-06-18 12:13:08'),
(6, 'Monday', '2019-06-18 12:13:08', '2019-06-18 12:13:08'),
(7, 'Friday', '2019-06-18 12:13:08', '2019-06-18 12:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'FM', 'Tunisia', '2019-06-18 12:13:04', '2019-06-18 12:13:04'),
(2, 'TG', 'Egypt', '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(3, 'CH', 'Norway', '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(4, 'TW', 'French Polynesia', '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(5, 'AQ', 'Italy', '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(6, 'CD', 'Mauritania', '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(7, 'KP', 'Anguilla', '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(8, 'EH', 'Lesotho', '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(9, 'MA', 'Canada', '2019-06-18 12:13:05', '2019-06-18 12:13:05'),
(10, 'CI', 'Cote d\'Ivoire', '2019-06-18 12:13:05', '2019-06-18 12:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AntiqueWhite', '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(2, 'Thistle', '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(3, 'DimGray', '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(4, 'MintCream', '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(5, 'Aqua', '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(6, 'LightSkyBlue', '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(7, 'DarkRed', '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(8, 'GoldenRod', '2019-06-18 12:13:07', '2019-06-18 12:13:07');

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
(139, '2014_10_12_000000_create_users_table', 1),
(140, '2014_10_12_100000_create_password_resets_table', 1),
(141, '2019_06_10_095003_create_departments_table', 1),
(142, '2019_06_10_104939_create_courses_table', 1),
(143, '2019_06_10_112638_create_semesters_table', 1),
(144, '2019_06_10_125707_create_designations_table', 1),
(145, '2019_06_10_133413_create_teachers_table', 1),
(146, '2019_06_13_080025_create_days_table', 1),
(147, '2019_06_13_095432_create_students_table', 1),
(148, '2019_06_13_193639_create_rooms_table', 1),
(149, '2019_06_14_091703_create_classrooms_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `number`, `created_at`, `updated_at`) VALUES
(1, 103, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(2, 105, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(3, 104, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(4, 102, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(5, 103, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(6, 103, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(7, 103, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(8, 103, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(9, 101, '2019-06-18 12:13:10', '2019-06-18 12:13:10'),
(10, 100, '2019-06-18 12:13:10', '2019-06-18 12:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BlueViolet', '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(2, 'IndianRed', '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(3, 'Khaki', '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(4, 'Green', '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(5, 'RosyBrown', '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(6, 'Linen', '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(7, 'MediumSlateBlue', '2019-06-18 12:13:06', '2019-06-18 12:13:06'),
(8, 'SeaShell', '2019-06-18 12:13:06', '2019-06-18 12:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `var` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `contact_no`, `address`, `date`, `department_id`, `registration_number`, `var`, `created_at`, `updated_at`) VALUES
(1, 'Keyon VonRueden', 'eichmann.maritza@yahoo.com', '(803) 934-2331', 'Tempora assumenda et itaque iure ut dolorem accusamus. Sit voluptas qui velit dolor quos et. Totam ut dolorem alias aliquid commodi incidunt debitis. Illo quis sit voluptate qui a.', '94-04-05', 7, 'SN-2019-', 1, '2019-06-18 12:13:08', '2019-06-18 12:13:08'),
(2, 'Shanie Hoeger', 'lockman.leatha@willms.com', '1-839-348-6306 x57678', 'Natus nemo maxime eaque sed hic. Est sint sapiente molestiae vitae non quidem. Cupiditate nobis et at delectus ipsa enim. Eos nihil sequi autem dolorum quia temporibus sint. Consectetur sunt natus quibusdam itaque.', '16-04-22', 3, 'CV-2019-', 1, '2019-06-18 12:13:08', '2019-06-18 12:13:08'),
(3, 'Dr. Kieran Schaden', 'johann.oberbrunner@predovic.org', '356.305.8366', 'Ut nemo reiciendis dolore culpa animi qui aut. Dolorum eum et omnis possimus omnis error. Voluptatibus corporis ex culpa quae vero.', '72-10-31', 12, 'AT-2019-', 1, '2019-06-18 12:13:08', '2019-06-18 12:13:08'),
(4, 'Prof. Adrienne Hahn', 'waters.marcella@hotmail.com', '+1-463-548-2620', 'Quia iusto qui ut laborum iusto quis vero nemo. Eum quo neque velit aut. Autem molestiae sit ut et recusandae qui vel.', '79-08-16', 11, 'ST-2019-', 1, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(5, 'Eino Trantow', 'rswaniawski@hotmail.com', '1-856-641-9868', 'Dolor quaerat sequi commodi enim. Officiis ipsam voluptatem tenetur quos aliquid. Laborum quos nam maiores maiores et dolore minus.', '90-04-29', 1, 'BN-2019-', 1, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(6, 'Raul Kohler', 'koelpin.maritza@koelpin.com', '(386) 906-4531 x46831', 'Laboriosam iusto voluptatem eum non eum ut consequatur. Qui expedita soluta nostrum magnam adipisci. Ipsum harum ipsam deserunt.', '14-07-16', 6, 'EG-2019-', 1, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(7, 'Clark Hackett', 'lupe.morissette@gmail.com', '1-438-592-1421', 'Vel voluptatem cupiditate molestiae quas. Est dicta ea maxime excepturi esse molestiae et ducimus. Praesentium ut est omnis soluta molestias modi. Non in tempore fugiat et.', '77-11-10', 9, 'LR-2019-', 1, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(8, 'Dr. Nikko Murphy', 'sanford.littel@gmail.com', '1-790-320-3142 x3194', 'Iste eos distinctio autem nulla facere. Doloribus id ut id ad rem voluptas voluptatum. Nihil earum sapiente sit laudantium. Deserunt architecto est et.', '08-04-10', 2, 'KM-2019-', 1, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(9, 'Barney Grady', 'laron.tremblay@hansen.net', '603-299-0233 x6527', 'Aliquid qui quia quos eius facere nulla aspernatur. Dolores nisi repudiandae quia enim fuga temporibus. Dignissimos officia ratione labore soluta distinctio et est dolor. Quo consequatur quidem exercitationem nobis aperiam.', '96-04-14', 4, 'RW-2019-', 1, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(10, 'Prof. Althea Hahn', 'tavares.adams@johns.info', '(665) 603-3476 x07356', 'Ea rerum fuga velit fugiat quod. Fugit fugiat enim quia. Aliquam in minima corrupti qui aliquid id. Quidem voluptate dolores molestias facere assumenda. Expedita aut sunt nulla consequuntur.', '87-11-18', 11, 'MK-2019-', 1, '2019-06-18 12:13:09', '2019-06-18 12:13:09'),
(11, 'Sarjis', 'psarjis@gmail.com', '01521487616', '<p>10/1, Roomghata</p>', '2019-06-19T08:02:58.516Z', 1, 'Tunisia-2019-005', 1, '2019-06-19 02:03:32', '2019-06-19 02:03:32'),
(12, 'Abdullah', 'psarjis2@gmail.com', '01521487617', '<p>10/1, Roomghata</p>', '2019-06-19T08:02:58.516Z', 2, 'Egypt-2019-0012', 1, '2019-06-19 02:04:46', '2019-06-19 02:04:46'),
(13, 'Abdullah2', 'psarjis3@gmail.com', '01521487618', '<p>10/1, Roomghata</p>', '2019-06-19T08:02:58.516Z', 4, 'French Polynesia-2019-0013', 1, '2019-06-19 02:05:25', '2019-06-19 02:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `credit` double(8,2) NOT NULL,
  `remaining_credit` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `address`, `email`, `contact_no`, `designation_id`, `department_id`, `credit`, `remaining_credit`, `created_at`, `updated_at`) VALUES
(1, 'Miss Harmony Hegmann', 'Nam facere libero reprehenderit facere. Accusamus asperiores nam recusandae doloremque sed excepturi sed debitis. Quae dolores fuga quis nisi nihil dolorem. Quidem consequuntur provident dicta assumenda fugiat.', 'xavier.kihn@parisian.com', '659-985-3314 x9247', 2, 3, 30.00, 30.00, '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(2, 'Sam Oberbrunner', 'Dolor dolorum doloribus facilis asperiores. Autem nostrum facere ut aut non assumenda molestiae omnis. Aperiam autem ea fuga.', 'bashirian.lolita@douglas.com', '593-848-9701 x549', 1, 2, 30.00, 30.00, '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(3, 'Arvilla Hansen', 'Earum incidunt veritatis perspiciatis in aut rerum inventore. Aut dolores doloribus aut optio adipisci. Voluptatibus ducimus nostrum quidem aut corporis eligendi.', 'bokon@schaefer.com', '868.850.4314', 4, 7, 30.00, 30.00, '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(4, 'Phyllis Bauch', 'Omnis voluptatem nobis commodi eveniet aliquid consequatur. Esse inventore minus sequi ducimus delectus assumenda laboriosam. Et magnam ducimus quo illo placeat deleniti voluptatem. Ratione corporis cumque eos aliquid sunt.', 'alexandrine04@gleichner.info', '591.397.0259', 3, 2, 30.00, 30.00, '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(5, 'Zaria Morar III', 'Sed et qui voluptatem quo saepe sapiente qui. Vel ut earum voluptate quidem rerum. Quia et provident vitae aut maiores.', 'jed.wilderman@hermiston.info', '207.304.5120 x2809', 4, 11, 30.00, 30.00, '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(6, 'Kelsi Jerde', 'Aut culpa debitis rem aut. Perspiciatis non illum praesentium recusandae voluptate eum. Sed reprehenderit in est sint.', 'kari.nolan@yahoo.com', '1-462-491-7257 x6342', 2, 2, 30.00, 30.00, '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(7, 'Elsa Kerluke', 'Aliquid necessitatibus ut eum ad rerum. Perferendis laboriosam voluptas minima id. Dolor cupiditate in quia dolores corporis dolor aut. Ipsa nesciunt sed assumenda et quia rerum voluptatibus.', 'kaylin17@cronin.org', '679-839-0502 x38271', 3, 6, 30.00, 30.00, '2019-06-18 12:13:07', '2019-06-18 12:13:07'),
(8, 'Dr. Clement Yost DDS', 'Dolorem molestias pariatur itaque unde eum ullam. Cupiditate et ipsam omnis autem autem. Enim aut temporibus minima quae.', 'xleffler@mante.com', '+1 (936) 705-0927', 2, 11, 30.00, 30.00, '2019-06-18 12:13:08', '2019-06-18 12:13:08'),
(9, 'Bernita Friesen', 'Cum ut quod numquam molestiae aliquam. Repellat nostrum voluptate quidem et a. Esse amet dicta aut pariatur id eveniet.', 'ishanahan@gmail.com', '973.733.5671 x8825', 3, 2, 30.00, 30.00, '2019-06-18 12:13:08', '2019-06-18 12:13:08'),
(10, 'Ms. Deja Jaskolski PhD', 'Porro nam reiciendis soluta quibusdam pariatur. Voluptatem aut et sit ullam. Nisi error similique sint voluptate maiores ut iste. Voluptatibus rerum consequatur magnam sint tenetur praesentium.', 'mraz.ronny@mosciski.org', '1-815-860-0060 x9577', 3, 12, 30.00, 30.00, '2019-06-18 12:13:08', '2019-06-18 12:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_code_unique` (`code`),
  ADD UNIQUE KEY `courses_name_unique` (`name`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_code_unique` (`code`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `semesters_name_unique` (`name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD UNIQUE KEY `students_contact_no_unique` (`contact_no`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`),
  ADD UNIQUE KEY `teachers_contact_no_unique` (`contact_no`);

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
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
