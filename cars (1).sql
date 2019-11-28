-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2019 年 11 月 28 日 13:30
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `cars`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `carno` varchar(100) NOT NULL,
  `typeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `cars`
--

INSERT INTO `cars` (`id`, `ownerid`, `carno`, `typeid`) VALUES
(12, 2, '', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `cartype`
--

CREATE TABLE `cartype` (
  `id` int(11) NOT NULL,
  `typename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `faid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `cartype`
--

INSERT INTO `cartype` (`id`, `typename`, `faid`) VALUES
(1, 'minicatr', 1),
(2, 'mini2car', 1),
(3, 'superNg', 2),
(4, 'bigNg', 2),
(5, 'newbigNg', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `customers`
--

INSERT INTO `customers` (`id`, `Name`, `Address`, `Phone`) VALUES
(2, 'Peter', 'no. 99, test3 load', '0912345678'),
(3, 'break', 'no. 99, test3 load', '12341245'),
(4, 'TADEL', 'no. 99, test3 load', '6431234');

-- --------------------------------------------------------

--
-- 資料表結構 `factory`
--

CREATE TABLE `factory` (
  `id` int(11) NOT NULL,
  `faname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `factory`
--

INSERT INTO `factory` (`id`, `faname`) VALUES
(1, 'bmw'),
(2, 'NG');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carno` (`carno`),
  ADD KEY `typeid` (`typeid`),
  ADD KEY `ownerid` (`ownerid`) USING BTREE;

--
-- 資料表索引 `cartype`
--
ALTER TABLE `cartype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typename` (`typename`),
  ADD KEY `faid` (`faid`);

--
-- 資料表索引 `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faname` (`faname`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cartype`
--
ALTER TABLE `cartype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `factory`
--
ALTER TABLE `factory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `cars_ibfk_2` FOREIGN KEY (`typeid`) REFERENCES `cartype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- 資料表的限制式 `cartype`
--
ALTER TABLE `cartype`
  ADD CONSTRAINT `cartype_ibfk_1` FOREIGN KEY (`faid`) REFERENCES `factory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
