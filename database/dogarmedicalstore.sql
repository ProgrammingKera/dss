-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2025 at 08:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dogarmedicalstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_generated_order_list`
--

CREATE TABLE `auto_generated_order_list` (
  `auto_order_id` int(11) NOT NULL,
  `generation_date` date DEFAULT NULL,
  `processed_status` varchar(50) DEFAULT NULL,
  `processed_date` date DEFAULT NULL,
  `total_items` int(11) DEFAULT NULL,
  `estimated_cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auto_order_items`
--

CREATE TABLE `auto_order_items` (
  `auto_item_id` int(11) NOT NULL,
  `auto_order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `prediction_id` int(11) DEFAULT NULL,
  `quantity_to_order` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cnic` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_purchase_patterns`
--

CREATE TABLE `customer_purchase_patterns` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total_quantity_purchased` int(11) NOT NULL,
  `product_sales` decimal(15,2) NOT NULL,
  `gross_margin` decimal(15,2) NOT NULL,
  `inventory_turnover_rate` decimal(15,2) NOT NULL,
  `fahp_score` decimal(10,4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_name` varchar(255) DEFAULT NULL,
  `purchase_frequency` int(11) DEFAULT NULL,
  `next_predicted_purchase_date` date DEFAULT NULL,
  `confidence_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer_purchase_patterns`
--

INSERT INTO `customer_purchase_patterns` (`id`, `customer_id`, `product_id`, `total_quantity_purchased`, `product_sales`, `gross_margin`, `inventory_turnover_rate`, `fahp_score`, `created_at`, `product_name`, `purchase_frequency`, `next_predicted_purchase_date`, `confidence_score`) VALUES
(169, 1, 101, 10, 1120.00, 12.50, 32.67, 0.2073, '2025-06-25 18:20:52', 'Cetirizine, Panadol, Antacid, Augmentin', 4, '2025-04-05', 40),
(170, 2, 132, 10, 1390.00, -56.12, 72.33, 0.0134, '2025-06-25 18:20:52', 'Vitamin C Tablets, Cough Syrup, Dove Face Wash, Lip Balm', 4, '2025-05-03', 40),
(171, 3, 109, 18, 2760.00, -55.22, 142.80, 0.1972, '2025-06-25 18:20:52', 'Hand Cream, Metformin, Dove Face Wash, Digestive Enzyme, Disprin, Brufen, Vitamin C Tablets, Lipitor', 8, '2025-06-03', 80),
(172, 4, 101, 13, 1510.00, 35.50, 32.47, 0.3562, '2025-06-25 18:20:52', 'Electrolyte Powder, Augmentin, Cold Medicine, Panadol, Disprin, Brufen', 6, '2025-06-18', 60),
(173, 5, 126, 9, 1300.00, -79.23, 77.67, -0.0544, '2025-06-25 18:20:52', 'Vitamin C Tablets, L\'Oreal Shampoo, Dove Face Wash, Omeprazole', 4, '2025-04-10', 40),
(174, 6, 105, 4, 650.00, 85.23, 3.20, 0.3367, '2025-06-25 18:20:52', 'Disprin, Brufen', 2, '2025-04-05', 20),
(175, 7, 101, 6, 600.00, 20.00, 16.00, 0.1448, '2025-06-25 18:20:52', 'Panadol, Augmentin', 2, '2025-04-05', 20),
(176, 8, 105, 13, 1910.00, -20.00, 76.40, 0.2029, '2025-06-25 18:20:52', 'Shampoo, Antibiotic Cream, Dove Face Wash, Disprin, Brufen, Vitamin C Tablets', 6, '2025-05-18', 60),
(177, 9, 122, 9, 1170.00, 26.15, 28.80, 0.2471, '2025-06-25 18:20:52', 'Amoxicillin, Disprin, Pond\'s Cold Cream, Brufen', 4, '2025-04-05', 40),
(178, 10, 101, 22, 2470.00, -12.39, 92.53, 0.3106, '2025-06-25 18:20:52', 'Augmentin, Sunscreen, Panadol, Probiotic, Disprin, Brufen', 8, '2025-05-22', 80),
(179, 11, 104, 3, 550.00, -63.64, 30.00, -0.1019, '2025-06-25 18:20:52', 'Vitamin C Tablets, Dove Face Wash', 2, '2025-04-05', 20),
(180, 12, 101, 25, 3140.00, -76.24, 184.47, 0.1466, '2025-06-25 18:20:52', 'Zinc Tablets, Multivitamin, Augmentin, Panadol, BB Cream, Disprin, Brufen, Paracetamol', 8, '2025-06-25', 80),
(181, 13, 101, 13, 1350.00, 14.81, 38.33, 0.2159, '2025-06-25 18:20:52', 'Panadol, Clotrimazole Cream, Loratadine, Augmentin', 4, '2025-04-25', 40),
(182, 14, 104, 5, 900.00, -72.22, 51.67, -0.1212, '2025-06-25 18:20:52', 'Vitamin C Tablets, Dove Face Wash', 2, '2025-04-06', 20),
(183, 15, 101, 15, 1850.00, 26.70, 45.20, 0.3337, '2025-06-25 18:20:52', 'Augmentin, Panadol, Vitamin D, Disprin, Brufen, Face Wash', 6, '2025-05-15', 60),
(184, 16, 101, 19, 2360.00, -22.46, 96.33, 0.2015, '2025-06-25 18:20:52', 'Augmentin, Dextromethorphan, Dove Face Wash, Panadol, Multivitamins, Vitamin C Tablets', 6, '2025-04-17', 60),
(185, 17, 104, 5, 900.00, -72.22, 51.67, -0.1212, '2025-06-25 18:20:52', 'Vitamin C Tablets, Dove Face Wash', 2, '2025-04-06', 20),
(186, 18, 108, 14, 2410.00, 38.67, 49.27, 0.3708, '2025-06-25 18:20:52', 'Paracetamol, Calcium Tablets, Disprin, Brufen, Fish Oil Capsules, Iron Capsules', 6, '2025-05-10', 60),
(187, 19, 101, 13, 1690.00, 48.17, 29.20, 0.3133, '2025-06-25 18:20:52', 'Panadol, Disprin, Brufen, Augmentin', 4, '2025-03-18', 40),
(188, 20, 101, 6, 620.00, -34.19, 27.73, 0.0657, '2025-06-25 18:20:52', 'Vitamin C Tablets, Panadol, Disprin, Augmentin', 4, '2025-01-25', 40),
(189, 21, 101, 19, 3000.00, 35.33, 64.67, 0.3654, '2025-06-25 18:20:52', 'Augmentin, Aspirin, Dove Face Wash, Panadol, Cough Syrup, Brufen', 6, '2025-03-03', 60),
(190, 22, 101, 19, 2930.00, -83.07, 178.80, 0.1644, '2025-06-25 18:20:52', 'Face Mask, Dove Face Wash, Panadol, Antifungal Spray, Disprin, Vitamin C Tablets', 9, '2025-06-15', 90),
(191, 23, 102, 5, 950.00, -16.84, 37.00, 0.0406, '2025-06-25 18:20:52', 'Dove Face Wash, Augmentin', 2, '2025-03-05', 20),
(192, 24, 101, 9, 1210.00, 13.72, 34.80, 0.2516, '2025-06-25 18:20:52', 'Loperamide, Panadol, Disprin, Vitamin C Tablets, Iron Tablets', 5, '2025-04-03', 50),
(193, 25, 105, 22, 3130.00, 25.43, 77.80, 0.4196, '2025-06-25 18:20:52', 'Ibuprofen, Pain Reliever, Nivea Body Lotion, Hair Serum, Disprin, Brufen', 8, '2025-06-07', 80),
(194, 26, 102, 5, 790.00, -87.34, 49.33, -0.1272, '2025-06-25 18:20:52', 'Vitamin C Tablets, Dove Face Wash, Augmentin', 3, '2025-04-06', 30),
(195, 42, 170, 2, 2400.00, 50.00, 40.00, 0.2420, '2025-06-25 18:20:52', 'AllerFree', 2, '2025-06-23', 20),
(196, 30, 118, 5, 710.00, -16.90, 27.67, 0.0376, '2025-06-25 18:20:52', 'Vaseline Lip Balm, Magnesium Tablets', 2, '2025-03-14', 20);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `cnic` varchar(20) DEFAULT NULL,
  `emergency` varchar(15) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expiry_alert`
--

CREATE TABLE `expiry_alert` (
  `alert_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `alert_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `change_amount` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `payment_method` varchar(50) DEFAULT 'cash',
  `payment_intent_id` varchar(255) DEFAULT NULL,
  `card_holder` varchar(255) DEFAULT NULL,
  `card_last_four` varchar(4) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT 'completed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `total_amount`, `paid_amount`, `change_amount`, `order_date`, `payment_method`, `payment_intent_id`, `card_holder`, `card_last_four`, `payment_status`) VALUES
(1, 1, 500.00, 600.00, 100.00, '2025-04-05 10:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(2, 2, 750.00, 800.00, 50.00, '2025-04-05 11:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(3, 3, 1200.00, 1300.00, 100.00, '2025-04-05 14:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(4, 4, 300.00, 350.00, 50.00, '2025-04-05 15:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(5, 5, 450.00, 500.00, 50.00, '2025-04-05 16:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(6, 6, 600.00, 650.00, 50.00, '2025-04-05 17:45:00', 'cash', NULL, NULL, NULL, 'completed'),
(7, 7, 800.00, 850.00, 50.00, '2025-04-05 18:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(8, 8, 350.00, 400.00, 50.00, '2025-04-05 19:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(9, 9, 550.00, 600.00, 50.00, '2025-04-05 19:45:00', 'cash', NULL, NULL, NULL, 'completed'),
(10, 10, 900.00, 950.00, 50.00, '2025-04-05 20:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(11, 11, 450.00, 500.00, 50.00, '2025-04-05 21:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(12, 12, 700.00, 750.00, 50.00, '2025-04-05 22:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(13, 13, 1200.00, 1300.00, 100.00, '2025-04-06 10:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(14, 14, 950.00, 1000.00, 50.00, '2025-04-06 11:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(15, 15, 850.00, 900.00, 50.00, '2025-04-06 12:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(16, 16, 1000.00, 1050.00, 50.00, '2025-04-06 14:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(17, 17, 750.00, 800.00, 50.00, '2025-04-06 15:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(18, 18, 650.00, 700.00, 50.00, '2025-04-06 16:45:00', 'cash', NULL, NULL, NULL, 'completed'),
(19, 19, 840.00, 900.00, 60.00, '2025-01-12 11:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(20, 20, 620.00, 700.00, 80.00, '2025-01-25 16:45:00', 'cash', NULL, NULL, NULL, 'completed'),
(21, 21, 910.00, 1000.00, 90.00, '2025-02-10 13:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(22, 22, 710.00, 800.00, 90.00, '2025-02-27 15:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(23, 23, 950.00, 1000.00, 50.00, '2025-03-05 12:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(24, 24, 630.00, 700.00, 70.00, '2025-03-20 17:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(25, 25, 1080.00, 1200.00, 120.00, '2025-04-01 10:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(26, 26, 790.00, 850.00, 60.00, '2025-04-06 14:45:00', 'cash', NULL, NULL, NULL, 'completed'),
(27, NULL, 3480.00, 4000.00, 520.00, '2025-04-10 02:13:00', 'cash', NULL, NULL, NULL, 'completed'),
(28, NULL, 2030.00, 0.00, -2030.00, '2025-04-10 09:22:59', 'cash', NULL, NULL, NULL, 'completed'),
(29, NULL, 2030.00, 4000.00, 1970.00, '2025-04-10 09:28:33', 'cash', NULL, NULL, NULL, 'completed'),
(30, NULL, 830.00, 2995.00, 2165.00, '2025-04-10 22:43:22', 'cash', NULL, NULL, NULL, 'completed'),
(31, NULL, 2030.00, 2000.00, -30.00, '2025-04-17 14:08:58', 'cash', NULL, NULL, NULL, 'completed'),
(32, NULL, 830.00, 830.00, 0.00, '2025-04-17 14:14:29', 'cash', NULL, NULL, NULL, 'completed'),
(33, NULL, 830.00, 830.00, 0.00, '2025-04-17 17:54:17', 'cash', NULL, NULL, NULL, 'completed'),
(34, NULL, 1200.00, 1200.00, 0.00, '2025-05-20 02:05:16', 'cash', NULL, NULL, NULL, 'completed'),
(35, NULL, 1200.00, 1200.00, 0.00, '2025-05-20 02:07:02', 'cash', NULL, NULL, NULL, 'completed'),
(36, 42, 1200.00, 1200.00, 0.00, '2025-06-09 17:57:38', 'stripe', 'pi_3RY5GeHmNGByIcZO1oG6VTSo', NULL, '0000', 'completed'),
(37, NULL, 380.00, 0.00, -380.00, '2025-06-09 21:10:35', 'cash', NULL, NULL, NULL, 'completed'),
(38, 42, 1200.00, 1200.00, 0.00, '2025-06-16 22:58:49', 'stripe', 'pi_3RahIyHmNGByIcZO0fn6xCLG', NULL, '0000', 'completed'),
(49, 21, 820.00, 900.00, 80.00, '2025-01-22 14:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(50, 16, 690.00, 700.00, 10.00, '2025-02-11 16:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(51, 8, 500.00, 550.00, 50.00, '2025-03-03 12:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(52, 19, 950.00, 1000.00, 50.00, '2025-03-18 18:45:00', 'cash', NULL, NULL, NULL, 'completed'),
(53, 3, 740.00, 800.00, 60.00, '2025-04-15 10:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(54, 25, 660.00, 700.00, 40.00, '2025-04-27 16:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(55, 10, 840.00, 900.00, 60.00, '2025-05-10 15:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(56, 22, 970.00, 1000.00, 30.00, '2025-06-03 20:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(57, 4, 590.00, 600.00, 10.00, '2025-06-10 11:20:00', 'cash', NULL, NULL, NULL, 'completed'),
(58, 12, 1130.00, 1200.00, 70.00, '2025-06-25 18:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(59, 15, 890.00, 950.00, 60.00, '2025-01-03 10:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(60, 22, 720.00, 800.00, 80.00, '2025-01-08 14:25:00', 'cash', NULL, NULL, NULL, 'completed'),
(61, 10, 650.00, 700.00, 50.00, '2025-01-15 16:40:00', 'cash', NULL, NULL, NULL, 'completed'),
(62, 18, 840.00, 900.00, 60.00, '2025-01-29 12:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(63, 3, 900.00, 950.00, 50.00, '2025-02-07 18:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(64, 25, 410.00, 450.00, 40.00, '2025-02-12 15:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(65, 12, 560.00, 600.00, 40.00, '2025-02-18 11:45:00', 'cash', NULL, NULL, NULL, 'completed'),
(66, 21, 1270.00, 1300.00, 30.00, '2025-03-03 14:20:00', 'cash', NULL, NULL, NULL, 'completed'),
(67, 30, 1020.00, 1050.00, 30.00, '2025-03-14 16:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(68, 1, 890.00, 950.00, 60.00, '2025-03-22 10:10:00', 'cash', NULL, NULL, NULL, 'completed'),
(69, 9, 710.00, 750.00, 40.00, '2025-03-28 18:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(70, 24, 600.00, 650.00, 50.00, '2025-04-03 12:25:00', 'cash', NULL, NULL, NULL, 'completed'),
(71, 5, 880.00, 900.00, 20.00, '2025-04-10 14:10:00', 'cash', NULL, NULL, NULL, 'completed'),
(72, 16, 995.00, 1000.00, 5.00, '2025-04-17 19:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(73, 13, 740.00, 800.00, 60.00, '2025-04-25 16:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(74, 2, 670.00, 700.00, 30.00, '2025-05-03 11:10:00', 'cash', NULL, NULL, NULL, 'completed'),
(75, 18, 1130.00, 1200.00, 70.00, '2025-05-10 18:40:00', 'cash', NULL, NULL, NULL, 'completed'),
(76, 15, 950.00, 1000.00, 50.00, '2025-05-15 15:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(77, 8, 890.00, 950.00, 60.00, '2025-05-18 12:25:00', 'cash', NULL, NULL, NULL, 'completed'),
(78, 10, 470.00, 500.00, 30.00, '2025-05-22 10:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(79, 3, 660.00, 700.00, 40.00, '2025-06-03 16:45:00', 'cash', NULL, NULL, NULL, 'completed'),
(80, 25, 840.00, 900.00, 60.00, '2025-06-07 18:20:00', 'cash', NULL, NULL, NULL, 'completed'),
(81, 12, 910.00, 950.00, 40.00, '2025-06-12 14:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(82, 22, 1020.00, 1050.00, 30.00, '2025-06-15 15:25:00', 'cash', NULL, NULL, NULL, 'completed'),
(83, 4, 570.00, 600.00, 30.00, '2025-06-18 16:10:00', 'cash', NULL, NULL, NULL, 'completed'),
(84, 9, 690.00, 700.00, 10.00, '2025-06-20 17:40:00', 'cash', NULL, NULL, NULL, 'completed'),
(85, 21, 950.00, 1000.00, 50.00, '2025-06-22 19:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(86, 16, 880.00, 900.00, 20.00, '2025-06-25 10:45:00', 'cash', NULL, NULL, NULL, 'completed'),
(87, 30, 1130.00, 1200.00, 70.00, '2025-06-27 11:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(88, 1, 660.00, 700.00, 40.00, '2025-06-28 12:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(89, 18, 890.00, 950.00, 60.00, '2025-06-29 14:20:00', 'cash', NULL, NULL, NULL, 'completed'),
(90, 25, 1020.00, 1050.00, 30.00, '2025-06-29 16:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(91, 12, 710.00, 750.00, 40.00, '2025-06-29 18:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(92, 22, 840.00, 900.00, 60.00, '2025-06-29 18:40:00', 'cash', NULL, NULL, NULL, 'completed'),
(93, 5, 990.00, 1000.00, 10.00, '2025-06-29 19:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(94, 21, 660.00, 700.00, 40.00, '2025-06-29 19:40:00', 'cash', NULL, NULL, NULL, 'completed'),
(95, 16, 890.00, 950.00, 60.00, '2025-06-29 19:50:00', 'cash', NULL, NULL, NULL, 'completed'),
(96, 25, 1020.00, 1050.00, 30.00, '2025-06-29 20:10:00', 'cash', NULL, NULL, NULL, 'completed'),
(97, 30, 1130.00, 1200.00, 70.00, '2025-06-29 20:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(98, 18, 660.00, 700.00, 40.00, '2025-06-29 20:40:00', 'cash', NULL, NULL, NULL, 'completed'),
(99, 22, 890.00, 950.00, 60.00, '2025-06-29 20:45:00', 'cash', NULL, NULL, NULL, 'completed'),
(100, 21, 1020.00, 1050.00, 30.00, '2025-06-29 20:55:00', 'cash', NULL, NULL, NULL, 'completed'),
(101, 5, 840.00, 900.00, 60.00, '2025-06-29 21:00:00', 'cash', NULL, NULL, NULL, 'completed'),
(102, 16, 660.00, 700.00, 40.00, '2025-06-29 21:10:00', 'cash', NULL, NULL, NULL, 'completed'),
(103, 25, 890.00, 950.00, 60.00, '2025-06-29 21:15:00', 'cash', NULL, NULL, NULL, 'completed'),
(104, 22, 1020.00, 1050.00, 30.00, '2025-06-29 21:20:00', 'cash', NULL, NULL, NULL, 'completed'),
(105, 18, 1130.00, 1200.00, 70.00, '2025-06-29 21:25:00', 'cash', NULL, NULL, NULL, 'completed'),
(106, 30, 660.00, 700.00, 40.00, '2025-06-29 21:30:00', 'cash', NULL, NULL, NULL, 'completed'),
(107, 5, 890.00, 950.00, 60.00, '2025-06-29 21:35:00', 'cash', NULL, NULL, NULL, 'completed'),
(108, 16, 1020.00, 1050.00, 30.00, '2025-06-29 21:40:00', 'cash', NULL, NULL, NULL, 'completed'),
(109, 48, 2740.00, 2740.00, 0.00, '2025-06-25 23:35:25', 'stripe', 'pi_3RdyAJHmNGByIcZO1r1SBhxa', NULL, '0000', 'completed'),
(110, NULL, 380.00, 0.00, -380.00, '2025-06-25 23:38:31', 'cash', NULL, NULL, NULL, 'completed'),
(111, 48, 150.00, 150.00, 0.00, '2025-06-25 23:40:12', 'stripe', 'pi_3RdyExHmNGByIcZO1C0eIXfY', NULL, '0000', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`, `total_price`, `product_name`) VALUES
(1, 1, 101, 2, 100.00, 200.00, 'Panadol'),
(2, 1, 102, 3, 100.00, 300.00, 'Augmentin'),
(3, 2, 103, 1, 200.00, 200.00, 'Dove Face Wash'),
(4, 2, 104, 4, 150.00, 600.00, 'Vitamin C Tablets'),
(5, 3, 105, 5, 120.00, 600.00, 'Brufen'),
(6, 3, 106, 2, 150.00, 300.00, 'Disprin'),
(7, 4, 101, 1, 100.00, 100.00, 'Panadol'),
(8, 4, 102, 2, 100.00, 200.00, 'Augmentin'),
(9, 5, 103, 3, 150.00, 450.00, 'Dove Face Wash'),
(10, 5, 104, 2, 150.00, 300.00, 'Vitamin C Tablets'),
(11, 6, 105, 1, 200.00, 200.00, 'Brufen'),
(12, 6, 106, 3, 150.00, 450.00, 'Disprin'),
(13, 7, 101, 4, 100.00, 400.00, 'Panadol'),
(14, 7, 102, 2, 100.00, 200.00, 'Augmentin'),
(15, 8, 103, 2, 200.00, 400.00, 'Dove Face Wash'),
(16, 8, 104, 1, 150.00, 150.00, 'Vitamin C Tablets'),
(17, 9, 105, 3, 120.00, 360.00, 'Brufen'),
(18, 9, 106, 2, 150.00, 300.00, 'Disprin'),
(19, 10, 101, 5, 100.00, 500.00, 'Panadol'),
(20, 10, 102, 3, 100.00, 300.00, 'Augmentin'),
(21, 11, 103, 2, 200.00, 400.00, 'Dove Face Wash'),
(22, 11, 104, 1, 150.00, 150.00, 'Vitamin C Tablets'),
(23, 12, 105, 4, 120.00, 480.00, 'Brufen'),
(24, 12, 106, 2, 150.00, 300.00, 'Disprin'),
(25, 13, 101, 6, 100.00, 600.00, 'Panadol'),
(26, 13, 102, 3, 100.00, 300.00, 'Augmentin'),
(27, 14, 103, 3, 200.00, 600.00, 'Dove Face Wash'),
(28, 14, 104, 2, 150.00, 300.00, 'Vitamin C Tablets'),
(29, 15, 105, 2, 120.00, 240.00, 'Brufen'),
(30, 15, 106, 3, 150.00, 450.00, 'Disprin'),
(31, 16, 101, 7, 100.00, 700.00, 'Panadol'),
(32, 16, 102, 4, 100.00, 400.00, 'Augmentin'),
(33, 17, 103, 3, 200.00, 600.00, 'Dove Face Wash'),
(34, 17, 104, 2, 150.00, 300.00, 'Vitamin C Tablets'),
(35, 18, 105, 2, 120.00, 240.00, 'Brufen'),
(36, 18, 106, 4, 150.00, 600.00, 'Disprin'),
(37, 19, 105, 3, 120.00, 360.00, 'Brufen'),
(38, 19, 106, 3, 160.00, 480.00, 'Disprin'),
(39, 20, 101, 2, 100.00, 200.00, 'Panadol'),
(40, 20, 102, 2, 100.00, 200.00, 'Augmentin'),
(41, 20, 104, 1, 150.00, 150.00, 'Vitamin C Tablets'),
(42, 20, 106, 1, 70.00, 70.00, 'Disprin'),
(43, 21, 103, 2, 200.00, 400.00, 'Dove Face Wash'),
(44, 21, 105, 3, 170.00, 510.00, 'Brufen'),
(45, 22, 101, 3, 100.00, 300.00, 'Panadol'),
(46, 22, 106, 2, 150.00, 300.00, 'Disprin'),
(47, 22, 104, 1, 110.00, 110.00, 'Vitamin C Tablets'),
(48, 23, 103, 3, 200.00, 600.00, 'Dove Face Wash'),
(49, 23, 102, 2, 175.00, 350.00, 'Augmentin'),
(50, 24, 101, 2, 100.00, 200.00, 'Panadol'),
(51, 24, 106, 2, 150.00, 300.00, 'Disprin'),
(52, 24, 104, 1, 130.00, 130.00, 'Vitamin C Tablets'),
(53, 25, 105, 4, 120.00, 480.00, 'Brufen'),
(54, 25, 106, 4, 150.00, 600.00, 'Disprin'),
(55, 26, 103, 2, 200.00, 400.00, 'Dove Face Wash'),
(56, 26, 104, 2, 150.00, 300.00, 'Vitamin C Tablets'),
(57, 26, 102, 1, 90.00, 90.00, 'Augmentin'),
(58, 27, 166, 1, 380.00, 380.00, 'AcneFix'),
(59, 27, 189, 1, 450.00, 450.00, 'AcneRelief Gel'),
(60, 27, 170, 2, 1200.00, 2400.00, 'AllerFree'),
(61, 27, 121, 1, 250.00, 250.00, 'Amoxicillin'),
(62, 28, 166, 1, 380.00, 380.00, 'AcneFix'),
(63, 28, 189, 1, 450.00, 450.00, 'AcneRelief Gel'),
(64, 28, 170, 1, 1200.00, 1200.00, 'AllerFree'),
(65, 29, 166, 1, 380.00, 380.00, 'AcneFix'),
(66, 29, 189, 1, 450.00, 450.00, 'AcneRelief Gel'),
(67, 29, 170, 1, 1200.00, 1200.00, 'AllerFree'),
(68, 30, 166, 1, 380.00, 380.00, 'AcneFix'),
(69, 30, 189, 1, 450.00, 450.00, 'AcneRelief Gel'),
(70, 31, 166, 1, 380.00, 380.00, 'AcneFix'),
(71, 31, 189, 1, 450.00, 450.00, 'AcneRelief Gel'),
(72, 31, 170, 1, 1200.00, 1200.00, 'AllerFree'),
(73, 32, 166, 1, 380.00, 380.00, 'AcneFix'),
(74, 32, 189, 1, 450.00, 450.00, 'AcneRelief Gel'),
(75, 33, 166, 1, 380.00, 380.00, 'AcneFix'),
(76, 33, 189, 1, 450.00, 450.00, 'AcneRelief Gel'),
(77, 34, 170, 1, 1200.00, 1200.00, 'AllerFree'),
(78, 35, 170, 1, 1200.00, 1200.00, 'AllerFree'),
(79, 36, 170, 1, 1200.00, 1200.00, 'AllerFree'),
(80, 37, 166, 1, 380.00, 380.00, 'AcneFix'),
(81, 38, 170, 1, 1200.00, 1200.00, 'AllerFree'),
(82, 49, 101, 3, 100.00, 300.00, 'Panadol'),
(83, 49, 102, 4, 130.00, 520.00, 'Augmentin'),
(84, 50, 103, 2, 200.00, 400.00, 'Dove Face Wash'),
(85, 50, 104, 1, 150.00, 150.00, 'Vitamin C Tablets'),
(86, 51, 105, 3, 120.00, 360.00, 'Brufen'),
(87, 51, 106, 1, 130.00, 130.00, 'Disprin'),
(88, 52, 101, 4, 100.00, 400.00, 'Panadol'),
(89, 52, 102, 3, 150.00, 450.00, 'Augmentin'),
(90, 53, 103, 3, 200.00, 600.00, 'Dove Face Wash'),
(91, 53, 104, 1, 140.00, 140.00, 'Vitamin C Tablets'),
(92, 54, 105, 2, 120.00, 240.00, 'Brufen'),
(93, 54, 106, 3, 140.00, 420.00, 'Disprin'),
(94, 55, 101, 3, 100.00, 300.00, 'Panadol'),
(95, 55, 102, 3, 130.00, 390.00, 'Augmentin'),
(96, 56, 103, 2, 200.00, 400.00, 'Dove Face Wash'),
(97, 56, 104, 3, 190.00, 570.00, 'Vitamin C Tablets'),
(98, 57, 105, 3, 120.00, 360.00, 'Brufen'),
(99, 57, 106, 2, 115.00, 230.00, 'Disprin'),
(100, 58, 101, 5, 100.00, 500.00, 'Panadol'),
(101, 58, 102, 3, 210.00, 630.00, 'Augmentin'),
(102, 59, 101, 2, 150.00, 300.00, 'Panadol'),
(103, 59, 102, 3, 100.00, 300.00, 'Augmentin'),
(104, 60, 103, 1, 250.00, 250.00, 'Dove Face Wash'),
(105, 60, 104, 2, 160.00, 320.00, 'Vitamin C Tablets'),
(106, 61, 105, 2, 100.00, 200.00, 'Brufen'),
(107, 61, 106, 3, 150.00, 450.00, 'Disprin'),
(108, 62, 107, 1, 300.00, 300.00, 'Fish Oil Capsules'),
(109, 62, 108, 3, 180.00, 540.00, 'Calcium Tablets'),
(110, 63, 109, 1, 250.00, 250.00, 'Metformin'),
(111, 63, 110, 2, 130.00, 260.00, 'Lipitor'),
(112, 64, 111, 3, 130.00, 390.00, 'Ibuprofen'),
(113, 64, 112, 1, 200.00, 200.00, 'Nivea Body Lotion'),
(114, 65, 113, 2, 120.00, 240.00, 'Zinc Tablets'),
(115, 65, 114, 3, 100.00, 300.00, 'Paracetamol'),
(116, 66, 115, 4, 130.00, 520.00, 'Cough Syrup'),
(117, 66, 116, 3, 250.00, 750.00, 'Aspirin'),
(118, 67, 117, 2, 160.00, 320.00, 'Vaseline Lip Balm'),
(119, 67, 118, 3, 130.00, 390.00, 'Magnesium Tablets'),
(120, 68, 119, 3, 100.00, 300.00, 'Antacid'),
(121, 68, 120, 2, 160.00, 320.00, 'Cetirizine'),
(122, 69, 121, 3, 120.00, 360.00, 'Amoxicillin'),
(123, 69, 122, 1, 150.00, 150.00, 'Pond\'s Cold Cream'),
(124, 70, 123, 2, 130.00, 260.00, 'Iron Tablets'),
(125, 70, 124, 2, 160.00, 320.00, 'Loperamide'),
(126, 71, 125, 3, 100.00, 300.00, 'Omeprazole'),
(127, 71, 126, 1, 250.00, 250.00, 'L\'Oreal Shampoo'),
(128, 72, 127, 3, 130.00, 390.00, 'Multivitamins'),
(129, 72, 128, 2, 160.00, 320.00, 'Dextromethorphan'),
(130, 73, 129, 1, 150.00, 150.00, 'Clotrimazole Cream'),
(131, 73, 130, 3, 100.00, 300.00, 'Loratadine'),
(132, 74, 131, 3, 130.00, 390.00, 'Cough Syrup'),
(133, 74, 132, 2, 100.00, 200.00, 'Lip Balm'),
(134, 75, 133, 1, 250.00, 250.00, 'Iron Capsules'),
(135, 75, 134, 3, 160.00, 480.00, 'Paracetamol'),
(136, 76, 135, 3, 100.00, 300.00, 'Face Wash'),
(137, 76, 136, 2, 130.00, 260.00, 'Vitamin D'),
(138, 77, 137, 3, 130.00, 390.00, 'Shampoo'),
(139, 77, 138, 3, 160.00, 480.00, 'Antibiotic Cream'),
(140, 78, 139, 2, 100.00, 200.00, 'Probiotic'),
(141, 78, 140, 1, 130.00, 130.00, 'Sunscreen'),
(142, 79, 141, 3, 160.00, 480.00, 'Digestive Enzyme'),
(143, 79, 142, 1, 130.00, 130.00, 'Hand Cream'),
(144, 80, 143, 3, 100.00, 300.00, 'Hair Serum'),
(145, 80, 144, 2, 250.00, 500.00, 'Pain Reliever'),
(146, 81, 145, 3, 130.00, 390.00, 'BB Cream'),
(147, 81, 146, 3, 100.00, 300.00, 'Multivitamin'),
(148, 82, 147, 2, 100.00, 200.00, 'Antifungal Spray'),
(149, 82, 148, 3, 160.00, 480.00, 'Face Mask'),
(150, 83, 149, 3, 100.00, 300.00, 'Electrolyte Powder'),
(151, 83, 150, 2, 160.00, 320.00, 'Cold Medicine'),
(152, 109, 121, 1, 250.00, 250.00, 'Amoxicillin'),
(153, 109, 119, 1, 90.00, 90.00, 'Antacid'),
(154, 109, 180, 1, 2400.00, 2400.00, 'AntiAging Cream'),
(155, 110, 166, 1, 380.00, 380.00, 'AcneFix'),
(156, 111, 157, 1, 150.00, 150.00, 'Antiseptic Solution');

--
-- Triggers `order_items`
--
DELIMITER $$
CREATE TRIGGER `before_insert_order_items` BEFORE INSERT ON `order_items` FOR EACH ROW BEGIN
    DECLARE v_name VARCHAR(255);
    -- Products table se product_name le aao
    SELECT product_name INTO v_name
    FROM products
    WHERE product_id = NEW.product_id
    LIMIT 1;

    -- New record ke liye product_name set kardo
    SET NEW.product_name = v_name;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_orders`
--

CREATE TABLE `pharmacy_orders` (
  `pharmacy_order_id` int(11) NOT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `expected_delivery_date` date DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `total_amount` decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pharmacy_orders`
--

INSERT INTO `pharmacy_orders` (`pharmacy_order_id`, `order_date`, `expected_delivery_date`, `supplier_name`, `status`, `total_amount`) VALUES
(1, '2025-04-10 01:55:12', '2021-07-04', 'kashaf', 'Pending', 2030.00),
(2, '2025-04-10 09:24:47', '2021-05-07', 'kashaff', 'Pending', 2030.00),
(3, '2025-04-10 10:19:23', '2021-04-03', 'rashid', 'Pending', 830.00),
(4, '2025-04-10 10:20:25', '2020-04-06', 'sarim', 'Pending', 830.00),
(5, '2025-04-10 11:17:18', '2025-05-09', 'kashaf', 'Pending', 830.00),
(6, '2025-04-10 22:38:05', '2025-04-10', 'Default Supplier', 'Pending', 830.00),
(7, '2025-04-27 16:14:58', '2025-04-27', 'Default Supplier', 'Pending', 830.00),
(8, '2025-06-25 23:37:41', '2025-06-25', 'Default Supplier', 'Pending', 380.00);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_order_items`
--

CREATE TABLE `pharmacy_order_items` (
  `item_id` int(11) NOT NULL,
  `pharmacy_order_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pharmacy_order_items`
--

INSERT INTO `pharmacy_order_items` (`item_id`, `pharmacy_order_id`, `product_name`, `quantity`, `unit_price`) VALUES
(1, 1, 'AcneFix', 1, 380.00),
(2, 1, 'AcneRelief Gel', 1, 450.00),
(3, 1, 'AllerFree', 1, 1200.00),
(4, 2, 'AcneFix', 1, 380.00),
(5, 2, 'AcneRelief Gel', 1, 450.00),
(6, 2, 'AllerFree', 1, 1200.00),
(7, 3, 'AcneFix', 1, 380.00),
(8, 3, 'AcneRelief Gel', 1, 450.00),
(9, 4, 'AcneFix', 1, 380.00),
(10, 4, 'AcneRelief Gel', 1, 450.00),
(11, 5, 'AcneFix', 1, 380.00),
(12, 5, 'AcneRelief Gel', 1, 450.00),
(13, 6, 'AcneFix', 1, 380.00),
(14, 6, 'AcneRelief Gel', 1, 450.00),
(15, 7, 'AcneFix', 1, 380.00),
(16, 7, 'AcneRelief Gel', 1, 450.00),
(17, 8, 'AcneFix', 1, 380.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `dosage_form` varchar(255) DEFAULT NULL,
  `usage_indication` varchar(255) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `cost_price` decimal(10,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `cost_of_goods_sold` decimal(10,2) DEFAULT NULL,
  `average_inventory_cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category`, `product_name`, `brand`, `description`, `price`, `stock_quantity`, `expiry_date`, `dosage_form`, `usage_indication`, `date_added`, `cost_price`, `image_path`, `cost_of_goods_sold`, `average_inventory_cost`) VALUES
(101, 'Medicine', 'Panadol', 'GSK', 'Pain reliever and fever reducer', 50.00, 100, '2026-12-31', 'Tablet', 'Fever, headache', '2025-02-20', 30.00, NULL, NULL, NULL),
(102, 'Medicine', 'Augmentin', 'GlaxoSmithKline', 'Antibiotic for bacterial infections', 300.00, 50, '2025-06-15', 'Tablet', 'Bacterial infections', '2025-02-20', 180.00, NULL, NULL, NULL),
(103, 'Cosmetics', 'Dove Face Wash', 'Dove', 'Gentle cleanser for face', 450.00, 30, NULL, NULL, 'Skincare', '2025-02-22', 250.00, NULL, NULL, NULL),
(104, 'Supplement', 'Vitamin C Tablets', 'Nature\'s Bounty', 'Immune support supplement', 600.00, 40, '2027-03-10', 'Tablet', 'Immunity boost', '2025-02-22', 400.00, NULL, NULL, NULL),
(105, 'Medicine', 'Brufen', 'Abbott', 'Pain relief and anti-inflammatory', 100.00, 60, '2025-08-25', 'Tablet', 'Pain relief', '2025-02-22', 60.00, NULL, NULL, NULL),
(106, 'Medicine', 'Disprin', 'Bayer', 'Aspirin for pain relief and fever reduction', 20.00, 120, '2025-12-10', 'Tablet', 'Pain relief', '2025-02-22', 12.00, NULL, NULL, NULL),
(107, 'Supplement', 'Fish Oil Capsules', 'OmegaPlus', 'Omega-3 supplement for heart health', 700.00, 25, '2026-01-15', 'Capsule', 'Heart health', '2025-02-23', 450.00, NULL, NULL, NULL),
(108, 'Supplement', 'Calcium Tablets', 'BoneCare', 'Calcium supplement for bone health', 350.00, 90, '2027-04-20', 'Tablet', 'Bone health', '2025-02-23', 220.00, NULL, NULL, NULL),
(109, 'Medicine', 'Metformin', 'Sanofi', 'Used to manage blood sugar levels', 200.00, 80, '2025-03-15', 'Tablet', 'Diabetes management', '2025-02-23', 130.00, NULL, NULL, NULL),
(110, 'Medicine', 'Lipitor', 'Pfizer', 'Cholesterol-lowering medication', 550.00, 70, '2026-05-10', 'Tablet', 'High cholesterol', '2025-02-23', 350.00, NULL, NULL, NULL),
(111, 'Medicine', 'Ibuprofen', 'Advil', 'Pain reliever and anti-inflammatory', 150.00, 110, '2025-09-30', 'Tablet', 'Pain relief, inflammation', '2025-02-24', 80.00, NULL, NULL, NULL),
(112, 'Cosmetics', 'Nivea Body Lotion', 'Nivea', 'Moisturizing body lotion', 500.00, 45, NULL, NULL, 'Skincare', '2025-02-24', 300.00, NULL, NULL, NULL),
(113, 'Supplement', 'Zinc Tablets', 'HealthPlus', 'Zinc supplement for immunity', 250.00, 75, '2027-02-28', 'Tablet', 'Immunity support', '2025-02-24', 130.00, NULL, NULL, NULL),
(114, 'Medicine', 'Paracetamol', 'Tylenol', 'Pain reliever and fever reducer', 60.00, 95, '2026-08-15', 'Tablet', 'Fever, pain relief', '2025-02-24', 40.00, NULL, NULL, NULL),
(115, 'Medicine', 'Cough Syrup', 'Benylin', 'For cough and cold symptoms', 120.00, 55, '2025-11-20', 'Syrup', 'Cough relief', '2025-02-25', 75.00, NULL, NULL, NULL),
(116, 'Medicine', 'Aspirin', 'Bayer', 'Pain reliever, fever reducer, and anti-inflammatory', 80.00, 130, '2025-07-05', 'Tablet', 'Pain relief, fever', '2025-02-25', 50.00, NULL, NULL, NULL),
(117, 'Cosmetics', 'Vaseline Lip Balm', 'Vaseline', 'Moisturizing lip balm', 100.00, 40, NULL, NULL, 'Lip care', '2025-02-25', 40.00, NULL, NULL, NULL),
(118, 'Supplement', 'Magnesium Tablets', 'PureHealth', 'Magnesium supplement for muscle and nerve function', 400.00, 85, '2026-10-15', 'Tablet', 'Muscle health', '2025-02-25', 250.00, NULL, NULL, NULL),
(119, 'Medicine', 'Antacid', 'Tums', 'Relieves heartburn and indigestion', 90.00, 104, '2025-06-30', 'Tablet', 'Heartburn relief', '2025-02-26', 60.00, NULL, NULL, NULL),
(120, 'Medicine', 'Cetirizine', 'Zyrtec', 'Antihistamine for allergy relief', 180.00, 65, '2026-04-10', 'Tablet', 'Allergy relief', '2025-02-26', 100.00, NULL, NULL, NULL),
(121, 'Medicine', 'Amoxicillin', 'Amoxil', 'Antibiotic for bacterial infections', 250.00, 68, '2025-03-25', 'Capsule', 'Bacterial infections', '2025-02-26', 160.00, NULL, NULL, NULL),
(122, 'Cosmetics', 'Pond\'s Cold Cream', 'Pond\'s', 'Moisturizing cream for dry skin', 300.00, 35, NULL, NULL, 'Skincare', '2025-02-26', 180.00, NULL, NULL, NULL),
(123, 'Supplement', 'Iron Tablets', 'Ferrovit', 'Iron supplement for anemia', 320.00, 50, '2027-03-05', 'Tablet', 'Anemia', '2025-02-27', 200.00, NULL, NULL, NULL),
(124, 'Medicine', 'Loperamide', 'Imodium', 'For relief of diarrhea', 140.00, 90, '2026-02-15', 'Capsule', 'Diarrhea relief', '2025-02-27', 80.00, NULL, NULL, NULL),
(125, 'Medicine', 'Omeprazole', 'Prilosec', 'Reduces stomach acid', 280.00, 60, '2025-12-05', 'Capsule', 'Acid reflux', '2025-02-27', 160.00, NULL, NULL, NULL),
(126, 'Cosmetics', 'L\'Oreal Shampoo', 'L\'Oreal', 'Nourishing shampoo for dry hair', 600.00, 25, NULL, NULL, 'Hair care', '2025-02-27', 300.00, NULL, NULL, NULL),
(127, 'Supplement', 'Multivitamins', 'Centrum', 'Daily multivitamin supplement', 500.00, 95, '2027-06-10', 'Tablet', 'General health', '2025-02-27', 300.00, NULL, NULL, NULL),
(128, 'Medicine', 'Dextromethorphan', 'Robitussin', 'Cough suppressant for dry cough', 130.00, 80, '2025-10-20', 'Syrup', 'Cough relief', '2025-02-28', 80.00, NULL, NULL, NULL),
(129, 'Medicine', 'Clotrimazole Cream', 'Canesten', 'Antifungal cream for skin infections', 220.00, 45, '2026-07-01', 'Cream', 'Fungal infections', '2025-02-28', 130.00, NULL, NULL, NULL),
(130, 'Medicine', 'Loratadine', 'Claritin', 'Non-drowsy antihistamine for allergies', 160.00, 100, '2026-03-15', 'Tablet', 'Allergy relief', '2025-02-28', 100.00, NULL, NULL, NULL),
(131, 'Medicine', 'Cough Syrup', 'Benylin', 'Relieves cough', 150.00, 100, '2025-12-01', 'Syrup', 'Cough relief', '2025-03-03', 80.00, NULL, NULL, NULL),
(132, 'Cosmetics', 'Lip Balm', 'Nivea', 'Moisturizes lips', 90.00, NULL, NULL, NULL, 'Lip hydration', '2025-03-04', 40.00, NULL, NULL, NULL),
(133, 'Supplement', 'Iron Capsules', 'Nature’s', 'Iron supplement', 120.00, 40, '2027-03-14', 'Capsule', 'Iron supplementation', '2025-03-05', 80.00, NULL, NULL, NULL),
(134, 'Medicine', 'Paracetamol', 'Panadol', 'Reduces fever', 80.00, 150, '2025-06-10', 'Tablet', 'Pain relief', '2025-03-06', 40.00, NULL, NULL, NULL),
(135, 'Cosmetics', 'Face Wash', 'Clean & Clear', 'Cleanses and brightens skin', 200.00, 60, NULL, 'N/A', 'Face cleansing', '2025-03-07', 100.00, NULL, NULL, NULL),
(136, 'Supplement', 'Vitamin D', 'Ddrops', 'Supports bone health', 350.00, 35, '2026-08-25', 'Drops', 'Bone health', '2025-03-08', 150.00, NULL, NULL, NULL),
(137, 'Cosmetics', 'Shampoo', 'Head & Shoulders', 'Anti-dandruff shampoo', 450.00, 45, NULL, 'N/A', 'Dandruff treatment', '2025-03-09', 250.00, NULL, NULL, NULL),
(138, 'Medicine', 'Antibiotic Cream', 'Neosporin', 'Treats skin infections', 250.00, 30, '2025-04-15', 'Cream', 'Skin infection treatment', '2025-03-10', 150.00, NULL, NULL, NULL),
(139, 'Supplement', 'Probiotic', 'Culturelle', 'Promotes gut health', 800.00, 25, '2027-04-09', 'Capsule', 'Digestive support', '2025-02-20', 500.00, NULL, NULL, NULL),
(140, 'Cosmetics', 'Sunscreen', 'Neutrogena', 'Protects skin from UV rays', 500.00, 20, NULL, 'N/A', 'Sun protection', '2025-02-21', 300.00, NULL, NULL, NULL),
(141, 'Medicine', 'Digestive Enzyme', 'Enzymedica', 'Aids digestion', 900.00, 30, '2028-11-12', 'Capsule', 'Digestive aid', '2025-02-22', 600.00, NULL, NULL, NULL),
(142, 'Supplement', 'Hand Cream', 'Aveeno', 'Hydrates dry hands', 350.00, 60, NULL, 'Cream', 'Hand moisturizing', '2025-02-23', 180.00, NULL, NULL, NULL),
(143, 'Cosmetics', 'Hair Serum', 'L\'Oreal', 'Nourishes hair', 500.00, 55, NULL, 'N/A', 'Hair care', '2025-02-24', 250.00, NULL, NULL, NULL),
(144, 'Medicine', 'Pain Reliever', 'Advil', 'Fast pain relief', 450.00, 120, '2025-07-30', 'Tablet', 'Pain relief', '2025-02-25', 300.00, NULL, NULL, NULL),
(145, 'Cosmetics', 'BB Cream', 'Garnier', 'Skin-perfecting cream', 1400.00, 10, NULL, 'N/A', 'Skin tone correction', '2025-02-26', 900.00, NULL, NULL, NULL),
(146, 'Supplement', 'Multivitamin', 'Centrum', 'Daily multivitamin', 750.00, 75, '2027-02-01', 'Tablet', 'Overall health', '2025-02-27', 500.00, NULL, NULL, NULL),
(147, 'Medicine', 'Antifungal Spray', 'Lotrimin', 'Treats fungal infections', 600.00, 30, NULL, 'Spray', 'Fungal infection treatment', '2025-02-28', 300.00, NULL, NULL, NULL),
(148, 'Cosmetics', 'Face Mask', 'Sephora', 'Detox face mask', 1000.00, 40, NULL, 'N/A', 'Detox and cleansing', '0000-00-00', 500.00, NULL, NULL, NULL),
(149, 'Supplement', 'Electrolyte Powder', 'Pedialyte', 'Replenishes electrolytes', 250.00, 50, NULL, 'Powder', 'Hydration', '2025-03-01', 100.00, NULL, NULL, NULL),
(150, 'Medicine', 'Cold Medicine', 'NyQuil', 'Relieves cold symptoms', 90.00, 150, '2025-03-20', 'Tablet', 'Cold relief', '2025-03-03', 40.00, NULL, NULL, NULL),
(151, 'Cosmetics', 'Eye Shadow', 'Urban Decay', 'Long-lasting eye shadow', 3000.00, 15, NULL, 'N/A', 'Eye makeup', '2025-03-04', 2000.00, NULL, NULL, NULL),
(152, 'Supplement', 'Whey Protein', 'MuscleTech', 'Muscle recovery', 4000.00, 120, '2027-06-18', 'Powder', 'Muscle recovery', '2025-03-05', 2500.00, NULL, NULL, NULL),
(153, 'Medicine', 'Nasal Spray', 'Flonase', 'Relieves nasal congestion', 500.00, 120, '2026-10-30', 'Spray', 'Nasal decongestion', '2025-03-06', 300.00, NULL, NULL, NULL),
(154, 'Cosmetics', 'Makeup Remover', 'Bioderma', 'Removes makeup', 800.00, 35, NULL, 'N/A', 'Makeup removal', '2025-03-07', 450.00, NULL, NULL, NULL),
(155, 'Supplement', 'Omega-3 Capsules', 'Nordic Naturals', 'Heart health supplement', 950.00, 60, '2028-05-22', 'Capsule', 'Heart health', '2025-03-08', 600.00, NULL, NULL, NULL),
(156, 'Cosmetics', 'Deodorant', 'Axe', 'Body deodorant', 300.00, 60, NULL, 'N/A', 'Odor control', '2025-03-09', 180.00, NULL, NULL, NULL),
(157, 'Medicine', 'Antiseptic Solution', 'Dettol', 'Kills germs', 150.00, 99, '2024-11-10', 'Solution', 'Antiseptic', '2025-03-10', 80.00, NULL, NULL, NULL),
(158, 'Cosmetics', 'Foot Cream', 'Eucerin', 'Softens feet', 400.00, 55, NULL, 'Cream', 'Foot care', '2025-02-20', 250.00, NULL, NULL, NULL),
(159, 'Supplement', 'Collagen Powder', 'Vital Proteins', 'Skin elasticity support', 3500.00, 15, '2027-09-11', 'Powder', 'Collagen support', '2025-02-21', 2000.00, NULL, NULL, NULL),
(160, 'Medicine', 'Fever Medicine', 'Tylenol', 'Reduces fever', 85.00, 140, '2025-04-04', 'Tablet', 'Fever reduction', '2025-02-22', 40.00, '/pictures/Acne releif gel.jpg', NULL, NULL),
(161, 'Medicine', 'Neurogenix', 'NeuroCraft', 'Brain Health', 2100.00, 45, '2027-09-15', 'Capsule', 'Improves cognitive function', '2025-02-23', 1000.00, '/pictures/Dove Face Wash.jpg', NULL, NULL),
(162, 'Medicine', 'CoughEase', 'RespiraLife', 'Cough Syrup', 115.00, 160, '2025-03-11', 'Syrup', 'Relieves cough and throat irritation', '2025-02-24', 60.00, '/pictures/Face Maskk.jpg', NULL, NULL),
(163, 'Medicine', 'LiverCare', 'HepatoShield', 'Liver Support', 340.00, 70, '2026-12-05', 'Tablet', 'Supports liver detoxification', '2025-02-25', 150.00, '/pictures/Facewash.jpg', NULL, NULL),
(164, 'Medicine', 'OmegaPlus', 'VitaNutri', 'Supplements', 290.00, 100, '2027-04-21', 'Softgel', 'Promotes heart health', '2025-02-26', 120.00, '/pictures/Haircare Serum.jpg', NULL, NULL),
(165, 'Medicine', 'PainShield', 'RelieveX', 'Pain Reliever', 180.00, 35, '2025-01-31', 'Gel', 'Relieves muscle and joint pain', '2025-02-27', 90.00, '/pictures/Loreal shampo.jpg', NULL, NULL),
(166, 'Cosmetics', 'AcneFix', 'ClearSkin', 'Skin Care', 380.00, 37, '2025-08-15', 'Gel', 'Treats acne and prevents breakouts', '2025-02-28', 180.00, '/pictures/acne fix.jpg', NULL, NULL),
(167, 'Cosmetics', 'HerbalFresh', 'NaturePure', 'Shampoo', 200.00, 70, '2026-10-09', 'Mouthwash', 'Provides fresh breath and gum protection', '2025-03-01', 100.00, '/pictures/aller free.jpg', NULL, NULL),
(168, 'Medicine', 'CardioBoost', 'HeartSure', 'Heart Health', 450.00, 60, '2027-02-28', 'Capsule', 'Supports heart function', '2025-03-02', 300.00, '/pictures/amoxicilline.jpg', NULL, NULL),
(169, 'Medicine', 'SleepRight', 'DreamWell', 'Sleep Aid', 320.00, 110, '2025-11-01', 'Tablet', 'Improves sleep quality', '2025-03-03', 200.00, '/pictures/antacid.jpg', NULL, NULL),
(170, 'Medicine', 'AllerFree', 'AllergyShield', 'Allergy Relief', 1200.00, 194, '2025-07-15', 'Tablet', 'Relieves allergy symptoms', '2025-03-04', 600.00, '/pictures/anti aging creme.jpg', NULL, NULL),
(171, 'Medicine', 'BoneCare', 'OsteoStrong', 'Calcium Supplement', 450.00, 60, '2026-02-12', 'Tablet', 'Strengthens bones', '2025-03-05', 250.00, '/pictures/anti fungal creme.jpg', NULL, NULL),
(172, 'Cosmetics', 'SunShield SPF50', 'SunSafe', 'Sunblock', 800.00, 25, '2026-09-18', 'Lotion', 'Protects skin from UV damage', '2025-03-06', 450.00, '/pictures/antibiotic creme.jpg', NULL, NULL),
(173, 'Medicine', 'FlexiJoints', 'JointCare', 'Joint Support', 350.00, 30, '2026-03-09', 'Capsule', 'Improves joint flexibility', '2025-03-07', 200.00, '/pictures/antidandruff shampo.jpg', NULL, NULL),
(174, 'Medicine', 'RespiraBoost', 'BreatheEase', 'Respiratory Health', 250.00, 110, '2025-12-25', 'Syrup', 'Supports lung health', '2025-03-08', 130.00, '/pictures/antifungal spray.jpg', NULL, NULL),
(175, 'Cosmetics', 'SkinBright Serum', 'GlowEssentials', 'Skin Care', 450.00, 25, '2026-04-04', 'Serum', 'Brightens skin and reduces dark spots', '2025-03-09', 300.00, '/pictures/antiseptic solution.jpg', NULL, NULL),
(176, 'Medicine', 'IronMax', 'IronVital', 'Iron Supplement', 190.00, 70, '2026-01-17', 'Tablet', 'Combats anemia', '2025-03-10', 100.00, '/pictures/aspirin.jpg', NULL, NULL),
(177, 'Cosmetic', 'BabyCare Lotion', 'BabySoft', 'Baby Care', 1500.00, 95, '2027-03-05', 'Lotion', 'Moisturizes and protects', '2025-02-20', 800.00, '/pictures/augmenton.jpg', NULL, NULL),
(178, 'Medicine', 'KidneyFlush', 'RenalPure', 'Kidney Health', 350.00, 30, '2025-06-06', 'Capsule', 'Detoxifies kidneys', '2025-02-21', 150.00, '/pictures/avatar.jpg', NULL, NULL),
(179, 'Medicine', 'MuscleMass', 'ProMuscl', 'Protein Supplement', 4500.00, 90, '2026-07-14', 'Powder', 'Supports muscle growth', '2025-02-22', 2000.00, '/pictures/baby care lotion.jpg', NULL, NULL),
(180, 'Cosmetic', 'AntiAging Cream', 'AgeDefy', 'Anti-Aging', 2400.00, 79, '2026-03-28', 'Cream', 'Reduces wrinkles and signs of aging', '2025-02-23', 1300.00, NULL, NULL, NULL),
(181, 'Medicine', 'DetoxHerbs', 'PureHerb', 'Detox Supplement', 280.00, 60, '2025-10-16', 'Tea', 'Detoxifies the body', '2025-02-24', 150.00, NULL, NULL, NULL),
(182, 'Medicine', 'ColdRelief', 'ColdAway', 'Cold & Flu', 100.00, 100, '2025-12-08', 'Syrup', 'Relieves cold and flu symptoms', '2025-02-25', 60.00, NULL, NULL, NULL),
(183, 'Cosmetic', 'HairCare Serum', 'HairReviv', 'Hair Care', 750.00, 75, '2027-05-10', 'Serum', 'Promotes hair growth', '2025-02-26', 300.00, NULL, NULL, NULL),
(184, 'Medicine', 'MultiVitamins', 'VitaDaily', 'General Health', 400.00, 50, '2025-11-22', 'Tablet', 'Provides daily essential vitamins', '2025-02-27', 160.00, NULL, NULL, NULL),
(185, 'Medicine', 'Antifungal Cream', 'FungoClea', 'Skin Treatment', 600.00, 55, '2026-08-15', 'Cream', 'Treats fungal infections', '2025-02-28', 300.00, NULL, NULL, NULL),
(186, 'Cosmetic', 'FootCare Lotion', 'FootRelief', 'Foot Care', 2500.00, 30, '2027-01-29', 'Lotion', 'Soothes and moisturizes feet', '2025-03-01', 1200.00, NULL, NULL, NULL),
(187, 'Medicine', 'VisionPlus', 'EyeVital', 'Eye Health', 290.00, 90, '2026-02-11', 'Capsule', 'Improves vision and eye health', '2025-03-02', 150.00, NULL, NULL, NULL),
(188, 'Medicine', 'ProbioticMax', 'GutHealth', 'Digestive Health', 400.00, 200, '2026-11-11', 'Capsule', 'Improves gut health and digestion', '2025-03-03', 250.00, NULL, NULL, NULL),
(189, 'Medicine', 'AcneRelief Gel', 'ClearSkin', 'Acne Treatment', 450.00, 42, '2026-04-26', 'Gel', 'Treats acne and prevents breakouts', '2025-03-04', 250.00, NULL, NULL, NULL),
(190, 'Medicine', 'Elderberry Syrup', 'ElderPure', 'Immunity Booster', 230.00, 110, '2025-09-19', 'Syrup', 'Boosts immunity', '2025-03-05', 100.00, NULL, NULL, NULL),
(191, 'Cosmetic', 'StretchMark Cream', 'SkinRepair', 'Body Care', 380.00, 25, '2026-03-09', 'Cream', 'Reduces stretch marks', '2025-03-06', 150.00, NULL, NULL, NULL),
(192, 'Medicine', 'BoneHealth Plus', 'OsteoCare', 'Bone Health', 320.00, 50, '2027-07-13', 'Tablet', 'Improves bone density', '2025-03-07', 130.00, NULL, NULL, NULL),
(193, 'Medicine', 'CalmMind', 'MindEase', 'Stress Relief', 310.00, 100, '2025-05-20', 'Capsule', 'Reduces stress and promotes relaxation', '2025-03-08', 130.00, NULL, NULL, NULL),
(194, 'Cosmetic', 'HairVital', 'HairNour', 'Hair Strengthening', 380.00, 60, '2027-06-01', 'Capsule', 'Strengthens hair and reduces hair fall', '2025-03-09', 150.00, NULL, NULL, NULL),
(195, 'Medicine', 'JointEase', 'FlexiCare', 'Joint Support', 340.00, 90, '2026-05-21', 'Capsule', 'Relieves joint pain', '2025-03-10', 130.00, NULL, NULL, NULL),
(196, 'Cosmetic', 'Vitamin C Serum', 'GlowEsse', 'Skin Care', 600.00, 20, '2026-07-20', 'Serum', 'Brightens skin and boosts collagen', '2025-02-20', 250.00, NULL, NULL, NULL),
(197, 'Medicine', 'Nasal Spray', 'BreatheFre', 'Allergy Relief', 250.00, 85, '2025-04-02', 'Spray', 'Relieves nasal congestion and allergies', '2025-02-21', 100.00, NULL, NULL, NULL),
(198, 'Cosmetic', 'AntiDandruff Shampoo', 'ScalpCare', 'Hair Care', 260.00, 75, '2026-07-18', 'Shampoo', 'Treats dandruff and soothes scalp', '2025-02-22', 100.00, NULL, NULL, NULL),
(199, 'Medicine', 'Electrolyte Drink', 'HydraBody', 'Hydration', 180.00, 200, '2025-08-30', 'Drink', 'Replenishes electrolytes', '2025-02-23', 60.00, NULL, NULL, NULL),
(200, 'Cosmetic', 'FaceHydration Gel', 'AquaGlow', 'Skin Hydration', 300.00, 60, '2026-11-14', 'Gel', 'Hydrates and nourishes skin', '2025-02-24', 100.00, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profit_records`
--

CREATE TABLE `profit_records` (
  `record_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `profit_margin` decimal(10,2) DEFAULT NULL,
  `demand_level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `profit_records`
--

INSERT INTO `profit_records` (`record_id`, `product_id`, `product_name`, `cost_price`, `selling_price`, `profit_margin`, `demand_level`) VALUES
(254, 101, 'Panadol', 30.00, 50.00, 70.60, 'High'),
(255, 102, 'Augmentin', 180.00, 300.00, -47.73, 'High'),
(256, 103, 'Dove Face Wash', 250.00, 450.00, -27.19, 'Medium'),
(257, 104, 'Vitamin C Tablets', 400.00, 600.00, -161.58, 'Medium'),
(258, 105, 'Brufen', 60.00, 100.00, 52.05, 'High'),
(259, 106, 'Disprin', 12.00, 20.00, 91.75, 'High'),
(260, 121, 'Amoxicillin', 160.00, 250.00, -4.92, 'Low'),
(261, 166, 'AcneFix', 180.00, 380.00, 52.63, 'Low'),
(262, 170, 'AllerFree', 600.00, 1200.00, 50.00, 'Low'),
(263, 189, 'AcneRelief Gel', 250.00, 450.00, 44.44, 'Low'),
(264, 107, 'Fish Oil Capsules', 450.00, 700.00, -50.00, 'Low'),
(265, 108, 'Calcium Tablets', 220.00, 350.00, -22.22, 'Low'),
(266, 109, 'Metformin', 130.00, 200.00, 48.00, 'Low'),
(267, 110, 'Lipitor', 350.00, 550.00, -169.23, 'Low'),
(268, 111, 'Ibuprofen', 80.00, 150.00, 38.46, 'Low'),
(269, 112, 'Nivea Body Lotion', 300.00, 500.00, -50.00, 'Low'),
(270, 113, 'Zinc Tablets', 130.00, 250.00, -8.33, 'Low'),
(271, 114, 'Paracetamol', 40.00, 60.00, 60.00, 'Low'),
(272, 115, 'Cough Syrup', 75.00, 120.00, 42.31, 'Low'),
(273, 116, 'Aspirin', 50.00, 80.00, 80.00, 'Low'),
(274, 117, 'Vaseline Lip Balm', 40.00, 100.00, 75.00, 'Low'),
(275, 118, 'Magnesium Tablets', 250.00, 400.00, -92.31, 'Low'),
(276, 119, 'Antacid', 60.00, 90.00, 40.00, 'Low'),
(277, 120, 'Cetirizine', 100.00, 180.00, 37.50, 'Low'),
(278, 122, 'Pond\'s Cold Cream', 180.00, 300.00, -20.00, 'Low'),
(279, 123, 'Iron Tablets', 200.00, 320.00, -53.85, 'Low'),
(280, 124, 'Loperamide', 80.00, 140.00, 50.00, 'Low'),
(281, 125, 'Omeprazole', 160.00, 280.00, -60.00, 'Low'),
(282, 126, 'L\'Oreal Shampoo', 300.00, 600.00, -20.00, 'Low'),
(283, 127, 'Multivitamins', 300.00, 500.00, -130.77, 'Low'),
(284, 128, 'Dextromethorphan', 80.00, 130.00, 50.00, 'Low'),
(285, 129, 'Clotrimazole Cream', 130.00, 220.00, 13.33, 'Low'),
(286, 130, 'Loratadine', 100.00, 160.00, 0.00, 'Low'),
(287, 131, 'Cough Syrup', 80.00, 150.00, 38.46, 'Low'),
(288, 132, 'Lip Balm', 40.00, 90.00, 60.00, 'Low'),
(289, 133, 'Iron Capsules', 80.00, 120.00, 68.00, 'Low'),
(290, 134, 'Paracetamol', 40.00, 80.00, 75.00, 'Low'),
(291, 135, 'Face Wash', 100.00, 200.00, 0.00, 'Low'),
(292, 136, 'Vitamin D', 150.00, 350.00, -15.38, 'Low'),
(293, 137, 'Shampoo', 250.00, 450.00, -92.31, 'Low'),
(294, 138, 'Antibiotic Cream', 150.00, 250.00, 6.25, 'Low'),
(295, 139, 'Probiotic', 500.00, 800.00, -400.00, 'Low'),
(296, 140, 'Sunscreen', 300.00, 500.00, -130.77, 'Low'),
(297, 141, 'Digestive Enzyme', 600.00, 900.00, -275.00, 'Low'),
(298, 142, 'Hand Cream', 180.00, 350.00, -38.46, 'Low'),
(299, 143, 'Hair Serum', 250.00, 500.00, -150.00, 'Low'),
(300, 144, 'Pain Reliever', 300.00, 450.00, -20.00, 'Low'),
(301, 145, 'BB Cream', 900.00, 1400.00, -592.31, 'Low'),
(302, 146, 'Multivitamin', 500.00, 750.00, -400.00, 'Low'),
(303, 147, 'Antifungal Spray', 300.00, 600.00, -200.00, 'Low'),
(304, 148, 'Face Mask', 500.00, 1000.00, -212.50, 'Low'),
(305, 149, 'Electrolyte Powder', 100.00, 250.00, 0.00, 'Low'),
(306, 150, 'Cold Medicine', 40.00, 90.00, 75.00, 'Low');

-- --------------------------------------------------------

--
-- Table structure for table `restock_prediction`
--

CREATE TABLE `restock_prediction` (
  `Prediction_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Prediction_date` datetime NOT NULL,
  `Current_stock` int(11) NOT NULL,
  `Predicted_restock_date` datetime NOT NULL,
  `Recommended_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `restock_prediction`
--

INSERT INTO `restock_prediction` (`Prediction_id`, `Product_id`, `Prediction_date`, `Current_stock`, `Predicted_restock_date`, `Recommended_quantity`) VALUES
(1, 101, '2025-06-25 16:23:11', 100, '2025-02-12 00:00:00', 74),
(2, 102, '2025-06-25 16:23:11', 50, '2025-01-22 00:00:00', 82),
(3, 103, '2025-06-25 16:23:11', 30, '2025-01-25 00:00:00', 55),
(4, 104, '2025-06-25 16:23:11', 40, '2025-02-11 00:00:00', 35),
(5, 105, '2025-06-25 16:23:11', 60, '2025-02-03 00:00:00', 83),
(6, 106, '2025-06-25 16:23:11', 120, '2025-03-05 00:00:00', 69),
(7, 166, '2025-06-25 16:23:11', 37, '2025-05-17 00:00:00', 30),
(8, 189, '2025-06-25 16:23:11', 42, '2025-05-22 00:00:00', 30),
(9, 170, '2025-06-25 16:23:11', 194, '2026-04-10 00:00:00', 35),
(10, 121, '2025-06-25 16:23:11', 69, '2026-03-28 00:00:00', 25),
(11, 101, '2025-06-25 23:14:38', 100, '2025-02-12 00:00:00', 74),
(12, 102, '2025-06-25 23:14:38', 50, '2025-01-22 00:00:00', 82),
(13, 103, '2025-06-25 23:14:38', 30, '2025-01-25 00:00:00', 55),
(14, 104, '2025-06-25 23:14:38', 40, '2025-02-11 00:00:00', 35),
(15, 105, '2025-06-25 23:14:38', 60, '2025-02-03 00:00:00', 83),
(16, 106, '2025-06-25 23:14:38', 120, '2025-03-05 00:00:00', 69),
(17, 166, '2025-06-25 23:14:38', 37, '2025-05-17 00:00:00', 30),
(18, 189, '2025-06-25 23:14:38', 42, '2025-05-22 00:00:00', 30),
(19, 170, '2025-06-25 23:14:38', 194, '2026-04-10 00:00:00', 35),
(20, 121, '2025-06-25 23:14:38', 69, '2026-03-28 00:00:00', 25);

-- --------------------------------------------------------

--
-- Table structure for table `seasonal_forecasts`
--

CREATE TABLE `seasonal_forecasts` (
  `forecast_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `season_type` varchar(50) DEFAULT NULL,
  `predicted_demand` int(11) DEFAULT NULL,
  `actual_demand` int(11) DEFAULT NULL,
  `forecast_accuracy` decimal(5,2) DEFAULT NULL,
  `preparation_start_date` date DEFAULT NULL,
  `peak_season_date` date DEFAULT NULL,
  `season_end_date` date DEFAULT NULL,
  `inventory_turnover_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `seasonal_forecasts`
--

INSERT INTO `seasonal_forecasts` (`forecast_id`, `product_id`, `year`, `season_type`, `predicted_demand`, `actual_demand`, `forecast_accuracy`, `preparation_start_date`, `peak_season_date`, `season_end_date`, `inventory_turnover_rate`) VALUES
(71, 101, 2025, 'High Season (April)', 6, 25, 24.00, '2025-01-01', '2025-04-01', '2025-04-01', 64),
(72, 102, 2025, 'High Season (April)', 5, 18, 27.78, '2025-01-01', '2025-04-01', '2025-04-01', 88),
(73, 103, 2025, 'High Season (April)', 5, 16, 31.25, '2025-02-01', '2025-04-01', '2025-04-01', 140),
(74, 104, 2025, 'High Season (April)', 3, 14, 21.43, '2025-01-01', '2025-04-01', '2025-04-01', 85),
(75, 105, 2025, 'High Season (April)', 6, 21, 28.57, '2025-01-01', '2025-04-01', '2025-04-01', 90),
(76, 106, 2025, 'High Season (April)', 5, 20, 25.00, '2025-01-01', '2025-04-01', '2025-04-01', 46.67),
(77, 166, 2025, 'High Season (April)', 3, 1, -100.00, '2025-04-01', '2025-04-01', '2025-04-01', 43.24),
(78, 189, 2025, 'High Season (April)', 2, 7, 28.57, '2025-04-01', '2025-04-01', '2025-04-01', 33.33),
(79, 170, 2025, 'High Season (April)', 2, 2, 100.00, '2025-04-01', '2025-04-01', '2025-04-01', 9.28),
(80, 121, 2025, 'High Season (April)', 0, 1, 0.00, '2025-04-01', '2025-04-01', '2025-04-01', 2.9),
(90, 121, 2025, 'High Season (April)', 0, 1, 0.00, '2025-04-01', '2025-04-01', '2025-04-01', 2.9),
(91, 101, 2025, 'High Season (April)', 6, 25, 24.00, '2025-01-01', '2025-04-01', '2025-04-01', 64),
(92, 102, 2025, 'High Season (April)', 5, 18, 27.78, '2025-01-01', '2025-04-01', '2025-04-01', 88),
(93, 103, 2025, 'High Season (April)', 5, 16, 31.25, '2025-02-01', '2025-04-01', '2025-04-01', 140),
(94, 104, 2025, 'High Season (April)', 3, 14, 21.43, '2025-01-01', '2025-04-01', '2025-04-01', 85),
(95, 105, 2025, 'High Season (April)', 6, 21, 28.57, '2025-01-01', '2025-04-01', '2025-04-01', 90),
(96, 106, 2025, 'High Season (April)', 5, 20, 25.00, '2025-01-01', '2025-04-01', '2025-04-01', 46.67),
(97, 166, 2025, 'High Season (April)', 3, 1, -100.00, '2025-04-01', '2025-04-01', '2025-04-01', 43.24),
(98, 189, 2025, 'High Season (April)', 2, 7, 28.57, '2025-04-01', '2025-04-01', '2025-04-01', 33.33),
(99, 170, 2025, 'High Season (April)', 2, 2, 100.00, '2025-04-01', '2025-04-01', '2025-04-01', 9.28),
(100, 121, 2025, 'High Season (April)', 0, 1, 0.00, '2025-04-01', '2025-04-01', '2025-04-01', 2.9),
(101, 101, 2025, 'High Season (April)', 8, 5, 40.00, '2025-01-01', '2025-04-01', '2025-04-01', 98),
(102, 102, 2025, 'High Season (January–April)', 7, 3, -33.33, '2025-01-01', '2025-01-01', '2025-04-01', 152),
(103, 103, 2025, 'High Season (April)', 6, 2, -100.00, '2025-01-01', '2025-04-01', '2025-04-01', 193.33),
(104, 104, 2025, 'High Season (April)', 4, 3, 66.67, '2025-01-01', '2025-04-01', '2025-04-01', 120),
(105, 105, 2025, 'High Season (April)', 7, 3, -33.33, '2025-01-01', '2025-04-01', '2025-04-01', 123.33),
(106, 106, 2025, 'High Season (April)', 7, 2, -150.00, '2025-01-01', '2025-04-01', '2025-04-01', 61.67),
(107, 166, 2025, 'High Season (April)', 3, 1, -100.00, '2025-04-01', '2025-04-01', '2025-04-01', 43.24),
(108, 189, 2025, 'High Season (April)', 2, 7, 28.57, '2025-04-01', '2025-04-01', '2025-04-01', 33.33),
(109, 170, 2025, 'High Season (April)', 2, 2, 100.00, '2025-04-01', '2025-04-01', '2025-04-01', 9.28),
(110, 121, 2025, 'High Season (March)', 1, 1, 100.00, '2025-03-01', '2025-03-01', '2025-03-01', 11.59),
(111, 107, 2025, 'High Season (January)', 0, 1, 0.00, '2025-01-01', '2025-01-01', '2025-01-01', 8),
(112, 108, 2025, 'High Season (January)', 1, 3, 33.33, '2025-01-01', '2025-01-01', '2025-01-01', 6.67),
(113, 109, 2025, 'High Season (February)', 0, 1, 0.00, '2025-02-01', '2025-02-01', '2025-02-01', 2.5),
(114, 110, 2025, 'High Season (February)', 1, 2, 50.00, '2025-02-01', '2025-02-01', '2025-02-01', 5.71),
(115, 111, 2025, 'High Season (February)', 1, 3, 33.33, '2025-02-01', '2025-02-01', '2025-02-01', 5.45),
(116, 112, 2025, 'High Season (February)', 0, 1, 0.00, '2025-02-01', '2025-02-01', '2025-02-01', 4.44),
(117, 113, 2025, 'High Season (February)', 1, 2, 50.00, '2025-02-01', '2025-02-01', '2025-02-01', 5.33),
(118, 114, 2025, 'High Season (February)', 1, 3, 33.33, '2025-02-01', '2025-02-01', '2025-02-01', 6.32),
(119, 115, 2025, 'High Season (March)', 1, 4, 25.00, '2025-03-01', '2025-03-01', '2025-03-01', 14.55),
(120, 116, 2025, 'High Season (March)', 1, 3, 33.33, '2025-03-01', '2025-03-01', '2025-03-01', 4.62),
(121, 117, 2025, 'High Season (March)', 1, 2, 50.00, '2025-03-01', '2025-03-01', '2025-03-01', 10),
(122, 118, 2025, 'High Season (March)', 1, 3, 33.33, '2025-03-01', '2025-03-01', '2025-03-01', 7.06),
(123, 119, 2025, 'High Season (March)', 1, 3, 33.33, '2025-03-01', '2025-03-01', '2025-03-01', 5.71),
(124, 120, 2025, 'High Season (March)', 1, 2, 50.00, '2025-03-01', '2025-03-01', '2025-03-01', 6.15),
(125, 122, 2025, 'High Season (March)', 0, 1, 0.00, '2025-03-01', '2025-03-01', '2025-03-01', 5.71),
(126, 123, 2025, 'High Season (April)', 1, 2, 50.00, '2025-04-01', '2025-04-01', '2025-04-01', 8),
(127, 124, 2025, 'High Season (April)', 1, 2, 50.00, '2025-04-01', '2025-04-01', '2025-04-01', 4.44),
(128, 125, 2025, 'High Season (April)', 1, 3, 33.33, '2025-04-01', '2025-04-01', '2025-04-01', 10),
(129, 126, 2025, 'High Season (April)', 0, 1, 0.00, '2025-04-01', '2025-04-01', '2025-04-01', 8),
(130, 127, 2025, 'High Season (April)', 1, 3, 33.33, '2025-04-01', '2025-04-01', '2025-04-01', 6.32),
(131, 128, 2025, 'High Season (April)', 1, 2, 50.00, '2025-04-01', '2025-04-01', '2025-04-01', 5),
(132, 129, 2025, 'High Season (April)', 0, 1, 0.00, '2025-04-01', '2025-04-01', '2025-04-01', 4.44),
(133, 130, 2025, 'High Season (April)', 1, 3, 33.33, '2025-04-01', '2025-04-01', '2025-04-01', 6),
(134, 131, 2025, 'High Season (May)', 1, 3, 33.33, '2025-05-01', '2025-05-01', '2025-05-01', 6),
(135, 132, 2025, 'High Season (May)', 1, 2, 50.00, '2025-05-01', '2025-05-01', '2025-05-01', 200),
(136, 133, 2025, 'High Season (May)', 0, 1, 0.00, '2025-05-01', '2025-05-01', '2025-05-01', 5),
(137, 134, 2025, 'High Season (May)', 1, 3, 33.33, '2025-05-01', '2025-05-01', '2025-05-01', 4),
(138, 135, 2025, 'High Season (May)', 1, 3, 33.33, '2025-05-01', '2025-05-01', '2025-05-01', 10),
(139, 136, 2025, 'High Season (May)', 1, 2, 50.00, '2025-05-01', '2025-05-01', '2025-05-01', 11.43),
(140, 137, 2025, 'High Season (May)', 1, 3, 33.33, '2025-05-01', '2025-05-01', '2025-05-01', 13.33),
(141, 138, 2025, 'High Season (May)', 1, 3, 33.33, '2025-05-01', '2025-05-01', '2025-05-01', 20),
(142, 139, 2025, 'High Season (May)', 1, 2, 50.00, '2025-05-01', '2025-05-01', '2025-05-01', 16),
(143, 140, 2025, 'High Season (May)', 0, 1, 0.00, '2025-05-01', '2025-05-01', '2025-05-01', 10),
(144, 141, 2025, 'High Season (June)', 1, 3, 33.33, '2025-06-01', '2025-06-01', '2025-06-01', 20),
(145, 142, 2025, 'High Season (June)', 0, 1, 0.00, '2025-06-01', '2025-06-01', '2025-06-01', 3.33),
(146, 143, 2025, 'High Season (June)', 1, 3, 33.33, '2025-06-01', '2025-06-01', '2025-06-01', 10.91),
(147, 144, 2025, 'High Season (June)', 1, 2, 50.00, '2025-06-01', '2025-06-01', '2025-06-01', 3.33),
(148, 145, 2025, 'High Season (June)', 1, 3, 33.33, '2025-06-01', '2025-06-01', '2025-06-01', 60),
(149, 146, 2025, 'High Season (June)', 1, 3, 33.33, '2025-06-01', '2025-06-01', '2025-06-01', 8),
(150, 147, 2025, 'High Season (June)', 1, 2, 50.00, '2025-06-01', '2025-06-01', '2025-06-01', 13.33),
(151, 148, 2025, 'High Season (June)', 1, 3, 33.33, '2025-06-01', '2025-06-01', '2025-06-01', 15),
(152, 149, 2025, 'High Season (June)', 1, 3, 33.33, '2025-06-01', '2025-06-01', '2025-06-01', 12),
(153, 150, 2025, 'High Season (June)', 1, 2, 50.00, '2025-06-01', '2025-06-01', '2025-06-01', 2.67);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('owner','admin','employee','customer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'employee'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `role`) VALUES
(42, 'moiz', 'Kashaf', 'admin', 'moizmister786@gmail.com', '$2b$12$ABATZyPCNsw89jCLgo58pOUDTmGnm5GuUtiMpXwkUNbOvAh7zwod.', 'customer'),
(45, 'moizz', 'moiz', 'moiz', 'moizmuhammad373@gmail.com', '$2b$12$2ViaX20A04ddBLeJyVRJ.uoRWV3zk9xFOmRZzQa7KUNcuaM/2e8W6', 'admin'),
(46, 'sdfsdfsd', 'ahmad', 'Shahzadi', 'france@gmail.com', '$2b$12$7C78G7PsmyWgOzT9AUlpaOmzSkv54El6stq.YpYx/65HL9qJJWjBC', 'owner'),
(48, '23015919-017', 'ahmad', 'ksaf', 'fatimanishat407@gmail.com', '$2b$12$ze6UfFpbgDdg6.m1sHVIxe458QeYyNhRbzRZIUQxXDflTwldsjK3e', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_generated_order_list`
--
ALTER TABLE `auto_generated_order_list`
  ADD PRIMARY KEY (`auto_order_id`);

--
-- Indexes for table `auto_order_items`
--
ALTER TABLE `auto_order_items`
  ADD PRIMARY KEY (`auto_item_id`),
  ADD KEY `auto_order_id` (`auto_order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `prediction_id` (`prediction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_id`);

--
-- Indexes for table `customer_purchase_patterns`
--
ALTER TABLE `customer_purchase_patterns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `expiry_alert`
--
ALTER TABLE `expiry_alert`
  ADD PRIMARY KEY (`alert_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `idx_orders_customer_id` (`customer_id`),
  ADD KEY `idx_orders_payment_intent` (`payment_intent_id`),
  ADD KEY `idx_orders_payment_status` (`payment_status`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pharmacy_orders`
--
ALTER TABLE `pharmacy_orders`
  ADD PRIMARY KEY (`pharmacy_order_id`);

--
-- Indexes for table `pharmacy_order_items`
--
ALTER TABLE `pharmacy_order_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `pharmacy_order_id` (`pharmacy_order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `profit_records`
--
ALTER TABLE `profit_records`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `restock_prediction`
--
ALTER TABLE `restock_prediction`
  ADD PRIMARY KEY (`Prediction_id`),
  ADD KEY `Product_id` (`Product_id`);

--
-- Indexes for table `seasonal_forecasts`
--
ALTER TABLE `seasonal_forecasts`
  ADD PRIMARY KEY (`forecast_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_purchase_patterns`
--
ALTER TABLE `customer_purchase_patterns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `pharmacy_orders`
--
ALTER TABLE `pharmacy_orders`
  MODIFY `pharmacy_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pharmacy_order_items`
--
ALTER TABLE `pharmacy_order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `profit_records`
--
ALTER TABLE `profit_records`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `restock_prediction`
--
ALTER TABLE `restock_prediction`
  MODIFY `Prediction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `seasonal_forecasts`
--
ALTER TABLE `seasonal_forecasts`
  MODIFY `forecast_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auto_order_items`
--
ALTER TABLE `auto_order_items`
  ADD CONSTRAINT `auto_order_items_ibfk_1` FOREIGN KEY (`auto_order_id`) REFERENCES `auto_generated_order_list` (`auto_order_id`),
  ADD CONSTRAINT `auto_order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `auto_order_items_ibfk_3` FOREIGN KEY (`prediction_id`) REFERENCES `restock_prediction` (`Prediction_id`);

--
-- Constraints for table `customer_purchase_patterns`
--
ALTER TABLE `customer_purchase_patterns`
  ADD CONSTRAINT `customer_purchase_patterns_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expiry_alert`
--
ALTER TABLE `expiry_alert`
  ADD CONSTRAINT `expiry_alert_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `pharmacy_order_items`
--
ALTER TABLE `pharmacy_order_items`
  ADD CONSTRAINT `pharmacy_order_items_ibfk_1` FOREIGN KEY (`pharmacy_order_id`) REFERENCES `pharmacy_orders` (`pharmacy_order_id`);

--
-- Constraints for table `profit_records`
--
ALTER TABLE `profit_records`
  ADD CONSTRAINT `profit_records_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `restock_prediction`
--
ALTER TABLE `restock_prediction`
  ADD CONSTRAINT `restock_prediction_ibfk_1` FOREIGN KEY (`Product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seasonal_forecasts`
--
ALTER TABLE `seasonal_forecasts`
  ADD CONSTRAINT `seasonal_forecasts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
