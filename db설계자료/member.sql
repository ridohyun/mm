-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 20-12-14 22:19
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
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `userid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '아이디',
  `passwd` char(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '비밀번호',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '회원이름',
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`userid`, `passwd`, `name`, `reg_date`) VALUES
('', '$2y$10$Hwx0LTLjLv7DztOkFXLetuxkEHc1Z5CemYmJzH1kR5g0KHqWw6/Ky', '', '2020-12-14 11:46:48'),
('abc', '$2y$10$fHgMJy.DybzVuS23ys0wWeLqwDb00FsqdPoNiTRTJXJYrokOp.bmS', '김철수', '2020-12-10 14:04:23'),
('doo', '$2y$10$Jje3MgA80O24HsyoClH5jeJkQnOnXCedEbPfF9L21W28e6EKrebIm', '도현', '2020-12-10 14:10:09'),
('kang', '$2y$10$i7H6Ei3dKKBggZa7brNY3uQMkTvV2kY.SgD9QphjGvV2orqTCMtcS', '강감찬', '2020-12-10 13:52:08'),
('qaz', '$2y$10$jwQQdUSks8wFjVst6v15DedQjQLl9qahJ2KVOdIQRES02OZ0Miz86', '홍길동', '2020-12-10 14:13:46'),
('zero', '$2y$10$dPKGjvTtwhgHLPevJzivx.QtpLQ/gxYIbxZndbLDbmApyS0uxDjPO', '제로', '2020-12-11 20:58:38');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
