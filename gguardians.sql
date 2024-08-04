-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2024 at 09:06 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gguardians`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int NOT NULL,
  `categoryDescription` varchar(255) DEFAULT NULL,
  `categoryTitle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryDescription`, `categoryTitle`) VALUES
(1, 'It includes various types of fertilizers', 'Fertilizers'),
(2, 'It includes various types of pesticides', 'Pesticides');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderId` int NOT NULL,
  `userAddress` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `userPhone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderId`, `userAddress`, `userEmail`, `userName`, `userPhone`) VALUES
(1, '', 'user@gmail.com', 'Sumit S', '8974561230'),
(2, '', 'user@gmail.com', 'User test', '8974561230'),
(3, 'Pune', 'user@gmail.com', 'Sumit S', '8974561230'),
(4, 'Pune', 'user@gmail.com', 'Milind Godase', '9890938481'),
(5, 'none', 'user@gmail.com', 'Amit P', '8974561230'),
(6, 'Pune', 'user@gmail.com', 'User Demo', '8974561230');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pId` int NOT NULL,
  `pDesc` varchar(3000) DEFAULT NULL,
  `pDiscount` int NOT NULL,
  `pName` varchar(255) DEFAULT NULL,
  `pPhoto` varchar(255) DEFAULT NULL,
  `pPrice` int NOT NULL,
  `pQuantity` int NOT NULL,
  `category_categoryId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pId`, `pDesc`, `pDiscount`, `pName`, `pPhoto`, `pPrice`, `pQuantity`, `category_categoryId`) VALUES
(1, 'Made of the inner fibres of coconut, coco peat is lightweight, well draining and retains moisture for longer without getting water logged. Naturally anti-fungal, it is essential in healthy potting mixes. Excellent for soil aeration and seed germination as the loose structure allows for easy root development. Coco Brick is an excellent growing medium for soil mixes.', 5, 'Cocopeat Block', '1-kg-cocopeat-block-32180447608964.jpg', 300, 30, 1),
(2, 'Ugaoo Cow Manure is an excellent fertilizer rich in organic matter that helps to improve aeration and the breaking up of compact soils. It is developed from composted cow dung of the Indian Desi cow and is incredibly rich with beneficial bacteria that convert soil nutrients into readily available forms for the tender plant.', 10, 'Cow Manure', '5-kg-cow-manure-31256517378180.jpg', 450, 40, 1),
(3, 'Vermicompost is made by breaking down the organic material through the use of worms. Vermicompost improves biological, chemical, and physical properties of the soil. The worms break down soil and organic matter, so the nutrients are immediately available to plants. Vermicompost enhances plant growth, suppresses disease in plants, increases porosity and microbial activity in soil, and improves water retention and aeration.', 4, 'Vermicompost', '5-kg-vermicompost-31258231996548.jpg', 370, 45, 1),
(4, 'Made of dehydrated neem leaves, kernels, and bark, the neem cake powder works as an organic fertiliser with various micro and macro nutrients, as well as protects roots from pests. It controls soil based pathogens like soil grubs, termites, and nematodes. It improves the efficiency of fertilisers (nitrogen) essential for plant health and growth and also makes the soil more well draining.\n', 6, 'Neem Cake Powder - 1 kg', 'neem-cake-powder-1-kg-31730858786948.jpg', 360, 30, 1),
(5, 'Plantic Total Plant Care 3 in 1 Dosage: 3ML to 5ML in 1 Litre of water and spray on the plants.\nFor better results, use after every 7 days.\nUse preferably in the early morning/late evening.\nShake well before use.\nDO NOT OVERDOSE THE PLANTS.', 5, 'Plantic Total Plant Care 3 in 1 Organic Fungicide, Miticide, Insecticide', 'total-plant-care1.jpg', 390, 25, 2),
(6, '1. Tafgor is highly effective in controlling the sucking and caterpillar pests.\n2. It is highly compatible with other insecticides and fungicides.', 2, 'Tata Rallis Tafgor Dimethoate 30% EC Insecticide', 'TafgorInsecticide-bharatAgriKrushidukan.jpg', 460, 33, 2),
(7, 'Brand Is Humesol. Form Factor Is Liquid. Type Is Pesticide. Net Quantitys Is 500 Ml. Model Name Is Humesol_100ml. Container Type Is Bottle. Quantity Is 500 Ml.', 4, 'Humesol Humesol_100ml Pesticide', 'shopping.jpg', 650, 50, 2),
(8, '1) Geolife No Virus Chilli is a ï¬rst effective Anti Virus product in the world to protect crops from all types of viral diseases.\n\n2) It is a Broad Spectrum Organic Virucide which protects the plant from Virus and also improves resistance against them.\n\n3) It is a combination of rare herbs which stops virus immediately and gives fresh growth and better yield in plant.\n\n4) No Virus enters the plant through the stomatal opening and is translocated into the plant system through the vascular bundles.\n\n5) No Virus on entering the effected plant cell encapsulates the viron particles.\n\n6) No Virus opens up the conductive tissues blocked by the virus particles and the plant cells starts to recover & the new leaves emerges virus free.', 1, 'Geolife No Virus Organic Viricide For Chilli Plants', 'productcdr_1024x1024.jpg', 250, 29, 2),
(9, 'Superkiller 25%EC DESCRIPTION Superkiller (CYPERMETHRIN 25% EC) belongs to Pyrethriod ester group of insecticides. MODE OF ACTION Superkiller controls the insects by its contact and stomach poison action.It can be applied as a foliar spray.', 3, 'Dhanuka SuperKiller 25% EC', 'dhanuka.jpg', 460, 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `user_address` varchar(1500) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_phone` varchar(12) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `user_pic` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_address`, `user_email`, `user_name`, `user_password`, `user_phone`, `user_type`, `user_pic`) VALUES
(1, 'Maharashtra', 'admin@gmail.com', 'Omkar Kambire', '1234', '9874563210', 'admin', NULL),
(2, 'Pune', 'user@gmail.com', 'Om Kambire', '4321', '8974561230', 'normal', NULL),
(6, 'ABC', 'test@gmail.com', 'Omkar Kambire', '4561', '4789', 'normal', 'default.jpg'),
(8, 'text', 'demo@gmail.com', 'test tt', '1', '1', 'normal', 'default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pId`),
  ADD KEY `FK825v7lftk50hyta3jlxerywcb` (`category_categoryId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK825v7lftk50hyta3jlxerywcb` FOREIGN KEY (`category_categoryId`) REFERENCES `category` (`categoryId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
