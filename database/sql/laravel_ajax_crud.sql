-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 02:06 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ajax_crud`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_21_004348_create_products_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(3, 'Lee Huels', 'Qui rem dolores voluptate et. Pariatur omnis molestias totam. Voluptatem rem laborum tempore dolore.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(4, 'Dr. Nels Monahan DDS', 'Ea pariatur et corrupti itaque dolorem iure. Nisi rem neque aliquam similique. Sit illo molestias quisquam.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(5, 'Trey Larson', 'Repudiandae veritatis tempore nostrum dicta. Quia porro incidunt corrupti quisquam aperiam est quos. Aliquam ea qui cupiditate quia. Dolorem aut iste aspernatur enim quisquam.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(6, 'Amie Ledner IV', 'Ad est unde ut eaque. Enim iste soluta id quisquam voluptatem. Accusantium quisquam asperiores neque et saepe et mollitia excepturi.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(7, 'Bartholome Mitchell', 'Est maiores illo fugit molestiae. Sint labore ducimus iure occaecati error est est. Molestias officiis rerum voluptatibus recusandae dolor. Expedita officiis aut cumque libero hic omnis reiciendis.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(8, 'Prof. Gussie Lindgren PhD', 'Rerum nihil saepe ducimus unde. Velit illo placeat rem. Tenetur quia provident aperiam omnis aut enim et.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(9, 'Murphy Schaden', 'Atque beatae eveniet molestiae earum odio et. Nisi a quasi voluptas. Et nemo autem itaque unde sapiente tenetur. Consequuntur et est similique dolores quia sit.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(10, 'Cletus Tillman', 'Accusantium recusandae vitae repellat. Vel facere vero est magnam reprehenderit. Nobis maiores nihil id soluta. Qui qui eos sint sapiente ad est.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(11, 'Sedrick Waters', 'Et ex quod numquam beatae. Est molestiae non non aliquid aut qui quidem. Provident quia illum accusantium aliquam.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(12, 'Zaria Kuvalis', 'Nulla officiis sed est magni. Eum modi hic maxime tempora dolor. Nesciunt veritatis nulla voluptatibus est. Non et temporibus est animi.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(13, 'Johann Hilpert Sr.', 'Facilis eaque repellat odit iusto velit. Expedita quam est eaque laborum. Exercitationem ut consequuntur non nihil aliquam rem nihil tempora. Deserunt omnis rerum tempore aut totam.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(14, 'Dr. Gage Smitham I', 'Inventore et ratione aliquam consequatur non aut voluptatem. Rerum sapiente et et id cumque. Odio quis qui eos repellat. Ratione hic facilis quia eum labore enim.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(15, 'Arden Champlin', 'Quis sit at voluptas reiciendis omnis veritatis asperiores. Qui corporis qui rerum velit alias sed et. Quas dolores tenetur enim numquam.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(16, 'Prof. Marietta Braun', 'Fuga odio nihil nostrum ut quia accusantium tempore perspiciatis. Omnis suscipit iste provident magni facilis qui cum laborum. Sunt in totam temporibus ut aut quia dolor.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(17, 'Lowell Daugherty', 'Est est sint natus est. Qui dolorem dolorem quos sunt quos facere accusantium necessitatibus. Ut vero est accusantium libero odit fuga.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(18, 'Zena Erdman DDS', 'Laudantium et ad ut error voluptatem beatae. Mollitia aut ratione vel dolore maiores. Asperiores consequatur animi ipsum sint ullam explicabo et ut.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(19, 'Eloise Crona DDS', 'Veritatis nobis ut et accusamus. Quia odio aut aliquam odio dolorem vel sed. Est voluptatem esse reiciendis voluptatem veritatis eius rerum. Delectus est nam nulla esse quos.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(20, 'Paula Braun', 'Qui sed nobis aut voluptas et id maiores molestias. Cupiditate accusamus sit et sit. Ea ut nihil ut et. Odio nobis laborum nemo sapiente fugiat et.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(21, 'Mr. Gavin Brekke DVM', 'Et consequatur eaque dolore asperiores et asperiores. Quia dolorem quia dignissimos impedit impedit vitae dolorem. Labore est ut nisi sequi dolore repudiandae.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(22, 'Mr. Arvel Konopelski', 'Voluptate eum nesciunt magni quod cum tempore. Cum quas quis delectus modi voluptas et quia. Est iure quis incidunt. Quaerat autem quam quasi.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(23, 'Dr. Hayden Roob', 'Ea possimus ab nisi. Provident veniam reprehenderit laborum iure facere. Soluta et sequi sunt dolore dolor dolor praesentium.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(24, 'Elise Gerlach DVM', 'Nostrum vel maiores corporis rerum et. Iusto ut possimus nulla dolores. Enim fugiat qui aut eligendi. Corrupti voluptatem officia natus omnis deserunt ab ex porro.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(25, 'Vivianne Harber IV', 'Qui aspernatur aut aut eos fugiat. Deleniti numquam ullam sapiente id ipsa odit. Et exercitationem non veniam nemo dolor. Quibusdam excepturi eos reiciendis earum dolore quia aut.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(26, 'Dr. Gideon Johnston I', 'Mollitia vero rerum iusto quia possimus. Et libero rem non modi tenetur. Voluptas aliquid quidem ratione fugiat sed ut. Sed eos harum sapiente temporibus facere molestiae perspiciatis.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(27, 'Prof. Johathan White', 'Distinctio debitis omnis asperiores fuga enim. Aspernatur animi quis alias omnis consequatur repellat. Omnis odio nobis fugit voluptas.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(28, 'Elmer Rolfson', 'Eligendi sunt sint a atque sed dicta. Maiores natus est quis nihil. Corrupti quisquam dolore harum aspernatur qui.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(29, 'Dr. Jamaal Bayer', 'Tempore reprehenderit ducimus explicabo architecto non. Expedita accusamus qui quis consequuntur. Totam id sed fugit molestiae. Eos eveniet nobis aut cupiditate cupiditate consequatur quo.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(30, 'Marcelina Wolff', 'Voluptate repellendus odio qui minus voluptas veniam. Voluptates accusamus laboriosam quas voluptate autem. Distinctio aut voluptatem asperiores et eum dicta. Et atque delectus molestiae.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(31, 'Alana Considine DVM', 'Aut neque vel officia est alias quis. Et vitae voluptas aliquid fugit omnis. Dolorem et beatae odit quae fuga expedita quia dolore. Consectetur minus rem quis earum fugiat eligendi.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(32, 'Adaline Pagac', 'Sed et et debitis. Eos optio quia repudiandae rem. Ut ut necessitatibus eveniet voluptas perspiciatis. Et illum non perspiciatis ducimus.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(33, 'Mr. Don Sporer', 'Voluptas praesentium dolore velit et asperiores molestias. Sequi adipisci quo assumenda molestiae et minus. Tenetur natus ut enim molestiae. Quia at aliquam ut ipsum tenetur.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(34, 'Lucienne Schinner', 'Nemo aut aut dolor. Voluptas vero voluptate aspernatur sit deleniti. Ex aperiam et laborum animi eos delectus accusamus. Non excepturi illo accusamus saepe voluptatibus ratione totam dolorum.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(35, 'Arjun Jones', 'Molestiae ipsa consequatur ipsa provident. Est sint sit libero ipsum temporibus maiores. Quo molestias nulla totam cumque.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(36, 'Prof. Cordelia Hansen', 'Repudiandae et omnis totam sit sint occaecati fuga ipsam. Qui totam iure aliquam maiores placeat ut tempore. Necessitatibus ratione tempore expedita magnam fugiat reiciendis asperiores.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(37, 'Art Kovacek', 'Suscipit aut molestiae provident sit fugiat. Reiciendis quidem soluta enim. Numquam vel sed consequatur placeat.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(38, 'Mrs. Celestine Smith', 'Quibusdam quod ut saepe nihil quos. Culpa quos ut soluta eius consectetur sint. Omnis molestias eveniet voluptatem et numquam et repellendus. Rerum veniam corporis voluptates et eos.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(39, 'Dr. Cole Volkman IV', 'Sapiente tempore enim reprehenderit. Porro repellendus molestiae in qui. Aut necessitatibus id fuga aliquid aspernatur ad sint provident. Architecto saepe quia labore velit ipsum earum vero.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(40, 'Lacey Little', 'Dolorum totam ducimus provident. Vitae consequatur voluptatem nam est. Excepturi voluptatem iste qui aliquam cupiditate. Inventore voluptatem eum sit soluta dolores earum libero.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(41, 'Hayden Marvin Sr.', 'Quaerat sed hic est qui ab accusamus a. Quia ipsum consectetur doloremque earum eveniet. Et qui assumenda delectus.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(42, 'Prudence Wehner', 'Molestiae repellat qui animi et fugiat. Maxime laboriosam consequuntur veniam nihil ad ab in.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(43, 'Jaunita Ankunding', 'Consequatur culpa et aliquid eveniet qui facere. Hic minima architecto autem occaecati quis. Id porro magni veritatis dolores. Assumenda eum odio fuga aut.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(44, 'Mrs. Ebony Kunde', 'Dolor praesentium dolore voluptas. Sequi quia numquam qui a. Error expedita ipsum quibusdam dolores. Consequuntur eum repudiandae quam sed. Velit dolorum eum quasi minus.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(45, 'Lionel Schimmel', 'Alias eligendi voluptatem consequatur impedit. Aut accusamus tempore animi a. Nam optio accusamus ut porro aut. Ab cum quibusdam dolorem officiis.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(46, 'Dessie Christiansen', 'Est aut architecto et veritatis. Molestiae et est vel. Iusto consequatur numquam maxime placeat odio. Sequi suscipit sed qui nihil aut qui. Iusto corrupti voluptatem sed.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(47, 'Mrs. Raphaelle Fay', 'Autem sunt et officiis repudiandae consequuntur magni voluptatem. Itaque vero sed eveniet maiores accusamus suscipit deserunt. Quidem molestias sapiente cupiditate sequi consequatur.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(48, 'Ora Cummerata', 'Quo aliquam hic culpa. Blanditiis aperiam ut similique. Odit cum blanditiis eveniet qui repellendus.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(49, 'Prof. Reagan Hauck II', 'Esse enim laboriosam sit amet sit asperiores. Nulla molestias perferendis tempore aut inventore ut. Molestiae earum repellat in qui.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(50, 'Jeffry Lehner', 'Enim quod ex occaecati qui rerum. Cupiditate provident sequi labore consectetur atque iste temporibus tenetur. Eum vel nisi ea aut.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(51, 'Amanda Stoltenberg', 'Minus atque aspernatur perferendis atque aspernatur et harum. Laborum hic aut eius omnis eius. Totam laboriosam praesentium ut sint. Omnis vel unde dolorem est provident rerum est.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(52, 'Dr. Fletcher Bradtke II', 'Consectetur voluptatem voluptatibus est facilis quisquam in illum. Sapiente adipisci delectus temporibus. Aut iste sit mollitia sit. Cumque saepe dolor error dolore.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(53, 'Darwin Upton', 'Pariatur ipsam suscipit nemo. Voluptatibus unde ab quo earum repellat itaque. Nam ut illo quidem soluta rerum.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(54, 'Dasia Ferry', 'Maiores illo repellendus in. Possimus id non velit. Neque molestiae recusandae velit praesentium recusandae architecto. Pariatur molestiae sed recusandae non nesciunt voluptatibus dignissimos.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(55, 'Elisa Bailey', 'Veritatis illum corporis error aliquid consequatur asperiores quae. Voluptas a ipsa in aut. At aut aut perferendis qui ipsum eius. Nihil qui voluptatum omnis dolorem.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(56, 'Providenci Schaden', 'Pariatur laborum vel est corporis. Occaecati dolores amet sint vero. Vero sed nemo est quas et. Iste omnis qui expedita ut animi ipsam nihil.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(57, 'Elenor Cassin', 'Officiis numquam aut incidunt quisquam corporis fuga. Autem dignissimos a sed molestiae dolores. Totam sint natus dolore suscipit dolore molestiae.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(58, 'Yasmeen Wisoky', 'Facilis quod omnis tenetur consectetur aut molestiae est. Voluptatem et dolorem necessitatibus unde corporis. Veniam hic et veniam vel cupiditate. Dolorem doloribus tenetur aut ab.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(59, 'Gracie Treutel', 'Nostrum eaque beatae nulla. Aut veritatis nostrum officia in enim iste. Dolor aut et veniam ad perspiciatis voluptatibus.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(60, 'Gaston Thompson DVM', 'Adipisci maiores aut voluptas quia consequatur ut. Voluptatem similique molestias perspiciatis recusandae minus omnis amet. Et molestias id dicta.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(61, 'Prof. Bradly Schulist', 'Ex quos nesciunt amet repudiandae unde autem. Quo labore iure rerum nostrum ad nostrum. Delectus eligendi dolore consequuntur neque dolorum ea sit.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(62, 'Blake Konopelski', 'Ut vel perferendis deserunt ducimus debitis aut eum. Voluptatem est sed ut rerum. Nulla molestiae nemo eligendi dolores voluptas. Iusto omnis architecto rerum reprehenderit voluptatem aut neque.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(63, 'Marcelino Jerde III', 'Et accusamus quam quasi facere aut. Assumenda eos eveniet aperiam aut. Possimus fugit quibusdam eos similique non sed.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(64, 'Neoma Harris', 'Praesentium sit earum voluptatibus sit cum. Exercitationem voluptas sed porro. Et excepturi quis ut.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(65, 'Prof. Lori Reilly DVM', 'Culpa nulla accusantium temporibus molestias iusto. Quasi aspernatur ipsam aut atque aut animi temporibus sequi. Odit distinctio asperiores dicta quo. Qui rerum harum est dicta eum rerum vitae.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(66, 'Tyrese Reinger MD', 'Quos qui impedit laborum adipisci. Labore quos temporibus eveniet iste occaecati doloremque. Facere cum vitae natus voluptatem omnis aut. Reprehenderit soluta omnis et eum similique veritatis.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(67, 'Chanel Pfannerstill', 'Magni laudantium natus tempore. Porro et fugit voluptatem earum explicabo sit et. Consequatur nihil fugit rerum repudiandae commodi atque. Accusamus labore non totam impedit et odio iusto.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(68, 'Ricky Boyle', 'Vitae aut tempora dolorum quod laboriosam ut ad doloribus. Quas repudiandae fugit culpa. Adipisci labore eveniet maxime sint aut a incidunt.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(69, 'Prof. Ciara Crona Jr.', 'Optio est quam tempore expedita ab molestiae molestiae. Omnis aut consequuntur dolorum natus.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(70, 'Claude Herzog III', 'Atque ea eos libero et quia nihil. Est tenetur doloremque maiores eligendi qui voluptatem et. Voluptatum beatae blanditiis ipsa rerum est. Est quaerat error molestias sunt minus.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(71, 'Braden Vandervort DVM', 'Distinctio labore voluptatibus sint tempore occaecati. Dolore incidunt reprehenderit magnam fugit consectetur temporibus. Corrupti facere et ab cupiditate.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(72, 'Luis Kassulke', 'Tempora tenetur perspiciatis dolorem veritatis hic ut. Temporibus voluptas veniam in qui odit aut. Distinctio sed assumenda veniam explicabo et.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(73, 'Albert Mitchell', 'Et tenetur et minima. Aut esse omnis aut ut. Architecto debitis commodi qui eaque non beatae. Assumenda explicabo pariatur adipisci et itaque error iusto.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(74, 'Ryan Halvorson', 'Odit velit quisquam culpa illum vel aliquam. Aperiam inventore fuga deleniti rerum ut ad. Non accusantium est sunt non magni beatae deserunt incidunt.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(75, 'Dr. Angel Klocko', 'Sapiente nostrum qui nulla ipsum. Fugit non hic fugit ut sint ad commodi. Eos quia ullam iste quasi odio eos rerum.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(76, 'Jadyn Franecki', 'Nam quaerat aut voluptatem non laborum consequatur enim. Voluptatibus aut quasi corrupti nihil in amet iure cumque. Soluta quaerat magni alias qui asperiores. Occaecati aliquam assumenda quis error.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(77, 'Violet Murazik', 'Nisi neque non provident voluptatibus occaecati. Sunt in sit autem. Natus sit et soluta eius quis voluptatem nam enim.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(78, 'Prof. Maureen Schmidt PhD', 'Dolor voluptatem ea consequatur enim reprehenderit. Modi aut incidunt dolor reiciendis nesciunt reprehenderit recusandae. Tempore non veniam minima dolores eligendi.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(79, 'Chelsey Pagac Sr.', 'Voluptates consequuntur perferendis alias aut ut facere. Quisquam non ea id suscipit illum voluptatum. Quasi odit aperiam facilis aperiam voluptatem.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(80, 'Prof. Shawn Johnston PhD', 'Veritatis non qui natus et non non dolor aut. Commodi itaque et suscipit veritatis. Adipisci est ut soluta qui qui autem officiis. Corrupti labore totam aut ea distinctio maxime.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(81, 'Dr. Krystal Welch MD', 'Enim quos voluptates et id consequuntur et nobis. Est amet eaque qui assumenda cum rerum. Eaque nihil architecto velit blanditiis quasi rerum.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(82, 'Dewitt Pfeffer', 'Ipsum nemo tempora vitae consequuntur totam maxime. Autem ut totam perspiciatis autem. Omnis ea id quaerat nulla. Explicabo magnam veritatis est sapiente quos.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(83, 'Kiana Fahey', 'Minima laborum velit iste occaecati. Illum consequatur expedita eveniet eos sapiente repellendus dolore. Velit voluptatum et consequuntur distinctio quidem animi ipsam.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(84, 'Miss Neva Rosenbaum', 'Error libero dolore et dicta ratione veniam. Officiis voluptas aliquam facere nobis id. Id non id ducimus temporibus dolor repellendus vel.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(85, 'Geovanny Monahan', 'Perferendis ut nihil et. Odio quidem voluptatem nihil occaecati. Eligendi in quo inventore tempore odio illo. Quis minima dolor voluptatem.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(86, 'Leif Klocko', 'Debitis nostrum qui excepturi sint rerum. Dignissimos similique est ratione delectus et animi.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(87, 'Herbert Baumbach DDS', 'Explicabo totam nam maiores accusamus sit quis. Voluptatum laudantium odit vero ad laborum. Molestiae at ipsam ad atque natus. Cum ut sed numquam quia quia voluptatibus.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(88, 'Jayden Abshire', 'Dolor aut temporibus voluptas molestiae. Et ut assumenda delectus distinctio. Earum et nobis molestiae vel quis iste.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(89, 'Luella Cassin', 'Vel quod doloribus maiores consequuntur. Sint sunt est neque perferendis velit. Ullam sed quas vel sit.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(90, 'Prof. Jimmy Lehner IV', 'Quo facere enim sit dignissimos omnis quidem. Dolorum nam nihil nulla. Cupiditate perferendis dolor at eius. Quaerat at eos voluptatem quia.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(91, 'Dallin Roob', 'Fugiat voluptatem neque necessitatibus inventore aut numquam et. Dolorem et cumque ducimus nihil aut ipsa sint consequatur.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(92, 'Mr. Rylan Grady MD', 'Sapiente officia illum voluptatem qui ex vel itaque. Beatae recusandae doloremque porro ab sit a recusandae. Qui esse fugiat dolore qui aliquam dolor. Fuga et quod officia ea saepe.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(93, 'Miss Susie Braun', 'Voluptatem cupiditate provident ipsam eligendi. Saepe nemo labore repellendus id voluptas incidunt sunt.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(94, 'Reginald Bayer', 'Assumenda aliquid quibusdam sapiente tempore ex similique. Necessitatibus qui rem porro non recusandae. Aperiam quaerat corporis facere sint.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(95, 'Carolyn Bernhard', 'Doloribus ab accusamus ipsam delectus voluptatum et quibusdam sequi. Culpa nostrum blanditiis consectetur perferendis nihil minima. Quisquam sint deserunt sunt minus eos odit illo.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(96, 'Miss Connie Bayer', 'Recusandae architecto itaque distinctio id est et eum praesentium. Ratione asperiores quia qui facere voluptatem. Rerum explicabo cum id velit commodi. Laudantium qui nam velit laboriosam.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(97, 'Junior Watsica V', 'Dolores laborum qui est quo possimus porro. Amet recusandae rerum at suscipit voluptatibus maxime facere. Aut quis rerum aut aut non ipsa iusto.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(98, 'Miss Lela Johnson', 'Nesciunt earum minus eum ad quo vitae ex. Quidem dolorem inventore placeat delectus ut. Tenetur sapiente tempora molestiae atque id.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(99, 'Miss Vicenta Kerluke III', 'Itaque harum consequuntur ab deserunt quaerat numquam rem. Hic adipisci et alias et.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(100, 'Katheryn Schmidt', 'Unde deleniti qui temporibus quia. Soluta quas cupiditate beatae perspiciatis quasi dolorem. Quo enim quis et incidunt et.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(101, 'Dr. Dessie Ryan', 'Rerum et itaque dolor aut dicta. Facere id distinctio rem tempore. Iure qui porro ut quo autem tenetur dolorem nulla.', '2022-12-20 19:05:06', '2022-12-20 19:05:06'),
(102, 'Golden Hettinger', 'Nulla similique eum nobis quis sed velit et. Vel suscipit qui voluptatem cupiditate soluta eveniet et. Voluptatem odio fugiat voluptatem hic.', '2022-12-20 19:05:06', '2022-12-20 19:05:06');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
