-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 27 2022 г., 19:27
-- Версия сервера: 5.7.33
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `simtechdev`
--

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `user_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `radio` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `textarea` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `asap` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkbox` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filepath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`feed_id`, `user_name`, `subject`, `email`, `phone`, `radio`, `textarea`, `asap`, `checkbox`, `filepath`) VALUES
(1, 'test', 'test', 'test@gmail.com', 'test', 'email', 'ttttt', 'srochno', 'checkbox', ''),
(2, 'name', 'subject', 'email@mail.ru', 'phone', 'phone', 'textarea', 'nescrochno', 'checkbox', ''),
(3, 'name1', 'subject1', 'email1@mail.ru', '88005553535', 'email', 'textarea1', 'nescrochno', 'checkbox', ''),
(4, 'dfsdf', 'sdfsdf', 'sdfsdf@fgdfgdfjgkgkg.com', 'sdfdf', 'phone', 'sdfsdf', 'nescrochno', 'checkbox', ''),
(5, 'fsdf', 'sdfsdf', 'dfsfd@gmail.com', '688454654654', 'email', 'dfsdfsdfsdf', 'srochno', 'checkbox', ''),
(6, 'fsdf', 'sdfsdf', 'dfsfd@gmail.com', '688454654654', 'email', 'dfsdfsdfsdf', 'srochno', 'checkbox', ''),
(7, 'Test', 'test', 'test@test.test', '88005553535', 'phone', 'test', 'nescrochno', 'checkbox', ''),
(8, 'Станислав', 'Асафьев', 'test@gmail.com', '84894698', 'email', 'Картавые истории', 'srochno', 'yes', ''),
(9, 'Stepan', 'Stepan', 'Stepan@Stepan.com', '78465465465', 'phone', 'StepanStepanStepanStepanStepan', 'srochno', 'yes', 'uploads/1648396878.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `password`) VALUES
(1, 'admin', 'admin', 'm', 'admin@mail.ru', '$2y$10$7kJRyxKI5RhnBPPUU1Pvf.1C4T2VZ6Kg5z2FoT7y1YX5gtuVIRSZ.'),
(3, 'testuser', 'testuser', 'm', 'test@mail.ru', '$2y$10$SmST5NUeJuNCM.Hzxdi6weOYgRhD5jg9AOl2.I.1qOatgNVOflNh2'),
(5, 'Test1', 'Test2', 'm', 'test@mail.com', '$2y$10$Jeifu/G3sKJL5.9QyuqNwOnV5q7P5xCXtOU/x0Ei6aRRAwui4FhEK'),
(6, 'SimtechUser', 'SimtechDev', 'm', 'simtech@dev.com', '$2y$10$Wfh.fAVrpp.gYnVNzpJXyOpJx.QuFMWpfYC.kp9LWUJ6dEc.KzViC'),
(11, 'testnewuser', 'testnewuser', 'm', 'testnewuser@mail.ru', '$2y$10$gv76bHqaAxRfDvErnF9kM.QXJBMKPaC/plC7iLx3S0ndI8aX3Qvem'),
(12, 'ilya', 'litvinov', 'm', 'ilya@gmail.com', '$2y$10$tKNzu98l216rY9dx47YCiu1SvZVfAXSPIpkA69eSeNSuc.1TJvEy.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
