-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 20, 2022 at 05:23 PM
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
(16, 'Paid internship');

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
  `name` varchar(50) NOT NULL,
  `voucher_no` varchar(200) NOT NULL,
  `class` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `course_fee` int(50) NOT NULL,
  `ballance` int(50) NOT NULL,
  `paying_fee` int(50) NOT NULL,
  `remark` varchar(50) NOT NULL
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
  `remark` varchar(50) NOT NULL
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
(1, 'ET22-0802', 'Jawad Abbas', '3530275376377', '2005-06-05', 'M Abbas ', 'SEO ', '', '2021-06-22', '', '03481764268', '0', '0', '', 'me       ', 'your_site_name_ef6849ad62623d4912b410072d637038.jpg', 'active', '2022-06-19'),
(2, 'ET22-1c6b', 'Fiaz Ali', '000000', '2000-10-04', 'Ali', 'SEO ', '', '2021-10-04', '', '03033981272', '15000', '15000', '', 'Khalid sab', 'your_site_name_6d10b80c6d8a9f5906c605a2ffa8546f.jpg', 'active', '2022-06-19'),
(3, 'ET22-642e', 'Junaid Javed', '4838239291992', '2005-05-02', 'Javed', 'SEO ', '', '2021-06-26', '', '03080089164', '20000', '20000', '', 'Javed teacher friend', 'your_site_name_d0ebc41a1b5205095d61d903cee58262.jpg', 'active', '2022-06-19'),
(4, 'ET22-070a', 'Umair Ali', '261718398393', '2022-06-03', 'M Arshad', 'SEO ', '', '2021-07-17', '', '03084405729', '18000', '18000', '', 'master bashir chak no 18 ', 'your_site_name_8c02063b9ebc1228b27bc2599d758351.jpg', 'active', '2022-06-19'),
(5, 'ET22-7c98', 'Ali Hamza', '3530304911987', '1999-12-04', 'M Sharif', 'SEO ', '', '2021-07-24', '', '030689962893', '18000', '18000', '', 'ABC', 'your_site_name_5651df0d5f8b42d677afa238a3498cab.jpg', 'active', '2022-06-19'),
(6, 'ET22-f92f', 'Imran Chacho', '00', '2022-06-03', 'Chacho', 'Web Development ', '', '2021-08-02', '', '00', '10000', '', '', 'ABC  ', 'your_site_name_a775a081f07650cf09c89bf810eb1045.jpg', 'active', ''),
(7, 'ET22-56ff', 'Rehan ', '00', '2022-06-03', 'Arif Ullah', 'SEO ', '', '2021-08-11', '', '03077030942', '13000', '13000', '', 'ABC', 'your_site_name_fa6b39338ae0c361032ae5de7f5578c0.jpg', 'active', '2022-06-19'),
(8, 'ET22-ab16', 'Zeeshan', '00', '2022-06-03', '0', 'Web Development ', '', '2021-06-28', '', '03176435035', '9000', '9000', '', 'ABC', 'your_site_name_f119be136263f4bba99f12fa5cba42bf.jpg', 'active', ''),
(9, 'ET22-9126', 'Raheel Akram', '00', '2022-06-03', 'M Akram', 'SEO ', '', '2021-08-08', '', '03494820756', '18000', '18000', '', 'ABC', 'your_site_name_1d3f2d15a358aecc4343e00d0322014a.jpg', 'active', '2022-06-19'),
(10, 'ET22-1148', 'Fatima Malik', '00', '1998-05-13', 'Malik Waseem', 'SEO ', '', '2021-08-06', '', '03212722746', '18000', '18000', '', 'ABC', 'your_site_name_e97440402cf9a14c456e5b03bb6ff238.jpg', 'active', '2022-06-19'),
(11, 'ET22-bafc', 'Hamza Rafiq', '00', '2022-06-03', 'M Rafiq', 'SEO ', '', '2021-08-11', '', '03064146123', '15000', '15000', '', 'Master bashir\r\n', 'your_site_name_5c3749370a9b2cd5671715d2ff33b01c.jpg', 'active', '2022-06-19'),
(12, 'ET22-abbe', 'Nadeem boota', '00', '2000-12-04', 'M Boota', 'SEO ', '', '2021-08-16', '', '03424211551', '15000', '15000', '', 'Me', 'your_site_name_f49fc039497de0c98f5cad3fd533ba13.jpg', 'active', ''),
(13, 'ET22-e9be', 'Talha Asif', '00', '2004-02-23', 'M Asif', 'SEO ', '', '2021-08-16', '', '03090323729', '10000', '10000', '', 'Zain boota', 'your_site_name_6264670fa17bc3c2fc6595f27f1817f6.jpg', 'active', ''),
(14, 'ET22-72cf', 'Adeel Jameel', '00', '2005-04-27', 'M Jameel', 'SEO ', '', '2021-08-16', '', '03494843788', '4000', '4000', '', 'me', 'your_site_name_c2acca2e4e8c758530d1fb444777b850.jpg', 'active', ''),
(15, 'ET22-bdf3', 'zain ul abdin', '00', '2001-12-31', 'M Boota ', 'SEO ', '', '2021-09-16', '', '03088186680', '18000', '18000', '', 'Me ', 'your_site_name_2eca7ae02b02ec47c8f29279b772d33d.jpg', 'active', ''),
(16, 'ET22-bc46', 'Sami ur Rehman', '00', '2002-11-28', '00', 'SEO ', '', '2021-08-20', '', '03441260302', '5000', '5000', '', 'Nadeem Boota ', 'your_site_name_374444f49e7d7ab1594afa35e3ee23c1.jpg', 'active', ''),
(17, 'ET22-fbc5', 'Talha Sajjad', '00', '2000-02-23', 'M Sajjad', 'SEO ', '', '2000-02-03', '', '03156676924', '9000', '', '', 'Dawood    ', 'your_site_name_1be55996d94e3f133058c30e47d645b9.jpg', 'active', ''),
(18, 'ET22-07ba', 'Rehman ', '00', '2001-07-02', 'M Razzaq', 'MS Office', '', '2021-08-23', '', '03016317327', '4000', '4000', '', 'Me', 'your_site_name_97f4c75fa56046caed435dc32fbbf48c.jpg', 'active', ''),
(19, 'ET22-e639', 'Ahtisham', '00', '2002-04-03', 'Razaq', 'Web Development ', '', '2021-08-27', '', '03039637670', '4000', '4000', '', 'Dawood', 'your_site_name_78cbc3189339c8669f5237d7e37d8aad.jpg', 'active', ''),
(20, 'ET22-69cb', 'Ahmad Hassan', '00', '2002-05-03', 'Ashraf ali', 'Digital Marketing', '', '2021-08-09', '', '03424837080', '5000', '5000', '', 'Me', 'your_site_name_30969cfe5aea74d904de34197ecca6fb.jpg', 'active', ''),
(21, 'ET22-826f', 'Zain Iqbal', '00', '2005-08-03', 'Babar Ali', 'SEO ', '', '2021-09-09', '', '03211135608', '10000', '10000', '', 'Fahad cf', 'your_site_name_58c32409d5a68d880e4d1d5180656dc7.jpg', 'active', ''),
(22, 'ET22-fc2b', 'Fiza Muzamil', '00', '2002-07-05', 'Muzamil Raza', 'SEO ', '', '2021-09-04', '', '03077537940', '18000', '18000', '', 'Me', 'your_site_name_98a772b6516c62782ef192540087199f.jpg', 'active', ''),
(23, 'ET22-2bfb', 'Muaz Muzamil', '00', '2022-11-11', 'Muzamil Raza', 'SEO ', '', '2021-09-04', '', '03077537940', '18000', '18000', '', 'Me ', 'your_site_name_44d3d910227b062d88e2e826f6953aa9.jpg', 'active', ''),
(24, 'ET22-5a11', 'Mubashir ayoub', '00', '2000-01-01', 'M Ayoub', 'Digital Marketing', '', '2021-09-09', '', '00', '0', '0', '', 'Ahmad hassan digital marketing', 'your_site_name_ca32f5fc8dfb339e346063cb98716b71.jpg', 'active', ''),
(25, 'ET22-7d62', 'M Abdullah ', '00', '2002-03-09', 'M Saqib', 'Amazon VA', '', '2021-08-28', '', '03174437539', '5500', '5500', '', 'Ahmad hassan digital marketing', 'your_site_name_6ced5bfc3519d71c5c51eb08ae3a7aa1.jpg', 'active', '2022-06-20'),
(26, 'ET22-19a7', 'Asif ', '00', '2000-12-23', '00', 'SEO ', '', '2021-09-21', '', '03431582798', '8000', '8000', '', 'khalid sab', 'your_site_name_6d10712bf0dd0dd6117b72dd2666102d.jpg', 'active', ''),
(27, 'ET22-41d6', 'Nadia Iqbal', '00', '2002-02-03', 'M Iqbal', 'SEO ', '', '2021-09-22', '', '03039376521', '18000', '18000', '', 'fiza stu seo', 'your_site_name_ebf24b01cf3c946454b9577c26b0af3f.jpg', 'active', ''),
(28, 'ET22-c97d', 'Umaiza Younas', '00', '2002-11-11', 'M Younas ', 'SEO ', '', '2021-11-22', '', '03416171975', '0', '0', '', 'safai karwai chonj sy', 'your_site_name_d4c6f4f81996687b9019a80d291c95cb.jpg', 'active', ''),
(29, 'ET22-770f', 'Faisal adil ', '00', '2000-12-23', 'Zulfiqar Ali', 'SEO ', '', '2021-12-09', '', '03176046413', '6000', '6000', '', 'darmayan mai chor gaya ', 'your_site_name_c7709a2aac8aaccd99eef74ae16ba9d3.jpg', 'active', ''),
(30, 'ET22-73f9', 'Najma ', '00', '2021-03-02', '00', 'MS Office', '', '2021-09-24', '', '03090127311', '3000', '3000', '', 'Rao Kashif sab', 'your_site_name_bcdc4e89334852f62a217a120799cfc0.jpg', 'active', ''),
(31, 'ET22-abc3', 'Nimra Naz', '3530358544406', '2000-09-16', 'Farooq ahmed', 'Graphic Designing', '', '2021-09-29', '', '03230184160', '6000', '6000', '', 'Me', 'your_site_name_490bae8c2dff8ece1b64adfc64f4bc3c.jpg', 'active', ''),
(32, 'ET22-be3d', 'Yasmeen ', '00', '2000-11-11', '00', 'SEO ', '', '2021-10-03', '', '03180646397', '7000', '7000', '', 'Me', 'your_site_name_2df310b251943dea942645a776cb2a1a.jpg', 'active', ''),
(33, 'ET22-4892', 'Adeel ', '00', '2002-11-11', '00', 'SEO ', '', '2002-09-20', '', '03010923856', '10000', '10000', '', 'Dawood', 'your_site_name_c041fd2999a977167972d7733db42e3c.jpg', 'active', ''),
(34, 'ET22-8eb2', 'Zain Rasheed', '00', '2004-07-17', 'Abdul Rasheed', 'MS Office', '', '2021-11-01', '', '03482057230', '6000', '6000', '', 'Mazhar digital 2 chk', 'your_site_name_ea063a8c7c86c13bb0ff43da3e0b0253.jpg', 'active', ''),
(35, 'ET22-946d', 'Khalid Manzoor', '00', '2003-07-16', 'Manzoor Ahmad', 'Web Development ', '', '2021-11-02', '', '03014183915', '15000', '15000', '', 'Hassan Jutt usman park', 'your_site_name_1fab5adb2b5c0d13fcebdbca84e6359a.jpg', 'active', ''),
(36, 'ET22-c84c', 'Ali Raza ', '00', '1999-10-06', 'M Ashraf', 'Web Development ', '', '2021-11-02', '', '03457506990', '15000', '15000', '', 'Hassan Jutt usman park', 'your_site_name_3be6bb603902c5e4c7ff7532b8a35ce5.jpg', 'active', ''),
(37, 'ET22-e093', 'Iqra Anum', '00', '1997-03-27', 'Nadeem Sardar', 'Digital Marketing', '', '2021-11-08', '', '03014154086', '20000', '20000', '', '', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'active', ''),
(38, 'ET22-0022', 'Sohail Matloob', '00', '2004-04-03', 'Matloob Hussain', 'SEO', '', '2021-11-21', '', '03016311889', '15000', '15000', '', '', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'active', ''),
(39, 'ET22-dfdc', 'Saim Ali', '0000', '2003-05-04', 'M Ghaffar', 'SEO ', '', '2022-05-26', '', '03414665982', '15000', '15000', '', '', 'your_site_name_c2fe35b086594bfabfca43518fb7273b.jpg', 'active', ''),
(40, 'ET22-0a1d', 'zaman Rehmat', '00000000000', '1999-08-07', '', 'SEO ', '', '2021-11-21', '', '', '30000', '30000', '', '', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'active', ''),
(41, 'ET22-95d8', 'Behram Shah', '', '2003-08-14', '', 'SEO', '', '2022-01-21', '', '0', '5900', '5900', '', '', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'active', ''),
(42, 'ET22-4726', 'Athesham Ul Haq', '0', '1997-02-24', '', 'Web Development', '', '2021-11-21', '', '0', '2000', '2000', '', '', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'active', ''),
(43, 'ET22-df72', 'Javad', '0', '2003-03-05', '', 'SEO', '', '2021-11-21', '', '0', '0', '0', '', ' ', 'your_site_name_4a4d401529b17fd9fbf649e05e66b068.jpg', 'active', ''),
(44, 'ET22-66fa', 'Kazeem', '0000000', '2022-06-04', '-', 'Graphic Designing\n', '', '2021-11-15', '', '0', '12000', '12000', '', '', 'your_site_name_b04274c45ca032845f2240ea3a09612b.jpg', 'active', ''),
(45, 'ET22-6124', 'Wajid Ali', '000', '2009-07-01', '', 'Web Development', '', '2021-11-21', '', '0', '0', '0', '', '', 'your_site_name_4b07815b4c183f99cba1330f7fd851c3.jpg', 'active', ''),
(46, 'ET22-db74', 'Ashfaq', '00', '1993-10-26', '.', 'SEO', '', '2021-11-21', '', '0', '0', '0', '', '', 'your_site_name_278728f4f18ce693becd4618e34cccf1.jpg', 'active', ''),
(47, 'ET22-e6b5', 'Ubaidullah', '0', '2022-06-04', '.', 'MS Office', '', '2021-12-23', '', '0', '0', '0', '', '', 'your_site_name_e6c342fe53f2ac3c2497898050a8253c.jpg', 'active', ''),
(48, 'ET22-ba07', 'Azemm', '0', '2022-06-04', '.', 'Digital Marketing', '', '2021-11-05', '', '0', '0', '0', '', '', 'your_site_name_9162c010ba8c7c5632ea936de9e13c6d.jpg', 'active', ''),
(49, 'ET22-b6c9', 'Iqra Shiree', '0', '2022-06-04', '.', 'MS Office', '', '2021-12-07', '', '0', '0', '0', '', '', 'your_site_name_4c9efd0557cbd27f73e7cd0cdb6d38fa.jpg', 'active', ''),
(50, 'ET22-235b', 'Ali Khalid', '0', '2022-06-04', 'Khalid', 'SEO ', '', '2021-12-15', '', '0', '0', '0', '', '', 'your_site_name_128a8f291f3f35cbd603ccd0b8dc50bd.jpg', 'active', ''),
(51, 'ET22-e9d8', 'Abuhuraira', '0', '2002-04-28', 'Liaqat Ali', 'SEO ', '', '2022-02-02', '', '03064766328', '18000', '18000', '', '', 'your_site_name_780a4dafcf453306378bcc0b68937fc8.jpg', 'active', ''),
(52, 'ET22-ff81', 'Muqadas Iqbal', '0', '2022-06-04', 'M Iqbal', 'MS Office', '', '2021-12-09', '', '03057948969', '3000', '', '', '                              ', 'your_site_name_4999945d65cbd6c1428334c99b8d35f0.jpg', 'active', ''),
(53, 'ET22-2f3c', 'Usman Anwar', '0', '2022-06-04', '.', 'SEO ', '', '2022-02-02', '', '0', '0', '0', '', '', 'your_site_name_00d27fb743e07254a49134cb99ece1f3.jpg', 'active', ''),
(54, 'ET22-fe05', 'Abdullah Sadique', '0', '1997-11-22', 'M Sidique', 'SEO ', '', '2021-12-15', '', '0309794186', '15000', '15000', '', '', 'your_site_name_8aa309e3ef073f92cff6ef29fa11276c.jpg', 'active', ''),
(55, 'ET22-a42c', 'Zain Ali', '3530397816941', '2022-06-04', 'Abdul Qadir', 'Amazon VA', '', '2022-06-03', '', '03334634439', '25000', '25000', '', '', 'your_site_name_b05487362d1710cce8e3108f986f7b7b.jpg', 'active', '2022-06-20'),
(56, 'ET22-4c8c', 'Tayyab Majeed', '0', '1994-07-19', 'Sheikh Majeed', 'SEO ', '', '2022-01-28', '', '03431118011', '10000', '10000', '', '', 'your_site_name_b47a341ff634fa0c232008ac2868d6a5.jpg', 'active', ''),
(57, 'ET22-f726', 'M Noman Ramzan', '0', '2004-02-11', 'M Ramzan', 'SEO ', '', '2022-01-23', '', '03462195403', '15000', '15000', '', '', 'your_site_name_c78072a2eda6392d85e56b4e59ca305f.jpg', 'active', ''),
(58, 'ET22-6202', 'Hafiz Saad', '0', '2001-02-11', 'Abdul Ghafoor', 'SEO ', '', '2022-01-27', '', '03458921697', '1500', '1500', '', '', 'your_site_name_7fbad17a2f0ca98cdcfab76109129e5b.jpg', 'active', ''),
(59, 'ET22-2e8b', 'Muhammad Tariq', '0', '2002-12-28', 'Allah Ditta', 'SEO ', '', '2022-01-20', '', '03420408662', '15000', '15000', '', '', 'your_site_name_36c9dac92b46ddac9358b62a0c51bc33.jpg', 'active', ''),
(60, 'ET22-4d14', 'Fazeelat', '0', '2011-06-04', '.', 'MS Office', '', '2022-02-02', '', '0', '6000', '6000', '', '', 'your_site_name_36c9dac92b46ddac9358b62a0c51bc33.jpg', 'active', ''),
(61, 'ET22-e11e', 'Gulam Rasool', '0', '2003-11-16', 'M Ashraf', 'MS Office', '', '2022-01-12', '', '03467234345', '23000', '23000', '', '', 'your_site_name_0862040b3cd0f6bb731267768604bd12.jpg', 'active', ''),
(62, 'ET22-1665', 'Javeria', '0', '2004-01-09', 'M Younas Tahir', 'MS Office', '', '2022-01-17', '', '03151645568', '15000', '15000', '', '', 'your_site_name_0d916ff97ab0cb1c1f226c69c7dc643c.jpg', 'active', ''),
(63, 'ET22-2d98', 'Zain Rukhsar', '0', '2003-06-04', 'Rukhsar Ahmad', 'MS Office', '', '2022-01-25', '', '03432890288', '5000', '5000', '', '', 'your_site_name_f6259cafde67bcc83a82912a539182b9.jpg', 'active', ''),
(64, 'ET22-0a6c', 'M Qasim Saeed', '0', '1996-06-04', 'M Saeed', 'MS Office', '', '2022-01-31', '', '03470277717', '6000', '6000', '', '', 'your_site_name_e6b68ae3cea15b18caa989f312438be0.jpg', 'active', ''),
(65, 'ET22-2dc5', 'Maria Abid', '0', '2001-11-16', 'Abid Mahmood', 'SEO ', '', '2022-02-01', '', '03236409677', '15000', '15000', '', '', 'your_site_name_7e79f859945ead7d778fba01982e3118.jpg', 'active', ''),
(66, 'ET22-a490', 'Asim jahangir', '0', '1981-06-04', '.', 'MS Office', '', '2022-01-06', '', '0', '6000', '6000', '', '', 'your_site_name_c3d377fc7943b85d6c679c9fd7222383.jpg', 'active', ''),
(67, 'ET22-844b', 'Muhammad Umer Ashraf', '0', '2002-06-14', 'Muhammad Ashraf', 'SEO ', '', '2021-12-14', '', '03187917332', '15000', '15000', '', '', 'your_site_name_acdfcbd7a37ab3d80e67fb98ffa5aa9a.jpg', 'active', ''),
(68, 'ET22-52d4', 'Shehnila Khizar', '0', '2002-03-14', 'Khizer Iqbal', 'MS Office', '', '2022-02-11', '', '03213253061', '5000', '5000', '', '', 'your_site_name_bb801c67d0898fc71f79e9b18df2bad5.jpg', 'active', ''),
(69, 'ET22-4fc1', 'Sawera Javed', '0', '2000-06-04', '.', 'MS Office', '', '2022-02-11', '', '0308379988', '5000', '5000', '', '', 'your_site_name_0a09b0e32d02fd15e4e4eeedea287150.jpg', 'active', ''),
(70, 'ET22-4d59', 'Muhammad Tayyab Hussain', '0', '1997-06-04', 'Muhammad Hussain', 'Graphic Designing', '', '2021-07-02', '', '0', '0', '0', '', '', 'your_site_name_165c7cc37dcc12914cac7c49b3d8b145.jpg', 'active', ''),
(71, 'ET22-8cdc', 'Ahmad Faraz', '0', '2001-12-17', 'Badar e Azam', 'MS Office', '', '2021-11-10', '', '0345743584', '0', '0', '', '', 'your_site_name_2d713d30d4321f9a39106ed214eef45c.jpg', 'active', ''),
(72, 'ET22-6b69', 'Zahid Iqbal', '0', '2001-06-04', '.', 'MS Office', '', '2022-02-22', '', '0', '4500', '4500', '', '', 'your_site_name_b98d744edfe1cbb21cfe96fc408adda0.jpg', 'active', ''),
(73, 'ET22-e935', 'Raheela', '0', '2004-06-04', '.', 'MS Office', '', '2022-02-02', '', '0', '6000', '6000', '', '', 'your_site_name_c82033e9c447075c8e105c0b3ec67d69.jpg', 'active', ''),
(74, 'ET22-daa3', 'Muhammad Shahid Rasheed', '0', '2002-06-04', 'Abdul Rasheed', 'MS Office', '', '2022-02-10', '', '0341356412', '0', '0', '', '', 'your_site_name_d9a0023f4c2a28a984cd977da5bdd86d.jpg', 'active', ''),
(75, 'ET22-aac5', 'M Sufyan', '0', '2005-06-04', 'Naeem Iqbal', 'MS Office', '', '2022-02-10', '', '0', '4500', '4500', '', '', 'your_site_name_ec03e373adfcf9d214ba9af67d88ff1b.jpg', 'active', ''),
(76, 'ET22-aac5', 'M Ameer Bhutta', '0', '2005-06-04', 'M Hanif', 'MS Office', '', '2022-02-12', '', '0', '6000', '6000', '', '', 'your_site_name_87eaf5039f9f3f6d28da2849c59a6326.jpg', 'active', ''),
(77, 'ET22-7584', 'Raza Rehman', '0', '1999-01-08', 'Barkat Ali', 'SEO ', '', '2022-02-15', '', '03064112917', '5000', '', '', ' Hujra shah muqeem', 'your_site_name_aa2d07ca1bfd31c8a995546f4eff3c3b.jpg', 'active', ''),
(78, 'ET22-9999', 'M Adnan', '0', '2001-12-14', 'M Usama', 'SEO ', '', '2022-02-15', '', '030902999480', '15000', '15000', '', '', 'your_site_name_dc3ff2a661d0beaa864a6cfcb9c6f482.jpg', 'active', ''),
(79, 'ET22-70e5', 'M Rizwan', '0', '2001-10-01', 'M Akram', 'SEO ', '', '2022-02-15', '', '03024018424', '15000', '15000', '', '', 'your_site_name_204fd3ac995853894fc5c23b363bf0dc.jpg', 'active', ''),
(80, 'ET22-eb54', 'M Muhtab', '0', '2001-10-27', 'M Farman Ali', 'SEO ', '', '2022-02-15', '', '03499007489', '15000', '15000', '', '', 'your_site_name_b4e815dc307a105016bdc712cce9b121.jpg', 'active', ''),
(81, 'ET22-e934', 'Hammad Tariq', '00', '2002-04-07', 'M Tariq', 'SEO ', '', '2022-02-20', '', '03457493387', '16500', '16500', '', 'Me', 'your_site_name_adc4cd127cc17916cd38ccfa602938ad.jpg', 'active', ''),
(82, 'ET22-238f', 'Alam shair', '00', '2004-06-16', 'Amanat Ali', 'Graphic Designing', '', '2022-02-23', '', '03126094213', '4000', '4000', '', 'Me', 'your_site_name_90ffc89c745002f451eedc26dd2f3cdf.jpg', 'active', ''),
(83, 'ET22-eee0', 'Asim Rafique', '00', '1999-01-01', 'M Rafique', 'SEO ', '', '2022-03-02', '', '03166683319', '18000', '18000', '', 'Me', 'your_site_name_924b49602ec6e35ee4b2fb96b42da3a1.jpg', 'active', ''),
(84, 'ET22-06c7', 'Sheraz ahmed', '00', '2001-06-20', 'M Shafi', 'SEO ', '', '2022-03-02', '', '03085280947', '16500', '16500', '', 'Asim cf 12', 'your_site_name_a4b3d3a9b542d2bff67613b4de8e7203.jpg', 'active', ''),
(85, 'ET22-cd95', 'Zareena Abdullah', '0', '1970-12-03', 'Zahid Javed Zain', 'SEO ', '', '2022-03-14', '', '0', '10000', '10000', '', 'me', 'your_site_name_503d0c799abedeeba40357e13c43d906.jpg', 'active', ''),
(86, 'ET22-337e', 'Hamid raza', '0', '2000-12-31', 'Zain Raza', 'SEO ', '', '2022-03-14', '', '0', '10000', '10000', '', 'Me', 'your_site_name_c167889382099554454cecfa2a90f4d7.jpg', 'active', ''),
(87, 'ET22-2113', 'Sumaira Bano', '00', '1992-03-22', 'Taj din', 'SEO ', '', '2022-03-14', '', '0', '5000', '5000', '', '21 chk', 'your_site_name_684ee8949c8e04c32d7a3ab8868c0209.jpg', 'active', ''),
(88, 'ET22-5d51', 'Mujahid Abbas', '00', '2000-12-31', 'M Abbas', 'Graphic Designing', '', '2022-03-14', '', '0', '0', '0', '', 'Noman japa ny isuue karwaya', 'your_site_name_525b454a4fa5b51d1dc75269e5bc8cbe.jpg', 'active', ''),
(89, 'ET22-088c', 'M Zeeshan ', '00', '2002-02-22', '0', 'SEO ', '', '2022-03-15', '', '0', '1500', '1500', '', 'chk no 1 /1R lada lay k aya', 'your_site_name_7db381c57aaaf309ac53c22ff982fe45.jpg', 'active', ''),
(90, 'ET22-a0b5', 'Moiz Anwar ', '00', '2004-03-22', '0', 'MS Office', '', '2022-03-15', '', '0', '2000', '2000', '', 'chk no 2 /1l', 'your_site_name_fb50886ccb8f04859ce1619535806a56.jpg', 'active', ''),
(91, 'ET22-e123', 'M Awais ali', '0', '2002-12-26', 'M Nawaz', 'MS Office', '', '2022-03-21', '', '03106047191', '6000', '6000', '', 'Rehman stu ms miltry', 'your_site_name_c61e4dd252b0ac58e0277e91daff71f8.jpg', 'active', ''),
(92, 'ET22-5be8', 'Noman Farooq', '00', '2000-12-31', 'M Farooq', 'SEO ', '', '2022-03-02', '', '0', '16000', '16000', '', 'usman food garden', 'your_site_name_c7ec35d67a13ff3b7ff8cdcce51e0e57.jpg', 'active', ''),
(93, 'ET22-2be0', 'M Rehman', '00', '2000-02-13', '0', 'MS Office', '', '2022-03-02', '', '0', '6000', '6000', '', 'Farhad cf 8 th', 'your_site_name_3c475fa45211a97f4350a3747e598b0e.jpg', 'active', ''),
(94, 'ET22-0869', 'Muniba Shahid', '0', '2003-05-04', 'Shahid', 'MS Office', '', '2022-04-05', '', '0', '290000', '290000', '', 'Self', 'your_site_name_cb0ab155d67fc83ade29095eaaf5b115.jpg', 'active', ''),
(95, 'ET22-3674', 'Arslan Farooq', '00', '2004-12-14', 'Farooq Ahmed', 'MS Office', '', '2021-11-02', '', '03187109040', '0', '0', '', 'Nimra Farooq', 'your_site_name_bb09a4e696a3e9356b28559c9aa36984.jpg', 'active', ''),
(96, 'ET22-d9c4', 'Waleed Abid', '00', '2005-03-04', 'Abid Ali', 'SEO ', '', '2022-04-01', '', '0', '12000', '12000', '', 'Self', 'your_site_name_fcf0fda7151a91d3b0a045f807e44894.jpg', 'active', ''),
(97, 'ET22-b5d8', 'Burhan Ali', '00', '2000-03-04', '0', 'Web Development ', '', '2022-04-17', '', '0', '12000', '12000', '', 'Self', 'your_site_name_060f7e8b11184c05b6c01990cc444505.jpg', 'active', ''),
(98, 'ET22-0ba7', 'Ahmad Shabir', '0', '2003-06-04', '0', 'Amazon VA', '', '2022-04-21', '', '0', '15000', '15000', '', 'Self', 'your_site_name_731eecc4a9c0d79da7ee63eb95409976.jpg', 'active', '2022-06-20'),
(99, 'ET22-8161', 'Saba Kosar', '0', '2002-04-06', '0', 'Amazon VA', '', '2022-04-28', '', '0', '15000', '15000', '', 'Kareem Sab', 'your_site_name_3de38e2d88eb413755977ca2e0b7aea8.jpg', 'active', '2022-06-20'),
(100, 'ET22-8372', 'Bilal Shakoor', '0', '2005-02-04', '0', 'MS Office', '', '2022-05-10', '', '0', '7500', '7500', '', 'Me ', 'your_site_name_e7339bc4a13a54c897719aa55ad33224.jpg', 'active', ''),
(101, 'ET22-b581', 'Atif Maqbool', '0', '2009-02-09', 'Maqbool Ahmad', 'MS Office', '', '2021-02-09', '', '03411449055', '0', '0', '', 'Me', 'your_site_name_661d151fbbc8bd5b56c9071bd95354e0.jpg', 'active', ''),
(102, 'ET22-6071', 'Rida Fatima', '3530311691892', '2003-02-14', 'M Akram', 'Graphic Designing', '', '2021-11-03', '', '0', '0', '0', '', 'Noman japa ny issue karwaya', 'your_site_name_8af702d008805a6bc8c9f96ea6dc44b5.jpg', 'active', ''),
(103, 'ET22-2071', 'Gulnaz', '0', '2002-07-05', '0', 'MS Office', '', '2022-05-18', '', '0', '7500', '7500', '', 'Self', 'your_site_name_3f93c7bbd71996085d9e43dcb74b4537.jpg', 'active', ''),
(104, 'ET22-7448', 'Kashif Maqbool', '0', '2007-09-09', 'Maqbool Ahmed', 'MS Office', '', '2021-03-09', '', '03411449055', '0', '0', '', 'Me', 'your_site_name_4256f9aff839f9022d07b58cba315a68.jpg', 'active', ''),
(105, 'ET22-b645', 'Sheryar Afzal', '0', '2005-12-04', 'M Afzal', 'MS Office', '', '2022-06-02', '', '0', '5000', '5000', '', 'me', 'your_site_name_c0c0f3111382e1cc16afe234afe9232f.jpg', 'active', ''),
(106, 'ET22-8bfe', 'Ali', '0', '2005-08-05', '0', 'MS Office', '', '2022-06-02', '', '0', '5000', '5000', '', 'Afzal Bhai grid', 'your_site_name_ba41394d7973da82d910512f26af9e6d.jpg', 'active', ''),
(107, 'ET22-4deb', 'Suraj', '0', '2007-09-05', '0', 'MS Office', '', '2022-06-01', '', '03110105353', '6000', '6000', '', 'Ahsan nesh', 'your_site_name_00af59b753cb7a610ec1be41ecd2506e.jpg', 'active', ''),
(108, 'ET22-ddbf', 'Usman sarwar', '3610226665981', '2003-03-05', 'M Sarwar hussain', 'Web Development ', '', '2022-05-09', '', '03244679006', '0', '0', '9', 'Internship+Roon for rent      ', 'your_site_name_487ecf1afbb42c8a82372bc5b256c15c.jpg', 'active', ''),
(109, 'ET22-78cb', 'Murazza Liaqat', '0', '1998-06-05', 'Liaquat Ali', 'SEO ', '', '2022-05-30', '', '03085786540', '20000', '20000', '', 'Self', 'your_site_name_d7974b965bd4533769150171b6cb6647.jpg', 'active', ''),
(110, 'ET22-676c', 'Ahmad Ali', '0', '1996-11-04', 'M Iqbal', 'SEO ', '', '2022-05-31', '', '03068198284', '15000', '15000', '', '', 'your_site_name_9c12fd6a82bf41fe061a02fffa752565.jpg', 'active', ''),
(111, 'ET22-5d79', 'Gulam Murtaza', '3530262936181', '1998-01-16', 'M Yousaf', 'Graphic Designing', '', '2022-05-30', '', '03411492414', '10000', '10000', '', '', 'your_site_name_0aabe2b8cb36c7c7260daea74233a024.jpg', 'active', ''),
(112, 'ET22-881f', 'M Shahnawaz', '36303806761731', '2004-04-30', 'M Rafiq', 'MS Office', '', '2022-06-03', '', '03411528954', '9000', '9000', '', '', 'your_site_name_7fdf4ddf22e897faa5bc81bea60509ac.jpg', 'active', ''),
(113, 'ET22-a78e', 'Ali Hussain', '0', '2006-11-13', 'Nadeem Sardar', 'MS Office', '', '2022-05-30', '', '03037799911', '9000', '9000', '', '', 'your_site_name_02b06b19e8076704d3ca761f98de27f2.jpg', 'active', ''),
(114, 'ET22-c903', 'Waheed Ashraf', '3530357812433', '2002-05-14', 'M Ashraf', 'MS Office', '', '2021-11-02', '', '03020560025', '0', '0', '', 'Nomam jabha ne certificate issue krwaya', 'your_site_name_d55672b21940e793f1536394924f267e.jpg', 'active', ''),
(115, 'ET22-e7a0', 'M Kashan Asif', '4240112248645', '1999-08-22', 'Asif khurshid', 'Graphic Designing', '', '2022-06-07', '', '03002367354', '5000', '5000', '', 'Facebook and new mandi haroon colony habibabad', 'your_site_name_999b5571be3afd0c4d2f397cb0588f15.jpg', 'active', ''),
(116, 'ET22-6034', 'Suraj', '0', '2004-09-24', 'M Ashraf Nadeem', 'MS Office', '', '2022-06-02', '', '03110105353', '6000', '6000', '', 'Ahsan nesh usman park renala khurd ', 'your_site_name_3163786f30b13438a0c48c10b0ac7cc9.jpg', 'active', ''),
(117, 'ET22-27e6', 'Hamza Saleem', '3530255961885', '2002-03-01', 'M Saleem', 'Free intenship', 'Web Development', '2022-06-20', '2022-06-19', '03460437150', '0', '0', '0', 'Nazim Altaf         ', 'your_site_name_56efc3c42dd338db0cb6afb5342e7745.jpg', 'active', ''),
(118, 'ET22-1c48', 'Habib Ullah ', '3530387826307', '1999-03-03', 'M Saeed akhtar', 'Paid internship', '', '2022-06-07', '', '03038316853', '0', '0', '', 'Facebook', 'your_site_name_b30208ee46e628288213ba63e2e6504b.jpg', 'active', ''),
(119, 'ET22-4df0', 'Nisar Sattar', '5330289626767', '2002-09-22', 'Abdul Sattar', 'SEO ', '', '2022-06-07', '', '03041459813', '15000', '15000', '', 'Asim cf knowledge school system', 'your_site_name_612bbac2ca2d9684d22ea2822ab01c53.jpg', 'active', ''),
(120, 'ET22-f69b', 'M Uzair', '353033020299', '2006-10-05', 'Abdul malik ch', 'MS Office', '', '2022-06-06', '', '03024174543', '7500', '7500', '', 'Asif modren computer', 'your_site_name_5b80dccbd79be5a274603bd880aabfd1.jpg', 'active', ''),
(121, 'ET22-d86d', 'Ali Rehman', '3530375563349', '2006-12-09', 'Abdul Rehman', 'MS Office', '', '2022-06-01', '', '03044892445', '5000', '5000', '', 'Afzal bhai grid station', 'your_site_name_9f01e26a2a93be0cc1db828681109121.jpg', 'active', ''),
(122, 'ET22-343e', 'Ahmad Raza', '00', '2006-09-17', 'M Shafiq', 'MS Office', '', '2022-06-01', '', '03007952714', '10000', '10000', '', 'Chak no 20 /2L', 'your_site_name_733946fa7d1f76fecc43b40ed607ed45.jpg', 'active', ''),
(123, 'ET22-4063', 'M Sajid Mehmood', '3510193579445', '1997-07-21', 'liaqat Ali', 'Web Development ', '', '2022-06-07', '', '03039035971', '15000', '15000', '', 'Facebook', 'your_site_name_41181e7fed1b2c345fee347211d8e9e9.jpg', 'active', ''),
(124, 'ET22-cb6a', 'Ali Rehman', '3530375563349', '2006-12-09', 'Abdul Rehman', 'MS Office', '', '2022-06-01', '', '03044892445', '5000', '5000', '', 'Afzal  Bhai Grid', 'your_site_name_b0cfe6905185744fc1a5b44283a2d89f.jpeg', 'active', ''),
(125, 'ET22-0917', 'Ahmad Raza', '0000000000', '2006-09-17', 'Muhammad Shafiq', 'MS Office', '', '2022-06-02', '', '03007952714', '10000', '10000', '', 'Chak No. 20/2L', 'your_site_name_18c7e9008bc0cbe4d33a80d4856ac049.jpeg', 'active', ''),
(126, 'ET22-5b07', 'Ahmar Mustafa', '00', '2006-01-28', 'Ghulam Mustafa', 'SEO ', '', '2022-06-14', '', '03444990531', '15000', '15000', '', 'Mubeen jappa studio', 'your_site_name_1929f87de178a6ec78589482e018d9f5.jpg', 'active', ''),
(127, 'ET22-6022', 'Talha Naeem', '00', '2008-11-01', 'M Naeem', 'MS Office', '', '2022-06-13', '', '03484065865', '7500', '7500', '', 'Hàmza saleem stu UET internee of android', 'your_site_name_823c31a4aa17c32f98fa690566ffaab9.jpg', 'active', ''),
(128, 'ET22-5d01', 'Saira Zafar', '0', '2006-11-08', 'M Zafar', 'MS Office', '', '2022-06-14', '', '03197113585', '7500', '', '', 'Hamad Stu ask 10 th ', 'your_site_name_a86aee6922d81d9118286ea1d8131e6e.jpg', 'active', ''),
(129, 'ET22-b61d', 'Sawera Irfan', '00', '2008-11-19', 'Irfan Ali', 'MS Office', '', '2022-06-14', '', '03186109103', '7500', '7500', '', 'Hammad Stu Ask 10th', 'your_site_name_d0928dc628003f36a87165b015980968.jpg', 'active', ''),
(130, 'ET22-da4d', 'Burhan Ahmad', '0', '2003-07-04', 'Abdul Razaq', 'MS Office', '', '2022-06-15', '', '03171720040', '7500', '7500', '', 'Sir Syed academy students', 'your_site_name_56f353607137c6cb1adf0d08f9213b09.jpg', 'active', ''),
(131, 'ET22-f86f', 'Sami Ullah ', '3530386758925', '2000-07-25', 'Abdul Razaq', 'Web Development ', '', '2022-06-15', '', '034467722059', '20000', '20000', '', 'Prof Rao Kashif Sab ', 'your_site_name_2af42e03b75869363f09fbd9685c9bed.jpg', 'active', ''),
(132, 'ET22-f7c1', 'M Arham', '0', '2006-04-09', 'M Arshad', 'SEO ', '', '2022-06-14', '', '03007539684', '18000', '18000', '', 'Self', 'your_site_name_fa5bfefe8732a277bc201320d832b4a7.jpg', 'active', ''),
(133, 'ET22-5be5', 'Ali Hamza', '3530359033335', '2002-01-01', 'Abdul Ghafar', 'Graphic Designing', '', '2022-06-14', '', '03126450130', '18000', '18000', '', 'Burhan Stu Web ', 'your_site_name_e42afea0a6b7574d41b9a56af5bd9eb4.jpg', 'active', ''),
(134, 'ET22-8b15', 'Awais Raza', '0', '2008-11-13', 'Farooq Ahmed', 'MS Office', '', '2022-06-01', '', '03030529680', '0', '0', '', 'Nimra Naz', 'your_site_name_a0268f487de1747b0c9be2d1e8889ea7.jpg', 'active', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `come_time`
--
ALTER TABLE `come_time`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `sr` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
