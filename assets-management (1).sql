-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2023 at 01:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assets-management`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Fixed_asset_no` varchar(100) DEFAULT NULL,
  `Class_code` varchar(11) NOT NULL,
  `asset_type` varchar(100) NOT NULL,
  `asset_description` varchar(255) NOT NULL,
  `asset_vendor` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_cost` int(100) NOT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `Fixed_asset_no`, `Class_code`, `asset_type`, `asset_description`, `asset_vendor`, `location`, `quantity`, `purchase_date`, `purchase_cost`, `invoice`, `created_at`, `updated_at`) VALUES
(1, 'IVDFA/2023/001', '001', 'Tangible', 'Computer Dell', 'Vendor 1', 'Reg Office', '4', '2023-05-15', 101, '1703676828_invoice.pdf', '2023-12-27 00:33:48', '2023-12-27 00:33:48'),
(2, 'IVDFA/2023/002', '002', 'Intangible', 'Software License', 'Vendor 2', 'In Reg Office', '2', '2023-06-20', 75, '1703676829_invoice.pdf', '2023-12-27 00:35:12', '2023-12-27 00:35:12'),
(3, 'IVDFA/2023/003', '003', 'Tangible', 'Printer HP', 'Vendor 3', 'Reg Office', '1', '2023-07-10', 150, '1703676830_invoice.pdf', '2023-12-27 00:36:35', '2023-12-27 00:36:35'),
(4, 'IVDFA/2023/004', '001', 'Intangible', 'Database License', 'Vendor 1', 'In Reg Office', '3', '2023-08-05', 200, '1703676831_invoice.pdf', '2023-12-27 00:38:02', '2023-12-27 00:38:02'),
(5, 'IVDFA/2023/005', '002', 'Tangible', 'Office Chair', 'Vendor 2', 'Reg Office', '6', '2023-09-15', 50, '1703676832_invoice.pdf', '2023-12-27 00:39:28', '2023-12-27 00:39:28'),
(6, 'IVDFA/2023/006', '003', 'Intangible', 'Anti-virus Subscription', 'Vendor 3', 'In Reg Office', '1', '2023-10-02', 80, '1703676833_invoice.pdf', '2023-12-27 00:40:53', '2023-12-27 00:40:53'),
(7, 'IVDFA/2023/007', '001', 'Tangible', 'Laptop Lenovo', 'Vendor 1', 'Reg Office', '2', '2023-11-08', 120, '1703676834_invoice.pdf', '2023-12-27 00:42:19', '2023-12-27 00:42:19'),
(8, 'IVDFA/2023/008', '002', 'Intangible', 'Cloud Storage Subscription', 'Vendor 2', 'In Reg Office', '1', '2023-12-20', 90, '1703676835_invoice.pdf', '2023-12-27 00:43:45', '2023-12-27 00:43:45'),
(9, 'IVDFA/2023/009', '003', 'Tangible', 'Desk', 'Vendor 3', 'Reg Office', '3', '2023-01-05', 60, '1703676836_invoice.pdf', '2023-12-27 00:45:10', '2023-12-27 00:45:10'),
(10, 'IVDFA/2023/010', '001', 'Intangible', 'Email Hosting Subscription', 'Vendor 1', 'In Reg Office', '1', '2023-02-18', 180, '1703676837_invoice.pdf', '2023-12-27 00:46:36', '2023-12-27 00:46:36'),
(11, 'IVDFA/2023/011', '002', 'Tangible', 'Conference Table', 'Vendor 2', 'Reg Office', '1', '2023-03-22', 220, '1703676838_invoice.pdf', '2023-12-27 00:48:02', '2023-12-27 00:48:02'),
(12, 'IVDFA/2023/012', '003', 'Intangible', 'VPN Subscription', 'Vendor 3', 'In Reg Office', '2', '2023-04-30', 95, '1703676839_invoice.pdf', '2023-12-27 00:49:27', '2023-12-27 00:49:27'),
(13, 'IVDFA/2023/013', '001', 'Tangible', 'Desktop Computer HP', 'Vendor 1', 'Reg Office', '5', '2023-06-10', 150, '1703676840_invoice.pdf', '2023-12-27 00:50:53', '2023-12-27 00:50:53'),
(14, 'IVDFA/2023/014', '002', 'Intangible', 'Project Management Software', 'Vendor 2', 'In Reg Office', '1', '2023-07-12', 80, '1703676841_invoice.pdf', '2023-12-27 00:52:18', '2023-12-27 00:52:18'),
(15, 'IVDFA/2023/015', '003', 'Tangible', 'Whiteboard', 'Vendor 3', 'Reg Office', '2', '2023-08-25', 30, '1703676842_invoice.pdf', '2023-12-27 00:53:44', '2023-12-27 00:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `asset_classes`
--

CREATE TABLE `asset_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` varchar(255) NOT NULL,
  `class_description` varchar(255) NOT NULL,
  `asset_life` int(11) NOT NULL,
  `Rate_of_def_c_act` decimal(10,0) NOT NULL,
  `Rate_of_def_it_act` decimal(10,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_classes`
--

INSERT INTO `asset_classes` (`id`, `class_id`, `class_description`, `asset_life`, `Rate_of_def_c_act`, `Rate_of_def_it_act`, `created_at`, `updated_at`) VALUES
(1, '001', 'Furniture', 3, 65, 41, '2023-12-26 23:29:23', '2023-12-27 00:00:47'),
(2, '002', 'Furniture new', 1, 12, 22, '2023-12-27 00:01:35', '2023-12-27 00:01:35'),
(3, '003', 'Electronic Equipment', 5, 31, 16, '2023-12-27 00:02:23', '2023-12-27 00:02:23'),
(4, '004', 'Office Supplies', 2, 9, 5, '2023-12-27 00:03:11', '2023-12-27 00:03:11'),
(5, '005', 'Vehicles', 7, 45, 29, '2023-12-27 00:03:59', '2023-12-27 00:03:59'),
(6, '006', 'IT Hardware', 4, 22, 19, '2023-12-27 00:04:47', '2023-12-27 00:04:47'),
(7, '007', 'Building', 20, 90, 75, '2023-12-27 00:05:35', '2023-12-27 00:05:35'),
(8, '008', 'Software Licenses', 2, 13, 10, '2023-12-27 00:06:23', '2023-12-27 00:06:23'),
(9, '009', 'Machinery', 8, 59, 35, '2023-12-27 00:07:11', '2023-12-27 00:07:11'),
(10, '010', 'Security Systems', 5, 33, 22, '2023-12-27 00:07:59', '2023-12-27 00:07:59'),
(11, '011', 'Telecommunication Equipment', 6, 40, 28, '2023-12-27 00:08:47', '2023-12-27 00:08:47'),
(12, '012', 'Renovations', 15, 76, 62, '2023-12-27 00:09:35', '2023-12-27 00:09:35'),
(13, '013', 'Training and Development', 2, 10, 8, '2023-12-27 00:10:23', '2023-12-27 00:10:23'),
(14, '014', 'Research and Development', 3, 16, 12, '2023-12-27 00:11:11', '2023-12-27 00:11:11'),
(15, '015', 'Leasehold Improvements', 10, 51, 42, '2023-12-27 00:11:59', '2023-12-27 00:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `program_code` varchar(255) DEFAULT NULL,
  `department_code` varchar(255) DEFAULT NULL,
  `program_name` varchar(255) DEFAULT NULL,
  `department_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `program_code`, `department_code`, `program_name`, `department_description`, `created_at`, `updated_at`) VALUES
(1, 'PRG001', 'DEP001', 'Computer Science', 'Description for Computer Science department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(2, 'PRG002', 'DEP002', 'Electrical Engineering', 'Description for Electrical Engineering department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(3, 'PRG003', 'DEP003', 'Mechanical Engineering', 'Description for Mechanical Engineering department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(4, 'PRG004', 'DEP004', 'Chemical Engineering', 'Description for Chemical Engineering department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(5, 'PRG005', 'DEP005', 'Civil Engineering', 'Description for Civil Engineering department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(6, 'PRG006', 'DEP006', 'Business Administration', 'Description for Business Administration department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(7, 'PRG007', 'DEP007', 'Psychology', 'Description for Psychology department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(8, 'PRG008', 'DEP008', 'Biology', 'Description for Biology department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(9, 'PRG009', 'DEP009', 'Mathematics', 'Description for Mathematics department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(10, 'PRG010', 'DEP010', 'History', 'Description for History department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(11, 'PRG011', 'DEP011', 'English Literature', 'Description for English Literature department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(12, 'PRG012', 'DEP012', 'Physics', 'Description for Physics department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(13, 'PRG013', 'DEP013', 'Chemistry', 'Description for Chemistry department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(14, 'PRG014', 'DEP014', 'Environmental Science', 'Description for Environmental Science department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23'),
(15, 'PRG015', 'DEP015', 'Economics', 'Description for Economics department.', '2023-12-26 05:49:23', '2023-12-26 05:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `id` int(11) NOT NULL,
  `purchase day` double(10,0) NOT NULL,
  `Current year Depreciation` decimal(10,0) NOT NULL,
  `Accumulated Depreciation` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'LOC001', 'In Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(2, 'LOC002', 'In Reg Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(3, 'LOC003', 'In Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(4, 'LOC004', 'In Reg Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(5, 'LOC005', 'In Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(6, 'LOC006', 'In Reg Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(7, 'LOC007', 'In Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(8, 'LOC008', 'In Reg Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(9, 'LOC009', 'In Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(10, 'LOC010', 'In Reg Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(11, 'LOC011', 'In Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(12, 'LOC012', 'In Reg Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(13, 'LOC013', 'In Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(14, 'LOC014', 'In Reg Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00'),
(15, 'LOC015', 'In Office', '2023-12-25 18:30:00', '2023-12-25 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `userid`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 1012, 'IVD Admin', '$2y$10$0BjqzTCrPYalCxZbc6XD9.v0nMe.i7YwLAix2ysqOOKP95eIitPWy', '2023-12-23 13:42:58', '2023-12-23 13:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2023_12_22_050222_create_logins_table', 1),
(20, '2023_12_22_054449_create_admins_table', 1),
(21, '2023_12_23_081711_create_asset_classes_table', 1),
(22, '2023_12_23_133843_create_assets_table', 1),
(23, '2023_12_23_144445_create_vendors_table', 2),
(24, '2023_12_23_191217_create_locations_table', 3),
(25, '2023_12_23_191413_create_departments_table', 3),
(26, '2023_12_23_200336_create_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `asset` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone_number`, `designation`, `asset`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', '123-456-7890', 'Software Engineer', 'Laptop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(2, 'Jane Smith', '987-654-3210', 'Product Manager', 'Desktop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(3, 'Bob Johnson', '345-678-9012', 'UX Designer', 'Laptop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(4, 'Alice Brown', '567-890-1234', 'Data Analyst', 'Desktop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(5, 'Charlie White', '234-567-8901', 'Network Engineer', 'Laptop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(6, 'Diana Green', '876-543-2109', 'Marketing Specialist', 'Desktop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(7, 'Edward Black', '321-098-7654', 'HR Manager', 'Laptop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(8, 'Fiona Gray', '789-012-3456', 'Accountant', 'Desktop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(9, 'George Blue', '432-109-8765', 'Sales Representative', 'Laptop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(10, 'Helen Red', '765-432-1098', 'Customer Support', 'Desktop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(11, 'Ivan Yellow', '654-321-0987', 'Business Analyst', 'Laptop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(12, 'Jack Brown', '210-987-6543', 'Quality Assurance', 'Desktop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(13, 'Karen White', '789-654-3210', 'Project Manager', 'Laptop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(14, 'Leo Green', '234-567-8901', 'Systems Administrator', 'Desktop', '2023-12-26 05:51:51', '2023-12-26 05:51:51'),
(15, 'Mia Black', '876-543-2109', 'IT Manager', 'Laptop', '2023-12-26 05:51:51', '2023-12-26 05:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `primary_contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_name`, `phone`, `mobile`, `primary_contact`, `email`, `description`, `address_line1`, `city`, `state`, `address_line2`, `country`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 'Vendor 1', '123-456-7890', '987-654-3210', 'John Doe', 'vendor1@example.com', 'Description 1', '123 Main St', 'City 1', 'State 1', 'Apt 101', 'Country 1', '12345', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(2, 'Vendor 2', '456-789-0123', '876-543-2109', 'Jane Smith', 'vendor2@example.com', 'Description 2', '456 Oak St', 'City 2', 'State 2', 'Suite 202', 'Country 2', '67890', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(3, 'Vendor 3', '789-012-3456', '765-432-1098', 'Bob Johnson', 'vendor3@example.com', 'Description 3', '789 Pine St', 'City 3', 'State 3', 'Unit 303', 'Country 3', '23456', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(4, 'Vendor 4', '012-345-6789', '654-321-0987', 'Alice Brown', 'vendor4@example.com', 'Description 4', '012 Cedar St', 'City 4', 'State 4', 'Apt 404', 'Country 4', '78901', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(5, 'Vendor 5', '234-567-8901', '543-210-9876', 'Charlie White', 'vendor5@example.com', 'Description 5', '234 Maple St', 'City 5', 'State 5', 'Suite 505', 'Country 5', '34567', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(6, 'Vendor 6', '567-890-1234', '432-109-8765', 'Diana Green', 'vendor6@example.com', 'Description 6', '567 Birch St', 'City 6', 'State 6', 'Unit 606', 'Country 6', '89012', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(7, 'Vendor 7', '890-123-4567', '321-098-7654', 'Edward Black', 'vendor7@example.com', 'Description 7', '890 Elm St', 'City 7', 'State 7', 'Apt 707', 'Country 7', '45678', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(8, 'Vendor 8', '123-456-7890', '987-654-3210', 'Fiona Gray', 'vendor8@example.com', 'Description 8', '123 Pine St', 'City 8', 'State 8', 'Suite 808', 'Country 8', '01234', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(9, 'Vendor 9', '456-789-0123', '876-543-2109', 'George Blue', 'vendor9@example.com', 'Description 9', '456 Cedar St', 'City 9', 'State 9', 'Unit 909', 'Country 9', '56789', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(10, 'Vendor 10', '789-012-3456', '765-432-1098', 'Helen Red', 'vendor10@example.com', 'Description 10', '789 Oak St', 'City 10', 'State 10', 'Apt 1010', 'Country 10', '12345', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(11, 'Vendor 11', '012-345-6789', '654-321-0987', 'Ivan Yellow', 'vendor11@example.com', 'Description 11', '012 Birch St', 'City 11', 'State 11', 'Suite 1111', 'Country 11', '67890', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(12, 'Vendor 12', '234-567-8901', '543-210-9876', 'Jack Brown', 'vendor12@example.com', 'Description 12', '234 Elm St', 'City 12', 'State 12', 'Unit 1212', 'Country 12', '23456', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(13, 'Vendor 13', '567-890-1234', '432-109-8765', 'Karen White', 'vendor13@example.com', 'Description 13', '567 Maple St', 'City 13', 'State 13', 'Apt 1313', 'Country 13', '78901', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(14, 'Vendor 14', '890-123-4567', '321-098-7654', 'Leo Green', 'vendor14@example.com', 'Description 14', '890 Cedar St', 'City 14', 'State 14', 'Suite 1414', 'Country 14', '34567', '2023-12-26 05:42:29', '2023-12-26 05:42:29'),
(15, 'Vendor 15', '123-456-7890', '987-654-3210', 'Mia Black', 'vendor15@example.com', 'Description 15', '123 Birch St', 'City 15', 'State 15', 'Unit 1515', 'Country 15', '89012', '2023-12-26 05:42:29', '2023-12-26 05:42:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_classes`
--
ALTER TABLE `asset_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `asset_classes_class_id_unique` (`class_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `asset_classes`
--
ALTER TABLE `asset_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `description`
--
ALTER TABLE `description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
