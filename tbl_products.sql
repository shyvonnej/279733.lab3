-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 03:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tmjproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `prid` int(5) NOT NULL,
  `prname` varchar(50) NOT NULL,
  `prprice` varchar(10) NOT NULL,
  `prqty` varchar(5) NOT NULL,
  `prdesc` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`prid`, `prname`, `prprice`, `prqty`, `prdesc`) VALUES
(1, 'Fever Tree Madagascan Cola', '12.00', '50', 'Our cola has been carefully crafted with a rich and distinctive blend of spices and citrus fruits, including Madagascan vanilla, to specifically enhance the complex flavours of the world\'s finest rums, whiskies and bourbons.'),
(2, 'Fever Tree Handpicked Rose Lemonade', '12.00', '50', 'Using natural flavourings that include the aroma and taste of freshly squeezed lemons, including \'Sfumatrice-Torchio\' extracts of Sicilian lemons and fragrant oils from two varieties of rose form the Mediterranean, we have created a delicious subtly sweet lemonade.'),
(3, 'Fever Tree Premium Lemonade', '12.00', '50', 'With the aroma and taste of freshly squeezed lemons, we\'ve created a superb, clear, sparkling lemonade. Perfectly balanced to be mixed with the finest fruit cups, vodkas or gins, it\'s equally delicious as a sophisticated soft drink on its own.'),
(4, 'Kettle Chips Krinkle Cut Truffle & Sea Salt', '14.00', '60', 'Kettle Brand’s Bougiest chip yet, Truffle + Sea Salt is earthy, oaky and downright decadent. Cut thick and flavored with a boldness that’ll make you consider doing a little truffle hunting of your own.'),
(5, 'Kettle Chips Jalapeno', '14.00', '55', 'If you can’t take the heat, get out of the chips, because Kettle Brand Jalapeno Potato Chips have absolutely no chill. Cut thick and flavored with authentic jalapeno, every hearty bite slaps harder than the last. '),
(6, 'Kettle Chips Salt & Fresh Ground Pepper', '15.00', '65', 'This iconic duo has never been so extra. That’s because every thick-cut Salt & Fresh Ground Pepper Kettle Brand Chip is seasoned right past the point of bold.   '),
(7, 'Jinro Melona', '16.00', '40', 'A sweet combination of Korea’s No.1 soju\r\nand No.1 ice cream! Enjoy a fun and new drinking experience with Jinro Melona that will fill your mouth will the sweet and soft flavor of melon!'),
(8, 'Jinro Grapefruit', '16.00', '45', 'Fruit juice in soju is becoming more popular, and Jinro Grapefruit has fresh flavor and taste that everyone can enjoy. Easy to drink with an alcohol content of only 13%, your favorite diet fruit meets Korea’s favorite soju brand, “Chamisul”'),
(9, 'Jinro Green Grape', '16.00', '35', 'Fruit juice in soju is becoming more popular, and Jinro Green Grape has unique green grape flavor and taste that everyone can enjoy. 	Easy to drink with an alcohol content of only 13%, its clean and fresh flavor will capture your heart.'),
(10, 'Jinro Strawberry', '16.00', '30', 'Jinro Strawberry Soju provides the sweet taste of ripened strawberry in each sip while maintaining its light and refreshing experience. Jinro Strawberry Soju is a neutral spirit with natural and artificial flavors.'),
(11, 'Yobrick Original Yogurt Drink', '7.00', '40', 'Light, tart and refreshing on palate, taste even better when chilled.'),
(12, 'Yobrick Sakura Yogurt Drink', '7.00', '46', 'The soft floral taste of Japan\'s iconic flower with a springy tartness, celebrates spring with every sip.'),
(13, 'Yobrick Pineapple Yogurt Drink', '7.00', '38', 'Zesty, fruity and tropical in every gulp, tart flavor remains a favorite in the most refreshing way.'),
(14, 'Tyrrells Chips Mature Cheddar & Chive', '14.00', '40', 'The tangy hit of mature cheddar with the oniony twang of that most snippable of herbs.'),
(15, 'Tyrrells Chips Smoked Paprika', '14.00', '40', 'The secret weapon of the Spanish style cook: properly peppery smoked paprika.'),
(16, 'Tyrrells Chips Biker Burger', '14.00', '40', 'A union of delicious and juicy flavours. Inspired by the Hairy Biker’s succulent burger recipe, a perfect combination of beefy notes with hints of chipotle chilli.'),
(17, 'Tyrrells Chips Sea Salt', '14.00', '40', 'What ﬁner way to honour the steadying heft of the mighty Furrow than simply to sprinkle it with a soupçon of sea salt?'),
(18, 'YumEarth Organic Vitamin C Fruit Drops', '15.00', '32', 'Vitamin C? Check. Organic? Check. Fun fruity flavors? Check. Enjoy them all: pomegranate, strawberry, blueberry and cherry.'),
(19, 'YumEarth Assorted Flavor Gummy Bears', '15.00', '26', 'Gluten free bears everywhere! Full of fruit flavors – a delicious mix of pomegranate, mango, peach and strawberry.Gluten free bears everywhere! Full of fruit flavors – a delicious mix of pomegranate, mango, peach and strawberry.'),
(20, 'YumEarth Organic Peppermint Hard Candy', '15.00', '25', 'Fresh, cool, and super minty - shop our organic peppermint hard candy now!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`prid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
