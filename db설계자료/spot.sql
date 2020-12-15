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
-- 테이블 구조 `spot`
--

CREATE TABLE `spot` (
  `spot_id` int NOT NULL,
  `latitude` double(55,8) DEFAULT '0.00000000',
  `longitude` double(55,8) NOT NULL DEFAULT '0.00000000',
  `spot_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `region` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `center_latitude` double(55,8) NOT NULL DEFAULT '0.00000000',
  `center_logitude` double(55,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `spot`
--

INSERT INTO `spot` (`spot_id`, `latitude`, `longitude`, `spot_name`, `region`, `center_latitude`, `center_logitude`) VALUES
(1, 37.52653599, 127.03910327, '압구정로데오거리', '강남', 37.51304246, 127.05322358),
(2, 37.52787735, 127.04239610, '한류스타거리', '강남', 37.51304246, 127.05322358),
(3, 37.53067063, 127.04192251, '압구정토끼굴', '강남', 37.51304246, 127.05322358),
(4, 37.52621815, 127.04601530, '청담동 명품거리', '강남', 37.51304246, 127.05322358),
(5, 37.50922412, 127.04878721, '선릉과정릉', '강남', 37.51304246, 127.05322358),
(6, 37.51293181, 127.05856225, '코엑스', '강남', 37.51304246, 127.05322358),
(7, 1.00000000, 0.00000000, '', '', 0.00000000, 0.00000000),
(8, 1.00000000, 0.00000000, '', '', 0.00000000, 0.00000000),
(9, 1.00000000, 0.00000000, '', '', 0.00000000, 0.00000000),
(10, 1.00000000, 0.00000000, '', '', 0.00000000, 0.00000000),
(11, 1.00000000, 0.00000000, '', '', 0.00000000, 0.00000000),
(12, 1.00000000, 0.00000000, '', '', 0.00000000, 0.00000000);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `spot`
--
ALTER TABLE `spot`
  ADD PRIMARY KEY (`spot_id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `spot`
--
ALTER TABLE `spot`
  MODIFY `spot_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
