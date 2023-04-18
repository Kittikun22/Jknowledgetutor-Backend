-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 05:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jknowledge`
--

-- --------------------------------------------------------

--
-- Table structure for table `j_courses`
--

CREATE TABLE `j_courses` (
  `courses_id` int(10) NOT NULL,
  `courses_name` text NOT NULL,
  `courses_access` int(2) NOT NULL,
  `courses_detail` text NOT NULL,
  `courses_preview` text NOT NULL,
  `courses_pic` text NOT NULL,
  `courses_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j_courses`
--

INSERT INTO `j_courses` (`courses_id`, `courses_name`, `courses_access`, `courses_detail`, `courses_preview`, `courses_pic`, `courses_created`) VALUES
(1, 'คอมพิวเตอร์', 2, 'เครื่องคำนวณในรูปของอุปกรณ์อิเล็กทรอนิกส์ ที่สามารถรับข้อมูลและคำสั่ง ผ่านอุปกรณ์รับข้อมูล แล้วนำข้อมูลและคำสั่งนั้นไปประมวลผลด้วยหน่วยประมวลผลเพื่อให้ได้ผลลัพธ์ที่ต้องการและแสดงผลผ่านอุปกรณ์แสดงผล ตลอดจนสามารถบันทึกรายการต่างๆไว้เพื่อใช้งานได้ด้วยอุปกรณ์บันทึกข้อมูลสำรอง', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/4.jpg', '2022-11-08 02:25:29'),
(2, 'ชีวะ', 2, 'เซลล์', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/5.jpg', '2022-11-08 02:25:29'),
(3, 'คณิต ป.1', 2, 'บวกลบ', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/3.jpg', '2022-11-08 02:25:29'),
(4, 'วิทยาศาสตร์', 2, 'ลม', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/6.jpg', '2022-11-08 02:25:29'),
(5, 'วิทยาศาสตร์ 2', 2, 'ลม ไฟ', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/7.jpg', '2022-11-08 02:25:29'),
(9, 'คอมพิวเตอร์ 2', 2, 'เรียนสนุกลุกนั่งสบาย', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/4.jpg', '2022-11-08 02:25:29'),
(10, 'ชีวะ 2', 2, 'เซลล์', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/courses_2.jpg', '2022-11-08 02:25:29'),
(11, 'คณิต 2 ป.1', 2, 'บวกลบ', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/3.jpg', '2022-11-08 02:25:29'),
(12, 'เคมี', 2, 'ลม', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/courses_2.jpg', '2022-11-08 02:25:29'),
(13, 'เคมี 2', 2, 'ลม ไฟ', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/5.jpg', '2022-11-08 02:25:29'),
(14, 'ชีวะ 3', 2, 'เซลล์', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/courses_1.jpg', '2022-11-08 02:25:29'),
(15, 'คณิต ป.5', 2, 'บวกลบ', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/6.jpg', '2022-11-08 02:25:29'),
(16, 'เคมี 4', 2, 'ลม', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/7.jpg', '2022-11-08 02:25:29'),
(17, 'เคมี 3', 2, 'H2O CO2', 'https://www.youtube.com/embed/Z2N1tKCId0s', '/images/courses_2.jpg', '2022-11-08 06:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `j_courses_lesson`
--

CREATE TABLE `j_courses_lesson` (
  `lesson_id` int(11) NOT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `lesson_access` int(11) DEFAULT NULL,
  `lesson_name` text DEFAULT NULL,
  `lesson_video` text DEFAULT NULL,
  `lesson_control` text DEFAULT NULL,
  `lesson_detail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j_courses_lesson`
--

INSERT INTO `j_courses_lesson` (`lesson_id`, `courses_id`, `lesson_access`, `lesson_name`, `lesson_video`, `lesson_control`, `lesson_detail`) VALUES
(1, 12, 2, 'โมเลกุล', 'https://www.youtube.com/embed/ReJ9f79D42c', 'ยังไม่มี', 'โมเลกุลเป็นหน่วยที่เล็กที่สุดของสารประกอบบริสุทธิ์ ประกอบด้วยอะตอมตั้งแต่ 2 อะตอมขึ้นสร้างพันธะต่อกัน'),
(2, 12, 2, 'สารละลาย', 'https://www.youtube.com/embed/21E3MNWz5m4', 'ยังไม่มี', 'สารละลายอาจเป็นธาตุ สารประกอบ หรือของผสมจากธาตุ หรือสารประกอบมากกว่า 1 ชนิด สสารส่วนใหญ่ที่พบเห็นในชีวิตประจำวันจะอยู่ในรูปของผสม'),
(3, 1, 2, 'Python', 'https://player.vimeo.com/video/668270855?h=289e7342d1&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479', 'ยังไม่มี', 'Python ง่ายๆ'),
(4, 1, 2, 'Nodejs', 'https://www.youtube.com/embed/t1TaRFFN6qc', 'ไม่มี', 'Basic NodeJS'),
(5, 1, 2, 'ReactJs', 'https://www.youtube.com/embed/gNg_pKbH0os', 'ไม่มีครับ', '180 sec for ReactJS'),
(6, 1, 2, 'JavaScript', 'https://www.youtube.com/embed/hDbVPuUYWN4', 'ไม่มีครับ', 'JavaScript != Java'),
(7, 1, 2, 'Java', 'https://www.youtube.com/embed/gG0rD5f1Cpg', 'ไม่มีครับ', 'JavaScript != Java'),
(8, 1, 2, 'Go', 'https://www.youtube.com/embed/2CzmtwDKm5Q', 'ไม่มีครับ', 'Go language');

-- --------------------------------------------------------

--
-- Table structure for table `j_courses_meta`
--

CREATE TABLE `j_courses_meta` (
  `courses_meta_id` int(11) NOT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `courses_meta_key` text DEFAULT NULL,
  `courses_meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `j_user_role`
--

CREATE TABLE `j_user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` text NOT NULL,
  `role_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `j_user_role`
--

INSERT INTO `j_user_role` (`role_id`, `role_name`, `role_level`) VALUES
(1, 'Administrator', 10),
(2, 'Editor', 9),
(3, 'Teacher', 7),
(4, 'Subscriber', 4),
(5, 'Expired Subscriber', 3),
(6, 'Member', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `phone` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `fname` text DEFAULT NULL,
  `lname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `user_role` text NOT NULL,
  `payment_status` text NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `register_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `phone`, `password`, `fname`, `lname`, `email`, `user_role`, `payment_status`, `role_id`, `register_at`) VALUES
(49, '0828377840', '$2b$10$mcAPrkE8iHfJv8r4POA50eKNGy.92JdTuwxtiTKhBveVEBiq1GS.W', 'กิตติคุณ', 'สิงห์คำมา', 's.kittikun3@gmail.com', 'ผู้ปกครอง', '', 6, '2022-11-15 04:44:46'),
(50, '0123456789', '$2b$10$XrlrkuHKVr70ogaoUssc0e1.8cBFZ7FsoCbmi4uuOP6iuY/ni4pNG', 'พี่แจ็ค', 'ครับ', 'khem@gmail.com', 'นักเรียน', '', 6, '2022-11-15 07:14:50'),
(51, '123', '$2b$10$rvvyvnUF.BSCJRRape20nuwervrhPqWu0iW65u5/j9000LNbb1TpK', 'asd', 'dsdad', 'kkhem.3@hotmail.com', 'นักเรียน', '', 6, '2022-11-17 08:52:17'),
(52, '123', '$2b$10$Vr1orkoXD2hxTYj92ZgZPOSUhwvz72zLSQ7j5WHLmQ.QIDnbk/g3O', 'asd', 'dsdad', 'kkhem.3@hotmail.com', 'นักเรียน', '', 6, '2022-11-17 08:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `users_meta`
--

CREATE TABLE `users_meta` (
  `user_meta_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_meta_key` text DEFAULT NULL,
  `user_meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_meta`
--

INSERT INTO `users_meta` (`user_meta_id`, `user_id`, `user_meta_key`, `user_meta_value`) VALUES
(88, 49, 'โรงเรียน', 'สกลราช'),
(89, 49, 'จังหวัด', 'สกลนคร'),
(90, 49, 'ความคาดหวัง', 'สอบเข้ามหาวิทยาลัย'),
(91, 49, 'ระดับชั้น', 'มัธยมศึกษาปีที่ 6'),
(92, 49, 'ข้อตกลงและเงื่อนไข', 'ยอมรับ'),
(93, 49, 'อาชีพ', 'ธุรกิจส่วนตัว'),
(94, 50, 'โรงเรียน', 'สกลราช'),
(95, 50, 'จังหวัด', 'สกลนคร'),
(96, 50, 'ความคาดหวัง', 'สอบเข้ามหาวิทยาลัย'),
(97, 50, 'ระดับชั้น', 'มัธยมศึกษาปีที่ 5'),
(98, 50, 'ข้อตกลงและเงื่อนไข', 'ยอมรับ'),
(99, 50, 'อาชีพ', ''),
(100, 51, 'โรงเรียน', 'กดกด'),
(101, 51, 'จังหวัด', 'ขอนแก่น'),
(102, 51, 'ความคาดหวัง', 'ทบทวนบทเรียน'),
(103, 51, 'ระดับชั้น', 'มัธยมศึกษาปีที่ 5'),
(104, 51, 'ข้อตกลงและเงื่อนไข', 'ยอมรับ'),
(105, 51, 'อาชีพ', ''),
(106, 52, 'โรงเรียน', 'กดกด'),
(107, 52, 'จังหวัด', 'ขอนแก่น'),
(108, 52, 'ความคาดหวัง', 'ทบทวนบทเรียน'),
(109, 52, 'ระดับชั้น', 'มัธยมศึกษาปีที่ 5'),
(110, 52, 'ข้อตกลงและเงื่อนไข', 'ยอมรับ'),
(111, 52, 'อาชีพ', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `j_courses`
--
ALTER TABLE `j_courses`
  ADD PRIMARY KEY (`courses_id`);

--
-- Indexes for table `j_courses_lesson`
--
ALTER TABLE `j_courses_lesson`
  ADD PRIMARY KEY (`lesson_id`),
  ADD KEY `courses_id` (`courses_id`);

--
-- Indexes for table `j_courses_meta`
--
ALTER TABLE `j_courses_meta`
  ADD PRIMARY KEY (`courses_meta_id`),
  ADD KEY `courses_id` (`courses_id`);

--
-- Indexes for table `j_user_role`
--
ALTER TABLE `j_user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD PRIMARY KEY (`user_meta_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `j_courses`
--
ALTER TABLE `j_courses`
  MODIFY `courses_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `j_courses_lesson`
--
ALTER TABLE `j_courses_lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `j_user_role`
--
ALTER TABLE `j_user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users_meta`
--
ALTER TABLE `users_meta`
  MODIFY `user_meta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `j_courses_lesson`
--
ALTER TABLE `j_courses_lesson`
  ADD CONSTRAINT `j_courses_lesson_ibfk_1` FOREIGN KEY (`courses_id`) REFERENCES `j_courses` (`courses_id`);

--
-- Constraints for table `j_courses_meta`
--
ALTER TABLE `j_courses_meta`
  ADD CONSTRAINT `j_courses_meta_ibfk_1` FOREIGN KEY (`courses_id`) REFERENCES `j_courses` (`courses_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `j_user_role` (`role_id`);

--
-- Constraints for table `users_meta`
--
ALTER TABLE `users_meta`
  ADD CONSTRAINT `users_meta_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
