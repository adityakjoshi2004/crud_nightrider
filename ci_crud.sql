-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 01:07 PM
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
-- Database: `ci_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`) VALUES
(9, 'white shirt', 'company - raymonds   || colour - black ||size available -L , XL , XXL'),
(10, 'shoes', 'company name - Adidas  , Nike  , campus  ||   type - sneakers , running shoes || size uk - 9 , 10 ,11     ');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL,
  `availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`name`, `company_name`, `price`, `image`, `discription`, `availability`) VALUES
(' GW0491G4', 'GUESS', '[15995]', '[value-4]', 'The GW0491G4, with a case thickness of 11mm, comes with a 2-year warranty, making it a reliable choice for your casual outings.', 0),
(' GW0491G4', 'GUESS', '[15995]', '[value-4]', 'The GW0491G4, with a case thickness of 11mm, comes with a 2-year warranty, making it a reliable choice for your casual outings.', 0),
(' GW0491G4', 'GUESS', '[15995]', '[value-4]', 'The GW0491G4, with a case thickness of 11mm, comes with a 2-year warranty, making it a reliable choice for your casual outings.', 0),
(' GW0491G4', 'GUESS', '[15995]', '[value-4]', 'The GW0491G4, with a case thickness of 11mm, comes with a 2-year warranty, making it a reliable choice for your casual outings.', 0),
(' GW0491G4', 'GUESS', '[15995]', '[value-4]', 'The GW0491G4, with a case thickness of 11mm, comes with a 2-year warranty, making it a reliable choice for your casual outings.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `fname`) VALUES
(1, 'ndevierte@gmail.com', 'nurhodelta', 'Neovic Devierte'),
(2, 'g@gmail.com', 'cepe', 'Gojo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
