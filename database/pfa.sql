-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2024 at 10:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pfa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user_id`) VALUES
(2, 54),
(3, 55),
(4, 56),
(6, 69),
(7, 71),
(8, 72),
(13, 83);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `article_id` int(11) NOT NULL,
  `article` mediumtext NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`article_id`, `article`, `admin_id`) VALUES
(1, ' salem oue un rle central dans l e  maintien d\'une bonne santé. En privilégiant une alimentation riche en fruits, légumes, céréales complètes et sources de protéines maigres, on fournit à notre corps les nutriments essentiels dont il a besoin pour fonctionner de manière optimale. De plus, une bonne hydratation est cruciale pour maintenir le bon fonctionnement des organes et des systèmes corporels.', 2),
(2, ' salem oue un rle central dans l e  maintien d\'une bonne santé. En privilégiant une alimentation riche en fruits, légumes, céréales complètes et sources de protéines maigres, on fournit à notre corps les nutriments essentiels dont il a besoin pour fonctionner de manière optimale. De plus, une bonne hydratation est cruciale pour maintenir le bon fonctionnement des organes et des systèmes corporels.', 2),
(3, ' salem oue un rle central dans l e  maintien d\'une bonne santé. En privilégiant une alimentation riche en fruits, légumes, céréales complètes et sources de protéines maigres, on fournit à notre corps les nutriments essentiels dont il a besoin pour fonctionner de manière optimale. De plus, une bonne hydratation est cruciale pour maintenir le bon fonctionnement des organes et des systèmes corporels.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `user_id`) VALUES
(30, 63),
(31, 64),
(33, 80),
(34, 81);

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE `cours` (
  `cour_id` int(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `jour` varchar(40) NOT NULL,
  `horaire` time NOT NULL,
  `nb max` int(11) NOT NULL,
  `nb act` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cours`
--

INSERT INTO `cours` (`cour_id`, `nom`, `jour`, `horaire`, `nb max`, `nb act`, `trainer_id`) VALUES
(71, 'kick-boxing', 'jeudi', '12:00:00', 2, 2, 30),
(72, 'dance orientale', 'mardiiiiiiii', '13:00:00', 10, 1, 31),
(74, 'gymnastic', 'dimanche', '15:00:00', 10, 0, 31),
(75, 'spriiii', 'mardi', '13:00:00', 22, 0, 30),
(76, 'musculation', 'jeudi', '12:00:00', 10, 2, 31),
(80, 'sprinteee', 'jeudi', '12:00:00', 12, 0, 30),
(81, 'sppppp', 'jeunecne', '12:00:00', 12, 0, 30),
(82, 'yasedne', 'dednhedne', '12:00:00', 22, 0, 30),
(83, 'dfghjkl', 'cvghjk', '12:00:00', 23, 0, 30),
(84, 'hdnhdncd', 'jndcjnc', '12:00:00', 22, 0, 30);

-- --------------------------------------------------------

--
-- Table structure for table `inscription`
--

CREATE TABLE `inscription` (
  `inscription_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `cour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inscription`
--

INSERT INTO `inscription` (`inscription_id`, `client_id`, `cour_id`) VALUES
(84, 31, 75),
(85, 31, 76),
(90, 33, 71);

-- --------------------------------------------------------

--
-- Table structure for table `tarifs`
--

CREATE TABLE `tarifs` (
  `Id` int(40) NOT NULL,
  `period` varchar(40) NOT NULL,
  `Tarifs par personne` varchar(40) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tarifs`
--

INSERT INTO `tarifs` (`Id`, `period`, `Tarifs par personne`, `admin_id`) VALUES
(38, '3 Mois', '190 Dt', 8),
(39, '1 Mois', '90 Dt', 2);

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `trainer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`trainer_id`, `user_id`) VALUES
(30, 65),
(31, 66),
(35, 82);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `typee` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `typee`) VALUES
(54, 'monir', 'monir@gmail.com', '$2y$10$3Yz5x9mm7z13vqadOobPn.ris.fWKz7jjezHb2mO5a4RxF1iMlc6W', 'admin'),
(55, 'yassinee', 'benyeddjcdjncderyassine7@gmail.com', '$2y$10$gl071EQ7XqsMFpIjM4Jzze7oKxXuJzfcEs0q6NPXD5LMDmRrI0Gz2', 'admin'),
(56, 'nacerr', 'nacer@gmail.com', '$2y$10$LQ3qJszHVTEHvD6tfTv.p.lPFkwWxNtaJaa8kDHTe0hDXnpTsJwry', 'admin'),
(63, 'hamza', 'hamza@gmail.com', '$2y$10$DCFVGUelnKJFrabRxdNIBeB9.LlOZS.dxslUXP.MIRmizXySr/UJy', 'client'),
(64, 'aziz', 'aziz@gmail.com', 'azertyui', 'client'),
(65, 'yassine', 'hamzewi@gmail.com', 'azertyui', 'trainer'),
(66, 'mo7sen', 'mohsen@gmail.com', '$2y$10$Kr6JYvWKA6Hbpm7rkjoA7.5.O0skck93dJsmR5oye0f9CjVAsoTL6', 'trainer'),
(69, 'ayoub', 'ayoub@gmail.com', '$2y$10$..V0yKso/5n9KlEg0HUkEO/S4Nb3xMXntAxrRB3TblAqHAUNKeDXK', 'admin'),
(71, 'mohamed', 'mohamed@gmail.com', 'azertyui', 'admin'),
(72, 'hamoda', 'hamoda@gmail.com', '$2y$10$HxhMQXHkGCK17hE2r9Hh9OQEn8GovjIJplGzvy2LJbCicn4N4MNMi', 'admin'),
(80, 'nimo', 'nimo@gmail.com', '$2y$10$ogQn0FLqw3GUatzyyJIys.PNGZyF7yzGQ3Ow8L1pB.HkWX8Ej2kQa', 'client'),
(81, 'yasireeeeee', 'yasir@gmail.com', 'azertyui', 'client'),
(82, 'hamza', 'hamza1@gmail.com', 'azertyui', 'trainer'),
(83, 'nourchene', 'nourchen@gmail.com', 'azertyui', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `constraint_admin` (`user_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `blog_admin` (`admin_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`),
  ADD KEY `constraint_client` (`user_id`);

--
-- Indexes for table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`cour_id`),
  ADD KEY `cour_trainer` (`trainer_id`);

--
-- Indexes for table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`inscription_id`),
  ADD KEY `inscription_cl` (`client_id`),
  ADD KEY `inscription_cr` (`cour_id`);

--
-- Indexes for table `tarifs`
--
ALTER TABLE `tarifs`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `admin_tarifs` (`admin_id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`trainer_id`),
  ADD KEY `constraint_trainer` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cours`
--
ALTER TABLE `cours`
  MODIFY `cour_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `inscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tarifs`
--
ALTER TABLE `tarifs`
  MODIFY `Id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `trainer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `constraint_admin` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `constraint_client` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cour_trainer` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`trainer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_cl` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscription_cr` FOREIGN KEY (`cour_id`) REFERENCES `cours` (`cour_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tarifs`
--
ALTER TABLE `tarifs`
  ADD CONSTRAINT `admin_tarifs` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trainers`
--
ALTER TABLE `trainers`
  ADD CONSTRAINT `constraint_trainer` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
