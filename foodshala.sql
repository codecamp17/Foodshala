-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for foodshala
CREATE DATABASE IF NOT EXISTS `foodshala` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `foodshala`;

-- Dumping structure for table foodshala.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `preference` varchar(100) NOT NULL,
  `contact_number` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table foodshala.customers: ~3 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
REPLACE INTO `customers` (`id`, `first_name`, `last_name`, `email`, `preference`, `contact_number`, `password`) VALUES
	(4, 'yo man', 'Nema', 'recruiter@gmail.com', 'non-veg', 2147483647, '2a52334798a6386d01f85f74a5fd3d3a'),
	(6, 'john', 'nema', 'abc@gmail.com', 'veg', 4512512, '25f9e794323b453885f5181f1b624d0b'),
	(7, 'asdf', 'jhg', 'hjg@sdf.com', 'veg', 741852, '25f9e794323b453885f5181f1b624d0b');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table foodshala.menu_items
CREATE TABLE IF NOT EXISTS `menu_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_imagepath` varchar(255) NOT NULL,
  `item_price` int(100) NOT NULL,
  `item_type` varchar(100) NOT NULL,
  `item_desc` varchar(100) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table foodshala.menu_items: ~3 rows (approximately)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
REPLACE INTO `menu_items` (`item_id`, `res_id`, `item_name`, `item_imagepath`, `item_price`, `item_type`, `item_desc`) VALUES
	(7, 2, 'chicken roll', 'uploads/2019_05_16_11_57_14_index.jpg', 160, 'non-veg', 'Chinese roll'),
	(8, 2, 'pizza', 'uploads/2019_05_16_11_57_39_pizza.jpg', 250, 'veg', 'american'),
	(9, 1, 'burger', 'uploads/2019_05_16_12_12_28_burger.jpg', 120, 'veg', 'Italian');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Dumping structure for table foodshala.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'yet to be delivered',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table foodshala.orders: ~1 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
REPLACE INTO `orders` (`id`, `user_id`, `res_id`, `address`, `date`, `payment_type`, `total`, `mobile`, `status`) VALUES
	(3, 5, 1, 'New Jersey', '2019-05-16', 'Cash on Delivery', 920, 2147483647, 'yet to be delivered');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table foodshala.restaurants
CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `res_name` varchar(100) NOT NULL,
  `res_email` varchar(100) NOT NULL,
  `res_number` int(100) NOT NULL,
  `res_city` varchar(100) NOT NULL,
  `res_password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table foodshala.restaurants: ~2 rows (approximately)
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
REPLACE INTO `restaurants` (`id`, `res_name`, `res_email`, `res_number`, `res_city`, `res_password`) VALUES
	(1, 'Box8', 'box8@gmail.com', 2147483647, 'Gurgaon', '25f9e794323b453885f5181f1b624d0b'),
	(2, 'asd', 'asd@asd.com', 123456789, 'asdpur', '7815696ecbf1c96e6894b779456d330e');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;

-- Dumping structure for table foodshala.user_cart
CREATE TABLE IF NOT EXISTS `user_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table foodshala.user_cart: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_cart` DISABLE KEYS */;
REPLACE INTO `user_cart` (`id`, `user_id`, `res_id`, `item_name`, `item_quantity`, `item_price`, `total_price`) VALUES
	(7, 5, 2, 'chicken roll', 2, 160, 320),
	(9, 5, 1, 'burger', 5, 120, 600);
/*!40000 ALTER TABLE `user_cart` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
