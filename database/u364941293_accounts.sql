-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 27, 2022 at 05:57 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u364941293_accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `in_time` varchar(200) NOT NULL,
  `out_time` varchar(200) NOT NULL,
  `p_a` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `roll_no`, `name`, `class`, `date`, `in_time`, `out_time`, `p_a`, `status`) VALUES
(1, '60', 'Fazeelat', 'MS Office', '2022-06-21', '', '', 'absent', 'active'),
(2, '61', 'Gulam Rasool', 'MS Office', '2022-06-21', '', '', 'absent', 'active'),
(3, '105', 'Sheryar Afzal', 'MS Office', '2022-06-21', '11 : 22 : 14  AM', '11 : 23 : 11  AM', 'present', 'active'),
(4, '124', 'Ali Rehman', 'MS Office', '2022-06-21', '11 : 21 : 39  AM', '11 : 23 : 28  AM', 'present', 'active'),
(5, '121', 'Ali Rehman', 'MS Office', '2022-06-21', '11 : 21 : 52  AM', '11 : 23 : 33  AM', 'present', 'active'),
(6, '128', 'Saira Zafar', 'MS Office', '2022-06-21', '11 : 21 : 20  AM', '11 : 24 : 27  AM', 'present', 'active'),
(7, '129', 'Sawera Irfan', 'MS Office', '2022-06-21', '11 : 21 : 13  AM', '11 : 24 : 33  AM', 'present', 'active'),
(8, '134', 'Awais Raza', 'MS Office', '2022-06-21', '11 : 21 : 5  AM', '11 : 25 : 10  AM', 'present', 'active'),
(9, '87', 'Sumaira Bano', 'SEO', '2022-06-21', '', '', 'absent', 'active'),
(11, '113', 'Ali Hussain', 'MS Office', '2022-06-21', '11 : 22 : 22  AM', '11 : 27 : 1  AM', 'present', 'active'),
(12, '112', 'M Shahnawaz', 'MS Office', '2022-06-21', '11 : 22 : 16  AM', '11 : 44 : 39  AM', 'present', 'active'),
(13, '120', 'M Uzair', 'MS Office', '2022-06-21', '11 : 22 : 35  AM', '11 : 44 : 45  AM', 'present', 'active'),
(14, '99', 'Saba Kosar', 'Amazon VA', '2022-06-21', '11 : 28 : 38  AM', '1 : 9 : 49  PM', 'present', 'active'),
(15, '65', 'Maria Abid', 'SEO', '2022-06-21', '11 : 26 : 2  AM', '3 : 12 : 40  PM', 'present', 'active'),
(16, '68', 'Shehnila Khizar', 'MS Office', '2022-06-21', '11 : 37 : 36  AM', '3 : 16 : 14  PM', 'present', 'active'),
(17, '69', 'Sawera Javed', 'MS Office', '2022-06-21', '11 : 37 : 37  AM', '3 : 16 : 22  PM', 'present', 'active'),
(18, '132', 'M Arham', 'SEO ', '2022-06-21', '11 : 25 : 40  AM', '3 : 23 : 10  PM', 'present', 'active'),
(19, '79', 'M Rizwan', 'SEO', '2022-06-21', '11 : 26 : 8  AM', '3 : 23 : 28  PM', 'present', 'active'),
(20, '84', 'Sheraz ahmed', 'SEO', '2022-06-21', '11 : 26 : 17  AM', '3 : 37 : 21  PM', 'present', 'active'),
(21, '126', 'Ahmar Mustafa', 'SEO ', '2022-06-21', '1 : 16 : 48  PM', '3 : 37 : 27  PM', 'present', 'active'),
(22, '51', 'Abuhuraira', 'SEO', '2022-06-21', '11 : 25 : 54  AM', '3 : 47 : 3  PM', 'present', 'active'),
(23, '83', 'Asim Rafique', 'SEO', '2022-06-21', '11 : 26 : 5  AM', '3 : 48 : 56  PM', 'present', 'active'),
(24, '111', 'Gulam Murtaza', 'Graphic Designing', '2022-06-21', '4 : 44 : 47  PM', '4 : 45 : 4  PM', 'present', 'active'),
(25, '133', 'Ali Hamza', 'Graphic Designing', '2022-06-21', '4 : 44 : 46  PM', '4 : 45 : 14  PM', 'present', 'active'),
(26, '108', 'Usman sarwar', 'Web Development ', '2022-06-21', '9 : 49 : 58  AM', '7 : 42 : 58  PM', 'present', 'active'),
(27, '107', 'Suraj', 'MS Office', '2022-06-21', '11 : 21 : 31  AM', '5 : 15 : 7  PM', 'present', 'active'),
(28, '101', 'Atif Maqbool', 'MS Office', '2022-06-21', '11 : 22 : 4  AM', '5 : 15 : 12  PM', 'present', 'active'),
(29, '103', 'Gulnaz', 'MS Office', '2022-06-21', '12 : 23 : 15  PM', '5 : 15 : 17  PM', 'present', 'active'),
(30, '130', 'Burhan Ahmad', 'MS Office', '2022-06-21', '5 : 14 : 13  PM', '5 : 15 : 19  PM', 'present', 'active'),
(31, '127', 'Talha Naeem', 'MS Office', '2022-06-21', '11 : 21 : 24  AM', '5 : 15 : 23  PM', 'present', 'active'),
(32, '117', 'Hamza Saleem', 'Free intenship', '2022-06-21', '1 : 10 : 12  PM', '5 : 15 : 37  PM', 'present', 'active'),
(33, '115', 'M Kashan Asif', 'Graphic Designing', '2022-06-21', '1 : 24 : 47  PM', '6 : 22 : 55  PM', 'present', 'active'),
(35, '105', 'Sheryar Afzal', 'MS Office', '2022-06-22', '9 : 36 : 55  AM', '10 : 51 : 17  AM', 'present', 'active'),
(36, '124', 'Ali Rehman', 'MS Office', '2022-06-22', '9 : 36 : 50  AM', '10 : 51 : 28  AM', 'present', 'active'),
(37, '113', 'Ali Hussain', 'MS Office', '2022-06-22', '9 : 36 : 42  AM', '11 : 0 : 28  AM', 'present', 'active'),
(38, '116', 'Suraj', 'MS Office', '2022-06-22', '9 : 25 : 55  AM', '11 : 6 : 16  AM', 'present', 'active'),
(39, '121', 'Ubaid Ullah', 'MS Office', '2022-06-22', '9 : 25 : 58  AM', '11 : 6 : 33  AM', 'present', 'active'),
(40, '107', 'Abdullah M ali', 'MS Office', '2022-06-22', '9 : 25 : 51  AM', '11 : 6 : 42  AM', 'present', 'active'),
(41, '112', 'M Shahnawaz', 'MS Office', '2022-06-22', '9 : 37 : 5  AM', '11 : 20 : 3  AM', 'present', 'active'),
(42, '129', 'Sawera Irfan', 'MS Office', '2022-06-22', '10 : 8 : 48  AM', '11 : 28 : 5  AM', 'present', 'active'),
(43, '128', 'Saira Zafar', 'MS Office', '2022-06-22', '10 : 8 : 44  AM', '11 : 28 : 8  AM', 'present', 'active'),
(44, '78', 'M Adnan', 'SEO ', '2022-06-22', '', '', 'absent', 'active'),
(45, '79', 'M Rizwan', 'SEO', '2022-06-22', '', '', 'absent', 'active'),
(46, '101', 'Atif Maqbool', 'MS Office', '2022-06-22', '9 : 25 : 45  AM', '12 : 41 : 33  PM', 'present', 'active'),
(47, '104', 'Kashif Maqbool', 'MS Office', '2022-06-22', '9 : 25 : 48  AM', '12 : 41 : 34  PM', 'present', 'active'),
(48, '120', 'M Uzair', 'MS Office', '2022-06-22', '10 : 58 : 6  AM', '12 : 42 : 50  PM', 'present', 'active'),
(49, '97', 'Burhan Ali', 'Web Development ', '2022-06-22', '', '', 'absent', 'active'),
(50, '109', 'Murazza Liaqat', 'SEO', '2022-06-22', '', '', 'absent', 'active'),
(51, '131', 'Sami Ullah ', 'Web Development', '2022-06-22', '12 : 50 : 36  PM', '1 : 54 : 52  PM', 'present', 'active'),
(52, '123', 'M Sajid Mehmood', 'Web Development', '2022-06-22', '1 : 22 : 52  PM', '1 : 54 : 58  PM', 'present', 'deactive'),
(54, '99', 'Saba Kosar', 'Amazon VA', '2022-06-22', '11 : 24 : 15  AM', '2 : 0 : 25  PM', 'present', 'active'),
(55, '106', 'Maryam Anjum', 'SEO ', '2022-06-22', '10 : 11 : 45  AM', '2 : 5 : 46  PM', 'present', 'active'),
(62, '143', 'Amir Ali', 'SEO', '2022-06-22', '9 : 36 : 26  AM', '2 : 32 : 36  PM', 'present', 'active'),
(63, '142', 'Shakir Ali', 'SEO', '2022-06-22', '9 : 36 : 23  AM', '2 : 32 : 43  PM', 'present', 'active'),
(64, '141', 'Haider Ali', 'SEO ', '2022-06-22', '9 : 36 : 21  AM', '2 : 32 : 47  PM', 'present', 'active'),
(66, '132', 'M Arham', 'SEO ', '2022-06-22', '10 : 1 : 0  AM', '2 : 35 : 26  PM', 'present', 'active'),
(68, '103', 'Gulnaz', 'MS Office', '2022-06-22', '12 : 21 : 58  PM', '2 : 37 : 8  PM', 'present', 'active'),
(70, '84', 'Sheraz ahmed', 'SEO', '2022-06-22', '9 : 37 : 37  AM', '2 : 46 : 23  PM', 'present', 'active'),
(71, '83', 'Asim Rafique', 'SEO ', '2022-06-22', '9 : 37 : 33  AM', '2 : 46 : 28  PM', 'present', 'active'),
(72, '51', 'Abuhuraira', 'SEO ', '2022-06-22', '9 : 26 : 12  AM', '2 : 46 : 33  PM', 'present', 'active'),
(75, '65', 'Maria Abid', 'SEO', '2022-06-22', '10 : 7 : 54  AM', '2 : 52 : 31  PM', 'present', 'active'),
(76, '69', 'Sawera Javed', 'MS Office', '2022-06-22', '12 : 23 : 49  PM', '2 : 52 : 46  PM', 'present', 'active'),
(77, '68', 'Shehnila Khizar', 'MS Office', '2022-06-22', '12 : 21 : 49  PM', '2 : 52 : 48  PM', 'present', 'active'),
(83, '134', 'Awais Raza', 'MS Office', '2022-06-22', '', '', 'absent', 'active'),
(85, '94', 'Muniba Shahid', 'MS Office', '2022-06-22', '', '', 'leave', 'active'),
(86, '60', 'Fazeelat', 'MS Office', '2022-06-22', '', '', 'absent', 'active'),
(88, '87', 'Sumaira Bano', 'SEO', '2022-06-22', '', '', 'leave', 'active'),
(90, '126', 'Ahmar Mustafa', 'SEO ', '2022-06-22', '1 : 42 : 56  PM', '3 : 34 : 24  PM', 'present', 'active'),
(91, '55', 'Zain Ali', 'Amazon VA', '2022-06-22', '12 : 3 : 51  PM', '3 : 38 : 22  PM', 'present', 'active'),
(92, '122', 'Hafeez Urehman', 'Amazon VA', '2022-06-22', '1 : 59 : 0  PM', '3 : 38 : 32  PM', 'present', 'active'),
(93, '144', 'M Saqlain Noor', 'Amazon VA', '2022-06-22', '2 : 15 : 29  PM', '3 : 38 : 34  PM', 'present', 'active'),
(94, '98', 'Ahmad Shabir', 'Amazon VA', '2022-06-22', '11 : 36 : 39  AM', '3 : 38 : 35  PM', 'present', 'active'),
(96, '117', 'Hamza Saleem', 'Free intenship', '2022-06-22', '11 : 51 : 29  AM', '4 : 59 : 26  PM', 'present', 'active'),
(97, '127', 'Talha Naeem', 'MS Office', '2022-06-22', '11 : 51 : 47  AM', '4 : 59 : 51  PM', 'present', 'active'),
(98, '145', 'Shahzad Yousaf', 'SEO ', '2022-06-22', '3 : 7 : 15  PM', '5 : 24 : 37  PM', 'present', 'active'),
(99, '130', 'Burhan Ahmad', 'MS Office', '2022-06-22', '3 : 7 : 43  PM', '5 : 24 : 59  PM', 'present', 'active'),
(100, '125', 'Ahmad Raza', 'MS Office', '2022-06-22', '4 : 19 : 41  PM', '5 : 26 : 15  PM', 'present', 'active'),
(101, '111', 'Gulam Murtaza', 'Graphic Designing', '2022-06-22', '10 : 22 : 29  AM', '5 : 32 : 28  PM', 'present', 'active'),
(102, '133', 'Ali Hamza', 'Graphic Designing', '2022-06-22', '10 : 22 : 25  AM', '5 : 32 : 33  PM', 'present', 'active'),
(103, '31', 'Nimra Naz', 'Graphic Designing', '2022-06-22', '9 : 25 : 18  AM', '6 : 0 : 3  PM', 'present', 'active'),
(104, '31', 'Nimra Naz', 'Graphic Designing', '2022-06-22', '9 : 25 : 18  AM', '6 : 0 : 5  PM', 'present', 'active'),
(105, '39', 'Saim Ali', 'SEO', '2022-06-22', '3 : 7 : 19  PM', '6 : 5 : 7  PM', 'present', 'active'),
(106, '59', 'Muhammad Tariq', 'SEO ', '2022-06-22', '3 : 33 : 56  PM', '6 : 7 : 37  PM', 'present', 'active'),
(107, '89', 'M Zeeshan ', 'SEO', '2022-06-22', '3 : 34 : 3  PM', '6 : 7 : 40  PM', 'present', 'active'),
(111, '118', 'Habib Ullah ', 'Paid internship', '2022-06-22', '6 : 15 : 56  PM', '6 : 16 : 14  PM', 'present', 'active'),
(112, '115', 'M Kashan Asif', 'Graphic Designing', '2022-06-22', '6 : 15 : 39  PM', '6 : 16 : 44  PM', 'present', 'active'),
(113, '115', 'M Kashan Asif', 'Graphic Designing', '2022-06-22', '6 : 15 : 37  PM', '6 : 31 : 4  PM', 'present', 'active'),
(114, '92', 'Noman Farooq', 'SEO ', '2022-06-22', '', '', 'absent', 'active'),
(115, '96', 'Waleed Abid', 'SEO', '2022-06-22', '', '', 'absent', 'active'),
(120, '87', 'Sumaira Bano', 'SEO', '2022-06-23', '', '', 'absent', 'active'),
(121, '124', 'Ali Rehman', 'MS Office', '2022-06-23', '9 : 26 : 10  AM', '10 : 32 : 54  AM', 'present', 'active'),
(122, '134', 'Awais Raza', 'MS Office', '2022-06-23', '9 : 42 : 13  AM', '10 : 40 : 36  AM', 'present', 'active'),
(123, '121', 'Ubaid Ullah', 'MS Office', '2022-06-23', '9 : 23 : 56  AM', '11 : 8 : 54  AM', 'present', 'active'),
(124, '107', 'Abdullah M ali', 'MS Office', '2022-06-23', '9 : 26 : 17  AM', '11 : 9 : 14  AM', 'present', 'active'),
(125, '60', 'Fazeelat', 'MS Office', '2022-06-23', '10 : 6 : 57  AM', '11 : 23 : 1  AM', 'present', 'active'),
(126, '69', 'Sawera Javed', 'MS Office', '2022-06-23', '11 : 7 : 47  AM', '11 : 33 : 50  AM', 'present', 'active'),
(127, '128', 'Saira Zafar', 'MS Office', '2022-06-23', '10 : 21 : 45  AM', '11 : 34 : 15  AM', 'present', 'active'),
(128, '129', 'Sawera Irfan', 'MS Office', '2022-06-23', '10 : 21 : 41  AM', '11 : 34 : 18  AM', 'present', 'active'),
(129, '101', 'Atif Maqbool', 'MS Office', '2022-06-23', '9 : 23 : 40  AM', '11 : 52 : 52  AM', 'present', 'active'),
(130, '104', 'Kashif Maqbool', 'MS Office', '2022-06-23', '9 : 23 : 44  AM', '11 : 52 : 53  AM', 'present', 'active'),
(131, '116', 'Suraj', 'MS Office', '2022-06-23', '9 : 23 : 53  AM', '11 : 53 : 17  AM', 'present', 'active'),
(132, '120', 'M Uzair', 'MS Office', '2022-06-23', '10 : 53 : 40  AM', '11 : 53 : 49  AM', 'present', 'active'),
(133, '79', 'M Rizwan', 'SEO', '2022-06-23', '9 : 34 : 14  AM', '12 : 29 : 52  PM', 'present', 'active'),
(134, '78', 'M Adnan', 'SEO', '2022-06-23', '9 : 34 : 10  AM', '12 : 30 : 2  PM', 'present', 'active'),
(135, '79', 'M Rizwan', 'SEO', '2022-06-23', '9 : 34 : 14  AM', '12 : 30 : 22  PM', 'present', 'active'),
(136, '143', 'Amir Ali', 'SEO ', '2022-06-23', '9 : 33 : 50  AM', '1 : 44 : 2  PM', 'present', 'active'),
(137, '141', 'Haider Ali', 'SEO', '2022-06-23', '9 : 33 : 54  AM', '1 : 44 : 54  PM', 'present', 'active'),
(138, '142', 'Shakir Ali', 'SEO ', '2022-06-23', '9 : 33 : 51  AM', '1 : 45 : 6  PM', 'present', 'active'),
(139, '113', 'Ali Hussain', 'MS Office', '2022-06-23', '1 : 22 : 17  PM', '1 : 51 : 32  PM', 'present', 'active'),
(140, '109', 'Murazza Liaqat', 'SEO', '2022-06-23', '', '', 'absent', 'active'),
(141, '84', 'Sheraz ahmed', 'SEO', '2022-06-23', '9 : 34 : 0  AM', '2 : 34 : 38  PM', 'present', 'active'),
(142, '51', 'Abuhuraira', 'SEO ', '2022-06-23', '9 : 24 : 39  AM', '2 : 34 : 48  PM', 'present', 'active'),
(143, '99', 'Saba Kosar', 'Amazon VA', '2022-06-23', '11 : 39 : 44  AM', '2 : 41 : 6  PM', 'present', 'active'),
(144, '103', 'Gulnaz', 'MS Office', '2022-06-23', '12 : 19 : 51  PM', '2 : 46 : 31  PM', 'present', 'active'),
(145, '68', 'Shehnila Khizar', 'MS Office', '2022-06-23', '11 : 7 : 43  AM', '2 : 47 : 9  PM', 'present', 'active'),
(146, '65', 'Maria Abid', 'SEO ', '2022-06-23', '10 : 34 : 10  AM', '2 : 47 : 19  PM', 'present', 'active'),
(147, '106', 'Maryam Anjum', 'SEO ', '2022-06-23', '9 : 52 : 35  AM', '2 : 49 : 48  PM', 'present', 'active'),
(148, '144', 'M Saqlain Noor', 'Amazon VA', '2022-06-23', '', '', 'absent', 'active'),
(149, '122', 'Hafeez Urehman', 'Amazon VA', '2022-06-23', '1 : 30 : 20  PM', '3 : 17 : 48  PM', 'present', 'active'),
(150, '98', 'Ahmad Shabir', 'Amazon VA', '2022-06-23', '12 : 24 : 32  PM', '3 : 18 : 6  PM', 'present', 'active'),
(151, '111', 'Gulam Murtaza', 'Graphic Designing', '2022-06-23', '10 : 18 : 6  AM', '4 : 18 : 53  PM', 'present', 'active'),
(152, '133', 'Ali Hamza', 'Graphic Designing', '2022-06-23', '10 : 21 : 9  AM', '4 : 18 : 57  PM', 'present', 'active'),
(153, '89', 'M Zeeshan ', 'SEO', '2022-06-23', '', '', 'absent', 'active'),
(154, '108', 'Usman sarwar', 'Web Development ', '2022-06-23', '9 : 34 : 38  AM', '4 : 35 : 9  PM', 'present', 'active'),
(155, '145', 'Shahzad Yousaf', 'SEO ', '2022-06-23', '2 : 10 : 17  PM', '4 : 46 : 0  PM', 'present', 'active'),
(156, '130', 'Burhan Ahmad', 'MS Office', '2022-06-23', '3 : 57 : 40  PM', '4 : 46 : 10  PM', 'present', 'active'),
(157, '126', 'Ahmar Mustafa', 'SEO ', '2022-06-23', '1 : 22 : 2  PM', '4 : 46 : 18  PM', 'present', 'active'),
(158, '132', 'M Arham', 'SEO ', '2022-06-23', '10 : 7 : 20  AM', '4 : 46 : 38  PM', 'present', 'active'),
(159, '83', 'Asim Rafique', 'SEO ', '2022-06-23', '9 : 43 : 8  AM', '4 : 46 : 59  PM', 'present', 'active'),
(160, '105', 'Sheryar Afzal', 'MS Office', '2022-06-23', '9 : 26 : 14  AM', '4 : 47 : 3  PM', 'present', 'active'),
(161, '112', 'M Shahnawaz', 'MS Office', '2022-06-23', '9 : 23 : 47  AM', '4 : 47 : 5  PM', 'present', 'active'),
(162, '55', 'Zain Ali', 'Amazon VA', '2022-06-23', '11 : 59 : 44  AM', '4 : 47 : 26  PM', 'present', 'active'),
(163, '127', 'Talha Naeem', 'MS Office', '2022-06-23', '11 : 41 : 46  AM', '5 : 3 : 32  PM', 'present', 'active'),
(164, '117', 'Hamza Saleem', 'Free intenship', '2022-06-23', '11 : 41 : 55  AM', '5 : 3 : 38  PM', 'present', 'active'),
(165, '118', 'Habib Ullah ', 'Paid internship', '2022-06-23', '1 : 23 : 42  PM', '5 : 22 : 10  PM', 'present', 'active'),
(166, '115', 'M Kashan Asif', 'Graphic Designing', '2022-06-23', '1 : 23 : 23  PM', '5 : 22 : 13  PM', 'present', 'active'),
(167, '31', 'Nimra Naz', 'Graphic Designing', '2022-06-23', '9 : 26 : 40  AM', '5 : 22 : 19  PM', 'present', 'active'),
(168, '39', 'Saim Ali', 'SEO ', '2022-06-23', '3 : 3 : 27  PM', '5 : 55 : 34  PM', 'present', 'active'),
(169, '96', 'Waleed Abid', 'SEO ', '2022-06-23', '9 : 51 : 40  PM', '11 : 8 : 22  PM', 'present', 'active'),
(170, '92', 'Noman Farooq', 'SEO ', '2022-06-23', '', '', 'absent', 'active'),
(171, '123', 'M Sajid Mehmood', 'Web Development ', '2022-06-23', '', '', 'absent', 'deactive'),
(172, '131', 'Sami Ullah ', 'Web Development', '2022-06-23', '', '', 'absent', 'active'),
(173, '146', 'Ateeq Ur rehman', 'Android/IOS App', '2022-06-23', '11 : 10 : 58  PM', '11 : 11 : 2  PM', 'present', 'active'),
(174, '61', 'Gulam Rasool', 'MS Office', '2022-06-23', '', '', 'absent', 'active'),
(175, '94', 'Muniba Shahid', 'MS Office', '2022-06-23', '', '', 'leave', 'active'),
(176, '125', 'Ahmad Raza', 'MS Office', '2022-06-23', '', '', 'absent', 'active'),
(177, '51', 'Abuhuraira', 'SEO ', '2022-06-24', '9 : 37 : 50  AM', '1 : 59 : 6  PM', 'present', 'active'),
(178, '78', 'M Adnan', 'SEO', '2022-06-24', '9 : 37 : 59  AM', '1 : 59 : 52  PM', 'present', 'active'),
(179, '79', 'M Rizwan', 'SEO', '2022-06-24', '9 : 38 : 9  AM', '1 : 59 : 13  PM', 'present', 'active'),
(180, '143', 'Amir Ali', 'SEO', '2022-06-24', '9 : 38 : 17  AM', '12 : 59 : 10  PM', 'present', 'active'),
(181, '142', 'Shakir Ali', 'SEO', '2022-06-24', '9 : 38 : 20  AM', '12 : 59 : 28  PM', 'present', 'active'),
(182, '141', 'Haider Ali', 'SEO', '2022-06-24', '9 : 38 : 22  AM', '12 : 59 : 1  PM', 'present', 'active'),
(183, '84', 'Sheraz ahmed', 'SEO', '2022-06-24', '9 : 38 : 29  AM', '1 : 59 : 20  PM', 'present', 'active'),
(184, '121', 'Ubaid Ullah', 'MS Office', '2022-06-24', '9 : 39 : 7  AM', '12 : 8 : 33  PM', 'present', 'active'),
(185, '104', 'Kashif Maqbool', 'MS Office', '2022-06-24', '9 : 39 : 10  AM', '12 : 7 : 57  PM', 'present', 'active'),
(186, '107', 'Abdullah M ali', 'MS Office', '2022-06-24', '9 : 39 : 14  AM', '12 : 8 : 17  PM', 'present', 'active'),
(187, '112', 'M Shahnawaz', 'MS Office', '2022-06-24', '9 : 39 : 17  AM', '11 : 39 : 46  AM', 'present', 'active'),
(188, '105', 'Sheryar Afzal', 'MS Office', '2022-06-24', '9 : 39 : 20  AM', '11 : 39 : 40  AM', 'present', 'active'),
(189, '116', 'Suraj', 'MS Office', '2022-06-24', '', '', 'leave', 'active'),
(190, '124', 'Ali Rehman', 'MS Office', '2022-06-24', '', '', 'leave', 'active'),
(191, '113', 'Ali Hussain', 'MS Office', '2022-06-24', '9 : 39 : 40  AM', '11 : 39 : 32  AM', 'present', 'active'),
(192, '101', 'Atif Maqbool', 'MS Office', '2022-06-24', '9 : 39 : 47  AM', '12 : 7 : 14  PM', 'present', 'active'),
(193, '31', 'Nimra Naz', 'Graphic Designing', '2022-06-24', '9 : 40 : 15  AM', '5 : 34 : 29  PM', 'present', 'active'),
(194, '83', 'Asim Rafique', 'SEO ', '2022-06-24', '9 : 42 : 26  AM', '2 : 7 : 22  PM', 'present', 'active'),
(195, '87', 'Sumaira Bano', 'SEO', '2022-06-24', '', '', 'leave', 'active'),
(196, '134', 'Awais Raza', 'MS Office', '2022-06-24', '9 : 53 : 36  AM', '12 : 13 : 7  PM', 'present', 'active'),
(197, '129', 'Sawera Irfan', 'MS Office', '2022-06-24', '9 : 58 : 27  AM', '11 : 46 : 14  AM', 'present', 'active'),
(198, '128', 'Saira Zafar', 'MS Office', '2022-06-24', '9 : 58 : 28  AM', '11 : 46 : 24  AM', 'present', 'active'),
(199, '65', 'Maria Abid', 'SEO ', '2022-06-24', '10 : 16 : 25  AM', '2 : 25 : 48  PM', 'present', 'active'),
(200, '106', 'Maryam Anjum', 'SEO ', '2022-06-24', '10 : 26 : 49  AM', '2 : 25 : 37  PM', 'present', 'active'),
(201, '132', 'M Arham', 'SEO ', '2022-06-24', '10 : 48 : 28  AM', '1 : 17 : 22  PM', 'present', 'active'),
(202, '111', 'Gulam Murtaza', 'Graphic Designing', '2022-06-24', '10 : 48 : 56  AM', '10 : 55 : 24  AM', 'present', 'active'),
(203, '133', 'Ali Hamza', 'Graphic Designing', '2022-06-24', '10 : 52 : 54  AM', '4 : 54 : 36  PM', 'present', 'active'),
(204, '98', 'Ahmad Shabir', 'Amazon VA', '2022-06-24', '11 : 4 : 44  AM', '4 : 3 : 37  PM', 'present', 'active'),
(205, '108', 'Usman sarwar', 'Web Development ', '2022-06-24', '11 : 13 : 54  AM', '5 : 40 : 5  PM', 'present', 'active'),
(206, '97', 'Burhan Ali', 'Web Development ', '2022-06-24', '11 : 28 : 36  AM', '5 : 15 : 45  PM', 'present', 'active'),
(207, '127', 'Talha Naeem', 'MS Office', '2022-06-24', '11 : 40 : 6  AM', '5 : 39 : 57  PM', 'present', 'active'),
(208, '117', 'Hamza Saleem', 'Free intenship', '2022-06-24', '11 : 40 : 19  AM', '5 : 39 : 54  PM', 'present', 'active'),
(209, '69', 'Sawera Javed', 'MS Office', '2022-06-24', '11 : 42 : 25  AM', '3 : 17 : 14  PM', 'present', 'active'),
(210, '68', 'Shehnila Khizar', 'MS Office', '2022-06-24', '11 : 43 : 3  AM', '3 : 17 : 9  PM', 'present', 'active'),
(211, '109', 'Murazza Liaqat', 'SEO ', '2022-06-24', '', '', 'leave', 'active'),
(212, '103', 'Gulnaz', 'MS Office', '2022-06-24', '', '', 'leave', 'active'),
(213, '118', 'Habib Ullah ', 'Paid internship', '2022-06-24', '1 : 8 : 40  PM', '6 : 36 : 53  PM', 'present', 'active'),
(214, '115', 'M Kashan Asif', 'Graphic Designing', '2022-06-24', '1 : 9 : 13  PM', '6 : 36 : 51  PM', 'present', 'active'),
(215, '55', 'Zain Ali', 'Amazon VA', '2022-06-24', '', '', 'leave', 'active'),
(216, '99', 'Saba Kosar', 'Amazon VA', '2022-06-24', '', '', 'leave', 'active'),
(217, '60', 'Fazeelat', 'MS Office', '2022-06-24', '', '', 'absent', 'active'),
(218, '61', 'Gulam Rasool', 'MS Office', '2022-06-24', '', '', 'leave', 'active'),
(219, '94', 'Muniba Shahid', 'MS Office', '2022-06-24', '', '', 'leave', 'active'),
(220, '144', 'M Saqlain Noor', 'Amazon VA', '2022-06-24', '2 : 17 : 26  PM', '5 : 15 : 30  PM', 'present', 'active'),
(221, '146', 'Ateeq Ur rehman', 'Android/IOS App', '2022-06-24', '2 : 22 : 39  PM', '5 : 39 : 47  PM', 'present', 'active'),
(222, '123', 'M Sajid Mehmood', 'Web Development ', '2022-06-24', '', '', 'absent', 'deactive'),
(223, '123', 'M Sajid Mehmood', 'Web Development ', '2022-06-24', '', '', 'absent', 'deactive'),
(224, '145', 'Shahzad Yousaf', 'SEO ', '2022-06-24', '2 : 35 : 29  PM', '4 : 58 : 30  PM', 'present', 'active'),
(225, '130', 'Burhan Ahmad', 'MS Office', '2022-06-24', '2 : 35 : 57  PM', '4 : 58 : 48  PM', 'present', 'active'),
(226, '126', 'Ahmar Mustafa', 'SEO ', '2022-06-24', '3 : 9 : 55  PM', '4 : 58 : 57  PM', 'present', 'active'),
(227, '147', 'Burhan Ali', 'Graphic Designing', '2022-06-24', '3 : 10 : 45  PM', '5 : 42 : 46  PM', 'present', 'active'),
(228, '148', 'Zeeshan Shoukat', 'Graphic Designing', '2022-06-24', '3 : 10 : 51  PM', '4 : 3 : 56  PM', 'present', 'active'),
(229, '122', 'Hafeez Urehman', 'Amazon VA', '2022-06-24', '3 : 16 : 47  PM', '5 : 15 : 36  PM', 'present', 'active'),
(230, '39', 'Saim Ali', 'SEO ', '2022-06-24', '3 : 39 : 23  PM', '6 : 5 : 31  PM', 'present', 'active'),
(231, '59', 'Muhammad Tariq', 'SEO', '2022-06-24', '3 : 39 : 32  PM', '6 : 36 : 55  PM', 'present', 'active'),
(232, '89', 'M Zeeshan ', 'SEO', '2022-06-24', '3 : 39 : 36  PM', '5 : 20 : 6  PM', 'present', 'active'),
(233, '125', 'Ahmad Raza', 'MS Office', '2022-06-24', '5 : 33 : 53  PM', '5 : 34 : 42  PM', 'present', 'active'),
(234, '120', 'M Uzair', 'MS Office', '2022-06-24', '', '', 'absent', 'active'),
(235, '131', 'Sami Ullah ', 'Web Development ', '2022-06-24', '', '', 'absent', 'active'),
(236, '150', 'M Ramzan', 'SEO ', '2022-06-24', '6 : 23 : 2  PM', '6 : 23 : 22  PM', 'present', 'active'),
(237, '149', 'Farhan Ashraf', 'SEO', '2022-06-24', '6 : 23 : 5  PM', '6 : 23 : 18  PM', 'present', 'active'),
(238, '92', 'Noman Farooq', 'SEO ', '2022-06-24', '', '', 'absent', 'active'),
(239, '151', 'Ahmad Hassan', 'MS Office', '2022-06-24', '10 : 28 : 14  PM', '10 : 28 : 52  PM', 'present', 'active'),
(240, '113', 'Ali Hussain', 'MS Office', '2022-06-25', '9 : 24 : 54  AM', '10 : 30 : 42  AM', 'present', 'active'),
(241, '112', 'M Shahnawaz', 'MS Office', '2022-06-25', '9 : 25 : 25  AM', '11 : 23 : 24  AM', 'present', 'active'),
(242, '121', 'Ubaid Ullah', 'MS Office', '2022-06-25', '9 : 25 : 33  AM', '11 : 42 : 5  AM', 'present', 'active'),
(243, '107', 'Abdullah M ali', 'MS Office', '2022-06-25', '9 : 25 : 42  AM', '11 : 41 : 51  AM', 'present', 'active'),
(244, '120', 'M Uzair', 'MS Office', '2022-06-25', '9 : 25 : 49  AM', '11 : 23 : 33  AM', 'present', 'active'),
(245, '104', 'Kashif Maqbool', 'MS Office', '2022-06-25', '9 : 27 : 11  AM', '11 : 42 : 41  AM', 'present', 'active'),
(246, '105', 'Sheryar Afzal', 'MS Office', '2022-06-25', '9 : 27 : 20  AM', '10 : 35 : 38  AM', 'present', 'active'),
(247, '124', 'Ali Rehman', 'MS Office', '2022-06-25', '9 : 27 : 26  AM', '10 : 35 : 49  AM', 'present', 'active'),
(248, '101', 'Atif Maqbool', 'MS Office', '2022-06-25', '9 : 27 : 35  AM', '11 : 42 : 27  AM', 'present', 'active'),
(249, '116', 'Suraj', 'MS Office', '2022-06-25', '', '', 'leave', 'active'),
(250, '84', 'Sheraz ahmed', 'SEO ', '2022-06-25', '9 : 29 : 30  AM', '2 : 33 : 3  PM', 'present', 'active'),
(251, '31', 'Nimra Naz', 'Graphic Designing', '2022-06-25', '9 : 36 : 38  AM', '5 : 44 : 22  PM', 'present', 'active'),
(252, '134', 'Awais Raza', 'MS Office', '2022-06-25', '9 : 36 : 54  AM', '10 : 44 : 12  AM', 'present', 'active'),
(253, '141', 'Haider Ali', 'SEO ', '2022-06-25', '9 : 37 : 29  AM', '1 : 14 : 12  PM', 'present', 'active'),
(254, '142', 'Shakir Ali', 'SEO', '2022-06-25', '9 : 37 : 35  AM', '1 : 14 : 23  PM', 'present', 'active'),
(255, '143', 'Amir Ali', 'SEO', '2022-06-25', '9 : 37 : 42  AM', '1 : 14 : 33  PM', 'present', 'active'),
(256, '51', 'Abuhuraira', 'SEO ', '2022-06-25', '', '', 'leave', 'active'),
(257, '79', 'M Rizwan', 'SEO', '2022-06-25', '9 : 43 : 40  AM', '2 : 32 : 48  PM', 'present', 'active'),
(258, '78', 'M Adnan', 'SEO', '2022-06-25', '9 : 43 : 59  AM', '2 : 32 : 56  PM', 'present', 'active'),
(259, '128', 'Saira Zafar', 'MS Office', '2022-06-25', '9 : 47 : 51  AM', '5 : 19 : 34  PM', 'present', 'active'),
(260, '129', 'Sawera Irfan', 'MS Office', '2022-06-25', '9 : 48 : 0  AM', '3 : 8 : 13  PM', 'present', 'active'),
(261, '109', 'Murazza Liaqat', 'SEO ', '2022-06-25', '10 : 1 : 24  AM', '4 : 28 : 53  PM', 'present', 'active'),
(262, '60', 'Fazeelat', 'MS Office', '2022-06-25', '10 : 2 : 22  AM', '11 : 37 : 45  AM', 'present', 'active'),
(263, '151', 'Ahmad Hassan', 'MS Office', '2022-06-25', '10 : 6 : 4  AM', '11 : 23 : 46  AM', 'present', 'active'),
(264, '65', 'Maria Abid', 'SEO ', '2022-06-25', '10 : 7 : 18  AM', '2 : 34 : 22  PM', 'present', 'active'),
(265, '83', 'Asim Rafique', 'SEO', '2022-06-25', '10 : 7 : 45  AM', '4 : 37 : 22  PM', 'present', 'active'),
(266, '132', 'M Arham', 'SEO', '2022-06-25', '10 : 20 : 40  AM', '4 : 29 : 7  PM', 'present', 'active'),
(267, '133', 'Ali Hamza', 'Graphic Designing', '2022-06-25', '10 : 21 : 37  AM', '5 : 21 : 2  PM', 'present', 'active'),
(268, '98', 'Ahmad Shabir', 'Amazon VA', '2022-06-25', '10 : 56 : 9  AM', '4 : 29 : 18  PM', 'present', 'active'),
(269, '99', 'Saba Kosar', 'Amazon VA', '2022-06-25', '10 : 56 : 33  AM', '4 : 28 : 43  PM', 'present', 'active'),
(270, '99', 'Saba Kosar', 'Amazon VA', '2022-06-25', '', '4 : 28 : 43  PM', 'leave', 'active'),
(271, '99', 'Saba Kosar', 'Amazon VA', '2022-06-25', '', '4 : 28 : 43  PM', 'leave', 'active'),
(272, '97', 'Burhan Ali', 'Web Development ', '2022-06-25', '11 : 22 : 10  AM', '6 : 5 : 50  PM', 'present', 'active'),
(273, '108', 'Usman sarwar', 'Web Development ', '2022-06-25', '11 : 22 : 14  AM', '5 : 21 : 17  PM', 'present', 'active'),
(274, '127', 'Talha Naeem', 'MS Office', '2022-06-25', '11 : 31 : 15  AM', '5 : 6 : 34  PM', 'present', 'active'),
(275, '68', 'Shehnila Khizar', 'MS Office', '2022-06-25', '11 : 38 : 20  AM', '3 : 7 : 9  PM', 'present', 'active'),
(276, '69', 'Sawera Javed', 'MS Office', '2022-06-25', '11 : 38 : 23  AM', '3 : 8 : 15  PM', 'present', 'active'),
(277, '61', 'Gulam Rasool', 'MS Office', '2022-06-25', '', '', 'leave', 'active'),
(278, '94', 'Muniba Shahid', 'MS Office', '2022-06-25', '', '', 'absent', 'active'),
(279, '117', 'Hamza Saleem', 'Free intenship', '2022-06-25', '11 : 42 : 57  AM', '5 : 6 : 40  PM', 'present', 'active'),
(280, '111', 'Gulam Murtaza', 'Graphic Designing', '2022-06-25', '11 : 43 : 26  AM', '5 : 21 : 9  PM', 'present', 'active'),
(281, '115', 'M Kashan Asif', 'Graphic Designing', '2022-06-25', '12 : 9 : 55  PM', '5 : 42 : 17  PM', 'present', 'active'),
(282, '148', 'Zeeshan Shoukat', 'Graphic Designing', '2022-06-25', '12 : 10 : 0  PM', '3 : 0 : 45  PM', 'present', 'active'),
(283, '103', 'Gulnaz', 'MS Office', '2022-06-25', '12 : 10 : 28  PM', '2 : 39 : 22  PM', 'present', 'active'),
(284, '118', 'Habib Ullah ', 'Paid internship', '2022-06-25', '12 : 13 : 40  PM', '5 : 42 : 31  PM', 'present', 'active'),
(285, '147', 'Burhan Ali', 'Graphic Designing', '2022-06-25', '12 : 19 : 7  PM', '2 : 59 : 51  PM', 'present', 'active'),
(286, '146', 'Ateeq Ur rehman', 'Android/IOS App', '2022-06-25', '12 : 57 : 7  PM', '5 : 16 : 48  PM', 'present', 'active'),
(287, '55', 'Zain Ali', 'Amazon VA', '2022-06-25', '', '', 'leave', 'active'),
(288, '144', 'M Saqlain Noor', 'Amazon VA', '2022-06-25', '2 : 36 : 36  PM', '3 : 26 : 54  PM', 'present', 'active'),
(289, '106', 'Maryam Anjum', 'SEO ', '2022-06-25', '', '', 'absent', 'active'),
(290, '145', 'Shahzad Yousaf', 'SEO', '2022-06-25', '2 : 41 : 2  PM', '4 : 53 : 30  PM', 'present', 'active'),
(291, '130', 'Burhan Ahmad', 'MS Office', '2022-06-25', '2 : 41 : 40  PM', '4 : 53 : 19  PM', 'present', 'active'),
(292, '39', 'Saim Ali', 'SEO ', '2022-06-25', '2 : 50 : 58  PM', '5 : 22 : 26  PM', 'present', 'active'),
(293, '126', 'Ahmar Mustafa', 'SEO', '2022-06-25', '2 : 56 : 54  PM', '5 : 5 : 16  PM', 'present', 'active'),
(294, '122', 'Hafeez Urehman', 'Amazon VA', '2022-06-25', '3 : 1 : 19  PM', '3 : 26 : 38  PM', 'present', 'active'),
(295, '122', 'Hafeez Urehman', 'Amazon VA', '2022-06-25', '3 : 1 : 20  PM', '3 : 26 : 38  PM', 'present', 'active'),
(296, '150', 'M Ramzan', 'SEO ', '2022-06-25', '3 : 26 : 14  PM', '6 : 5 : 53  PM', 'present', 'active'),
(297, '149', 'Farhan Ashraf', 'SEO ', '2022-06-25', '3 : 26 : 15  PM', '4 : 27 : 33  PM', 'present', 'active'),
(298, '125', 'Ahmad Raza', 'MS Office', '2022-06-25', '4 : 26 : 38  PM', '5 : 22 : 6  PM', 'present', 'active'),
(299, '87', 'Sumaira Bano', 'SEO ', '2022-06-25', '', '', 'leave', 'active'),
(300, '92', 'Noman Farooq', 'SEO', '2022-06-25', '', '', 'absent', 'active'),
(301, '89', 'M Zeeshan ', 'SEO ', '2022-06-25', '5 : 4 : 58  PM', '6 : 5 : 55  PM', 'present', 'active'),
(302, '59', 'Muhammad Tariq', 'SEO ', '2022-06-25', '', '', 'absent', 'active'),
(303, '60', 'Fazeelat', 'MS Office', '2022-06-26', '3 : 36 : 23  PM', '3 : 36 : 35  PM', 'present', 'active'),
(304, '39', 'Saim Ali', 'SEO ', '2022-06-26', '6 : 43 : 2  PM', '6 : 43 : 27  PM', 'present', 'active'),
(305, '59', 'Muhammad Tariq', 'SEO', '2022-06-26', '', '', 'leave', 'active'),
(306, '78', 'M Adnan', 'SEO', '2022-06-26', '', '', 'absent', 'active'),
(307, '51', 'Abuhuraira', 'SEO ', '2022-06-26', '8 : 30 : 17  PM', '8 : 31 : 9  PM', 'present', 'active'),
(308, '79', 'M Rizwan', 'SEO', '2022-06-26', '', '', 'leave', 'active'),
(309, '83', 'Asim Rafique', 'SEO', '2022-06-26', '', '', 'absent', 'active'),
(310, '31', 'Nimra Naz', 'Graphic Designing', '2022-06-27', '9 : 27 : 28  AM', '5 : 9 : 37  PM', 'present', 'active'),
(311, '134', 'Awais Raza', 'MS Office', '2022-06-27', '9 : 27 : 58  AM', '11 : 0 : 10  AM', 'present', 'active'),
(312, '116', 'Suraj', 'MS Office', '2022-06-27', '9 : 28 : 7  AM', '10 : 55 : 0  AM', 'present', 'active'),
(313, '124', 'Ali Rehman', 'MS Office', '2022-06-27', '9 : 28 : 20  AM', '10 : 30 : 15  AM', 'present', 'active'),
(314, '101', 'Atif Maqbool', 'MS Office', '2022-06-27', '9 : 28 : 34  AM', '11 : 35 : 47  AM', 'present', 'active'),
(315, '104', 'Kashif Maqbool', 'MS Office', '2022-06-27', '9 : 28 : 45  AM', '11 : 35 : 41  AM', 'present', 'active'),
(316, '112', 'M Shahnawaz', 'MS Office', '2022-06-27', '9 : 29 : 12  AM', '11 : 32 : 30  AM', 'present', 'active'),
(317, '107', 'Abdullah M ali', 'MS Office', '2022-06-27', '9 : 29 : 43  AM', '10 : 56 : 17  AM', 'present', 'active'),
(318, '121', 'Ubaid Ullah', 'MS Office', '2022-06-27', '9 : 29 : 57  AM', '10 : 56 : 9  AM', 'present', 'active'),
(319, '105', 'Sheryar Afzal', 'MS Office', '2022-06-27', '9 : 31 : 46  AM', '10 : 30 : 22  AM', 'present', 'active'),
(320, '51', 'Abuhuraira', 'SEO ', '2022-06-27', '9 : 32 : 32  AM', '2 : 32 : 36  PM', 'present', 'active'),
(321, '84', 'Sheraz ahmed', 'SEO', '2022-06-27', '9 : 33 : 3  AM', '2 : 32 : 47  PM', 'present', 'active'),
(322, '141', 'Haider Ali', 'SEO ', '2022-06-27', '9 : 39 : 19  AM', '12 : 54 : 11  PM', 'present', 'active'),
(323, '142', 'Shakir Ali', 'SEO', '2022-06-27', '9 : 39 : 27  AM', '12 : 53 : 59  PM', 'present', 'active'),
(324, '143', 'Amir Ali', 'SEO', '2022-06-27', '9 : 39 : 34  AM', '12 : 54 : 4  PM', 'present', 'active'),
(325, '79', 'M Rizwan', 'SEO ', '2022-06-27', '9 : 46 : 10  AM', '2 : 33 : 0  PM', 'present', 'active'),
(326, '87', 'Sumaira Bano', 'SEO', '2022-06-27', '9 : 46 : 13  AM', '4 : 25 : 27  PM', 'present', 'active'),
(327, '83', 'Asim Rafique', 'SEO', '2022-06-27', '9 : 46 : 15  AM', '2 : 32 : 41  PM', 'present', 'active'),
(328, '78', 'M Adnan', 'SEO', '2022-06-27', '9 : 46 : 22  AM', '2 : 32 : 55  PM', 'present', 'active'),
(329, '120', 'M Uzair', 'MS Office', '2022-06-27', '9 : 46 : 38  AM', '11 : 34 : 1  AM', 'present', 'active'),
(330, '94', 'Muniba Shahid', 'MS Office', '2022-06-27', '', '', 'absent', 'active'),
(331, '151', 'Ahmad Hassan', 'MS Office', '2022-06-27', '9 : 56 : 50  AM', '4 : 25 : 34  PM', 'present', 'active'),
(332, '98', 'Ahmad Shabir', 'Amazon VA', '2022-06-27', '10 : 29 : 43  AM', '3 : 56 : 33  PM', 'present', 'active'),
(333, '97', 'Burhan Ali', 'Web Development ', '2022-06-27', '10 : 56 : 42  AM', '6 : 10 : 34  PM', 'present', 'active'),
(334, '131', 'Sami Ullah ', 'Web Development', '2022-06-27', '', '', 'absent', 'active'),
(335, '60', 'Fazeelat', 'MS Office', '2022-06-27', '11 : 32 : 3  AM', '11 : 32 : 20  AM', 'present', 'active'),
(336, '128', 'Saira Zafar', 'MS Office', '2022-06-27', '11 : 34 : 36  AM', '11 : 35 : 25  AM', 'present', 'active'),
(337, '129', 'Sawera Irfan', 'MS Office', '2022-06-27', '11 : 34 : 42  AM', '11 : 35 : 22  AM', 'present', 'active'),
(338, '69', 'Sawera Javed', 'MS Office', '2022-06-27', '11 : 43 : 4  AM', '3 : 1 : 44  PM', 'present', 'active'),
(339, '68', 'Shehnila Khizar', 'MS Office', '2022-06-27', '11 : 43 : 10  AM', '3 : 1 : 48  PM', 'present', 'active'),
(340, '55', 'Zain Ali', 'Amazon VA', '2022-06-27', '11 : 59 : 57  AM', '4 : 38 : 33  PM', 'present', 'active'),
(341, '118', 'Habib Ullah ', 'Paid internship', '2022-06-27', '12 : 0 : 47  PM', '8 : 36 : 24  PM', 'present', 'active'),
(342, '111', 'Gulam Murtaza', 'Graphic Designing', '2022-06-27', '12 : 1 : 51  PM', '5 : 47 : 49  PM', 'present', 'active'),
(343, '115', 'M Kashan Asif', 'Graphic Designing', '2022-06-27', '12 : 2 : 35  PM', '8 : 36 : 22  PM', 'present', 'active'),
(344, '117', 'Hamza Saleem', 'Free intenship', '2022-06-27', '12 : 4 : 57  PM', '5 : 9 : 17  PM', 'present', 'active'),
(345, '127', 'Talha Naeem', 'MS Office', '2022-06-27', '12 : 5 : 29  PM', '5 : 9 : 31  PM', 'present', 'active'),
(346, '99', 'Saba Kosar', 'Amazon VA', '2022-06-27', '12 : 19 : 53  PM', '12 : 20 : 13  PM', 'present', 'active'),
(347, '132', 'M Arham', 'SEO ', '2022-06-27', '12 : 24 : 42  PM', '12 : 25 : 7  PM', 'present', 'active'),
(348, '109', 'Murazza Liaqat', 'SEO ', '2022-06-27', '12 : 42 : 16  PM', '12 : 42 : 30  PM', 'present', 'active'),
(349, '119', 'Ch Nisar Ahmad', 'Digital Marketing', '2022-06-27', '12 : 46 : 15  PM', '3 : 55 : 27  PM', 'present', 'active'),
(350, '146', 'Ateeq Ur rehman', 'Android/IOS App', '2022-06-27', '12 : 47 : 15  PM', '5 : 23 : 14  PM', 'present', 'active'),
(351, '126', 'Ahmar Mustafa', 'SEO ', '2022-06-27', '12 : 51 : 0  PM', '4 : 27 : 22  PM', 'present', 'active'),
(352, '145', 'Shahzad Yousaf', 'SEO ', '2022-06-27', '1 : 40 : 49  PM', '4 : 25 : 10  PM', 'present', 'active'),
(353, '133', 'Ali Hamza', 'Graphic Designing', '2022-06-27', '1 : 52 : 48  PM', '5 : 47 : 45  PM', 'present', 'active'),
(354, '144', 'M Saqlain Noor', 'Amazon VA', '2022-06-27', '2 : 38 : 1  PM', '4 : 33 : 18  PM', 'present', 'active'),
(355, '149', 'Farhan Ashraf', 'SEO ', '2022-06-27', '2 : 39 : 33  PM', '4 : 14 : 30  PM', 'present', 'active'),
(356, '122', 'Hafeez Urehman', 'Amazon VA', '2022-06-27', '2 : 55 : 41  PM', '4 : 38 : 23  PM', 'present', 'active'),
(357, '150', 'M Ramzan', 'SEO ', '2022-06-27', '2 : 55 : 54  PM', '8 : 36 : 20  PM', 'present', 'active'),
(358, '65', 'Maria Abid', 'SEO', '2022-06-27', '', '', 'leave', 'active'),
(359, '39', 'Saim Ali', 'SEO', '2022-06-27', '2 : 56 : 5  PM', '6 : 3 : 1  PM', 'present', 'active'),
(360, '106', 'Maryam Anjum', 'SEO', '2022-06-27', '', '', 'leave', 'active'),
(361, '59', 'Muhammad Tariq', 'SEO ', '2022-06-27', '', '', 'absent', 'active'),
(362, '89', 'M Zeeshan ', 'SEO', '2022-06-27', '', '', 'absent', 'active'),
(363, '92', 'Noman Farooq', 'SEO', '2022-06-27', '', '', 'absent', 'active'),
(364, '147', 'Burhan Ali', 'Graphic Designing', '2022-06-27', '', '', 'absent', 'active'),
(365, '148', 'Zeeshan Shoukat', 'Graphic Designing', '2022-06-27', '4 : 57 : 22  PM', '4 : 57 : 45  PM', 'present', 'active'),
(366, '61', 'Gulam Rasool', 'MS Office', '2022-06-27', '', '', 'leave', 'active'),
(367, '103', 'Gulnaz', 'MS Office', '2022-06-27', '', '', 'leave', 'active'),
(368, '113', 'Ali Hussain', 'MS Office', '2022-06-27', '', '', 'leave', 'active'),
(369, '125', 'Ahmad Raza', 'MS Office', '2022-06-27', '', '', 'absent', 'active'),
(370, '130', 'Burhan Ahmad', 'MS Office', '2022-06-27', '', '', 'absent', 'active'),
(371, '108', 'Usman sarwar', 'Web Development ', '2022-06-27', '4 : 58 : 51  PM', '8 : 36 : 17  PM', 'present', 'active'),
(372, '96', 'Waleed Abid', 'SEO ', '2022-06-27', '9 : 49 : 52  PM', '', 'present', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `come_time`
--

CREATE TABLE `come_time` (
  `id` int(200) NOT NULL,
  `roll_no` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `in_time` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `come_time`
--

INSERT INTO `come_time` (`id`, `roll_no`, `name`, `class`, `in_time`, `date`) VALUES
(202, '96', 'Waleed Abid', 'SEO ', '9 : 49 : 52  PM', '2022-06-27');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(5) NOT NULL,
  `class` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `class`) VALUES
(1, 'SEO '),
(2, 'Amazon VA'),
(3, 'Web Development '),
(4, 'Graphic Designing'),
(5, 'JAVA '),
(6, 'C++'),
(7, 'Python'),
(10, 'Digital Marketing'),
(12, 'Content Writing'),
(13, 'Android/IOS App'),
(14, 'MS Office'),
(15, 'Free intenship'),
(16, 'Paid internship'),
(18, 'Amazon Dropshipping');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `cnic` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `class` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `cnic`, `designation`, `class`) VALUES
(1, 'usman', '3610226665981', 'Developer', 'Web Development ');

-- --------------------------------------------------------

--
-- Table structure for table `expensive`
--

CREATE TABLE `expensive` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expensive`
--

INSERT INTO `expensive` (`id`, `name`, `amount`, `date`, `remark`) VALUES
(1, 'Building rent', '14000', '2022-06-11', 'done'),
(2, 'Bills ', '3600', '2022-06-12', 'done');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(50) NOT NULL,
  `roll_no` varchar(50) NOT NULL,
  `head` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `voucher_no` varchar(200) NOT NULL,
  `class` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `course_fee` varchar(500) NOT NULL,
  `ballance` varchar(500) NOT NULL,
  `paying_fee` varchar(500) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `head`
--

CREATE TABLE `head` (
  `id` int(50) NOT NULL,
  `head` varchar(50) NOT NULL,
  `charges` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `head`
--

INSERT INTO `head` (`id`, `head`, `charges`) VALUES
(1, 'Building rent', '14000'),
(2, 'Bills ', '000');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(450) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `email` varchar(55) NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `id` int(50) NOT NULL,
  `roll_no` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `total_pay` int(50) NOT NULL,
  `ballance` int(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `sr` int(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cnic` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `old_class` varchar(200) NOT NULL,
  `adm_date` varchar(50) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `cell` varchar(50) NOT NULL,
  `fee` varchar(50) NOT NULL,
  `m_fee` varchar(50) NOT NULL,
  `monthly_fee` varchar(200) NOT NULL,
  `refr` varchar(50) NOT NULL,
  `file` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(200) NOT NULL,
  `d` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sr`, `id`, `name`, `cnic`, `dob`, `f_name`, `class`, `old_class`, `adm_date`, `end_date`, `cell`, `fee`, `m_fee`, `monthly_fee`, `refr`, `file`, `status`, `d`) VALUES
(1, 'ET22-0802', 'Jawad Abbas', '3530275376377', '2005-06-05', 'M Abbas ', 'SEO ', '', '2021-06-22', '', '03481764268', '0', '0', '', 'me       ', 'your_site_name_ef6849ad62623d4912b410072d637038.jpg', 'deactive', '2022-06-19'),
(2, 'ET22-1c6b', 'Fiaz Ali', '000000', '2000-10-04', 'Ali', 'SEO ', '', '2021-10-04', '', '03033981272', '15000', '15000', '', 'Khalid sab', 'your_site_name_6d10b80c6d8a9f5906c605a2ffa8546f.jpg', 'deactive', '2022-06-19'),
(3, 'ET22-642e', 'Junaid Javed', '4838239291992', '2005-05-02', 'Javed', 'SEO ', '', '2021-06-26', '', '03080089164', '20000', '20000', '', 'Javed teacher friend', 'your_site_name_d0ebc41a1b5205095d61d903cee58262.jpg', 'deactive', '2022-06-19'),
(4, 'ET22-070a', 'Umair Ali', '261718398393', '2022-06-03', 'M Arshad', 'SEO ', '', '2021-07-17', '', '03084405729', '18000', '18000', '', 'master bashir chak no 18 ', 'your_site_name_8c02063b9ebc1228b27bc2599d758351.jpg', 'deactive', '2022-06-19'),
(5, 'ET22-7c98', 'Ali Hamza', '3530304911987', '1999-12-04', 'M Sharif', 'SEO ', '', '2021-07-24', '', '030689962893', '18000', '18000', '', 'ABC', 'your_site_name_5651df0d5f8b42d677afa238a3498cab.jpg', 'deactive', '2022-06-19'),
(6, 'ET22-f92f', 'Imran Chacho', '00', '2022-06-03', 'Chacho', 'Web Development ', '', '2021-08-02', '', '00', '10000', '', '', 'ABC  ', 'your_site_name_a775a081f07650cf09c89bf810eb1045.jpg', 'deactive', ''),
(7, 'ET22-56ff', 'Rehan ', '00', '2022-06-03', 'Arif Ullah', 'SEO ', '', '2021-08-11', '', '03077030942', '13000', '13000', '', 'ABC', 'your_site_name_fa6b39338ae0c361032ae5de7f5578c0.jpg', 'deactive', '2022-06-19'),
(8, 'ET22-ab16', 'Zeeshan', '00', '2022-06-03', '0', 'Web Development ', '', '2021-06-28', '', '03176435035', '9000', '9000', '', 'ABC', 'your_site_name_f119be136263f4bba99f12fa5cba42bf.jpg', 'deactive', ''),
(9, 'ET22-9126', 'Raheel Akram', '00', '2022-06-03', 'M Akram', 'SEO ', '', '2021-08-08', '', '03494820756', '18000', '18000', '', 'ABC', 'your_site_name_1d3f2d15a358aecc4343e00d0322014a.jpg', 'deactive', '2022-06-19'),
(10, 'ET22-1148', 'Fatima Malik', '00', '1998-05-13', 'Malik Waseem', 'SEO ', '', '2021-08-06', '', '03212722746', '18000', '18000', '', 'ABC', 'your_site_name_e97440402cf9a14c456e5b03bb6ff238.jpg', 'deactive', '2022-06-19'),
(11, 'ET22-bafc', 'Hamza Rafiq', '00', '2022-06-03', 'M Rafiq', 'SEO ', '', '2021-08-11', '', '03064146123', '15000', '15000', '', 'Master bashir\r\n', 'your_site_name_5c3749370a9b2cd5671715d2ff33b01c.jpg', 'deactive', '2022-06-19'),
(12, 'ET22-abbe', 'Nadeem boota', '00', '2000-12-04', 'M Boota', 'SEO ', '', '2021-08-16', '', '03424211551', '15000', '15000', '', 'Me', 'your_site_name_f49fc039497de0c98f5cad3fd533ba13.jpg', 'deactive', ''),
(13, 'ET22-e9be', 'Talha Asif', '00', '2004-02-23', 'M Asif', 'SEO ', '', '2021-08-16', '', '03090323729', '10000', '10000', '', 'Zain boota', 'your_site_name_6264670fa17bc3c2fc6595f27f1817f6.jpg', 'deactive', ''),
(14, 'ET22-72cf', 'Adeel Jameel', '00', '2005-04-27', 'M Jameel', 'SEO ', '', '2021-08-16', '', '03494843788', '4000', '4000', '', 'me', 'your_site_name_c2acca2e4e8c758530d1fb444777b850.jpg', 'deactive', ''),
(15, 'ET22-bdf3', 'zain ul abdin', '00', '2001-12-31', 'M Boota ', 'SEO ', '', '2021-09-16', '', '03088186680', '18000', '18000', '', 'Me ', 'your_site_name_2eca7ae02b02ec47c8f29279b772d33d.jpg', 'deactive', ''),
(16, 'ET22-bc46', 'Sami ur Rehman', '00', '2002-11-28', '00', 'SEO ', '', '2021-08-20', '', '03441260302', '5000', '5000', '', 'Nadeem Boota ', 'your_site_name_374444f49e7d7ab1594afa35e3ee23c1.jpg', 'deactive', ''),
(17, 'ET22-fbc5', 'Talha Sajjad', '00', '2000-02-23', 'M Sajjad', 'SEO ', '', '2000-02-03', '', '03156676924', '9000', '', '', 'Dawood    ', 'your_site_name_1be55996d94e3f133058c30e47d645b9.jpg', 'deactive', ''),
(18, 'ET22-07ba', 'Rehman ', '00', '2001-07-02', 'M Razzaq', 'MS Office', '', '2021-08-23', '', '03016317327', '4000', '4000', '', 'Me', 'your_site_name_97f4c75fa56046caed435dc32fbbf48c.jpg', 'deactive', ''),
(19, 'ET22-e639', 'Ahtisham', '00', '2002-04-03', 'Razaq', 'Web Development ', '', '2021-08-27', '', '03039637670', '4000', '4000', '', 'Dawood', 'your_site_name_78cbc3189339c8669f5237d7e37d8aad.jpg', 'deactive', ''),
(20, 'ET22-69cb', 'Ahmad Hassan', '00', '2002-05-03', 'Ashraf ali', 'Digital Marketing', '', '2021-08-09', '', '03424837080', '5000', '5000', '', 'Me', 'your_site_name_30969cfe5aea74d904de34197ecca6fb.jpg', 'deactive', ''),
(21, 'ET22-826f', 'Zain Iqbal', '00', '2005-08-03', 'Babar Ali', 'SEO ', '', '2021-09-09', '', '03211135608', '10000', '10000', '', 'Fahad cf', 'your_site_name_58c32409d5a68d880e4d1d5180656dc7.jpg', 'deactive', ''),
(22, 'ET22-fc2b', 'Fiza Muzamil', '00', '2002-07-05', 'Muzamil Raza', 'SEO ', '', '2021-09-04', '', '03077537940', '18000', '18000', '', 'Me', 'your_site_name_98a772b6516c62782ef192540087199f.jpg', 'deactive', ''),
(23, 'ET22-2bfb', 'Muaz Muzamil', '00', '2022-11-11', 'Muzamil Raza', 'SEO ', '', '2021-09-04', '', '03077537940', '18000', '18000', '', 'Me ', 'your_site_name_44d3d910227b062d88e2e826f6953aa9.jpg', 'deactive', ''),
(24, 'ET22-5a11', 'Mubashir ayoub', '00', '2000-01-01', 'M Ayoub', 'Digital Marketing', '', '2021-09-09', '', '00', '0', '0', '', 'Ahmad hassan digital marketing', 'your_site_name_ca32f5fc8dfb339e346063cb98716b71.jpg', 'deactive', ''),
(25, 'ET22-7d62', 'M Abdullah ', '00', '2002-03-09', 'M Saqib', 'Amazon VA', '', '2021-08-28', '', '03174437539', '5500', '5500', '', 'Ahmad hassan digital marketing', 'your_site_name_6ced5bfc3519d71c5c51eb08ae3a7aa1.jpg', 'deactive', '2022-06-20'),
(26, 'ET22-19a7', 'Asif ', '00', '2000-12-23', '00', 'SEO ', '', '2021-09-21', '', '03431582798', '8000', '8000', '', 'khalid sab', 'your_site_name_6d10712bf0dd0dd6117b72dd2666102d.jpg', 'deactive', ''),
(27, 'ET22-41d6', 'Nadia Iqbal', '00', '2002-02-03', 'M Iqbal', 'SEO ', '', '2021-09-22', '', '03039376521', '18000', '18000', '', 'fiza stu seo', 'your_site_name_ebf24b01cf3c946454b9577c26b0af3f.jpg', 'deactive', ''),
(28, 'ET22-c97d', 'Umaiza Younas', '00', '2002-11-11', 'M Younas ', 'SEO ', '', '2021-11-22', '', '03416171975', '0', '0', '', 'safai karwai chonj sy', 'your_site_name_d4c6f4f81996687b9019a80d291c95cb.jpg', 'deactive', ''),
(29, 'ET22-770f', 'Faisal adil ', '00', '2000-12-23', 'Zulfiqar Ali', 'SEO ', '', '2021-12-09', '', '03176046413', '6000', '6000', '', 'darmayan mai chor gaya ', 'your_site_name_c7709a2aac8aaccd99eef74ae16ba9d3.jpg', 'deactive', ''),
(30, 'ET22-73f9', 'Najma ', '00', '2021-03-02', '00', 'MS Office', '', '2021-09-24', '', '03090127311', '3000', '3000', '', 'Rao Kashif sab', 'your_site_name_bcdc4e89334852f62a217a120799cfc0.jpg', 'deactive', ''),
(31, 'ET22-abc3', 'Nimra Naz', '3530358544406', '2000-09-16', 'Farooq ahmed', 'Graphic Designing', '', '2021-09-29', '', '03230184160', '6000', '6000', '', 'Me', 'your_site_name_490bae8c2dff8ece1b64adfc64f4bc3c.jpg', 'active', '2022-06-27'),
(32, 'ET22-be3d', 'Yasmeen ', '00', '2000-11-11', '00', 'SEO ', '', '2021-10-03', '', '03180646397', '7000', '7000', '', 'Me', 'your_site_name_2df310b251943dea942645a776cb2a1a.jpg', 'deactive', ''),
(33, 'ET22-4892', 'Adeel ', '00', '2002-11-11', '00', 'SEO ', '', '2002-09-20', '', '03010923856', '10000', '10000', '', 'Dawood', 'your_site_name_c041fd2999a977167972d7733db42e3c.jpg', 'deactive', ''),
(34, 'ET22-8eb2', 'Zain Rasheed', '00', '2004-07-17', 'Abdul Rasheed', 'MS Office', '', '2021-11-01', '', '03482057230', '6000', '6000', '', 'Mazhar digital 2 chk', 'your_site_name_ea063a8c7c86c13bb0ff43da3e0b0253.jpg', 'deactive', ''),
(35, 'ET22-946d', 'Khalid Manzoor', '00', '2003-07-16', 'Manzoor Ahmad', 'Web Development ', '', '2021-11-02', '', '03014183915', '15000', '15000', '', 'Hassan Jutt usman park', 'your_site_name_1fab5adb2b5c0d13fcebdbca84e6359a.jpg', 'deactive', ''),
(36, 'ET22-c84c', 'Ali Raza ', '00', '1999-10-06', 'M Ashraf', 'Web Development ', '', '2021-11-02', '', '03457506990', '15000', '15000', '', 'Hassan Jutt usman park', 'your_site_name_3be6bb603902c5e4c7ff7532b8a35ce5.jpg', 'deactive', ''),
(37, 'ET22-e093', 'Iqra Anum', '00', '1997-03-27', 'Nadeem Sardar', 'Digital Marketing', '', '2021-11-08', '', '03014154086', '20000', '20000', '', '', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'deactive', ''),
(38, 'ET22-0022', 'Sohail Matloob', '00', '2004-04-03', 'Matloob Hussain', 'SEO', '', '2021-11-21', '', '03016311889', '15000', '15000', '', '', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'deactive', ''),
(39, 'ET22-dfdc', 'Saim Ali', '0000', '2003-05-04', 'M Ghaffar', 'SEO ', '', '2022-05-26', '', '03414665982', '15000', '15000', '', '', 'your_site_name_c2fe35b086594bfabfca43518fb7273b.jpg', 'active', '2022-06-27'),
(40, 'ET22-0a1d', 'zaman Rehmat', '00000000000', '1999-08-07', '', 'SEO ', '', '2021-11-21', '', '', '30000', '30000', '', '', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'deactive', ''),
(41, 'ET22-95d8', 'Behram Shah', '', '2003-08-14', '', 'SEO', '', '2022-01-21', '', '0', '5900', '5900', '', '', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'deactive', ''),
(42, 'ET22-4726', 'Athesham Ul Haq', '0', '1997-02-24', '', 'Web Development', '', '2021-11-21', '', '0', '2000', '2000', '', '', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'deactive', ''),
(43, 'ET22-df72', 'Javad', '0', '2003-03-05', '', 'SEO', '', '2021-11-21', '', '0', '0', '0', '', ' ', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'deactive', ''),
(44, 'ET22-66fa', 'Kazeem', '0000000', '2022-06-04', '-', 'Graphic Designing\n', '', '2021-11-15', '', '0', '12000', '12000', '', '', 'your_site_name_b04274c45ca032845f2240ea3a09612b.jpg', 'deactive', ''),
(45, 'ET22-6124', 'Wajid Ali', '000', '2009-07-01', '', 'Web Development', '', '2021-11-21', '', '0', '0', '0', '', '', 'your_site_name_4b07815b4c183f99cba1330f7fd851c3.jpg', 'deactive', ''),
(46, 'ET22-db74', 'Ashfaq', '00', '1993-10-26', '.', 'SEO', '', '2021-11-21', '', '0', '0', '0', '', '', 'your_site_name_278728f4f18ce693becd4618e34cccf1.jpg', 'deactive', ''),
(47, 'ET22-e6b5', 'Ubaidullah', '0', '2022-06-04', '.', 'MS Office', '', '2021-12-23', '', '0', '0', '0', '', '', 'your_site_name_e6c342fe53f2ac3c2497898050a8253c.jpg', 'deactive', ''),
(48, 'ET22-ba07', 'Azemm', '0', '2022-06-04', '.', 'Digital Marketing', '', '2021-11-05', '', '0', '0', '0', '', '', 'your_site_name_9162c010ba8c7c5632ea936de9e13c6d.jpg', 'deactive', ''),
(49, 'ET22-b6c9', 'Iqra Shiree', '0', '2022-06-04', '.', 'MS Office', '', '2021-12-07', '', '0', '0', '0', '', '', 'your_site_name_4c9efd0557cbd27f73e7cd0cdb6d38fa.jpg', 'deactive', ''),
(50, 'ET22-235b', 'Ali Khalid', '0', '2022-06-04', 'Khalid', 'SEO ', '', '2021-12-15', '', '0', '0', '0', '', '', 'your_site_name_128a8f291f3f35cbd603ccd0b8dc50bd.jpg', 'deactive', ''),
(51, 'ET22-e9d8', 'Abuhuraira', '0', '2002-04-28', 'Liaqat Ali', 'SEO ', '', '2022-02-02', '', '03064766328', '18000', '18000', '', '', 'your_site_name_780a4dafcf453306378bcc0b68937fc8.jpg', 'active', '2022-06-27'),
(52, 'ET22-ff81', 'Muqadas Iqbal', '0', '2022-06-04', 'M Iqbal', 'MS Office', '', '2021-12-09', '', '03057948969', '3000', '', '', '                              ', 'your_site_name_4999945d65cbd6c1428334c99b8d35f0.jpg', 'deactive', ''),
(53, 'ET22-2f3c', 'Usman Anwar', '0', '2022-06-04', '.', 'SEO ', '', '2022-02-02', '', '0', '0', '0', '', '', 'your_site_name_00d27fb743e07254a49134cb99ece1f3.jpg', 'deactive', ''),
(54, 'ET22-fe05', 'Abdullah Sadique', '0', '1997-11-22', 'M Sidique', 'SEO ', '', '2021-12-15', '', '0309794186', '15000', '15000', '', '', 'your_site_name_8aa309e3ef073f92cff6ef29fa11276c.jpg', 'deactive', ''),
(55, 'ET22-a42c', 'Zain Ali', '3530397816941', '2022-06-04', 'Abdul Qadir', 'Amazon VA', '', '2022-06-03', '', '03334634439', '25000', '25000', '', '', 'your_site_name_b05487362d1710cce8e3108f986f7b7b.jpg', 'active', '2022-06-27'),
(56, 'ET22-4c8c', 'Tayyab Majeed', '0', '1994-07-19', 'Sheikh Majeed', 'SEO ', '', '2022-01-28', '', '03431118011', '10000', '10000', '', '', 'your_site_name_b47a341ff634fa0c232008ac2868d6a5.jpg', 'deactive', ''),
(57, 'ET22-f726', 'M Noman Ramzan', '0', '2004-02-11', 'M Ramzan', 'SEO ', '', '2022-01-23', '', '03462195403', '15000', '15000', '', '', 'your_site_name_c78072a2eda6392d85e56b4e59ca305f.jpg', 'deactive', ''),
(58, 'ET22-6202', 'Hafiz Saad', '0', '2001-02-11', 'Abdul Ghafoor', 'SEO ', '', '2022-01-27', '', '03458921697', '1500', '1500', '', '', 'your_site_name_7fbad17a2f0ca98cdcfab76109129e5b.jpg', 'deactive', ''),
(59, 'ET22-2e8b', 'Muhammad Tariq', '0', '2002-12-28', 'Allah Ditta', 'SEO ', '', '2022-01-20', '', '03420408662', '15000', '15000', '', '', 'your_site_name_36c9dac92b46ddac9358b62a0c51bc33.jpg', 'active', '2022-06-27'),
(60, 'ET22-4d14', 'Fazeelat', '0', '2011-06-04', '.', 'MS Office', '', '2022-02-02', '', '0', '6000', '6000', '', '', 'your_site_name_36c9dac92b46ddac9358b62a0c51bc33.jpg', 'active', '2022-06-27'),
(61, 'ET22-e11e', 'Gulam Rasool', '0', '2003-11-16', 'M Ashraf', 'MS Office', '', '2022-01-12', '', '03467234345', '23000', '23000', '', '', 'your_site_name_0862040b3cd0f6bb731267768604bd12.jpg', 'active', '2022-06-27'),
(62, 'ET22-1665', 'Javeria', '0', '2004-01-09', 'M Younas Tahir', 'MS Office', '', '2022-01-17', '', '03151645568', '15000', '15000', '', '', 'your_site_name_0d916ff97ab0cb1c1f226c69c7dc643c.jpg', 'deactive', ''),
(63, 'ET22-2d98', 'Zain Rukhsar', '0', '2003-06-04', 'Rukhsar Ahmad', 'MS Office', '', '2022-01-25', '', '03432890288', '5000', '5000', '', '', 'your_site_name_f6259cafde67bcc83a82912a539182b9.jpg', 'deactive', ''),
(64, 'ET22-0a6c', 'M Qasim Saeed', '0', '1996-06-04', 'M Saeed', 'MS Office', '', '2022-01-31', '', '03470277717', '6000', '6000', '', '', 'your_site_name_e6b68ae3cea15b18caa989f312438be0.jpg', 'deactive', ''),
(65, 'ET22-2dc5', 'Maria Abid', '0', '2001-11-16', 'Abid Mahmood', 'SEO ', '', '2022-02-01', '', '03236409677', '15000', '15000', '', '', 'your_site_name_7e79f859945ead7d778fba01982e3118.jpg', 'active', '2022-06-27'),
(66, 'ET22-a490', 'Asim jahangir', '0', '1981-06-04', '.', 'MS Office', '', '2022-01-06', '', '0', '6000', '6000', '', '', 'your_site_name_c3d377fc7943b85d6c679c9fd7222383.jpg', 'deactive', ''),
(67, 'ET22-844b', 'Muhammad Umer Ashraf', '0', '2002-06-14', 'Muhammad Ashraf', 'SEO ', '', '2021-12-14', '', '03187917332', '15000', '15000', '', '', 'your_site_name_acdfcbd7a37ab3d80e67fb98ffa5aa9a.jpg', 'deactive', ''),
(68, 'ET22-52d4', 'Shehnila Khizar', '0', '2002-03-14', 'Khizer Iqbal', 'MS Office', '', '2022-02-11', '', '03213253061', '5000', '5000', '', '', 'your_site_name_bb801c67d0898fc71f79e9b18df2bad5.jpg', 'active', '2022-06-27'),
(69, 'ET22-4fc1', 'Sawera Javed', '0', '2000-06-04', '.', 'MS Office', '', '2022-02-11', '', '0308379988', '5000', '5000', '', '', 'your_site_name_0a09b0e32d02fd15e4e4eeedea287150.jpg', 'active', '2022-06-27'),
(70, 'ET22-4d59', 'Muhammad Tayyab Hussain', '0', '1997-06-04', 'Muhammad Hussain', 'Graphic Designing', '', '2021-07-02', '', '0', '0', '0', '', '', 'your_site_name_165c7cc37dcc12914cac7c49b3d8b145.jpg', 'deactive', ''),
(71, 'ET22-8cdc', 'Ahmad Faraz', '0', '2001-12-17', 'Badar e Azam', 'MS Office', '', '2021-11-10', '', '0345743584', '0', '0', '', '', 'your_site_name_2d713d30d4321f9a39106ed214eef45c.jpg', 'deactive', ''),
(72, 'ET22-6b69', 'Zahid Iqbal', '0', '2001-06-04', '.', 'MS Office', '', '2022-02-22', '', '0', '4500', '4500', '', '', 'your_site_name_b98d744edfe1cbb21cfe96fc408adda0.jpg', 'deactive', ''),
(73, 'ET22-e935', 'Raheela', '0', '2004-06-04', '.', 'MS Office', '', '2022-02-02', '', '0', '6000', '6000', '', '', 'your_site_name_c82033e9c447075c8e105c0b3ec67d69.jpg', 'deactive', ''),
(74, 'ET22-daa3', 'Muhammad Shahid Rasheed', '0', '2002-06-04', 'Abdul Rasheed', 'MS Office', '', '2022-02-10', '', '0341356412', '0', '0', '', '', 'your_site_name_d9a0023f4c2a28a984cd977da5bdd86d.jpg', 'deactive', ''),
(75, 'ET22-aac5', 'M Sufyan', '0', '2005-06-04', 'Naeem Iqbal', 'MS Office', '', '2022-02-10', '', '0', '4500', '4500', '', '', 'your_site_name_ec03e373adfcf9d214ba9af67d88ff1b.jpg', 'deactive', ''),
(76, 'ET22-aac5', 'M Ameer Bhutta', '0', '2005-06-04', 'M Hanif', 'MS Office', '', '2022-02-12', '', '0', '6000', '6000', '', '', 'your_site_name_87eaf5039f9f3f6d28da2849c59a6326.jpg', 'deactive', ''),
(77, 'ET22-7584', 'Raza Rehman', '0', '1999-01-08', 'Barkat Ali', 'SEO ', '', '2022-02-15', '', '03064112917', '5000', '', '', ' Hujra shah muqeem', 'your_site_name_aa2d07ca1bfd31c8a995546f4eff3c3b.jpg', 'deactive', ''),
(78, 'ET22-9999', 'M Adnan', '0', '2001-12-14', 'M Usama', 'SEO ', '', '2022-02-15', '', '030902999480', '15000', '15000', '', '', 'your_site_name_dc3ff2a661d0beaa864a6cfcb9c6f482.jpg', 'active', '2022-06-27'),
(79, 'ET22-70e5', 'M Rizwan', '0', '2001-10-01', 'M Akram', 'SEO ', '', '2022-02-15', '', '03024018424', '15000', '15000', '', '', 'your_site_name_204fd3ac995853894fc5c23b363bf0dc.jpg', 'active', '2022-06-27'),
(80, 'ET22-eb54', 'M Muhtab', '0', '2001-10-27', 'M Farman Ali', 'SEO ', '', '2022-02-15', '', '03499007489', '15000', '15000', '', '', 'your_site_name_b4e815dc307a105016bdc712cce9b121.jpg', 'deactive', ''),
(81, 'ET22-e934', 'Hammad Tariq', '00', '2002-04-07', 'M Tariq', 'SEO ', '', '2022-02-20', '', '03457493387', '16500', '16500', '', 'Me', 'your_site_name_adc4cd127cc17916cd38ccfa602938ad.jpg', 'deactive', ''),
(82, 'ET22-238f', 'Alam shair', '00', '2004-06-16', 'Amanat Ali', 'Graphic Designing', '', '2022-02-23', '', '03126094213', '4000', '4000', '', 'Me', 'your_site_name_90ffc89c745002f451eedc26dd2f3cdf.jpg', 'deactive', ''),
(83, 'ET22-eee0', 'Asim Rafique', '00', '1999-01-01', 'M Rafique', 'SEO ', '', '2022-03-02', '', '03166683319', '18000', '18000', '', 'Me', 'your_site_name_924b49602ec6e35ee4b2fb96b42da3a1.jpg', 'active', '2022-06-27'),
(84, 'ET22-06c7', 'Sheraz ahmed', '00', '2001-06-20', 'M Shafi', 'SEO ', '', '2022-03-02', '', '03085280947', '16500', '16500', '', 'Asim cf 12', 'your_site_name_a4b3d3a9b542d2bff67613b4de8e7203.jpg', 'active', '2022-06-27'),
(85, 'ET22-cd95', 'Zareena Abdullah', '0', '1970-12-03', 'Zahid Javed Zain', 'SEO ', '', '2022-03-14', '', '0', '10000', '10000', '', 'me', 'your_site_name_503d0c799abedeeba40357e13c43d906.jpg', 'deactive', ''),
(86, 'ET22-337e', 'Hamid raza', '0', '2000-12-31', 'Zain Raza', 'SEO ', '', '2022-03-14', '', '0', '10000', '10000', '', 'Me', 'your_site_name_c167889382099554454cecfa2a90f4d7.jpg', 'deactive', ''),
(87, 'ET22-2113', 'Sumaira Bano', '00', '1992-03-22', 'Taj din', 'SEO ', '', '2022-03-14', '', '0', '5000', '5000', '', '21 chk', 'your_site_name_684ee8949c8e04c32d7a3ab8868c0209.jpg', 'active', '2022-06-27'),
(88, 'ET22-5d51', 'Mujahid Abbas', '00', '2000-12-31', 'M Abbas', 'Graphic Designing', '', '2022-03-14', '', '0', '0', '0', '', 'Noman japa ny isuue karwaya', 'your_site_name_525b454a4fa5b51d1dc75269e5bc8cbe.jpg', 'deactive', ''),
(89, 'ET22-088c', 'M Zeeshan ', '00', '2002-02-22', '0', 'SEO ', '', '2022-03-15', '', '0', '15000', '15000', '5000', 'chk no 1 /1R lada lay k aya ', 'your_site_name_7db381c57aaaf309ac53c22ff982fe45.jpg', 'active', '2022-06-27'),
(90, 'ET22-a0b5', 'Moiz Anwar ', '00', '2004-03-22', '0', 'MS Office', '', '2022-03-15', '', '0', '2000', '2000', '', 'chk no 2 /1l', 'your_site_name_fb50886ccb8f04859ce1619535806a56.jpg', 'deactive', ''),
(91, 'ET22-e123', 'M Awais ali', '0', '2002-12-26', 'M Nawaz', 'MS Office', '', '2022-03-21', '', '03106047191', '6000', '6000', '', 'Rehman stu ms miltry', 'your_site_name_c61e4dd252b0ac58e0277e91daff71f8.jpg', 'deactive', ''),
(92, 'ET22-5be8', 'Noman Farooq', '00', '2000-12-31', 'M Farooq', 'SEO ', '', '2022-03-02', '', '0', '16000', '16000', '', 'usman food garden', 'your_site_name_c7ec35d67a13ff3b7ff8cdcce51e0e57.jpg', 'active', '2022-06-27'),
(93, 'ET22-2be0', 'M Rehman', '00', '2000-02-13', '0', 'MS Office', '', '2022-03-02', '', '0', '6000', '6000', '', 'Farhad cf 8 th', 'your_site_name_3c475fa45211a97f4350a3747e598b0e.jpg', 'deactive', ''),
(94, 'ET22-0869', 'Muniba Shahid', '0', '2003-05-04', 'Shahid', 'MS Office', '', '2022-04-05', '', '0', '290000', '290000', '', 'Self', 'your_site_name_cb0ab155d67fc83ade29095eaaf5b115.jpg', 'active', '2022-06-27'),
(95, 'ET22-3674', 'Arslan Farooq', '00', '2004-12-14', 'Farooq Ahmed', 'MS Office', '', '2021-11-02', '', '03187109040', '0', '0', '', 'Nimra Farooq', 'your_site_name_bb09a4e696a3e9356b28559c9aa36984.jpg', 'deactive', ''),
(96, 'ET22-d9c4', 'Waleed Abid', '00', '2005-03-04', 'Abid Ali', 'SEO ', '', '2022-04-01', '', '0', '12000', '12000', '', 'Self', 'your_site_name_fcf0fda7151a91d3b0a045f807e44894.jpg', 'active', '2022-06-27'),
(97, 'ET22-b5d8', 'Burhan Ali', '00', '2000-03-04', '0', 'Web Development ', '', '2022-04-17', '', '0', '12000', '12000', '', 'Self', 'your_site_name_060f7e8b11184c05b6c01990cc444505.jpg', 'active', '2022-06-27'),
(98, 'ET22-0ba7', 'Ahmad Shabir', '0', '2003-06-04', '0', 'Amazon VA', '', '2022-04-21', '', '0', '15000', '15000', '', 'Self', 'your_site_name_731eecc4a9c0d79da7ee63eb95409976.jpg', 'active', '2022-06-27'),
(99, 'ET22-8161', 'Saba Kosar', '0', '2002-04-06', '0', 'Amazon VA', '', '2022-04-28', '', '0', '15000', '15000', '', 'Kareem Sab', 'your_site_name_3de38e2d88eb413755977ca2e0b7aea8.jpg', 'active', '2022-06-27'),
(100, 'ET22-8372', 'Bilal Shakoor', '0', '2005-02-04', '0', 'MS Office', '', '2022-05-10', '', '0', '7500', '7500', '', 'Me ', 'your_site_name_e7339bc4a13a54c897719aa55ad33224.jpg', 'deactive', ''),
(101, 'ET22-b581', 'Atif Maqbool', '0', '2009-02-09', 'Maqbool Ahmad', 'MS Office', '', '2021-02-09', '', '03411449055', '0', '0', '', 'Me', 'your_site_name_661d151fbbc8bd5b56c9071bd95354e0.jpg', 'active', '2022-06-27'),
(102, 'ET22-6071', 'Rida Fatima', '3530311691892', '2003-02-14', 'M Akram', 'Graphic Designing', '', '2021-11-03', '', '0', '0', '0', '', 'Noman japa ny issue karwaya', 'your_site_name_8af702d008805a6bc8c9f96ea6dc44b5.jpg', 'deactive', ''),
(103, 'ET22-2071', 'Gulnaz', '0', '2002-07-05', '0', 'MS Office', '', '2022-05-18', '', '0', '7500', '7500', '', 'Self', 'your_site_name_3f93c7bbd71996085d9e43dcb74b4537.jpg', 'active', '2022-06-27'),
(104, 'ET22-7448', 'Kashif Maqbool', '0', '2007-09-09', 'Maqbool Ahmed', 'MS Office', '', '2021-03-09', '', '03411449055', '0', '0', '', 'Me', 'your_site_name_4256f9aff839f9022d07b58cba315a68.jpg', 'active', '2022-06-27'),
(105, 'ET22-b645', 'Sheryar Afzal', '0', '2005-12-04', 'M Afzal', 'MS Office', '', '2022-06-02', '', '0', '5000', '5000', '', 'me', 'your_site_name_c0c0f3111382e1cc16afe234afe9232f.jpg', 'active', '2022-06-27'),
(106, 'ET22-8bfe', 'Maryam Anjum', '3530365896742', '2003-08-29', 'Anjum Nisar', 'SEO ', '', '2022-06-20', '', '03450328329', '15000', '14000', '5000', 'ChK no 29 shergarh', 'your_site_name_ba058fafc3d237513fc475ea92219a81.jpg', 'active', '2022-06-27'),
(107, 'ET22-4deb', 'Abdullah M ali', '0', '2008-11-05', 'M Ali', 'MS Office', '', '2022-06-08', '', '03484065796', '3000', '6000', '1000', 'Kosaar bibi', 'your_site_name_00af59b753cb7a610ec1be41ecd2506e.jpg', 'active', '2022-06-27'),
(108, 'ET22-ddbf', 'Usman sarwar', '3610226665981', '2003-03-05', 'M Sarwar hussain', 'Web Development ', '', '2022-05-09', '', '03244679006', '0', '0', '9', 'Internship+Roon for rent      ', 'your_site_name_487ecf1afbb42c8a82372bc5b256c15c.jpg', 'active', '2022-06-27'),
(109, 'ET22-78cb', 'Murazza Liaqat', '0', '1998-06-05', 'Liaquat Ali', 'SEO ', '', '2022-05-30', '', '03085786540', '20000', '20000', '', 'Self', 'your_site_name_d7974b965bd4533769150171b6cb6647.jpg', 'active', '2022-06-27'),
(110, 'ET22-676c', 'Ahmad Ali', '0', '1996-11-04', 'M Iqbal', 'SEO ', '', '2022-05-31', '', '03068198284', '15000', '15000', '', '', 'your_site_name_9c12fd6a82bf41fe061a02fffa752565.jpg', 'deactive', ''),
(111, 'ET22-5d79', 'Gulam Murtaza', '3530262936181', '1998-01-16', 'M Yousaf', 'Graphic Designing', '', '2022-05-30', '', '03411492414', '10000', '10000', '', '', 'your_site_name_0aabe2b8cb36c7c7260daea74233a024.jpg', 'active', '2022-06-27'),
(112, 'ET22-881f', 'M Shahnawaz', '36303806761731', '2004-04-30', 'M Rafiq', 'MS Office', '', '2022-06-03', '', '03411528954', '9000', '9000', '', '', 'your_site_name_7fdf4ddf22e897faa5bc81bea60509ac.jpg', 'active', '2022-06-27'),
(113, 'ET22-a78e', 'Ali Hussain', '0', '2006-11-13', 'Nadeem Sardar', 'MS Office', '', '2022-05-30', '', '03037799911', '9000', '9000', '', '', 'your_site_name_02b06b19e8076704d3ca761f98de27f2.jpg', 'active', '2022-06-27'),
(114, 'ET22-c903', 'Waheed Ashraf', '3530357812433', '2002-05-14', 'M Ashraf', 'MS Office', '', '2021-11-02', '', '03020560025', '0', '0', '', 'Nomam jabha ne certificate issue krwaya', 'your_site_name_d55672b21940e793f1536394924f267e.jpg', 'deactive', ''),
(115, 'ET22-e7a0', 'M Kashan Asif', '4240112248645', '1999-08-22', 'Asif khurshid', 'Graphic Designing', '', '2022-06-07', '', '03002367354', '5000', '5000', '', 'Facebook and new mandi haroon colony habibabad', 'your_site_name_999b5571be3afd0c4d2f397cb0588f15.jpg', 'active', '2022-06-27'),
(116, 'ET22-6034', 'Suraj', '0', '2004-09-24', 'M Ashraf Nadeem', 'MS Office', '', '2022-06-02', '', '03110105353', '6000', '6000', '', 'Ahsan nesh usman park renala khurd ', 'your_site_name_3163786f30b13438a0c48c10b0ac7cc9.jpg', 'active', '2022-06-27'),
(117, 'ET22-27e6', 'Hamza Saleem', '3530255961885', '2002-03-01', 'M Saleem', 'Free intenship', 'Web Development', '2022-06-20', '2022-06-19', '03460437150', '0', '0', '0', 'Nazim Altaf         ', 'your_site_name_56efc3c42dd338db0cb6afb5342e7745.jpg', 'active', '2022-06-27'),
(118, 'ET22-1c48', 'Habib Ullah ', '3530387826307', '1999-03-03', 'M Saeed akhtar', 'Paid internship', '', '2022-06-07', '', '03038316853', '0', '0', '', 'Facebook', 'your_site_name_b30208ee46e628288213ba63e2e6504b.jpg', 'active', '2022-06-27'),
(119, 'ET22-4df0', 'Ch Nisar Ahmad', '3530341400333', '2002-10-26', 'M Yousaf', 'Digital Marketing', '', '2022-06-16', '', '03226430618', '15000', '15000', '5000', 'Fahd cf 23 chk', 'your_site_name_612bbac2ca2d9684d22ea2822ab01c53.jpg', 'active', '2022-06-27'),
(120, 'ET22-f69b', 'M Uzair', '353033020299', '2006-10-05', 'Abdul malik ch', 'MS Office', '', '2022-06-06', '', '03024174543', '7500', '7500', '', 'Asif modren computer', 'your_site_name_5b80dccbd79be5a274603bd880aabfd1.jpg', 'active', '2022-06-27'),
(121, 'ET22-d86d', 'Ubaid Ullah', '0', '2008-12-09', 'M Ali ', 'MS Office', '', '2022-06-08', '', '03484065796', '3000', '3000', '1000', 'Kosar bibi', 'your_site_name_9f01e26a2a93be0cc1db828681109121.jpg', 'active', '2022-06-27'),
(122, 'ET22-343e', 'Hafeez Urehman', '3530287098733', '1995-06-08', 'Asghar Ali', 'Amazon VA', '', '2022-06-20', '', '03465073943', '20000', '18000', '7', 'Mian irshad sab ', 'your_site_name_ba5121fcfab96fa4108401c90e237e4b.jpg', 'active', '2022-06-27'),
(123, 'ET22-4063', 'M Sajid Mehmood', '3510193579445', '1997-07-21', 'liaqat Ali', 'Web Development ', '', '2022-06-07', '', '03039035971', '15000', '15000', '', 'Facebook', 'your_site_name_41181e7fed1b2c345fee347211d8e9e9.jpg', 'deactive', '2022-06-24'),
(124, 'ET22-cb6a', 'Ali Rehman', '3530375563349', '2006-12-09', 'Abdul Rehman', 'MS Office', '', '2022-06-01', '', '03044892445', '5000', '5000', '', 'Afzal  Bhai Grid', 'your_site_name_b0cfe6905185744fc1a5b44283a2d89f.jpeg', 'active', '2022-06-27'),
(125, 'ET22-0917', 'Ahmad Raza', '0000000000', '2006-09-17', 'Muhammad Shafiq', 'MS Office', '', '2022-06-02', '', '03007952714', '10000', '10000', '', 'Chak No. 20/2L', 'your_site_name_18c7e9008bc0cbe4d33a80d4856ac049.jpeg', 'active', '2022-06-27'),
(126, 'ET22-5b07', 'Ahmar Mustafa', '00', '2006-01-28', 'Ghulam Mustafa', 'SEO ', '', '2022-06-14', '', '03444990531', '15000', '15000', '', 'Mubeen jappa studio', 'your_site_name_1929f87de178a6ec78589482e018d9f5.jpg', 'active', '2022-06-27'),
(127, 'ET22-6022', 'Talha Naeem', '00', '2008-11-01', 'M Naeem', 'MS Office', '', '2022-06-13', '', '03484065865', '7500', '7500', '', 'Hàmza saleem stu UET internee of android', 'your_site_name_823c31a4aa17c32f98fa690566ffaab9.jpg', 'active', '2022-06-27'),
(128, 'ET22-5d01', 'Saira Zafar', '0', '2006-11-08', 'M Zafar', 'MS Office', '', '2022-06-14', '', '03197113585', '7500', '', '', 'Hamad Stu ask 10 th ', 'your_site_name_a86aee6922d81d9118286ea1d8131e6e.jpg', 'active', '2022-06-27'),
(129, 'ET22-b61d', 'Sawera Irfan', '00', '2008-11-19', 'Irfan Ali', 'MS Office', '', '2022-06-14', '', '03186109103', '7500', '7500', '', 'Hammad Stu Ask 10th', 'your_site_name_d0928dc628003f36a87165b015980968.jpg', 'active', '2022-06-27'),
(130, 'ET22-da4d', 'Burhan Ahmad', '0', '2003-07-04', 'Abdul Razaq', 'MS Office', '', '2022-06-15', '', '03171720040', '7500', '7500', '', 'Sir Syed academy students', 'your_site_name_56f353607137c6cb1adf0d08f9213b09.jpg', 'active', '2022-06-27'),
(131, 'ET22-f86f', 'Sami Ullah ', '3530386758925', '2000-07-25', 'Abdul Razaq', 'Web Development ', '', '2022-06-15', '', '034467722059', '20000', '20000', '', 'Prof Rao Kashif Sab ', 'your_site_name_2af42e03b75869363f09fbd9685c9bed.jpg', 'active', '2022-06-27'),
(132, 'ET22-f7c1', 'M Arham', '0', '2006-04-09', 'M Arshad', 'SEO ', '', '2022-06-14', '', '03007539684', '18000', '18000', '', 'Self', 'your_site_name_fa5bfefe8732a277bc201320d832b4a7.jpg', 'active', '2022-06-27'),
(133, 'ET22-5be5', 'Ali Hamza', '3530359033335', '2002-01-01', 'Abdul Ghafar', 'Graphic Designing', '', '2022-06-14', '', '03126450130', '18000', '18000', '', 'Burhan Stu Web ', 'your_site_name_e42afea0a6b7574d41b9a56af5bd9eb4.jpg', 'active', '2022-06-27'),
(134, 'ET22-8b15', 'Awais Raza', '0', '2008-11-13', 'Farooq Ahmed', 'MS Office', '', '2022-06-01', '', '03030529680', '0', '0', '', 'Nimra Naz', 'your_site_name_a0268f487de1747b0c9be2d1e8889ea7.jpg', 'active', '2022-06-27'),
(140, 'ET22-ebe2', 'Muhammad Arslan', '3530318090313', '2000-06-15', 'Muhammad Arshad', 'MS Office', '', '2021-06-01', '', '030000000', '0', '0', '00000000', 'Jappa Digital Stuidio', 'your_site_name_27159a7231728666beb0c8595a2e1db6.jpeg', 'deactive', ''),
(141, 'ET22-c157', 'Haider Ali', '3530320598397', '2005-07-22', 'Momineen', 'SEO ', '', '2022-06-20', '', '03469666517', '20000', '20000', '7000', 'Tai niamat 31 chak', 'your_site_name_cfdff54497588ed0e7beb219c7c3d59a.jpg', 'active', '2022-06-27'),
(142, 'ET22-7e0d', 'Shakir Ali', '3530315599789', '1989-05-15', 'Allah ditta', 'SEO ', '', '2022-06-20', '', '03434934934', '20000', '20000', '7000', 'Tai niamat chk no 31 ', 'your_site_name_dec456e60233dd45c857b9e17da80d78.jpg', 'active', '2022-06-27'),
(143, 'ET22-14d8', 'Amir Ali', '3530134775579', '2006-05-01', 'M Yaseen', 'SEO ', '', '2022-06-20', '', '03049581917', '20000', '20000', '7000', 'Tai niamat chk 31', 'your_site_name_7435ccd125b93acfd57a612b0c96bbca.jpg', 'active', '2022-06-27'),
(144, 'ET22-2214', 'M Saqlain Noor', '3530193280519', '2002-09-26', 'Nazir Ahmad', 'Amazon VA', '', '2022-06-20', '', '03465584919', '25000', '25000', '8000', 'Chk no 19/1R tesil and dist okara self', 'your_site_name_eb814b4290ac9b8a79fdf1665a745e9a.jpg', 'active', '2022-06-27'),
(145, 'ET22-89bb', 'Shahzad Yousaf', '0', '2004-05-20', 'M Yousaf', 'SEO ', '', '2022-06-20', '', '03238770295', '18000', '18000', '6000', 'Me', 'your_site_name_a2846434553ca92114fc68d57ac1e599.jpg', 'active', '2022-06-27'),
(146, 'ET22-12c1', 'Ateeq Ur rehman', '3530399514097', '2003-03-15', 'M Rafique', 'Android/IOS App', '', '2022-06-22', '', '03116506883', '15000', '15000', '3000', 'Uzair stu Ms', 'your_site_name_5e2de79a1e748080a208661ec0c994d0.jpg', 'active', '2022-06-27'),
(147, 'ET22-96bd', 'Burhan Ali', '00', '2008-05-24', 'Abid Ali', 'Graphic Designing', '', '2022-06-21', '', '0', '15000', '15000', '4000', 'Shaikh waleed', 'your_site_name_3441c80b0de40703d42199a643c8770c.jpg', 'active', '2022-06-27'),
(148, 'ET22-6c45', 'Zeeshan Shoukat', '3530243811051', '1999-06-06', 'Shoukat Ali', 'Graphic Designing', '', '2022-06-17', '', '03072593620', '10000', '10000', '3300', 'Me', 'your_site_name_d6ae17259bc3d449a1085f85eff3c7e4.jpg', 'active', '2022-06-27'),
(149, 'ET22-4a46', 'Farhan Ashraf', '3530298867969', '2004-12-23', 'M Ashraf', 'SEO ', '', '2022-06-23', '', '03414762500', '18000', '18000', '6000', 'Hafeez urehman sab alrehman school', 'your_site_name_20dfb89f58539b729eff17b2d194d882.jpg', 'active', '2022-06-27'),
(150, 'ET22-bfb9', 'M Ramzan', '3530343242003', '1997-10-18', 'Mumtaz Ahmad', 'SEO ', '', '2022-06-24', '', '03059928905', '20000', '20000', '7000', 'Zeeshan stu SEO 1chk', 'your_site_name_ce27debbafe7fabca91ba21ace91a3b5.jpg', 'active', '2022-06-27'),
(151, 'ET22-845a', 'Ahmad Hassan', '00', '2004-05-28', 'Ali Hassan', 'MS Office', '', '2022-06-21', '', '03226824649', '7500', '7500', '2500', 'Adeel mehr stu 7 chk ', 'your_site_name_02d8827a184e5245334332b8d6c4e88b.jpg', 'active', '2022-06-27');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `position` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `position`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin', 'admin'),
(11, 'Shahid Anwar', 'admin', 'shahid', '1234'),
(12, 'Usman Sarwar', 'admin', 'usman', 'sarwar');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` int(200) NOT NULL,
  `roll_no` varchar(200) NOT NULL,
  `voucher_no` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `fee` varchar(200) NOT NULL,
  `paying_fee` varchar(200) NOT NULL,
  `m_fee` varchar(200) NOT NULL,
  `month` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `roll_no`, `voucher_no`, `name`, `class`, `fee`, `paying_fee`, `m_fee`, `month`, `date`) VALUES
(1, '108', '2022-06-108', 'Usman sarwar', 'Web Development ', '0', '9', '0', '2022-06', '2022-06-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `come_time`
--
ALTER TABLE `come_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expensive`
--
ALTER TABLE `expensive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `head`
--
ALTER TABLE `head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `come_time`
--
ALTER TABLE `come_time`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expensive`
--
ALTER TABLE `expensive`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `head`
--
ALTER TABLE `head`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `sr` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
