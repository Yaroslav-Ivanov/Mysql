-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 13 2020 г., 19:48
-- Версия сервера: 8.0.12
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ivanov`
--
CREATE DATABASE IF NOT EXISTS `ivanov` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ivanov`;

-- --------------------------------------------------------

--
-- Структура таблицы `zp`
--

CREATE TABLE `zp` (
  `numb` int(11) NOT NULL,
  `fio` varchar(50) NOT NULL,
  `zp` float NOT NULL,
  `dep` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `zp`
--

INSERT INTO `zp` (`numb`, `fio`, `zp`, `dep`) VALUES
(1, 'Ivanov', 7000, 'Бухгалтерия'),
(2, 'Петров', 10000, 'Первый цех'),
(3, 'Сидоров', 505043, 'Второй цех'),
(4, 'Бондаренко', 3000, 'Бухгалтерия'),
(5, 'Иванов Ярослав', 10000000, 'Первый цех'),
(6, 'Панченко', 56955000, 'Второй цех'),
(7, 'Григорян', 5868470, 'Третий цех'),
(8, 'Куприн', 990009, 'Третий цех'),
(9, 'Новский', 500000, 'Третий цех'),
(10, 'Подрецкий', 999999, 'Четвертый цех');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
