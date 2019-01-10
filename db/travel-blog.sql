-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 10:50 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'adnas', 'adnas@gmail.com', '$2y$10$P2Vns7iitvTwcrhpDNsN1.QDR53uTbyQ36sRXiZQWW1Ivgr3Nm1tq', ' ', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'The Weekend Break', 'The Weekend Break', '2018-11-15 04:16:26', '2018-11-19 14:37:12'),
(2, 'The Package Holiday', 'The Package Holiday', '2018-11-15 04:16:46', '2018-11-19 14:37:25'),
(3, 'AnotherThe Group Tour', 'The Group Tour', '2018-11-19 02:28:24', '2018-11-19 14:37:35'),
(4, 'The Caravan/RV Road Trip', 'The Caravan/RV Road Trip', '2018-11-19 14:37:51', '2018-11-19 14:37:51'),
(5, 'Volunteer Travel', 'Volunteer Travel', '2018-11-19 14:38:00', '2018-11-19 14:38:00'),
(6, 'Long Term Slow Travel', 'Long Term Slow Travel', '2018-11-19 14:38:09', '2018-11-19 14:38:09'),
(7, 'The Gap Year', 'The Gap Year', '2018-11-19 14:38:20', '2018-11-19 14:38:20'),
(8, 'Visiting Friends or Relatives', 'Visiting Friends or Relatives', '2018-11-19 14:38:31', '2018-11-19 14:38:31'),
(9, 'Event Travel', 'Event Travel', '2018-11-19 14:38:39', '2018-11-19 14:38:39'),
(10, 'Business Travel', 'Business Travel', '2018-11-19 14:38:49', '2018-11-19 14:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(13, 1, '2018-11-19 14:47:19', '2018-11-19 14:47:19'),
(13, 3, '2018-11-19 14:47:19', '2018-11-19 14:47:19'),
(13, 4, '2018-11-19 14:47:19', '2018-11-19 14:47:19'),
(14, 5, '2018-11-19 15:35:18', '2018-11-19 15:35:18'),
(14, 8, '2018-11-19 15:35:18', '2018-11-19 15:35:18'),
(14, 10, '2018-11-19 15:35:18', '2018-11-19 15:35:18'),
(15, 6, '2018-11-19 15:38:32', '2018-11-19 15:38:32'),
(15, 7, '2018-11-19 15:38:32', '2018-11-19 15:38:32'),
(15, 8, '2018-11-19 15:38:33', '2018-11-19 15:38:33'),
(15, 9, '2018-11-19 15:38:33', '2018-11-19 15:38:33'),
(15, 10, '2018-11-19 15:38:33', '2018-11-19 15:38:33'),
(16, 1, '2018-11-19 15:43:11', '2018-11-19 15:43:11'),
(16, 2, '2018-11-19 15:43:11', '2018-11-19 15:43:11'),
(16, 3, '2018-11-19 15:43:11', '2018-11-19 15:43:11'),
(16, 4, '2018-11-19 15:43:11', '2018-11-19 15:43:11'),
(17, 5, '2018-11-19 15:44:48', '2018-11-19 15:44:48'),
(17, 7, '2018-11-19 15:44:48', '2018-11-19 15:44:48'),
(17, 8, '2018-11-19 15:44:48', '2018-11-19 15:44:48'),
(17, 9, '2018-11-19 15:44:48', '2018-11-19 15:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2018_10_23_085905_create_posts_table', 1),
(34, '2018_10_23_090710_create_tags_table', 1),
(35, '2018_10_23_090754_create_categories_table', 1),
(36, '2018_10_23_090842_create_category_posts_table', 1),
(37, '2018_10_23_091000_create_post_tags_table', 1),
(38, '2018_10_23_091210_create_admins_table', 1),
(39, '2018_10_23_091606_create_roles_table', 1),
(40, '2018_10_23_091753_create_admin_roles_table', 1),
(41, '2018_11_19_155239_create_permissions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `status`, `posted_by`, `image`, `like`, `dislike`, `created_at`, `updated_at`) VALUES
(13, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur,', 'consectetur', 'ajax', '<h2>&nbsp;</h2>\r\n<img src=\"E:\\travel_blog\\public\\user\\img\\blog.jpg\" alt=\"Lights\" height=\"100px\" width=\"150px\">\r\n<h2>&nbsp;</h2>\r\n\r\n<h2><strong>Lorem Ipsum&nbsp;is simply dummy text</strong></h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n\r\n<h2><strong>Why do we use it?</strong></h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Where does it come from?</strong></h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>', 1, NULL, 'public/2OncZHR9Rp83CkgvhMLqjSbTcVh4FhAvluaI2Kqz.jpeg', NULL, NULL, '2018-11-19 14:47:18', '2018-11-19 14:47:18'),
(14, 'Hill Tracks', 'Hill Tracks', 'Hill Tracks', '<p>The&nbsp;<strong>culture of Bangladesh</strong>&nbsp;refers to the way of life of the people of Bangladesh. The land, the rivers, and the lives of the Bengali people formed a rich heritage with marked differences from neighbouring regions. It has evolved over the centuries and encompasses the cultural diversity of several social groups of Bangladesh.</p>\r\n\r\n<p>Bangladesh is blessed with deep, rich and fertile soil, a gift from the three major rivers that form the deltaic plain upon which it sits. The Ganges, Brahmaputra and Meghna Rivers all wend their way down from the Himalayas, carrying nutrients to replenish Bangladesh&rsquo;s fields.</p>\r\n\r\n<p>No, kidding. Why I wanted to travel there is&nbsp;<a href=\"https://lostwithpurpose.com/why-travel-afghanistan/\" rel=\"noopener\" target=\"_blank\" title=\"Why the f*ck did we travel to Afghanistan?!\">another story entirely</a>. For now, let&rsquo;s just say curiosity killed this cat.</p>\r\n\r\n<p>So what was it&nbsp;<em>actually</em>&nbsp;like to travel as a woman in one of the most backward countries in the world?</p>', 1, NULL, 'public/7ZGNgmL58V6rKob87xQ2yLBpxxXoc1yjH4YtPmH9.jpeg', NULL, NULL, '2018-11-19 15:35:17', '2018-11-19 15:35:17'),
(15, 'Explore the Archaeological Wonders', 'things-to-see', 'explore-the-archaeological-wonders', '<p>The country sees a countless numbers of architectural splendors all over her land. Most of this wonders are designed by the best designers and architects of Bangladesh. If you are thinking that the splendors or our creation can only be dated back to this century, you are wrong. Some of our finest is rooted back to the beginning of previous century. Deep beneath the stoned concrete and layer of bricks, there lies the passion and dedication of our hardworking people &mdash; people who can go further beyond imagination even through shapes and bricks.</p>\r\n\r\n<p>A day trip inside the Dhaka city may suffice for a grand tour for the architectural wonders. To visit places outside of the Dhaka city you would need a proper planning. Better if you plan your trip with including few other places of interest. Here&rsquo;s a list of places you may not want to miss:</p>\r\n\r\n<ol>\r\n	<li>National Parliament Building</li>\r\n	<li>Motijheel Shapla Square</li>\r\n	<li>Shaheed Minar (Martyr Monument), Dhaka</li>\r\n	<li>National Memorial in Savar</li>\r\n	<li>Baitul Mukarram National Mosque</li>\r\n	<li>Seven Domed Mosque (Saat Masjid) at Mohammadpur, Dhaka</li>\r\n	<li>Armenian Church at Old Town, Dhaka</li>\r\n	<li>Lalbagh Fort, Old Town, Dhaka</li>\r\n	<li>Ahsan Manzil, Old Town, Dhaka</li>\r\n	<li>Paharpur</li>\r\n	<li>Mainamati</li>\r\n	<li>Wari-Bateshwar</li>\r\n	<li>The Sixty Dome Mosque or Shaṭ Gombuj Moshjid</li>\r\n	<li>World War II Cemetery</li>\r\n	<li>Kantaji Temple</li>\r\n	<li>Shahid Minar at Jahangirnagar University</li>\r\n	<li>Mujibnagar Smriti Saudha</li>\r\n	<li>Martyred Intellectuals Memorial</li>\r\n	<li>Aparajeyo Bangla</li>\r\n	<li>Amar Ekushey</li>\r\n	<li>Sangsaptak</li>\r\n	<li>Shabash Bangladesh</li>\r\n</ol>', 1, NULL, 'public/brBgtakTs6h4Vlztt9iAu2AFfATnPrsU7EGy3uIV.jpeg', NULL, NULL, '2018-11-19 15:38:32', '2018-11-19 15:38:32'),
(16, 'Traditional Festival', 'things-to-see', 'fair-festivals/traditional', '<p>The rest of the world may have their blast of New Year in January 1st. But for us, the advent of Bengali New Year (Pahela Baishakh; April 14 of each year) is the most cheerful, colorful and amazing public holiday that is immensely observed throughout the country. From urban concrete jungle to blissful natural rural landscape, the unbound color of life will definitely mesmerize you. It is presumed that the tradition of Pahela Baishakh started about 600 years back. One of the chief customaries of Pahela Baishakh is clearing up all the dues of present year on the last day of Chaitra (the twelfth month of the Bengali calendar). On the first day of Bengali new year, the landlords or the shop owners offer sweets to their tenants and customers.</p>\r\n\r\n<p>In Dhaka, under the Banyan Tree at Ramna park, the biggest and most colorful celebration of Pahela Baishakh takes place. The programme initiates with Tagore&rsquo;s famous song titled &ldquo;Eso he Baishakh eso eso&rdquo; (Come O Baishakh, come come) performed by the artists of Chhayanat. The students and teachers of Institute of Fine Arts bring out a colorful procession and parade around their campus with sculptures that resemble our age old culture. With wearing traditional attires, hundreds of Bangladeshi people join both events. Every media channel &mdash; based Bangladesh &mdash; broadcast a live coverage on both of this programme. The newspapers also publishes special news and supplements following this event.</p>\r\n\r\n<p>Baishakhi mela (in Bengali mela means fair) is the most amazing part of Pahela Baishakh. Life happens there. And music and color brings life to the Baishakhi fair. Many kind of traditional handicrafts, toys, hand-made cakes, special kinds of food stuff, sweets, potteries, bangles, pitchers and cane products are the main exhibits at these fairs. Although the fairs are held all over our country, but the fair at Dhaka University and Ramna is the most famous. The fairs also provide entertainment, with singers and dancers staging Jatra, Pala gan, Kavigan, Jarigan, Gambhira Gan, Gazir Gan and Alkap Gan. Artistes present folk songs as well as Baul, Marfati, Murshidi and Bhatiali songs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Dubla Rash Mela</strong></h2>\r\n\r\n<p>Dubla Rash Mela is the biggest fair in not only Bagerhat, but also the entire Bangladesh. This has become a grand occasion for many foreign tourists visiting the Sundarbans and people come from India as well. At the centre of the festival are twenty thousand temporary fishermen who are engaged in catching and drying fish on Dubla and nearby islands. In the Bangla month of Agrahayan every year, the fair continues for 5-7 days during full moon time.</p>\r\n\r\n<p>Dubla Island is situated on the Bay of Bengal as a part of the Sunderbans forest. Initiated by Hari Bhajan, a disciple of Thakur hari Chand, this fair was first organized in 1923 during the Rash Purnima. To continue his legacy and keep his memory alive, the devotees &mdash; especially the fisherman of the Sunderbans &mdash; organize this five-day fair. Around 40-50 thousand people join the celebrations every year. Traditional handicrafts, precious wooden items, foods etc are put on sale.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Shakrain Festival</strong></h2>\r\n\r\n<p>Celebrated especially in Old Dhaka, Shakrain Festival (also known as Kite Festival) is observed at the end of the Bengali month Poush or January 14 or 15. This is day is also known as Poush Shangkranti. The major attraction of this festival is that people of all ages gather around their rooftop with their kites in the afternoon. They fly their kites high and sometimes this festival often brings the epic and exciting kite fighting. Each participant attempts to snag each other&rsquo;s kite. At the night, people crack their fireworks in a way to light up the sky of old Dhaka. This gets even more exciting with the flame-eaters skills of fire show.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Lalon Mela</strong></h2>\r\n\r\n<p>Lalon Shah is one of most acclaimed and prominent philosopher from Bangladesh. His distinctive tradition of philosophy is still being carried out through thousands of songs and composition which he wrote during his lifetime. His vision on human life is the fundamental base of Baul culture and tradition which is now currently appreciated and studied by major researchers all over the world.</p>\r\n\r\n<p>Every year on the first week of April, a fair is organized following Lalon Shah&rsquo;s birth anniversary by the devotees. The fair is held at the akhra (the place where Lalon lived) situated in Kushtia. The entire place goes through colorful decoration on this occasion. Thousands devotees from both abroad and Bangladesh gather in the Akhra to celebrate this day. With ektara and other musical instrument, the singers of Lalon Academy perform Lalon&rsquo;s song all through the night during this fair. With the hymn of thousands unique composition, the devotees from all around the world remember the veracity of his philosophical thoughts.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Fair of Ashwin Sankranti</strong></h2>\r\n\r\n<p>Dated back to 200 years, Ashwin Sankranti is held in Khulshi village of Durgapur upazila for the first three days of Bengali month of Aswin. People from the surrounding areas gather around this fair to celebrate the life and cheerfulness. The chief attraction of this fair is circus show. Jilapi (sweet made of flour and sugar juice), traditional handicrafts, household items, puffed rice, jewelry, pottery etc are major attractions and exhibits of this fair.</p>', 1, NULL, 'public/DddSBcQS8TsYNzfFNz8GKR9F7D5KY7SMdYN72jXV.jpeg', NULL, NULL, '2018-11-19 15:43:11', '2018-11-19 15:43:11'),
(17, 'Experience Village Life', 'village life', 'experience-village-life', '<p>Life is so good when you live it in Bangladesh. The people and the nature will help you to get the most out of it. Happiness, for us, needs no reason. We are always happy with knowing who we are whether our capability is satisfactory to us or not. We know how to celebrate the life we are give. We know how to get the most out of our life.</p>\r\n\r\n<p>There are many kinds of lifestyle of the people can be seen in Bangladesh &mdash; urban, rural and Tribal. Amidst the concrete jungle, the urban life follows a different direction than the rural life. The rural life has a much more strong relation with the nature. And, far from the maddening crowd, there are many tribal lifestyles can be noticed which are unique and vibrant in their own characteristics.</p>\r\n\r\n<p>If you want to seek happiness with no condition applied, go visit our rural areas. The way of life has always been primitive and there exist no complications. The people in our village areas live by the nature. They respect the nature. In return, they are taken cared by the nature. This is most divine transaction in the entire world. This is why you can even find the most primitive lifestyle here. People uses farming tools just like their ancestors like. They prefer manual labor and natural resources instead of heavy machinery. This is why you will be amazed when you see any farmers ploughing their beloved soil with the help of macho bulls. Or even you will see the village woman making foods in ovens fueled with chopped up woods.</p>\r\n\r\n<p>The village kids use the most of their life by playing various footballs, cricket, kabadi and many traditional sports. You can join them. While playing in the rain, the splash of mud will remind you how close you are being with the nature. Most of them are skillful in climbing trees. Ask them, and you will be blessed with freshly picked juicy fruits instantly. You can jump on the river or pond from the peak of a tree. You can swim through the river under the hot sun. The clean and cold water will relieve you from the boredom of life. On a calm evening at the yard of traditional village house, you can stare the clean sky where the moon and stars glaze with their fullest integrity. And that moment, you will get know true meaning of life.</p>\r\n\r\n<p>The best thing you will experience and will definitely spice up of you entire vacation is the hospitality of Bangladeshi people. We treat our guest just like anyone of our family. Our smile gives them a hope to live on their wonder life and come back in this land of wonders again and again.</p>\r\n\r\n<p>These are definitely not all. There are plenty of other things to do and see in the rural areas of Bangladesh. You will never get bored. And you will never fail to understand the true meaning of life. This is an experience of lifetime. Even if you return to your country, the memory will keep your soul alive and fresh.</p>\r\n\r\n<p>Just come visit our rural lands. We treat everyone like family. If necessary contact with tour operators. With a perfect and convenient planning, they will take care of your tour flawlessly. There are so may tour plans available which will certainly give you a detailed experience of rural life.</p>\r\n\r\n<p><em>All of these photos are taken from the&nbsp;<a href=\"http://www.panigram.com/\" rel=\"noopener\" target=\"_blank\">Panigram Resort</a></em></p>', 1, NULL, 'public/eSJPFG1zCB09J0euBa3h8pCDzOEjsa387FMFzzn7.jpeg', NULL, NULL, '2018-11-19 15:44:48', '2018-11-19 15:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(13, 1, '2018-11-19 14:47:18', '2018-11-19 14:47:18'),
(13, 2, '2018-11-19 14:47:19', '2018-11-19 14:47:19'),
(13, 3, '2018-11-19 14:47:19', '2018-11-19 14:47:19'),
(14, 5, '2018-11-19 15:35:17', '2018-11-19 15:35:17'),
(14, 6, '2018-11-19 15:35:17', '2018-11-19 15:35:17'),
(15, 4, '2018-11-19 15:38:32', '2018-11-19 15:38:32'),
(15, 5, '2018-11-19 15:38:32', '2018-11-19 15:38:32'),
(15, 6, '2018-11-19 15:38:32', '2018-11-19 15:38:32'),
(15, 7, '2018-11-19 15:38:32', '2018-11-19 15:38:32'),
(16, 1, '2018-11-19 15:43:11', '2018-11-19 15:43:11'),
(16, 2, '2018-11-19 15:43:11', '2018-11-19 15:43:11'),
(16, 3, '2018-11-19 15:43:11', '2018-11-19 15:43:11'),
(16, 4, '2018-11-19 15:43:11', '2018-11-19 15:43:11'),
(17, 2, '2018-11-19 15:44:48', '2018-11-19 15:44:48'),
(17, 5, '2018-11-19 15:44:48', '2018-11-19 15:44:48'),
(17, 6, '2018-11-19 15:44:48', '2018-11-19 15:44:48'),
(17, 7, '2018-11-19 15:44:48', '2018-11-19 15:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Editors', '2018-11-19 09:10:52', '2018-11-19 09:26:44'),
(3, 'Publisher', '2018-11-19 09:14:13', '2018-11-19 09:14:13'),
(4, 'Writer', '2018-11-19 09:27:34', '2018-11-19 09:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tourism', 'Tourism', '2018-11-15 04:15:40', '2018-11-19 14:30:30'),
(2, 'Tourist Attraction', 'tourist attraction', '2018-11-15 04:16:02', '2018-11-19 14:31:22'),
(3, 'travel', 'travel', '2018-11-19 14:33:53', '2018-11-19 14:33:53'),
(4, 'instatravel', 'instatravel', '2018-11-19 14:34:04', '2018-11-19 14:34:04'),
(5, 'travelgram', 'travelgram', '2018-11-19 14:34:15', '2018-11-19 14:34:15'),
(6, 'vacation', 'vacation', '2018-11-19 14:34:27', '2018-11-19 14:34:27'),
(7, 'trip', 'trip', '2018-11-19 14:35:10', '2018-11-19 14:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mst Nahar', 'nas@gmail.com', '$2y$10$P2Vns7iitvTwcrhpDNsN1.QDR53uTbyQ36sRXiZQWW1Ivgr3Nm1tq', 'shQZrmoogXUYVAdW90hbkUtkPc7e81IEZ7K3xVe5qTEolOjhDpJO44PJ4Gsn', '2018-11-19 05:44:04', '2018-11-19 05:44:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD KEY `category_posts_post_id_index` (`post_id`),
  ADD KEY `category_posts_category_id_index` (`category_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_post_id_index` (`post_id`),
  ADD KEY `post_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
