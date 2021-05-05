-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 11:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL,
  `annouce_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `annouce_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(6, 'Main Course'),
(9, 'Dessert'),
(10, 'Rice'),
(11, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE `combo` (
  `combo_id` int(11) NOT NULL,
  `combo_name` varchar(100) NOT NULL,
  `combo_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`combo_id`, `combo_name`, `combo_price`) VALUES
(1, 'Ocean Oasis', '150.00'),
(2, 'Land Discovery', '150.00'),
(4, 'Mix Variety', '200.00');

-- --------------------------------------------------------

--
-- Table structure for table `combo_details`
--

CREATE TABLE `combo_details` (
  `combo_details_id` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo_details`
--

INSERT INTO `combo_details` (`combo_details_id`, `combo_id`, `menu_id`) VALUES
(5, 3, 2),
(6, 3, 4),
(7, 4, 6),
(8, 4, 8),
(10, 4, 18),
(11, 1, 7),
(12, 1, 15),
(13, 1, 16),
(14, 1, 17),
(15, 1, 18),
(16, 4, 10),
(17, 2, 6),
(18, 2, 8),
(19, 2, 9),
(20, 2, 10),
(21, 2, 14),
(22, 2, 18),
(23, 4, 15),
(24, 4, 16),
(25, 4, 17),
(26, 4, 7),
(28, 1, 11),
(30, 2, 13),
(31, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_what` varchar(500) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_where` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_what`, `event_date`, `event_time`, `event_where`) VALUES
(2, 'Wedding', '2021-05-29', '10:32:00', 'Dewan Melati'),
(3, 'Party', '2021-05-31', '22:33:00', 'Dewan Semegah');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_last` varchar(15) NOT NULL,
  `member_first` varchar(15) NOT NULL,
  `member_status` varchar(10) NOT NULL,
  `member_contact` varchar(30) NOT NULL,
  `member_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_last`, `member_first`, `member_status`, `member_contact`, `member_address`) VALUES
(1, 'Madjuu', 'altintop', 'active', '019948', 'sdfsdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `cat_id` int(30) NOT NULL,
  `subcat_name` varchar(30) NOT NULL,
  `menu_desc` varchar(100) NOT NULL,
  `menu_price` decimal(10,2) NOT NULL,
  `menu_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `cat_id`, `subcat_name`, `menu_desc`, `menu_price`, `menu_pic`) VALUES
(6, 'Blackcurrent', 11, 'Drinks', 'Air Anggur Sedap emmmm', '5.00', 'd1-blackcurrent.webp'),
(7, 'Orange', 11, 'Drinks', 'Air Oren Sedap emmm', '5.00', 'd2-orange-cordial.webp'),
(8, 'Curry Mutton', 9, 'Lunch and Dinner', 'Kari Kambing Dara aummm', '30.00', 'ld1-Curry-Mutton.webp'),
(9, 'Crispy Fried Chicken Wings', 6, 'Non Combo Meal', 'Kepak Ayam Kampung', '10.00', 'ld2-Crispy-Fried-Chicken-Wings.webp'),
(10, 'Singature Curry Chicken', 6, 'Lunch and Dinner', 'Kari Ayam Paduuuu beb', '15.00', 'ld3-Singature-Curry-Chicken.webp'),
(11, 'Seafood Fried Rice With Anchovie', 10, 'Non Combo Meal', 'Nasi Goreng Siput bersama Togeh', '10.00', 'nc1-Seafood-Fried-Rice-With-Anchovie.webp'),
(12, 'Fried Meehoon', 11, 'Non Combo Meal', 'Mihun Goreng Bersama Mamak', '10.00', 'nc2-Fried-Meehoon.webp'),
(13, 'Cantonese Chicken Fried Rice', 10, 'Non Combo Meal', 'Nasi Goreng Cina Muallaf', '10.00', 'nc3-Cantonese-Chicken-Fried-Rice-1.webp'),
(14, 'Black Pepper Lamb Chop', 11, 'Non Combo Meal', 'Kambing Hitam Cili Cop', '20.00', 'nc4-Black-Pepper-Lamb-Chop.webp'),
(15, 'Thai Style Fish Fillet', 6, 'Lunch and Dinner', 'Ikan Dipotong Hidup2', '25.00', 'ld4-Thai-Style-Fish-Fillet.webp'),
(16, 'Deep Fried Squid', 6, 'Lunch and Dinner', 'Sotong Kuri-kuri', '30.00', 'ld5-Deep-Fried-Squid.webp'),
(17, 'Salty Style Fried Prawns', 6, 'Lunch and Dinner', 'Udang Disebalik Batu', '30.00', 'ld6-Salty-Style-Fried-Prawns.webp'),
(18, 'Three Combinations of Vegetables', 6, 'Lunch and Dinner', 'Sayur 3 Rasa Tapi X Berapa Rasa', '20.00', 'ld7-Three-Combinations-of-Vegetables.webp');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `fullname`, `email`, `subject`, `message`, `date`) VALUES
(1, 'Khai Cap', 'khai@cap.com', 'Tralala', 'almsflkasmfas', '2021-03-04 06:30:06'),
(2, 'Tst', 'sdfsd@gmail.conm', 'sdfsdf', 'sdfsdfsdf', '2021-05-05 13:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `rid`, `payment_date`) VALUES
(1, 2000, 42, '2017-04-28'),
(2, 60000, 47, '2021-03-04'),
(3, 1500, 49, '2021-03-06'),
(4, 200, 48, '2021-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `rid` int(11) NOT NULL,
  `r_date` date NOT NULL,
  `r_time` time NOT NULL,
  `r_last` varchar(30) NOT NULL,
  `r_first` varchar(30) NOT NULL,
  `r_contact` varchar(30) NOT NULL,
  `r_email` varchar(50) NOT NULL,
  `r_address` varchar(100) NOT NULL,
  `r_type` varchar(30) NOT NULL,
  `r_ocassion` varchar(50) NOT NULL,
  `r_motif` varchar(30) NOT NULL,
  `team_id` int(11) NOT NULL,
  `r_venue` varchar(100) NOT NULL,
  `payable` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `r_status` varchar(10) NOT NULL,
  `date_reserved` date NOT NULL,
  `r_code` varchar(10) NOT NULL,
  `pax` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `modeofpayment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`rid`, `r_date`, `r_time`, `r_last`, `r_first`, `r_contact`, `r_email`, `r_address`, `r_type`, `r_ocassion`, `r_motif`, `team_id`, `r_venue`, `payable`, `balance`, `r_status`, `date_reserved`, `r_code`, `pax`, `combo_id`, `price`, `modeofpayment`) VALUES
(42, '2017-05-04', '14:00:00', 'Pipez Mondo', 'Lee ', '09001914000', 'e@gmail.com', 'Bago City Atlanta', 'buffet', 'Baptism', 'White', 0, 'Bago City', '2500.00', '500.00', 'Cancelled', '2017-04-28', '5xkKxwWasn', 50, 3, '50.00', ''),
(45, '2017-06-07', '01:00:00', 'klj', 'kkj', 'kjk', 'emoblazz@gmail.com', 'KB', 'buffet', 'Baptism', 'jjj', 0, 'lkjkj', '1500.00', '1500.00', 'Cancelled', '2017-04-28', 'Bg0GueD1Vg', 10, 1, '150.00', ''),
(46, '2017-08-07', '01:00:00', 'klj', 'kkj', 'kjk', 'emoblazz@gmail.com', 'kjk', 'buffet', 'Baptism', 'jjj', 0, 'lkjkj', '1500.00', '1500.00', 'Cancelled', '2017-04-28', 'Bg0GuezJd8', 10, 1, '150.00', 'Bank to Bank'),
(47, '2021-03-05', '22:40:00', 'Juu', 'Mad', '0166532456', 'madjuu@gmail.com', 'Keyel', 'buffet', 'Wedding', 'Wedding', 0, 'Hall', '6000.00', '-54000.00', 'Cancelled', '2021-03-04', 'yl6j0jWnZW', 40, 1, '150.00', 'Bank to Bank'),
(48, '2021-03-17', '13:30:00', 'Helmie', 'Tokki', '0163254689', 'tokki@helmie.com', 'Setapak WM', 'buffet', 'Baptism', 'Lecture', 0, 'Studio', '250.00', '50.00', 'Approved', '2021-03-04', 'dRTXoGz9FX', 5, 3, '50.00', 'Cash'),
(49, '2021-03-19', '23:00:00', 'faita', 'sapik', '013564278', 'sapik@gimel.com', 'cyber', 'plated', 'Wedding', 'Sapik & Khai', 0, 'Hall 1', '1500.00', '0.00', 'Finished', '2021-03-06', 'CgsxZhfJnb', 10, 1, '150.00', 'Bank to Bank'),
(50, '2021-04-23', '18:46:00', 'rtyrty', 'rttryrty', '0166532456', 'lala@gmaiul.vom', 'rtyrty', 'buffet', 'Birthday', '', 0, 'fdsfsdf', '150.00', '150.00', 'Cancelled', '2021-04-04', 'MFT0Q3sir2', 1, 1, '150.00', 'Bank to Bank'),
(51, '2021-04-28', '22:03:00', 'dfghfdh', 'dsfsdf', 'dfgdfg', 'fgdfgdg@com.vdf', 'dfgdfg', 'plated', 'Baptism', 'fgdgf', 0, 'gdfgdfg', '750.00', '750.00', 'Cancelled', '2021-04-04', 'dOB3ebiM1I', 3, 2, '250.00', ''),
(52, '2021-04-22', '02:56:00', 'dfgdf', 'dgdfg', 'dfgdfg', 'gdfgfd@fgmial.com', 'dfgdf', 'buffet', 'Baptism', 'Wedding', 0, 'fsdf', '150.00', '150.00', 'Approved', '2021-04-20', 'WUCwrSYxtJ', 1, 1, '150.00', 'Bank to Bank'),
(53, '2021-05-07', '06:00:00', 'Pong', 'Cap', '0166765646', 'CapKhun@gmail.com', 'Sitapak', 'plated', 'Others', 'Main Badminton', 0, 'Dewan Taman Melati', '600.00', '600.00', 'pending', '2021-05-05', 'lUKQiFsDEU', 4, 1, '150.00', 'Cash'),
(54, '2021-05-08', '03:18:00', 'Cop', 'Cap', '016565', 'CapKhun@gmail.com', 'Sita', 'buffet', 'Birthday', 'Wedding', 0, 'Sita', '150.00', '150.00', 'Approved', '2021-05-05', 'OtzNmAhRlw', 1, 1, '150.00', 'Online Transfer'),
(55, '0000-00-00', '00:00:00', 'fasf', 'adfas', '10545155', 'dgsdg@gmail.com', 'afssaf', '', '', '', 0, '', '0.00', '0.00', '', '2021-05-05', 'Xx0bSzFi8n', 0, 0, '0.00', ''),
(56, '0000-00-00', '00:00:00', 'sdfsdf', 'fsdfs', '0521651', 'sdfd@gmail.com', 'sdfsdf', '', '', '', 0, '', '0.00', '0.00', '', '2021-05-05', 'V9xyjOO5ce', 0, 0, '0.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `r_combo`
--

CREATE TABLE `r_combo` (
  `r_combo_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `r_details_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_details`
--

CREATE TABLE `r_details` (
  `r_details_id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `r_nop` int(10) NOT NULL,
  `r_total` decimal(10,2) NOT NULL,
  `r_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_noncombo`
--

CREATE TABLE `r_noncombo` (
  `r_non_id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `serve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcat_id` int(11) NOT NULL,
  `subcat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `subcat_name`) VALUES
(1, 'Non Combo Meal'),
(3, 'Lunch and Dinner'),
(10, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`) VALUES
(1, 'Hijau');

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE `team_member` (
  `team_member_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_member`
--

INSERT INTO `team_member` (`team_member_id`, `team_id`, `member_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `full_name`, `username`, `password`, `status`) VALUES
(1, 'Lee Pipez', 'admin', '123', 'active'),
(2, 'test', 'chimney_admin', '321', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`combo_id`);

--
-- Indexes for table `combo_details`
--
ALTER TABLE `combo_details`
  ADD PRIMARY KEY (`combo_details_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `r_combo`
--
ALTER TABLE `r_combo`
  ADD PRIMARY KEY (`r_combo_id`);

--
-- Indexes for table `r_details`
--
ALTER TABLE `r_details`
  ADD PRIMARY KEY (`r_details_id`);

--
-- Indexes for table `r_noncombo`
--
ALTER TABLE `r_noncombo`
  ADD PRIMARY KEY (`r_non_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`team_member_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `combo`
--
ALTER TABLE `combo`
  MODIFY `combo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `combo_details`
--
ALTER TABLE `combo_details`
  MODIFY `combo_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `r_combo`
--
ALTER TABLE `r_combo`
  MODIFY `r_combo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_details`
--
ALTER TABLE `r_details`
  MODIFY `r_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `r_noncombo`
--
ALTER TABLE `r_noncombo`
  MODIFY `r_non_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_member`
--
ALTER TABLE `team_member`
  MODIFY `team_member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
