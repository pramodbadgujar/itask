-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 27, 2021 at 07:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itask`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `level` int(10) UNSIGNED NOT NULL,
  `lft` int(10) UNSIGNED NOT NULL,
  `rght` int(10) UNSIGNED NOT NULL,
  `tree_id` int(10) UNSIGNED NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `icon` varchar(100) NOT NULL,
  `icon_text` varchar(20) DEFAULT NULL,
  `date_updated` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`, `slug`, `level`, `lft`, `rght`, `tree_id`, `featured`, `description`, `icon`, `icon_text`, `date_updated`, `image`) VALUES
(1, 'Antiques, Art and Collectables', NULL, 'antiques-art-and-collectables', 0, 1, 24, 3, 1, NULL, 'fas fa-newspaper', NULL, '2020-02-19 17:11:58.137610', 'media/categories/antiques.jpg'),
(2, 'Cars', 6, 'cars', 1, 12, 13, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:04:17.708157', 'media/categories/cars.jpg'),
(3, 'Jobs', NULL, 'jobs', 0, 1, 6, 28, 1, NULL, 'fas fa-newspaper', NULL, '2020-03-21 15:21:27.656779', 'media/categories/jobs_CxpG9eC.jpg'),
(4, 'Tradespeople', NULL, 'tradespeople', 0, 1, 2, 40, 1, NULL, 'fas fa-newspaper', NULL, '2020-02-29 14:48:53.491780', 'media/categories/tradespeople.jpg'),
(6, 'Vehicles', NULL, 'vehicles', 0, 1, 62, 42, 1, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:02:47.620696', 'media/categories/vehicles.jpg'),
(7, 'Motorcycles and Scooters', 6, 'motorcycles-and-scooters', 1, 28, 29, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-17 13:52:42.542382', 'media/categories/motorcycles_and_scooters_rmW8mJJ.jpg'),
(9, 'Employees', 3, 'employees', 1, 2, 3, 28, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 15:22:00.052724', 'media/categories/employees.jpg'),
(10, 'Employers', 3, 'employers', 1, 4, 5, 28, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 15:22:27.997992', 'media/categories/employers_Ju8Ghr4.jpg'),
(11, 'Women\'s Fashion', 14, 'womens-fashion', 1, 244, 313, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-25 17:19:32.916193', 'media/categories/womens_fashion.jpg'),
(12, 'Men\'s Fashion', 14, 'mens-fashion', 1, 182, 243, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:20:54.175222', 'media/categories/mens_fashion_2.jpg'),
(13, 'Kids Fashion', 14, 'kids-fashion', 1, 2, 181, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-14 15:47:47.708337', 'media/categories/Kids_clothes_shoes_and_accessories_2.jpg'),
(14, 'Fashion', NULL, 'fashion', 0, 1, 314, 19, 1, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:33:29.452012', 'media/categories/fashion_2.jpg'),
(15, 'ATV', 6, 'atv', 1, 8, 9, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-13 16:59:48.015106', 'media/categories/ATV_2.jpg'),
(16, 'Baby and Toddler Equipment', NULL, 'baby-and-toddler-equipment', 0, 1, 16, 4, 1, NULL, 'fas fa-newspaper', NULL, '2020-03-13 10:47:07.422767', 'media/categories/pram_BcSMpRi.jpg'),
(17, 'Garden', 844, 'garden', 1, 2, 27, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 15:22:36.767984', 'media/categories/garden_InTRaQk.jpg'),
(18, 'Health and Beauty', NULL, 'health-and-beauty', 0, 1, 30, 22, 1, NULL, 'fas fa-newspaper', NULL, '2020-02-27 15:21:39.723231', 'media/categories/health_and_beauty.jpg'),
(19, 'Home', 844, 'home', 1, 28, 147, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:57:03.938416', 'media/categories/home_so5yEp6.jpg'),
(20, 'Kitchen', 19, 'kitchen', 2, 59, 118, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:56:06.171414', 'media/categories/kitchen_VbMVjTy.jpg'),
(21, 'Garden Furniture', 17, 'garden-furniture', 2, 9, 10, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 17:40:39.522047', 'media/categories/garden_furniture.jpg'),
(22, 'Garden Tools and Equipment', 17, 'garden-tools-and-equipment', 2, 21, 22, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-26 10:21:40.060725', 'media/categories/garden_tools_and_equipment.jpg'),
(23, 'Living Room', 19, 'living-room', 2, 119, 142, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:57:43.574264', 'media/categories/living_room_Bh7EKId.jpg'),
(24, 'Bathroom', 19, 'bathroom', 2, 29, 30, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:06:48.000491', 'media/categories/bathroom.jpg'),
(25, 'Bedroom', 19, 'bedroom', 2, 31, 48, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:07:07.236498', 'media/categories/bedroom.jpg'),
(28, 'Women\'s Clothing', 11, 'womens-clothing', 2, 261, 302, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-16 15:40:38.696866', 'media/categories/womens_clothing_TdZE7DO.jpg'),
(29, 'Women\'s Coats and Jackets', 28, 'womens-coats-and-jackets', 3, 264, 265, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-18 14:37:40.861742', 'media/categories/womens_coats_and_jsckets_dprfQ4V.jpg'),
(30, 'Women\'s Dresses', 28, 'womens-dresses', 3, 268, 269, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-18 14:38:02.241882', 'media/categories/womens_dresses_xWupq1Z.jpg'),
(31, 'Women\'s Footwear', 11, 'womens-footwear', 2, 303, 312, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 15:28:36.272105', 'media/categories/womens_footwear_LwjaNH4.jpg'),
(32, 'Women\'s Boots', 31, 'womens-boots', 3, 304, 305, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-23 16:12:26.762123', 'media/categories/womens_boots.jpg'),
(36, 'Women\'s Shoes', 31, 'womens-shoes', 3, 306, 307, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-23 16:15:09.392748', 'media/categories/womens_shoes.jpg'),
(37, 'Men\'s Clothing', 12, 'mens-clothing', 2, 201, 232, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-26 18:32:55.449906', 'media/categories/mens_clothing.jpg'),
(38, 'Men\'s Footwear', 12, 'mens-footwear', 2, 233, 242, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:29:53.138272', 'media/categories/mens_footwear_4CwnknS.jpg'),
(39, 'Men\'s Boots', 38, 'mens-boots', 3, 234, 235, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-23 16:19:09.800223', 'media/categories/mens_boots_cq6Scqg.jpg'),
(40, 'Men\'s Shoes and Sandals', 38, 'mens-shoes-and-sandals', 3, 236, 237, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-18 14:52:15.698719', 'media/categories/mens_shoes.jpg'),
(41, 'Men\'s Trainers', 38, 'mens-trainers', 3, 240, 241, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-23 16:19:53.484503', 'media/categories/mens_trainers_thcfWFT.jpg'),
(42, 'Women\'s Trainers', 31, 'womens-trainers', 3, 310, 311, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-23 16:18:36.424588', 'media/categories/womens_trainers.jpg'),
(44, 'Men\'s Trousers', 37, 'mens-trousers', 3, 228, 229, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-18 15:38:14.900378', 'media/categories/mens_trousers.jpg'),
(45, 'Men\'s Shirts', 37, 'mens-shirts', 3, 212, 213, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-18 15:33:17.109212', 'media/categories/mens_shirts_2.jpg'),
(46, 'Men\'s Coats and Jackets', 37, 'mens-coats-and-jackets', 3, 204, 205, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-18 14:41:35.079553', 'media/categories/mens_coats_and_jackets_2.jpg'),
(47, 'Men\'s T Shirts', 37, 'mens-t-shirts', 3, 224, 225, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-24 17:09:27.767711', 'media/categories/mens_t_shirts.jpg'),
(48, 'Women\'s Tops and T Shirts', 28, 'womens-tops-and-t-shirts', 3, 296, 297, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-23 16:06:37.459016', 'media/categories/womens_tops_and_T_shirts_R0miP8S.jpg'),
(49, 'Women\'s Skirts', 28, 'womens-skirts', 3, 286, 287, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-23 15:43:31.946099', 'media/categories/womens_skirts.jpg'),
(50, 'Women\'s Trousers', 28, 'womens-trousers', 3, 298, 299, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-23 16:08:40.838182', 'media/categories/womens_trousers_2.jpg'),
(51, 'Women\'s Jeans', 28, 'womens-jeans', 3, 272, 273, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-22 08:52:54.858214', 'media/categories/womens_jeans_oqNGvlf.jpg'),
(52, 'Men\'s Jeans', 37, 'mens-jeans', 3, 206, 207, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-18 15:13:11.866226', 'media/categories/mens_jeans.jpg'),
(53, 'Men\'s Nightwear and Underwear', 37, 'mens-nightwear-and-underwear', 3, 210, 211, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:21:21.165123', 'media/categories/mens_nightwear_2.jpg'),
(54, 'Women\'s Lingerie and Nightwear', 28, 'womens-lingerie-and-nightwear', 3, 280, 281, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-22 09:21:53.912080', 'media/categories/womens_nightwear_2.jpg'),
(55, 'Boys\' Clothing', 13, 'boys-clothing', 2, 75, 100, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-14 15:53:38.236838', 'media/categories/boys_clothing_2.jpg'),
(56, 'Boys\' Coats and Jackets', 55, 'boys-coats-and-jackets', 3, 76, 77, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:34:04.311019', 'media/categories/boys_coats_and_jackets_2.jpg'),
(57, 'Girls\' Coats and Jackets', 58, 'girls-coats-and-jackets', 3, 138, 139, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:28:46.476687', 'media/categories/girls_coats_and_jackets.jpg'),
(58, 'Girls\' Clothing', 13, 'girls-clothing', 2, 133, 166, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-24 16:20:27.264477', 'media/categories/girls_clothing.jpg'),
(59, 'Boys\' Footwear', 13, 'boys-footwear', 2, 101, 112, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:24:23.741148', 'media/categories/boys_footwear.jpg'),
(60, 'Boys\' Boots', 59, 'boys-boots', 3, 102, 103, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-01 15:42:39.786020', 'media/categories/boys_boots_bhSIHUC.jpg'),
(61, 'Boys\' Shoes', 59, 'boys-shoes', 3, 106, 107, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:25:12.985082', 'media/categories/boys_shoes.jpg'),
(62, 'Boys\' Trainers', 59, 'boys-trainers', 3, 110, 111, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:25:43.729640', 'media/categories/boys_trainers.jpg'),
(63, 'Girls\' Footwear', 13, 'girls-footwear', 2, 167, 180, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:59:25.505564', 'media/categories/girls_footwear_gvntFOZ.jpg'),
(64, 'Girls\' Boots', 63, 'girls-boots', 3, 168, 169, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 20:25:57.988143', 'media/categories/girls_boots_2.jpg'),
(65, 'Girls\' Shoes', 63, 'girls-shoes', 3, 174, 175, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:01:09.908422', 'media/categories/girls_shoes_1evH3K4.jpg'),
(66, 'Girls\' Trainers', 63, 'girls-trainers', 3, 178, 179, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:01:33.159383', 'media/categories/girls_trainers_UnjiHQU.jpg'),
(67, 'Boys\' Tops and T shirts', 55, 'boys-tops-and-t-shirts', 3, 96, 97, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:51:45.521048', 'media/categories/boys_tops_and_T_shirts_2.jpg'),
(68, 'Boys\' Jeans and Trousers', 55, 'boys-jeans-and-trousers', 3, 78, 79, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:21:16.545891', 'media/categories/boys_jeans_and_trousers.jpg'),
(69, 'Girls\' Tops and T Shirts', 58, 'girls-tops-and-t-shirts', 3, 162, 163, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:37:12.810768', 'media/categories/girls_tops_and_t_shirts_2.jpg'),
(70, 'Girls\' Dresses', 58, 'girls-dresses', 3, 142, 143, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-24 16:19:16.950885', 'media/categories/girls_dresses.jpg'),
(71, 'Girls\' Skirts', 58, 'girls-skirts', 3, 156, 157, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:32:24.926767', 'media/categories/girls_skirts_NexsoFj.jpg'),
(72, 'Girls\' Jeans and Trousers', 58, 'girls-jeans-and-trousers', 3, 144, 145, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:14:45.733981', 'media/categories/girls_jeans_and_trousers_2.jpg'),
(73, 'Toys and Games', NULL, 'toys-and-games', 0, 1, 2, 39, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(75, 'Business, Office and Industrial', NULL, 'business-office-and-industrial', 0, 1, 2, 9, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(78, 'Holidays/Travel', NULL, 'holidaystravel', 0, 1, 12, 23, 1, NULL, 'fas fa-newspaper', NULL, '2020-03-19 15:04:54.111222', 'media/categories/holidays_travel_NSqbqIU.jpg'),
(79, 'Luggage', 78, 'luggage', 1, 8, 9, 23, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-26 09:50:31.411672', 'media/categories/luggage.jpg'),
(80, 'Baby Bathing', 16, 'baby-bathing', 1, 2, 3, 4, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-23 15:00:33.056504', 'media/categories/baby_bath.jpg'),
(82, 'Baby Changing', 16, 'baby-changing', 1, 4, 5, 4, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-25 15:31:13.010089', 'media/categories/baby_changing.jpg'),
(83, 'Baby Feeding', 16, 'baby-feeding', 1, 6, 7, 4, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-25 15:37:49.271850', 'media/categories/baby_feeding_bottles.jpg'),
(84, 'Baby Safety', 16, 'baby-safety', 1, 12, 13, 4, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 14:17:54.409772', 'media/categories/baby_safety_RuI2gjn.jpg'),
(85, 'Baby Nursery', 16, 'baby-nursery', 1, 8, 9, 4, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-25 15:41:01.119059', 'media/categories/baby-nursery-.jpg'),
(86, 'Baby Pushchairs, Prams and Travel', 16, 'baby-pushchairs-prams-and-travel', 1, 10, 11, 4, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-25 15:48:15.406560', 'media/categories/pushchair-pink-baby-53081700.jpg'),
(89, 'Baby and Toddler Clothes, Shoes and Accessories', 13, 'baby-and-toddler-clothes-shoes-and-accessories', 2, 3, 56, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-21 18:34:47.762882', 'media/categories/baby_and_toddler_clothes_shoes_and_accessories_2.jpg'),
(90, 'Baby Boys\' Clothing', 89, 'baby-boys-clothing', 3, 4, 23, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-21 17:02:02.229241', 'media/categories/baby_boys_fashion.jpg'),
(91, 'Baby Girls\' Clothing', 89, 'baby-girls-clothing', 3, 28, 51, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 11:49:13.161620', 'media/categories/baby_girls_clothing_2.jpg'),
(92, 'Baby Boys\' Footwear and Socks', 89, 'baby-boys-footwear-and-socks', 3, 24, 25, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-21 17:25:05.051980', 'media/categories/baby_boys_footwear_and_socks.jpg'),
(93, 'Baby Girls\' Footwear and Socks', 89, 'baby-girls-footwear-and-socks', 3, 52, 53, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:50:27.127906', 'media/categories/baby_girls_footwear_DyjseyE.jpg'),
(94, 'Baby Boys\' Hats, Gloves and Accessories', 89, 'baby-boys-hats-gloves-and-accessories', 3, 26, 27, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-21 17:29:01.197415', 'media/categories/baby_boys_hats_and_gloves.jpg'),
(97, 'Sports/Hobbies/Leisure', NULL, 'sportshobbiesleisure', 0, 1, 38, 37, 1, NULL, 'fas fa-newspaper', NULL, '2020-02-29 13:09:37.637214', 'media/categories/sports_hobbies_leisure.jpg'),
(98, 'Cycling', 97, 'cycling', 1, 10, 11, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-22 15:02:52.021532', 'media/categories/cycling_myUF8gt.jpg'),
(109, 'Fitness and Gym Equipment', 97, 'fitness-and-gym-equipment', 1, 12, 13, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-26 10:29:20.195920', 'media/categories/fitness_and_gym_equipment.jpg'),
(110, 'Hair Care and Styling', 18, 'hair-care-and-styling', 1, 16, 17, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 14:56:19.465628', 'media/categories/haircare_and_styling.jpg'),
(111, 'Fragrances', 18, 'fragrances', 1, 8, 15, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 15:23:19.162313', 'media/categories/fragrances.jpg'),
(112, 'Diet and Nutrition', 18, 'diet-and-nutrition', 1, 4, 5, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 14:54:48.895199', 'media/categories/diet_and_nutrition_60ouvJm.jpg'),
(113, 'Bath and Body Products', 18, 'bath-and-body-products', 1, 2, 3, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 14:54:08.526301', 'media/categories/bath_and_body_products_6vhDcZC.jpg'),
(114, 'Facial Skincare', 18, 'facial-skincare', 1, 6, 7, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 14:55:23.370116', 'media/categories/facial_skincare_51y1WE1.jpg'),
(115, 'Makeup and Accessories', 18, 'makeup-and-accessories', 1, 20, 21, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 15:29:33.906149', 'media/categories/makeup_and_accessories.jpg'),
(118, 'Vitamins, Supplements', 18, 'vitamins-supplements', 1, 28, 29, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 14:58:46.893387', 'media/categories/vitamins_and_supplements.jpg'),
(119, 'Health and Beauty Services', 18, 'health-and-beauty-services', 1, 18, 19, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 15:29:15.598782', 'media/categories/health_and_beauty_services.jpg'),
(120, 'Garden Services', 17, 'garden-services', 2, 19, 20, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 15:19:44.053756', 'media/categories/garden_services_d8mIJti.jpg'),
(121, 'Barbecues, Accessories and Outdoor Heating', 17, 'barbecues-accessories-and-outdoor-heating', 2, 3, 4, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 15:17:49.612075', 'media/categories/barbecue.jpg'),
(122, 'Gardening Clothes and Footwear', 17, 'gardening-clothes-and-footwear', 2, 25, 26, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 15:20:53.079263', 'media/categories/gardening_clothes_and_boots.jpg'),
(123, 'Garden Fencing and Gates', 17, 'garden-fencing-and-gates', 2, 7, 8, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 15:18:49.841311', 'media/categories/garden_fencing_and_gates_IsXgviC.jpg'),
(124, 'Garden Power Tools and Equipment', 17, 'garden-power-tools-and-equipment', 2, 17, 18, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-26 10:26:22.017972', 'media/categories/garden_power_tools.jpg'),
(125, 'Garden Lighting', 17, 'garden-lighting', 2, 11, 12, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 15:19:12.649971', 'media/categories/garden_lighting_DeEtm7Z.jpg'),
(126, 'Garden Ornaments, Pots and Tubs', 17, 'garden-ornaments-pots-and-tubs', 2, 13, 14, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 17:41:05.419379', 'media/categories/garden_ornaments_pots_and_tubs.jpg'),
(128, 'Garden Weed and Pest Control', 17, 'garden-weed-and-pest-control', 2, 23, 24, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 15:20:09.829480', 'media/categories/garden_weed_control_k7A5ZpA.jpg'),
(129, 'Animals and Pets', NULL, 'animals-and-pets', 0, 1, 34, 2, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-19 15:34:48.939496', 'media/categories/Dog.jpg'),
(130, 'Animals and Pets Supplies', 129, 'animals-and-pets-supplies', 1, 4, 11, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(131, 'Animals and Pets Services', 129, 'animals-and-pets-services', 1, 2, 3, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(132, 'Maternity and Pregnancy', 16, 'maternity-and-pregnancy', 1, 14, 15, 4, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 14:27:56.963328', 'media/categories/maternity_hMfLjbX.jpg'),
(137, 'Electronic Games', NULL, 'electronic-games', 0, 1, 2, 16, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 17:24:23.454732', 'media/categories/electronic_games.jpg'),
(138, 'Birthday Celebration and Experiences', 748, 'birthday-celebration-and-experiences', 1, 6, 7, 18, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(139, 'Photography and Video Services', NULL, 'photography-and-video-services', 0, 1, 2, 33, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(141, 'Electronics', NULL, 'electronics', 0, 1, 60, 17, 1, NULL, 'fas fa-newspaper', NULL, '2020-02-20 17:24:48.404831', 'media/categories/electronics.jpg'),
(142, 'Cameras and Photography Equipment', 141, 'cameras-and-photography-equipment', 1, 2, 15, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 17:25:21.066726', 'media/categories/cameras_1TcCwC9.jpg'),
(143, 'Computers, Tablets etc', 141, 'computers-tablets-etc', 1, 16, 25, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 17:50:37.368761', 'media/categories/computers_n8ZzWa7.jpg'),
(145, 'Mobile and Home Phones', 141, 'mobile-and-home-phones', 1, 26, 35, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 17:30:00.868026', 'media/categories/mobile_and_home_phones.jpg'),
(146, 'Sat-Nav and Car Electronics', 141, 'sat-nav-and-car-electronics', 1, 36, 37, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-23 14:35:17.392623', 'media/categories/sat_nav.jpg'),
(147, 'Event Tickets', 748, 'event-tickets', 1, 12, 13, 18, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(148, 'Nail Care Manicure/ Pedicure', 18, 'nail-care-manicure-pedicure', 1, 22, 23, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 15:29:56.851570', 'media/categories/nailcare_manicure_pedicure.jpg'),
(149, 'Sound and Vision', 141, 'sound-and-vision', 1, 38, 59, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 17:32:03.590380', 'media/categories/sound_and_vision.jpg'),
(150, 'DVD, Blu-Ray and Home Cinema', 149, 'dvd-blu-ray-and-home-cinema', 2, 39, 40, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-23 14:46:20.356301', 'media/categories/DVD_player.jpg'),
(152, 'TV Reception and Set Top Boxes', 149, 'tv-reception-and-set-top-boxes', 2, 55, 56, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-30 09:39:52.568073', 'media/categories/set_top_box.jpg'),
(153, 'Televisions', 149, 'televisions', 2, 53, 54, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-30 09:31:28.042480', 'media/categories/television.jpg'),
(154, 'Radios', 149, 'radios', 2, 51, 52, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-30 09:20:28.937666', 'media/categories/radios.jpg'),
(155, 'Vintage Sound and Vision', 149, 'vintage-sound-and-vision', 2, 57, 58, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-30 09:56:40.067676', 'media/categories/vintage_sound_and_vision.jpg'),
(156, 'Holiday Accommodation', 78, 'holiday-accommodation', 1, 2, 3, 23, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 17:45:11.163917', 'media/categories/holiday_accommodation_goVmzYB.png'),
(157, 'Short Breaks', 78, 'short-breaks', 1, 10, 11, 23, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 15:46:34.256709', 'media/categories/short_breaks.jpg'),
(158, 'Holidays', 78, 'holidays', 1, 6, 7, 23, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 15:04:24.859215', 'media/categories/holidays_YQZOs61.jpg'),
(159, 'DIY Products and Building Materials', NULL, 'diy-products-and-building-materials', 0, 1, 58, 14, 1, NULL, 'fas fa-newspaper', NULL, '2020-02-20 15:21:05.967647', 'media/categories/tools_selection.jpg'),
(160, 'Home Services', 19, 'home-services', 2, 57, 58, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:53:31.804787', 'media/categories/home_services_pIeFwAs.jpg'),
(161, 'Dining Room', 19, 'dining-room', 2, 49, 54, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 12:07:58.943086', 'media/categories/dining_room_x0jwknh.jpg'),
(162, 'Miscellaneous - Home', 19, 'miscellaneous-home', 2, 143, 144, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:58:16.059309', 'media/categories/miscellaneous_home_ppF6bxj.jpg'),
(163, 'Jewellery and Watches', NULL, 'jewellery-and-watches', 0, 1, 14, 27, 1, NULL, 'fas fa-newspaper', NULL, '2020-03-21 15:12:14.958937', 'media/categories/jewellery_and_watches_05l20Nl.jpg'),
(164, 'Men\'s Jewellery', 163, 'mens-jewellery', 1, 6, 7, 27, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 19:19:33.390647', 'media/categories/mens_jewellery_VG8zIw9.jpg'),
(165, 'Women\'s Jewellery', 163, 'womens-jewellery', 1, 10, 11, 27, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 15:14:20.401041', 'media/categories/womens_jewellery_hGzEBvy.jpg'),
(166, 'Commercial Vehicles', 6, 'commercial-vehicles', 1, 14, 23, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-22 15:20:11.296556', 'media/categories/commercial_vehicles_9l8GjB1.jpg'),
(167, 'Farm Machinery', 830, 'farm-machinery', 2, 3, 4, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:03:26.115180', 'media/categories/farm_machinery.jpg'),
(169, 'Property', NULL, 'property', 0, 1, 18, 34, 1, NULL, 'fas fa-newspaper', NULL, '2020-02-29 12:20:52.193900', 'media/categories/Property.jpg'),
(170, 'Property (private) To Buy', 169, 'property-private-to-buy', 1, 14, 15, 34, 0, NULL, 'fas fa-home', 'Buy', '2020-02-29 12:22:47.567435', 'media/categories/property_private_to_buy.jpg'),
(171, 'Property (commercial) To Buy', 169, 'property-commercial-to-buy', 1, 6, 7, 34, 0, NULL, 'fas fa-industry', 'Buy', '2020-02-29 12:21:39.010331', 'media/categories/commercial_property_to_buy.jpg'),
(172, 'Camping/Festivals', 97, 'campingfestivals', 1, 6, 7, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 13:10:26.727271', 'media/categories/camping_festivals.jpg'),
(173, 'Crafts and Hobbies', 97, 'crafts-and-hobbies', 1, 8, 9, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-13 16:56:34.966094', 'media/categories/crafts_and_hobbies_SmuskVg.jpg'),
(174, 'Musical Instruments', 97, 'musical-instruments', 1, 24, 35, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 15:33:15.857115', 'media/categories/musical_instruments_puMy2yk.jpg'),
(181, 'Tuition', NULL, 'tuition', 0, 1, 2, 41, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(187, 'Weddings', NULL, 'weddings', 0, 1, 18, 44, 1, NULL, 'fas fa-newspaper', NULL, '2020-03-19 20:10:29.666611', 'media/categories/weddings_uOQ01hV.jpg'),
(188, 'Wedding Dresses', 187, 'wedding-dresses', 1, 10, 11, 44, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-27 09:36:02.457253', 'media/categories/wedding_dresses_2_1zAaPm5.jpg'),
(189, 'Bridesmaids\' Dresses', 187, 'bridesmaids-dresses', 1, 2, 3, 44, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-27 09:48:00.596327', 'media/categories/bridesmaids_dresses_2v7mg35.jpg'),
(190, 'Morning Suits', 187, 'morning-suits', 1, 4, 5, 44, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-27 09:52:26.015327', 'media/categories/morning_suits.jpg'),
(191, 'Wedding Caterers', 187, 'wedding-caterers', 1, 8, 9, 44, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:45:58.947618', 'media/categories/wedding_caterers.jpg'),
(192, 'Wedding Cakes', 187, 'wedding-cakes', 1, 6, 7, 44, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-17 13:40:41.297242', 'media/categories/wedding_cakes_2.JPG'),
(193, 'Wedding Flowers', 187, 'wedding-flowers', 1, 12, 13, 44, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:46:17.977005', 'media/categories/wedding_flowers.jpg'),
(194, 'Wedding Photography and Video', 187, 'wedding-photography-and-video', 1, 14, 15, 44, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-22 15:34:13.867239', 'media/categories/wedding_photography_3.jpg'),
(201, 'Cat Supplies', 130, 'cat-supplies', 2, 5, 6, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(202, 'Dog Supplies', 130, 'dog-supplies', 2, 7, 8, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(203, 'Beekeeping', 129, 'beekeeping', 1, 12, 13, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(204, 'Birds', 129, 'birds', 1, 14, 15, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(205, 'Fish and Aquariums', 129, 'fish-and-aquariums', 1, 22, 23, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(206, 'Horses, Ponies, Donkeys and Tack', 129, 'horses-ponies-donkeys-and-tack', 1, 26, 27, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(207, 'Rabbits, Guinea Pigs', 129, 'rabbits-guinea-pigs', 1, 28, 29, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(208, 'Reptiles', 129, 'reptiles', 1, 30, 31, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(209, 'Spiders and Insects', 129, 'spiders-and-insects', 1, 32, 33, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(210, 'Pet Memorials', 130, 'pet-memorials', 2, 9, 10, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(211, 'Farm Animals', 129, 'farm-animals', 1, 20, 21, 2, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-06 12:42:16.260724', ''),
(289, 'Businesses Ad', NULL, 'businesses-ad', 0, 1, 2, 10, 1, NULL, 'fas fa-newspaper', NULL, '2020-02-20 14:44:58.469649', 'media/categories/business_for_sale_2.jpg'),
(291, 'Women\'s Accessories', 11, 'womens-accessories', 2, 245, 260, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-25 17:19:48.339233', 'media/categories/womens_accessories.jpg'),
(292, 'Men\'s Accessories', 12, 'mens-accessories', 2, 183, 200, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-24 17:02:15.218375', 'media/categories/mens_accessories.jpg'),
(293, 'Boys\' Accessories', 13, 'boys-accessories', 2, 57, 74, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:16:28.247424', 'media/categories/boys_accessories.jpg'),
(294, 'Girls\' Accessories', 13, 'girls-accessories', 2, 113, 132, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-23 16:41:50.330957', 'media/categories/girls_accessories.jpg'),
(295, 'Antique Furniture', 1, 'antique-furniture', 1, 4, 5, 3, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-07 16:06:17.449847', 'media/categories/antique_furniture.jpg'),
(296, 'Collectable Art', 1, 'collectable-art', 1, 6, 7, 3, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 11:56:26.212962', 'media/categories/collectable_art.jpg'),
(297, 'Collectable Coins, Banknotes and Bullion', 1, 'collectable-coins-banknotes-and-bullion', 1, 10, 11, 3, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-19 17:13:44.529457', 'media/categories/antique-chinese-coins-3962678.jpg'),
(298, 'Collectable Dolls and Bears', 1, 'collectable-dolls-and-bears', 1, 12, 13, 3, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-07 16:06:49.614416', 'media/categories/Antique_Dolls_2.jpg'),
(299, 'Collectable Musical Instruments', 1, 'collectable-musical-instruments', 1, 14, 15, 3, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-19 17:16:38.894321', 'media/categories/antique-musical-instruments-.jpg'),
(300, 'Collectable Pottery and Glass', 1, 'collectable-pottery-and-glass', 1, 16, 17, 3, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-07 16:07:24.409798', 'media/categories/antique_pottery_a4Ca4Ao.jpg'),
(301, 'Collectable Sports Memorabilia', 1, 'collectable-sports-memorabilia', 1, 18, 19, 3, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-19 17:17:24.600582', 'media/categories/sports-memorabilia-19820610.jpg'),
(302, 'Collectable Stamps', 1, 'collectable-stamps', 1, 20, 21, 3, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-19 17:17:43.291981', 'media/categories/stamps-world-15548362.jpg'),
(303, 'Collectable Toys and Games', 1, 'collectable-toys-and-games', 1, 22, 23, 3, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-19 17:18:04.917368', 'media/categories/antique-toys-7711281.jpg'),
(304, 'Camcorders', 142, 'camcorders', 2, 5, 6, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-02 15:21:08.889270', 'media/categories/camcorder.jpg'),
(305, 'Camera Drones', 142, 'camera-drones', 2, 7, 8, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 17:26:33.640753', 'media/categories/camera_drone.jpg'),
(307, 'Digital Photo Frames', 142, 'digital-photo-frames', 2, 11, 12, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-02 15:32:04.136547', 'media/categories/digital_photo_frame.jpg'),
(310, 'Photography Lighting', 142, 'photography-lighting', 2, 13, 14, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-02 15:37:14.987917', 'media/categories/photogrophy_lighting.jpg'),
(312, 'Binoculars and Telescopes', 142, 'binoculars-and-telescopes', 2, 3, 4, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-02 15:17:21.095116', 'media/categories/binoculars.jpg'),
(317, 'Computers, Laptops and Accessories', 143, 'computers-laptops-and-accessories', 2, 21, 22, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-16 12:24:27.220693', 'media/categories/computers.jpg'),
(318, 'Computer Monitors, Projectors and Accessories', 143, 'computer-monitors-projectors-and-accessories', 2, 17, 18, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-16 12:12:30.779362', 'media/categories/computer_monitor_pRM6VUY.jpg'),
(319, 'Computer Printers and Scanners', 143, 'computer-printers-and-scanners', 2, 19, 20, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-16 12:17:54.056425', 'media/categories/computer_printer.jpg'),
(320, 'Tablets, ipads, eBook Readers', 143, 'tablets-ipads-ebook-readers', 2, 23, 24, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-16 12:28:31.571221', 'media/categories/computer_tablets_etc_1Tpoz2I.jpg'),
(323, 'Home Phones and Accessories', 145, 'home-phones-and-accessories', 2, 27, 28, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-22 12:00:34.680159', 'media/categories/home_phones.jpg'),
(324, 'Mobile, Smart Phones and Accessories', 145, 'mobile-smart-phones-and-accessories', 2, 29, 30, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-22 12:06:54.549191', 'media/categories/mobile_smart_phones_and_accessories.jpg'),
(326, 'Radio Communications Equipment', 145, 'radio-communications-equipment', 2, 31, 32, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-22 12:18:01.728938', 'media/categories/radio_comms_equipment.jpg'),
(328, 'Smart Watches', 145, 'smart-watches', 2, 33, 34, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-23 14:32:41.497114', 'media/categories/smart_watches.jpg'),
(331, 'Multipurpose Batteries and Power Supplies', 149, 'multipurpose-batteries-and-power-supplies', 2, 45, 46, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-27 14:23:41.634899', 'media/categories/batteries.jpg'),
(333, 'Home Audio Equipment', 149, 'home-audio-equipment', 2, 41, 42, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-23 15:01:22.688127', 'media/categories/home_audio.jpg'),
(334, 'iPods and MP3 Players', 149, 'ipods-and-mp3-players', 2, 43, 44, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-27 14:13:33.348009', 'media/categories/ipod_A5eJ2p2.jpg'),
(335, 'Performance and DJ Equipment', 149, 'performance-and-dj-equipment', 2, 47, 48, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-27 14:34:25.448022', 'media/categories/DJ_equipment_2.jpg'),
(336, 'Portable Disc Players and Radios', 149, 'portable-disc-players-and-radios', 2, 49, 50, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-30 09:11:51.206609', 'media/categories/portable_disc_player.jpg'),
(345, 'Cats and Kittens', 129, 'cats-and-kittens', 1, 16, 17, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(346, 'Dogs and Puppies', 129, 'dogs-and-puppies', 1, 18, 19, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(351, 'Women\'s Belts', 291, 'womens-belts', 3, 246, 247, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 14:00:26.668271', 'media/categories/womens_belts.jpg'),
(353, 'Women\'s Hats, Caps and Fascinators', 291, 'womens-hats-caps-and-fascinators', 3, 250, 251, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-25 17:27:46.696710', 'media/categories/womens_hats.jpg'),
(354, 'Women\'s Gloves and Mittens', 291, 'womens-gloves-and-mittens', 3, 248, 249, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-26 18:33:05.886968', 'media/categories/womens_gloves.jpg'),
(358, 'Women\'s Scarves and Shawls', 291, 'womens-scarves-and-shawls', 3, 252, 253, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-25 17:28:05.000645', 'media/categories/womens_scarves_and_shawls.jpg'),
(361, 'Women\'s Dancewear', 28, 'womens-dancewear', 3, 266, 267, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-22 08:43:18.540769', 'media/categories/womens_dancewear_3.jpg'),
(362, 'Women\'s Hosiery and Socks', 28, 'womens-hosiery-and-socks', 3, 270, 271, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-18 15:35:41.292074', 'media/categories/womens_hoiery_and_tights_0NaXFZr.jpg'),
(363, 'Women\'s Knitwear', 28, 'womens-knitwear', 3, 276, 277, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-22 09:06:30.589444', 'media/categories/womens_knitwear_2.jpg'),
(364, 'Women\'s Jumpsuits', 28, 'womens-jumpsuits', 3, 274, 275, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-18 15:36:26.418676', 'media/categories/womens_jumpsuits_2_QSF7lA9.jpg'),
(365, 'Women\'s Leggings', 28, 'womens-leggings', 3, 278, 279, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-18 15:37:23.079831', 'media/categories/womens_leggings_2.jpg'),
(366, 'Maternity Clothing', 28, 'maternity-clothing', 3, 262, 263, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-16 15:41:06.725546', 'media/categories/maternity_clothes.jpg'),
(367, 'Women\'s Shirts and Blouses', 28, 'womens-shirts-and-blouses', 3, 282, 283, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-22 09:46:45.676604', 'media/categories/womens_shirts_and_blouses_6KDoGbF.jpg'),
(368, 'Women\'s Shorts', 28, 'womens-shorts', 3, 284, 285, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-25 17:24:20.428196', 'media/categories/womens_shorts.jpg'),
(369, 'Women\'s Sportswear', 28, 'womens-sportswear', 3, 290, 291, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-23 15:50:31.997423', 'media/categories/womens_sportswear_2.jpg'),
(370, 'Women\'s Suits and Tailoring', 28, 'womens-suits-and-tailoring', 3, 292, 293, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-23 15:57:34.093154', 'media/categories/womens_suits_2.jpg'),
(371, 'Women\'s Swimwear', 28, 'womens-swimwear', 3, 294, 295, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-23 16:04:29.382033', 'media/categories/womens_swimwear_HSvZUlA.jpg'),
(372, 'Women\'s Waistcoats', 28, 'womens-waistcoats', 3, 300, 301, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-18 15:41:43.353321', 'media/categories/womens_waistcoats_2.jpg'),
(373, 'Women\'s Slippers', 31, 'womens-slippers', 3, 308, 309, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:44:42.269294', 'media/categories/womens_slippers_F6XlvMt.jpg'),
(374, 'Men\'s Slippers', 38, 'mens-slippers', 3, 238, 239, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:30:59.515582', 'media/categories/mens_slippers_sbYFq9m.jpg'),
(375, 'Boys\' Slippers', 59, 'boys-slippers', 3, 108, 109, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:36:49.528299', 'media/categories/boys_slippers_1VrO1eH.jpg'),
(376, 'Girls\' Slippers', 63, 'girls-slippers', 3, 176, 177, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:31:05.108911', 'media/categories/girls_slippers.jpg'),
(377, 'Men\'s Casual Shirts and Tops', 37, 'mens-casual-shirts-and-tops', 3, 202, 203, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-18 14:37:14.528656', 'media/categories/mens_casual_shirts_2.jpg'),
(378, 'Men\'s Knitwear', 37, 'mens-knitwear', 3, 208, 209, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-18 15:27:51.253130', 'media/categories/mens_knitwear_B7AhnK7.jpg'),
(379, 'Men\'s Shorts', 37, 'mens-shorts', 3, 214, 215, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:22:11.681491', 'media/categories/mens_shorts_5hYxD7E.jpg'),
(380, 'Men\'s Socks', 37, 'mens-socks', 3, 216, 217, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:31:39.051755', 'media/categories/mens_socks.jpg'),
(381, 'Men\'s Sportswear', 37, 'mens-sportswear', 3, 218, 219, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-18 15:35:50.026660', 'media/categories/mens_sportswear_9X6mKMI.jpg'),
(382, 'Men\'s Suits and Tailoring', 37, 'mens-suits-and-tailoring', 3, 220, 221, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-18 14:56:45.229744', 'media/categories/mens_suits_2.jpg'),
(383, 'Men\'s Swimwear', 37, 'mens-swimwear', 3, 222, 223, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:24:00.905300', 'media/categories/mens_swimwear_2.jpg'),
(384, 'Men\'s Waistcoats', 37, 'mens-waistcoats', 3, 230, 231, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:24:18.798866', 'media/categories/mens_waistcoats_KddFNUj.jpg'),
(385, 'Property (Commercial) To Rent', 169, 'property-commercial-to-rent', 1, 8, 9, 34, 0, NULL, 'fas fa-industry', 'Rent', '2020-02-29 12:21:56.353320', 'media/categories/commercial_property_to_rent.jpg'),
(386, 'Property (Private) to Rent', 169, 'property-private-to-rent', 1, 16, 17, 34, 0, NULL, 'fas fa-home', 'Rent', '2020-03-21 15:44:17.837616', 'media/categories/private_property_to_rent_VinYxpg.jpg'),
(389, 'Men\'s Belts/Belt Buckles', 292, 'mens-beltsbelt-buckles', 3, 184, 185, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 13:45:17.556565', 'media/categories/mens_belts.jpg'),
(390, 'Men\'s Braces', 292, 'mens-braces', 3, 186, 187, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:04:26.082810', 'media/categories/mens_braces_2.jpg'),
(391, 'Men\'s Gloves and Mittens', 292, 'mens-gloves-and-mittens', 3, 188, 189, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-24 17:03:27.318827', 'media/categories/mens_gloves_and_mittens.jpg'),
(393, 'Men\'s Hats and Caps', 292, 'mens-hats-and-caps', 3, 190, 191, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-24 17:03:41.746637', 'media/categories/mens_hats.jpg'),
(395, 'Men\'s Scarves', 292, 'mens-scarves', 3, 192, 193, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-24 17:04:04.230545', 'media/categories/mens_scarves.jpg'),
(397, 'Men\'s ties, bow ties and cravats', 37, 'mens-ties-bow-ties-and-cravats', 3, 226, 227, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-24 17:05:26.349339', 'media/categories/mens_ties.jpg'),
(400, 'Baby Boys\' Babygrows and Playsuits', 90, 'baby-boys-babygrows-and-playsuits', 4, 5, 6, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-17 14:17:36.773774', 'media/categories/baby_boys_babygrows.jpg'),
(401, 'Baby Boys\' Coats, Jackets and Snowsuits', 90, 'baby-boys-coats-jackets-and-snowsuits', 4, 7, 8, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-17 14:13:59.792247', 'media/categories/baby_boys_coats_jackets_and_snowsuits_2_2.jpg'),
(402, 'Baby Boys\' Knitwear', 90, 'baby-boys-knitwear', 4, 9, 10, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-17 14:23:25.550512', 'media/categories/baby_boys_knitwear_2_YZT845j.jpg'),
(403, 'Baby Boys\' Outfits and Sets', 90, 'baby-boys-outfits-and-sets', 4, 11, 12, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-17 14:28:57.509574', 'media/categories/baby_boys_outfits_and_sets_2.jpg'),
(404, 'Baby Boys\' Sleepwear', 90, 'baby-boys-sleepwear', 4, 13, 14, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-14 16:17:12.036695', 'media/categories/baby_boys_sleepwear_2JKGmtS.jpg'),
(406, 'Baby Boys\' Swimwear', 90, 'baby-boys-swimwear', 4, 15, 16, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-14 16:20:34.328743', 'media/categories/baby_boys_swimwear_NVa6stz.jpg'),
(407, 'Baby Boys\' Tops and T-Shirts', 90, 'baby-boys-tops-and-t-shirts', 4, 17, 18, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-14 16:26:57.661424', 'media/categories/baby_boys_tops_and_t_shirts.jpg'),
(408, 'Baby Boys\' Trousers, Dungarees and Shorts', 90, 'baby-boys-trousers-dungarees-and-shorts', 4, 19, 20, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-14 16:29:22.579908', 'media/categories/baby_boys_trtousers_dungarees.jpg'),
(409, 'Baby Boys\' Underwear', 90, 'baby-boys-underwear', 4, 21, 22, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-21 17:24:40.113701', 'media/categories/baby_boys_underwear.jpg'),
(410, 'Baby Girls\' Babygrows and Playsuits', 91, 'baby-girls-babygrows-and-playsuits', 4, 29, 30, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 11:45:45.931526', 'media/categories/baby_girls_baby_grows_2.jpg'),
(411, 'Baby Girls\' Coats, Jackets and Snowsuits', 91, 'baby-girls-coats-jackets-and-snowsuits', 4, 31, 32, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-21 17:31:14.443944', 'media/categories/baby_girls_coats_jackets_and_snowsuits.jpg'),
(412, 'Baby Girls\' Dresses', 91, 'baby-girls-dresses', 4, 33, 34, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 11:54:23.968409', 'media/categories/baby_girls_dress_cropped_2.jpg'),
(413, 'Baby Girls\' Knitwear', 91, 'baby-girls-knitwear', 4, 35, 36, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 11:56:51.858406', 'media/categories/baby_girls_knitwear_2.jpg'),
(414, 'Baby Girls\' Outfits and Sets', 91, 'baby-girls-outfits-and-sets', 4, 37, 38, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-21 17:30:39.118874', 'media/categories/baby_girls_outfits_and_sets.jpg'),
(415, 'Baby Girls\' Skirts', 91, 'baby-girls-skirts', 4, 39, 40, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 12:41:02.513886', 'media/categories/baby_girls_skirts.jpg'),
(416, 'Baby Girls\' Sleepwear', 91, 'baby-girls-sleepwear', 4, 41, 42, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 11:58:22.390242', 'media/categories/baby_girls_sleepwear_2.jpg'),
(418, 'Baby Girls\' Swimwear', 91, 'baby-girls-swimwear', 4, 43, 44, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-14 16:32:08.438532', 'media/categories/baby_girls_swimwear_rTE7yzM.jpg'),
(419, 'Baby Girls\' Tops and T-Shirts', 91, 'baby-girls-tops-and-t-shirts', 4, 45, 46, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 12:42:03.285855', 'media/categories/baby_girls_tops_and_T_shirts.jpg'),
(420, 'Baby Girls\' Trousers, Dungarees and Shorts', 91, 'baby-girls-trousers-dungarees-and-shorts', 4, 47, 48, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:00:37.739635', 'media/categories/baby_girls_trousers_dungarees_2.jpg'),
(421, 'Baby Girls\' Underwear', 91, 'baby-girls-underwear', 4, 49, 50, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:02:01.441422', 'media/categories/baby_girls_underwear_2.jpg'),
(422, 'Baby Girls\' Hats, Gloves and Accessories', 89, 'baby-girls-hats-gloves-and-accessories', 3, 54, 55, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-21 17:29:25.624373', 'media/categories/baby_girls_hats_and_gloves.jpg'),
(429, 'Boys\' Knitwear', 55, 'boys-knitwear', 3, 80, 81, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:35:19.872351', 'media/categories/boys_knitwear_2.jpg'),
(430, 'Boys\' Nightwear and Underwear', 55, 'boys-nightwear-and-underwear', 3, 82, 83, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:36:32.846010', 'media/categories/boys_nightwear_and_underwear_2.jpg'),
(431, 'Boys\' Shirts', 55, 'boys-shirts', 3, 84, 85, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:37:50.526468', 'media/categories/boys_shirts_2.jpg'),
(432, 'Boys\' Shorts', 55, 'boys-shorts', 3, 86, 87, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:39:52.827563', 'media/categories/boys_shorts_2.jpg'),
(433, 'Boys\' Socks', 55, 'boys-socks', 3, 88, 89, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:22:29.398949', 'media/categories/boys_socks.jpg'),
(434, 'Boys\' Sportswear', 55, 'boys-sportswear', 3, 90, 91, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:41:37.230693', 'media/categories/boys_sportswear_2.jpg'),
(435, 'Boys\' Suits', 55, 'boys-suits', 3, 92, 93, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:48:07.451117', 'media/categories/boys_suits_2.jpg'),
(436, 'Boys\' Swimwear', 55, 'boys-swimwear', 3, 94, 95, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:50:33.820277', 'media/categories/boys_swimwear_2.jpg'),
(437, 'Boys\' Uniforms', 55, 'boys-uniforms', 3, 98, 99, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:53:02.160391', 'media/categories/boys_uniforms_2.jpg'),
(438, 'Boys\' Bags', 293, 'boys-bags', 3, 58, 59, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 13:33:46.287875', 'media/categories/boys_bags.jpg'),
(439, 'Boys\' Belts/Belt Buckles', 293, 'boys-beltsbelt-buckles', 3, 60, 61, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:56:55.166319', 'media/categories/boys_belts_fNxtaTt.jpg'),
(440, 'Boys\' Braces', 293, 'boys-braces', 3, 62, 63, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 20:15:56.083534', 'media/categories/boys_braces_3_PImGwkV.jpg'),
(441, 'Boys\' Gloves and Mittens', 293, 'boys-gloves-and-mittens', 3, 66, 67, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 14:08:47.759074', 'media/categories/boys_gloves_VzTlMqT.jpg'),
(442, 'Boys\' Caps and Hats', 293, 'boys-caps-and-hats', 3, 64, 65, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:23:13.597228', 'media/categories/boys_caps_and_hats_4Sga5jS.jpg'),
(443, 'Boys\' Scarves', 293, 'boys-scarves', 3, 68, 69, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-22 16:03:38.682012', 'media/categories/boys_scarves_2.jpg'),
(444, 'Boys\' Sunglasses', 293, 'boys-sunglasses', 3, 70, 71, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:26:05.997223', 'media/categories/boys_sunglasses_vkM13LH.jpg'),
(445, 'Boys\' Wallets', 293, 'boys-wallets', 3, 72, 73, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 13:36:26.014459', 'media/categories/boys_wallets.jpg'),
(446, 'Girls\' Knitwear', 58, 'girls-knitwear', 3, 148, 149, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:26:39.604765', 'media/categories/girls_knitwear_2.jpg'),
(447, 'Girls\' Jumpsuits and Playsuits', 58, 'girls-jumpsuits-and-playsuits', 3, 146, 147, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:25:10.964657', 'media/categories/girls_jumpsuit_2.jpg'),
(448, 'Girls\' Leggings', 58, 'girls-leggings', 3, 150, 151, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:29:30.357999', 'media/categories/girls_leggings_07z2kSw.jpg'),
(449, 'Girls\' Nightwear and Underwear', 58, 'girls-nightwear-and-underwear', 3, 152, 153, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:30:44.842394', 'media/categories/girls_nightwear_and_underwear_2.jpg'),
(450, 'Girls\' Sportswear', 58, 'girls-sportswear', 3, 158, 159, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:33:49.940219', 'media/categories/girls_sportswear_2.jpg'),
(451, 'Girls\' Swimwear', 58, 'girls-swimwear', 3, 160, 161, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:35:07.342567', 'media/categories/girls_swimwear_2.jpg'),
(452, 'Girls\' Shorts', 58, 'girls-shorts', 3, 154, 155, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-24 17:29:38.658121', 'media/categories/girls_shorts_xlTqqWE.jpg'),
(453, 'Girls\' Blouses and Shirts', 58, 'girls-blouses-and-shirts', 3, 136, 137, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:11:30.459194', 'media/categories/girls_blouse_2.jpg'),
(454, 'Girls\' Uniforms', 58, 'girls-uniforms', 3, 164, 165, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:37:32.792174', 'media/categories/girls_uniforms_2.jpg'),
(455, 'Girls\' Bags', 294, 'girls-bags', 3, 116, 117, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 16:24:07.542318', 'media/categories/girls_bags.jpg'),
(456, 'Girls\' Belts/Belt Buckles', 294, 'girls-beltsbelt-buckles', 3, 118, 119, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-23 16:42:19.552889', 'media/categories/girls_belts.jpg'),
(457, 'Girls\' Gloves and Mittens', 294, 'girls-gloves-and-mittens', 3, 120, 121, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 13:37:45.235991', 'media/categories/girls_gloves.jpg'),
(458, 'Girls\' Hair Accessories', 294, 'girls-hair-accessories', 3, 122, 123, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-23 16:42:37.896435', 'media/categories/girls_hair_accessories.jpg'),
(459, 'Girls\' Hats and Caps', 294, 'girls-hats-and-caps', 3, 124, 125, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-23 16:42:55.763062', 'media/categories/girls_hats_and_caps.jpg'),
(460, 'Girls\' Jewellery', 163, 'girls-jewellery', 1, 2, 3, 27, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 15:12:53.657983', 'media/categories/girls_jewellery_2.jpg'),
(461, 'Girls Purses/Wallets', 294, 'girls-purseswallets', 3, 114, 115, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 13:37:13.026002', 'media/categories/girls_purses_and_wallets.jpg');
INSERT INTO `categories` (`id`, `title`, `parent_id`, `slug`, `level`, `lft`, `rght`, `tree_id`, `featured`, `description`, `icon`, `icon_text`, `date_updated`, `image`) VALUES
(462, 'Girls\' Scarves/Shawls', 294, 'girls-scarvesshawls', 3, 126, 127, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:05:29.450024', 'media/categories/girls_scarves_2.jpg'),
(463, 'Girls\' Sunglasses', 294, 'girls-sunglasses', 3, 128, 129, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 12:27:46.817045', 'media/categories/girls_sunglasses_bxZRbtq.jpg'),
(464, 'Girls\' Umbrellas', 294, 'girls-umbrellas', 3, 130, 131, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-23 16:43:19.361120', 'media/categories/girls_umbrellas.jpg'),
(476, 'Boys\' Casual Shoes and Sandals', 59, 'boys-casual-shoes-and-sandals', 3, 104, 105, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:24:57.931377', 'media/categories/boys_casual_shoes_and_sandals.jpg'),
(477, 'Girls\' Casual Shoes and Sandals', 63, 'girls-casual-shoes-and-sandals', 3, 170, 171, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:00:20.914024', 'media/categories/girls_csaual_shoes_and_sandals.jpg'),
(546, 'ATV Parts and Accessories', 1279, 'atv-parts-and-accessories', 2, 41, 42, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-03 11:31:58.128676', 'media/categories/ATV_parts_and_accessories.jpg'),
(547, 'Car Parts and Accessories', 1279, 'car-parts-and-accessories', 2, 45, 46, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-03 11:36:33.300982', 'media/categories/car_parts_and_accessories.jpg'),
(548, 'Van Parts and Accessories', 1279, 'van-parts-and-accessories', 2, 59, 60, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-17 13:41:23.602809', 'media/categories/van_parts_and_accessories.jpg'),
(549, 'Farm Machinery Parts and Accessories', 1279, 'farm-machinery-parts-and-accessories', 2, 49, 50, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-03 11:41:13.111386', 'media/categories/farm_machinery_parts_and_accessories.jpg'),
(550, 'Motorcycle and Scooter Parts and Accessories', 1279, 'motorcycle-and-scooter-parts-and-accessories', 2, 55, 56, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-03 11:47:26.469766', 'media/categories/motorcycle_parts_and_accessories_EbSWp0F.jpg'),
(554, 'Vans', 166, 'vans', 2, 21, 22, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:05:26.551127', 'media/categories/vans.jpg'),
(563, 'Pick-ups', 166, 'pick-ups', 2, 19, 20, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:05:13.598074', 'media/categories/pick_ups.jpg'),
(565, 'Car Hire/Lease', 1280, 'car-hirelease', 2, 35, 36, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:19:50.359681', 'media/categories/car_hire.jpg'),
(566, 'Commercial Vehicle Hire/Lease', 1280, 'commercial-vehicle-hirelease', 2, 37, 38, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:20:07.144314', 'media/categories/commercial_vehicles_for_hire.jpg'),
(567, 'HGV', 166, 'hgv', 2, 17, 18, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:05:00.075153', 'media/categories/hgv.jpg'),
(578, 'Men\'s Fragrances', 111, 'mens-fragrances', 2, 11, 12, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-26 10:05:28.095607', 'media/categories/mens_fragrances_1Azj4R1.jpg'),
(579, 'Women\'s Fragrances', 111, 'womens-fragrances', 2, 13, 14, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-26 10:15:53.784768', 'media/categories/womens_fragrances.jpg'),
(580, 'Kids\' Fragrances', 111, 'kids-fragrances', 2, 9, 10, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-26 09:55:48.991108', 'media/categories/kids_fragrances_hdR3Ypt.jpg'),
(582, 'Christmas Items', NULL, 'christmas-items', 0, 1, 2, 11, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(602, 'Natural/Homeopathic products', 18, 'naturalhomeopathic-products', 1, 24, 25, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 15:30:15.966723', 'media/categories/natural_homeopathic_products.jpg'),
(613, 'Shaving/Hair Removal', 18, 'shavinghair-removal', 1, 26, 27, 22, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 15:30:35.182917', 'media/categories/shaving_hair_removal.jpg'),
(622, 'Holiday Car Hire', 78, 'holiday-car-hire', 1, 4, 5, 23, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 15:45:46.150604', 'media/categories/holiday_car_hire.jpg'),
(623, 'DIY Adhesives and Glue Products', 159, 'diy-adhesives-and-glue-products', 1, 26, 27, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 15:29:45.402042', 'media/categories/DIY_adhesive.jpg'),
(624, 'Bricks and Stone', 159, 'bricks-and-stone', 1, 16, 17, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 15:06:37.541611', 'media/categories/bricks.jpg'),
(625, 'Building Plans and Blueprints', 159, 'building-plans-and-blueprints', 1, 18, 19, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 15:25:35.832372', 'media/categories/blueprints.jpg'),
(626, 'Cabinets/Cupboards etc', 159, 'cabinetscupboards-etc', 1, 20, 21, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 20:57:55.854997', 'media/categories/cabinets_and_cupboards_2.jpg'),
(627, 'DIY Electrical', 159, 'diy-electrical', 1, 28, 29, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 15:27:31.962651', 'media/categories/DIY_electrical.jpg'),
(628, 'DIY Flooring and Tiles', 159, 'diy-flooring-and-tiles', 1, 30, 31, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 15:27:53.117726', 'media/categories/DIY_Flooring.jpg'),
(629, 'DIY Garage Doors and Openers', 159, 'diy-garage-doors-and-openers', 1, 32, 33, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 15:42:05.696407', 'media/categories/garage_doors.jpg'),
(630, 'DIY Hand Tools', 159, 'diy-hand-tools', 1, 34, 35, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 15:49:52.629575', 'media/categories/hand_tools.jpg'),
(631, 'Ladders and Step Ladders', 159, 'ladders-and-step-ladders', 1, 44, 45, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-31 14:28:52.068366', 'media/categories/ladders.jpg'),
(632, 'Nails/Screws/Washers, Nuts, Bolts etc', 159, 'nailsscrewswashers-nuts-bolts-etc', 1, 46, 47, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-31 14:37:06.154451', 'media/categories/nails.jpg'),
(635, 'Power Tools', 159, 'power-tools', 1, 48, 49, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-31 14:44:13.574176', 'media/categories/power_tools_ROh11e0.jpg'),
(636, 'Tool Boxes/Storage', 159, 'tool-boxesstorage', 1, 54, 55, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-31 14:58:45.644883', 'media/categories/tool_box_5fYCg37.jpg'),
(637, 'Torches', 159, 'torches', 1, 56, 57, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-31 15:03:05.164108', 'media/categories/torch.jpg'),
(652, 'Bathroom Sinks', 159, 'bathroom-sinks', 1, 8, 9, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 14:52:44.114479', 'media/categories/bathroom_sink_rv7qy1Q.jpg'),
(653, 'Bathroom and Shower Suites', 159, 'bathroom-and-shower-suites', 1, 4, 5, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 14:50:12.512406', 'media/categories/bathroom_suite.jpg'),
(654, 'Baths', 159, 'baths', 1, 12, 13, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 14:53:51.980383', 'media/categories/bath.jpg'),
(655, 'Bath/Bathroom Sink Taps', 159, 'bathbathroom-sink-taps', 1, 2, 3, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 14:33:20.997080', 'media/categories/bathroom_tap.jpg'),
(657, 'Jacuzzi/Spa Baths/Hot Tubs', 159, 'jacuzzispa-bathshot-tubs', 1, 42, 43, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-31 14:10:20.354224', 'media/categories/hot_tub.jpg'),
(661, 'Shower Curtain Rails', 159, 'shower-curtain-rails', 1, 50, 51, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-31 14:47:24.651251', 'media/categories/shower_curtain_rails.jpg'),
(663, 'Bathroom Tiles', 159, 'bathroom-tiles', 1, 10, 11, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 15:23:54.598545', 'media/categories/bathroom_tiles.jpg'),
(666, 'Toilet Seats', 159, 'toilet-seats', 1, 52, 53, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-31 14:52:25.357883', 'media/categories/toilet_seat_2.jpg'),
(670, 'Bathroom Light Fittings', 159, 'bathroom-light-fittings', 1, 6, 7, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 14:56:51.179013', 'media/categories/bathroom_lights_2.jpg'),
(671, 'Bean Bags and Inflatable Furniture', 25, 'bean-bags-and-inflatable-furniture', 3, 32, 33, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:27:13.488519', 'media/categories/bean_bags_and_inflatable_furniture_2.jpg'),
(672, 'Bedroom Furniture', 25, 'bedroom-furniture', 3, 38, 39, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:28:19.188378', 'media/categories/bedroom_furniture_RuB7gRX.jpg'),
(673, 'Beds and Mattresses', 25, 'beds-and-mattresses', 3, 46, 47, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:29:53.881156', 'media/categories/beds_and_mattresses_jhTDESw.jpg'),
(676, 'Bedroom Curtains and Blinds', 25, 'bedroom-curtains-and-blinds', 3, 36, 37, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:08:09.225397', 'media/categories/bedroom_curtains.jpg'),
(678, 'Bedroom Lamps and Lighting', 25, 'bedroom-lamps-and-lighting', 3, 40, 41, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:28:48.125700', 'media/categories/bedroom_lamps.jpg'),
(679, 'Bedroom Mirrors', 25, 'bedroom-mirrors', 3, 42, 43, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:08:54.826641', 'media/categories/bedroom_mirrors.jpg'),
(681, 'Bedroom Storage', 25, 'bedroom-storage', 3, 44, 45, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:29:22.358101', 'media/categories/bedroom_storage_k04w0G0.jpg'),
(683, 'Dining Tables and Chairs', 161, 'dining-tables-and-chairs', 3, 50, 51, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:30:29.965183', 'media/categories/dining_table_and_chairs_AqlqRLB.jpg'),
(684, 'Sideboards', 161, 'sideboards', 3, 52, 53, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:10:13.219260', 'media/categories/sideboard.jpg'),
(685, 'Coffee/Tea Making Equipment', 20, 'coffeetea-making-equipment', 3, 62, 63, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:11:43.972263', 'media/categories/coffee_and_tea_making_equipment.jpg'),
(686, 'Cookers/Ovens/Hobs', 20, 'cookersovenshobs', 3, 64, 65, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:11:58.017174', 'media/categories/cookers.jpg'),
(688, 'Cookware', 20, 'cookware', 3, 66, 67, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:31:17.558442', 'media/categories/cookware_bpHT8T9.jpg'),
(689, 'Cutlery', 20, 'cutlery', 3, 70, 71, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:12:44.190023', 'media/categories/cutlery.jpg'),
(690, 'Crockery', 20, 'crockery', 3, 68, 69, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:12:30.250733', 'media/categories/crockery.jpg'),
(691, 'Dishwashers', 20, 'dishwashers', 3, 74, 75, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:13:23.280129', 'media/categories/dishwashers.jpg'),
(692, 'Dishwasher Parts and Accessories', 20, 'dishwasher-parts-and-accessories', 3, 72, 73, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:13:07.642653', 'media/categories/dishwasher_parts_and_accessories.jpg'),
(693, 'Food Mixers', 20, 'food-mixers', 3, 76, 77, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:13:39.437373', 'media/categories/food_mixers.jpg'),
(694, 'Food Processors', 20, 'food-processors', 3, 78, 79, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:13:53.633486', 'media/categories/food_processors.jpg'),
(695, 'Fridges/Freezers', 20, 'fridgesfreezers', 3, 80, 81, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:14:08.960391', 'media/categories/fridges_freezers.jpg'),
(696, 'Glassware', 20, 'glassware', 3, 82, 83, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:14:23.112240', 'media/categories/glassware.jpg'),
(697, 'Ice Cream Makers', 20, 'ice-cream-makers', 3, 86, 87, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:14:57.347424', 'media/categories/ice_cream_makers.jpg'),
(698, 'Irons/Ironing Boards', 20, 'ironsironing-boards', 3, 88, 89, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:15:15.605541', 'media/categories/irons_ironing_boards.jpg'),
(699, 'Juicers', 20, 'juicers', 3, 90, 91, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:15:32.100064', 'media/categories/juicers.jpg'),
(700, 'Kettles', 20, 'kettles', 3, 92, 93, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:54:43.858237', 'media/categories/kettles_N4P8NfZ.jpg'),
(703, 'Toasters', 20, 'toasters', 3, 104, 105, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:26:18.625462', 'media/categories/toasters.jpg'),
(704, 'Vacuum Cleaners/Carpet Shampooer', 20, 'vacuum-cleanerscarpet-shampooer', 3, 108, 109, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:26:50.309865', 'media/categories/vacuum_cleaners.jpg'),
(705, 'Kitchen Tables, Chairs and Stools', 20, 'kitchen-tables-chairs-and-stools', 3, 98, 99, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:25:32.274549', 'media/categories/kitchen_tables_chairs_and_stools.jpg'),
(706, 'Washing Machines', 20, 'washing-machines', 3, 110, 111, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:27:04.289955', 'media/categories/washing_machines.jpg'),
(707, 'Tumble Dryers', 20, 'tumble-dryers', 3, 106, 107, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:26:33.437453', 'media/categories/tumble_dryers.jpg'),
(708, 'Water Filters', 20, 'water-filters', 3, 112, 113, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:27:18.661129', 'media/categories/water_filters.jpg'),
(709, 'Baking Equipment', 20, 'baking-equipment', 3, 60, 61, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:11:27.865849', 'media/categories/baking_equipment.jpg'),
(711, 'Kitchen Implements/Tools', 20, 'kitchen-implementstools', 3, 94, 95, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:25:02.359775', 'media/categories/kitchen_implements.jpg'),
(712, 'Kitchen Scales', 20, 'kitchen-scales', 3, 96, 97, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:25:17.525066', 'media/categories/kitchen_scales.jpg'),
(713, 'Oven Gloves/Cloths', 20, 'oven-glovescloths', 3, 100, 101, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:25:47.452076', 'media/categories/oven_gloves.jpg'),
(715, 'Tea Towels', 20, 'tea-towels', 3, 102, 103, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:26:02.418737', 'media/categories/tea_towels.jpg'),
(716, 'Wine Racks', 20, 'wine-racks', 3, 116, 117, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:27:49.327417', 'media/categories/wine_racks.jpg'),
(717, 'Wine Fridges', 20, 'wine-fridges', 3, 114, 115, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:27:31.911492', 'media/categories/wine_fridges.jpg'),
(719, 'Book Cases and Shelving', 23, 'book-cases-and-shelving', 3, 120, 121, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:38:56.981330', 'media/categories/book_cases_and_shelving.jpg'),
(721, 'Candles/Tea Lights/Holders', 23, 'candlestea-lightsholders', 3, 122, 123, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:39:16.277283', 'media/categories/candles_and_tea_lights.jpg'),
(722, 'Chairs/Sofas/Suites', 23, 'chairssofassuites', 3, 126, 127, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:39:47.504487', 'media/categories/chairs_sofas_suites.jpg'),
(723, 'Clocks', 23, 'clocks', 3, 128, 129, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-13 16:43:59.444823', 'media/categories/clocks_2.jpg'),
(724, 'Cushions/Soft Furnishings', 23, 'cushionssoft-furnishings', 3, 130, 131, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:40:19.155575', 'media/categories/cushions.jpg'),
(725, 'Lamps and Lighting', 23, 'lamps-and-lighting', 3, 132, 133, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:40:38.707667', 'media/categories/lamps.jpg'),
(726, 'Mirrors', 23, 'mirrors', 3, 134, 135, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:43:10.354407', 'media/categories/mirrors.jpg'),
(727, 'Pictures and Photo Frames', 23, 'pictures-and-photo-frames', 3, 136, 137, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:43:28.788294', 'media/categories/pictures_and_photo_frames.jpg'),
(728, 'Carpets and Rugs', 23, 'carpets-and-rugs', 3, 124, 125, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:39:31.860418', 'media/categories/carpets_and_rugs.jpg'),
(729, 'Storage', 23, 'storage', 3, 138, 139, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:43:43.488489', 'media/categories/storage.jpg'),
(730, 'TV and Home Entertainment Stands', 23, 'tv-and-home-entertainment-stands', 3, 140, 141, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:43:58.167304', 'media/categories/tv_stands.jpg'),
(731, 'Conservatories', 159, 'conservatories', 1, 24, 25, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-26 15:24:40.500984', 'media/categories/conservatory.jpg'),
(732, 'Fireplaces, Fires and Accessories', 159, 'fireplaces-fires-and-accessories', 1, 36, 37, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-27 17:57:00.898906', 'media/categories/fireplaces_AlNeDLx.jpg'),
(733, 'Heating and Cooling Systems', 159, 'heating-and-cooling-systems', 1, 38, 39, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-30 16:48:16.947822', 'media/categories/heating_Jel27HY.jpg'),
(734, 'Home Decorating Supplies', 159, 'home-decorating-supplies', 1, 40, 41, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-30 16:55:05.812718', 'media/categories/home_decorating.jpg'),
(735, 'Home Laundry Supplies', 20, 'home-laundry-supplies', 3, 84, 85, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:14:38.567964', 'media/categories/home_laundry_supplies.jpg'),
(736, 'Security and Home Automation', 19, 'security-and-home-automation', 2, 145, 146, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:44:47.985117', 'media/categories/home_security_and_automation.jpg'),
(737, 'Men\'s Watches', 163, 'mens-watches', 1, 8, 9, 27, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 19:18:23.361082', 'media/categories/mens_watches_eV0ulDw.jpg'),
(738, 'Women\'s Watches', 163, 'womens-watches', 1, 12, 13, 27, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 15:14:51.785162', 'media/categories/womens_watches_JGAzEci.jpg'),
(739, 'Jewellery Boxes', 163, 'jewellery-boxes', 1, 4, 5, 27, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 11:32:16.602624', 'media/categories/jewellery_boxes.jpg'),
(748, 'Events and Parties', NULL, 'events-and-parties', 0, 1, 18, 18, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(749, 'Children\'s Birthday Parties', 748, 'childrens-birthday-parties', 1, 8, 9, 18, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(750, 'Adult\'s Birthday Parties', 748, 'adults-birthday-parties', 1, 2, 3, 18, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(751, 'Conference Planning/Corporate Away Days', 748, 'conference-planningcorporate-away-days', 1, 10, 11, 18, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(754, 'Outside Catering', 748, 'outside-catering', 1, 14, 15, 18, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(755, 'Stag/Hen Evening/Weekends', 748, 'staghen-eveningweekends', 1, 16, 17, 18, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(756, 'Birthday and Special Occasion Cakes', 748, 'birthday-and-special-occasion-cakes', 1, 4, 5, 18, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(777, 'Books Fiction', 97, 'books-fiction', 1, 2, 3, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 13:09:53.518642', 'media/categories/fiction_books.jpg'),
(779, 'Antique Books', 1, 'antique-books', 1, 2, 3, 3, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-07 16:05:42.383616', 'media/categories/antique_books.jpg'),
(794, 'Brass Musical Instruments', 174, 'brass-musical-instruments', 2, 25, 26, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 15:33:38.273525', 'media/categories/brass_instruments_4ZHivkq.jpg'),
(795, 'String Instruments', 174, 'string-instruments', 2, 31, 32, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 14:45:09.093816', 'media/categories/string_instruments.jpg'),
(796, 'Pianos/Keyboards', 174, 'pianoskeyboards', 2, 29, 30, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 14:44:48.881436', 'media/categories/pianos_keyboards.jpg'),
(797, 'Percussion Instruments', 174, 'percussion-instruments', 2, 27, 28, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 15:34:10.292452', 'media/categories/percussion_instruments.jpg'),
(798, 'Woodwind Instruments', 174, 'woodwind-instruments', 2, 33, 34, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 14:45:21.851189', 'media/categories/woodwind_instruments.jpg'),
(800, 'Sporting Clothing, Accessories and Equipment', 97, 'sporting-clothing-accessories-and-equipment', 1, 36, 37, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-17 13:53:17.018080', 'media/categories/sports_clothing_accessories_and_equipment.jpg'),
(810, 'Football Clothing/Equipment', 1291, 'football-clothingequipment', 2, 17, 18, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 13:11:59.905933', 'media/categories/football_clothing_equipment.jpg'),
(820, 'Alcohol - OVER 18s ONLY', 837, 'alcohol-over-18s-only', 1, 2, 9, 15, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(822, 'Financial / Legal Services', NULL, 'financial-legal-services', 0, 1, 2, 20, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(824, 'Beams', 159, 'beams', 1, 14, 15, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-13 15:35:28.241586', 'media/categories/Beams.jpg'),
(825, 'Cobblestones', 159, 'cobblestones', 1, 22, 23, 14, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-20 21:14:25.805723', 'media/categories/cobblestones_teJkrnO.jpg'),
(826, 'Gas Fires and Heating', 19, 'gas-fires-and-heating', 2, 55, 56, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-21 11:51:22.599694', 'media/categories/gas_fires_2.jpg'),
(827, 'Garden Decking', 17, 'garden-decking', 2, 5, 6, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-19 15:18:23.062373', 'media/categories/decking.jpg'),
(828, 'Buses and Coaches', 166, 'buses-and-coaches', 2, 15, 16, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:04:46.754009', 'media/categories/buses_and_coaches.jpg'),
(830, 'Agricultural Vehicles', 6, 'agricultural-vehicles', 1, 2, 7, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-14 09:57:08.905854', 'media/categories/agricultural_vehicles_k1Slxzv.jpg'),
(831, 'Farm Tractors and Trailers', 830, 'farm-tractors-and-trailers', 2, 5, 6, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:03:38.048955', 'media/categories/farm_tractors_and_trailers.jpg'),
(836, 'Horse Boxes', 6, 'horse-boxes', 1, 26, 27, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-22 15:21:09.923097', 'media/categories/horse_boxes_IPIdY9c.jpg'),
(837, 'Drinks', NULL, 'drinks', 0, 1, 14, 15, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(838, 'Soft Drinks', 837, 'soft-drinks', 1, 12, 13, 15, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(839, 'Beer, Lager, Cider', 820, 'beer-lager-cider', 2, 3, 4, 15, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(842, 'Hot Drinks', 837, 'hot-drinks', 1, 10, 11, 15, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(844, 'Home & Garden', NULL, 'home-garden', 0, 1, 148, 26, 1, NULL, 'fas fa-newspaper', NULL, '2020-02-27 17:39:16.220140', 'media/categories/homes_and_gardens.jpg'),
(845, 'Dating/Friendship', NULL, 'datingfriendship', 0, 1, 2, 13, 1, NULL, 'fas fa-newspaper', NULL, '2020-03-19 20:06:27.882651', 'media/categories/dating_and_friendsgip.jpg'),
(1167, 'HGV Parts and Accessories', 1279, 'hgv-parts-and-accessories', 2, 51, 52, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-03 11:44:41.762539', 'media/categories/hgv_parts_and_accessories.jpg'),
(1195, 'Caravans/Campervans/Motorhomes', 6, 'caravanscampervansmotorhomes', 1, 10, 11, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:04:05.015560', 'media/categories/caravans_motorhomes.jpg'),
(1204, 'Pick-ups Spare Parts and Accessories', 1279, 'pick-ups-spare-parts-and-accessories', 2, 57, 58, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-03 11:49:26.477309', 'media/categories/pick_up_truck_parts_and_accessories.jpg'),
(1276, 'Horse Box Parts and Accessories', 1279, 'horse-box-parts-and-accessories', 2, 53, 54, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-17 13:41:44.802033', 'media/categories/horse_box_parts_and_accessories.jpg'),
(1277, 'Caravans/Campervans/Motorhomes Parts and Accessories', 1279, 'caravanscampervansmotorhomes-parts-and-accessories', 2, 47, 48, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-03 11:40:30.818724', 'media/categories/caravan_parts_and_accessories.jpg'),
(1279, 'Vehicle Parts and Accessories', 6, 'vehicle-parts-and-accessories', 1, 40, 61, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:34:35.846326', 'media/categories/vehicle_parts_and_accessories.jpg'),
(1280, 'Vehicle Hire and Leasing', 6, 'vehicle-hire-and-leasing', 1, 32, 39, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:19:14.869908', 'media/categories/vehicle_hire_and_leasing.jpg'),
(1281, 'Agricultural Vehicle and Machinery Hire/Leasing', 1280, 'agricultural-vehicle-and-machinery-hireleasing', 2, 33, 34, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:19:34.494346', 'media/categories/agricultural_vehicles_for_hire.jpg'),
(1282, 'Wine', 820, 'wine', 2, 7, 8, 15, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(1283, 'Spirits and Liqueurs', 820, 'spirits-and-liqueurs', 2, 5, 6, 15, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(1289, 'Collectable Clocks', 1, 'collectable-clocks', 1, 8, 9, 3, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-19 17:13:25.980548', 'media/categories/antique-golden-table-clocks-8129223.jpg'),
(1290, 'Bus and Coach Parts and Accessories', 1279, 'bus-and-coach-parts-and-accessories', 2, 43, 44, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-03 11:36:07.957785', 'media/categories/bus_and_coach_accessories.jpg'),
(1291, 'Football', 97, 'football', 1, 14, 23, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 13:11:30.335871', 'media/categories/football.jpg'),
(1295, 'Football Tickets', 1291, 'football-tickets', 2, 21, 22, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 13:12:24.861777', 'media/categories/football_tickets.jpg'),
(1297, 'Football Boots', 1291, 'football-boots', 2, 15, 16, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-17 13:57:10.540117', 'media/categories/football_boots.jpg'),
(1298, 'Football Kit', 1291, 'football-kit', 2, 19, 20, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 13:12:11.142316', 'media/categories/football_kit.jpg'),
(1299, 'Books Non Fiction', 97, 'books-non-fiction', 1, 4, 5, 37, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 13:10:10.790810', 'media/categories/non_fiction_books.jpg'),
(1303, 'Trailers', 6, 'trailers', 1, 30, 31, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-06-17 13:52:19.210377', 'media/categories/trailers.jpg'),
(1307, 'Girls\' Dancewear', 58, 'girls-dancewear', 3, 140, 141, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 13:13:13.862444', 'media/categories/girls_dancewear_2.jpg'),
(1308, 'Girls\' Dance Shoes', 63, 'girls-dance-shoes', 3, 172, 173, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-03-15 14:00:47.351621', 'media/categories/girls_dance_shoes_M3lLs4s.jpg'),
(1310, 'Bedding', 25, 'bedding', 3, 34, 35, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-28 17:07:51.970199', 'media/categories/bedding.jpg'),
(1312, 'Medical, Mobility, Disability Assistance Products', NULL, 'medical-mobility-disability-assistance-products', 0, 1, 2, 31, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(1313, 'Cameras and Accessories', 142, 'cameras-and-accessories', 2, 9, 10, 17, 0, NULL, 'fas fa-newspaper', NULL, '2020-04-02 15:26:08.476229', 'media/categories/camera_accessories.jpg'),
(1314, 'Garden Plants and Seeds', 17, 'garden-plants-and-seeds', 2, 15, 16, 26, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-27 17:41:18.833859', 'media/categories/garden_plants_and_seeds.jpg'),
(1317, 'Commercial Catering Equipment', NULL, 'commercial-catering-equipment', 0, 1, 2, 12, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(1319, 'Hamsters, Mice and Rats', 129, 'hamsters-mice-and-rats', 1, 24, 25, 2, 0, NULL, 'fas fa-newspaper', NULL, '2019-12-20 12:37:15.876140', ''),
(1320, 'Wedding Venues', 187, 'wedding-venues', 1, 16, 17, 44, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:46:43.849503', 'media/categories/wedding_venues.jpg'),
(1321, 'Property (Commercial) Land to Buy', 169, 'property-commercial-land-to-buy', 1, 2, 3, 34, 0, NULL, 'fas fa-city', 'Buy', '2020-02-29 12:21:08.903793', 'media/categories/commercial_land_to_buy.jpg'),
(1322, 'Property (Private) Land To Buy', 169, 'property-private-land-to-buy', 1, 10, 11, 34, 0, NULL, 'fas fa-tree', 'Buy', '2020-02-29 12:22:13.468632', 'media/categories/private_land_to_buy.jpg'),
(1323, 'Property (Commercial) Land to Rent', 169, 'property-commercial-land-to-rent', 1, 4, 5, 34, 0, NULL, 'fas fa-city', 'Rent', '2020-02-29 12:21:23.275455', 'media/categories/commercial_land_to_rent.jpg'),
(1324, 'Property (Private) Land To Rent', 169, 'property-private-land-to-rent', 1, 12, 13, 34, 0, NULL, 'fas fa-tree', 'Rent', '2020-02-29 12:22:29.357252', 'media/categories/private_land_to_rent.jpg'),
(1325, 'Garage Equipment', 6, 'garage-equipment', 1, 24, 25, 42, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-29 15:10:33.032713', 'media/categories/garage_equipment.jpg'),
(1326, 'Mens\' Sunglasses', 292, 'mens-sunglasses', 3, 196, 197, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-22 08:35:08.815764', 'media/categories/mens_sunglasses.jpg'),
(1327, 'Womens\' Sunglasses', 291, 'womens-sunglasses', 3, 258, 259, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-05-22 08:30:14.611615', 'media/categories/womens_sunglasses_2D8sLsx.jpg'),
(1328, 'Womens\' Bags', 291, 'womens-bags', 3, 256, 257, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:47:49.249775', 'media/categories/Womens_bags_87siwVn.jpg'),
(1329, 'Mens\' Wallets', 292, 'mens-wallets', 3, 198, 199, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 13:42:14.102290', 'media/categories/mens_wallets.jpg'),
(1331, 'Girls Socks', 58, 'girls-socks', 3, 134, 135, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:27:02.201837', 'media/categories/girls_socks.jpg'),
(1332, 'Women\'s Socks', 28, 'womens-socks', 3, 288, 289, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-22 16:33:27.209091', 'media/categories/womens_socks.jpg'),
(1333, 'Men\'s Umbrellas', 292, 'mens-umbrellas', 3, 194, 195, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-23 16:44:06.071930', 'media/categories/mens_umbrella.jpg'),
(1334, 'Women\'s Umbrellas', 291, 'womens-umbrellas', 3, 254, 255, 19, 0, NULL, 'fas fa-newspaper', NULL, '2020-02-23 16:44:38.780529', 'media/categories/womens_umbrella.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shipping_address` varchar(299) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `is_paid` int(11) NOT NULL DEFAULT 0,
  `payment_method` enum('cash_on_delivery','paypal','razorpay','') NOT NULL DEFAULT 'cash_on_delivery',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `shipping_address`, `total`, `is_paid`, `payment_method`, `created_on`, `updated_on`) VALUES
(1, 2, 'Nashik', 499, 0, 'cash_on_delivery', '2021-01-26 19:01:25', NULL),
(2, 2, 'test', 554, 0, 'cash_on_delivery', '2021-01-26 23:09:08', NULL),
(3, 2, 'test', 554, 0, 'cash_on_delivery', '2021-01-26 23:09:19', NULL),
(4, 2, 'test', 554, 0, 'cash_on_delivery', '2021-01-26 23:09:52', NULL),
(5, 2, 'hello', 554, 0, 'cash_on_delivery', '2021-01-26 23:12:54', NULL),
(6, 2, 'hello', 554, 0, 'cash_on_delivery', '2021-01-26 23:13:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(299) DEFAULT NULL,
  `product_price` varchar(299) DEFAULT NULL,
  `product_image` varchar(299) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sub_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_image`, `qty`, `sub_total`) VALUES
(1, 4, 2, 'test', '554', 'uploads/products/b977f637693944ba6c82a9666d9ad6dd.jpg', 1, 554),
(2, 5, 2, 'test', '554', 'uploads/products/b977f637693944ba6c82a9666d9ad6dd.jpg', 1, 554),
(3, 6, 2, 'test', '554', 'uploads/products/b977f637693944ba6c82a9666d9ad6dd.jpg', 1, 554);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(299) DEFAULT NULL,
  `sku` varchar(299) DEFAULT NULL,
  `quantity` varchar(299) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category_id`, `image`, `sku`, `quantity`, `price`, `added_by`, `created_on`, `updated_on`) VALUES
(2, 'test', 'description', 1, 'uploads/products/b977f637693944ba6c82a9666d9ad6dd.jpg', 'sku68868686', '55', 554, 1, '2021-01-26 19:19:55', '2021-01-26 19:23:07'),
(3, 'charging cable', 'charging cable', 14, 'uploads/products/b3e934bef77ce31afd459ad7c308cb83.jpg', 'charging cable', '666', 44, 1, '2021-01-27 11:40:07', NULL),
(4, 'wireless earphone', 'wireless earphone', 6, 'uploads/products/b50324101e4516b054aabc35efc87d37.jpg', 'wireless earphone', '7868', 66, 1, '2021-01-27 11:40:55', NULL),
(5, 'car mobile charger', 'car mobile charger', 822, 'uploads/products/ecc4c84387cd7dd141c1f440d79d7da2.jpg', 'car mobile charger', '66', 55, 1, '2021-01-27 11:41:34', NULL),
(6, 'samsung case', 'samsung case', 78, 'uploads/products/afd237a781a478f85aa60af389b756bf.jpg', 'samsung case', '33', 44, 1, '2021-01-27 11:41:56', NULL),
(7, 'iphone x case', 'iphone x case', 137, 'uploads/products/5e3e29b389aa6b284da16d93be74d555.jpg', 'iphone x case', '333', 43, 1, '2021-01-27 11:42:25', NULL),
(8, 'iphone 11 case', 'iphone 11 case', 137, 'uploads/products/cdc85114021e215586de78ca1061becd.jpg', 'iphone 11 case', '22', 34, 1, '2021-01-27 11:42:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `user_id`, `product_id`, `qty`, `created_on`, `updated_on`) VALUES
(1, NULL, 1, 1, '2021-01-26 19:50:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(299) DEFAULT NULL,
  `last_name` varchar(299) DEFAULT NULL,
  `email` varchar(299) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0 COMMENT '0=user,1=admin',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `address` varchar(299) DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `is_admin`, `created_on`, `updated_on`, `address`, `contact`) VALUES
(1, 'Admin', 'A', 'admin@gmail.com', '$2y$10$Z.rYk42a6pn/zG9WY/5QhOxSKJqbJqFGhBrHfeJb.R0EAKUg0IWKK', 1, '2021-01-26 19:07:00', NULL, NULL, NULL),
(2, 'Tom', 'A', 'tom@gmail.com', '$2y$10$Z.rYk42a6pn/zG9WY/5QhOxSKJqbJqFGhBrHfeJb.R0EAKUg0IWKK', 0, '2021-01-26 19:07:00', NULL, NULL, NULL),
(4, 'jyas', 's', 'jayesh@gmail.com', '$2y$10$R.6n9.Nf2XqIEEGYuOC4EOPoQGAofPNblnmkx1pOm06nLPYpQ4Jim', 0, '2021-01-27 11:19:05', NULL, 'nashik', 7657675765);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_category_slug_3e599bb5` (`slug`),
  ADD KEY `ads_category_parent_id_37e0bdd3_fk_ads_category_id` (`parent_id`),
  ADD KEY `ads_category_tree_id_43027d5f` (`tree_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1335;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
