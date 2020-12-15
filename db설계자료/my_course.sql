-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 20-12-14 22:20
-- 서버 버전: 8.0.22
-- PHP 버전: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `smu`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `my_course`
--

CREATE TABLE `my_course` (
  `my_course_id` int NOT NULL,
  `userid` varchar(10) NOT NULL,
  `my_course_name` varchar(50) NOT NULL,
  `region` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `my_course`
--
ALTER TABLE `my_course`
  ADD PRIMARY KEY (`my_course_id`),
  ADD KEY `userid` (`userid`);

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `my_course`
--
ALTER TABLE `my_course`
  ADD CONSTRAINT `my_course_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `member` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
