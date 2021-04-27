-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 03:16 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group19`
--

-- --------------------------------------------------------

--
-- Table structure for table `added_to`
--

CREATE TABLE `added_to` (
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `added_to`
--

INSERT INTO `added_to` (`bid`, `pid`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(2, 1),
(2, 3),
(3, 6),
(3, 7),
(4, 5),
(5, 1),
(6, 9),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16);

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `bid` int(10) NOT NULL,
  `total_price` double DEFAULT NULL,
  `pid_list` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basket`
--

INSERT INTO `basket` (`bid`, `total_price`, `pid_list`) VALUES
(1, 80, '1,2'),
(2, 140, '1,3'),
(3, 200, '3,4'),
(4, 60, '6,10,11'),
(5, 230, '4,15'),
(6, 280, '1,2,3,4'),
(7, 500, '7'),
(8, 520, '1,7'),
(9, 40, '10,11'),
(10, 380, '12,13'),
(11, 650, '5,14'),
(12, 95, '1,8'),
(13, 360, '13,16'),
(14, 220, '1,3,4'),
(15, 40, '10,11'),
(16, 250, '14');

-- --------------------------------------------------------

--
-- Table structure for table `billing_info`
--

CREATE TABLE `billing_info` (
  `seller_address` char(70) DEFAULT NULL,
  `seller_contact_info` char(50) DEFAULT NULL,
  `seller_payment_info` char(50) DEFAULT NULL,
  `card_id` bigint(16) DEFAULT NULL,
  `oid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_info`
--

INSERT INTO `billing_info` (`seller_address`, `seller_contact_info`, `seller_payment_info`, `card_id`, `oid`) VALUES
('Atasehir/ Istanbul', '05385410938', 'INVOICE COMES HERE', 1029384105620349, 1),
('Atasehir/ Istanbul', '05375410178', 'INVOICE COMES HERE', 1234517821918191, 2),
('Esenyurt/ Istanbul', '05345099090', 'INVOICE COMES HERE', 3249812693812691, 3),
('Kadikoy/ Istanbul', '05345091324', 'INVOICE COMES HERE', 2938947989189171, 4),
('Acibadem/ Istanbul', '05425420487', 'INVOICE COMES HERE', 1247726726617214, 5),
('Acibadem/ Istanbul', '05455467826', 'INVOICE COMES HERE', 1192868728172515, 6),
('Kizilay/ Ankara', '05355903242', 'INVOICE COMES HERE', 1005296061023957, 7),
('Acibadem/ Istanbul', '05395092341', 'INVOICE COMES HERE', 1247986826176231, 8),
('Besiktas / Istanbul', '05385192030', 'INVOICE COMES HERE', 4205120346931091, 9),
('Bati Atasehir/ Istanbul', '05364538798', 'INVOICE COMES HERE', 1013284105623425, 10),
('Maltepe / Istanbul', '02163395015', 'INVOICE COMES HERE', 4229384105192746, 11),
('Kozyatagi /Istanbul', '05325436426', 'INVOICE COMES HERE', 1093719276817281, 12);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cid`, `pid`, `uid`, `date`) VALUES
(1, 5, 1005, '2020-02-03'),
(2, 5, 1005, '2019-03-10'),
(3, 5, 1008, '2020-04-21'),
(4, 5, 1007, '2019-08-13'),
(5, 8, 1007, '2020-04-23'),
(6, 4, 1007, '2019-04-12'),
(7, 15, 1011, '2020-01-30'),
(8, 14, 1013, '2019-02-15'),
(9, 13, 1014, '2020-01-13'),
(10, 12, 1016, '2019-02-10'),
(11, 10, 1008, '2020-03-19'),
(12, 3, 1015, '2019-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `uid` int(10) NOT NULL,
  `card_id` bigint(16) DEFAULT NULL,
  `bid` int(10) DEFAULT NULL,
  `oid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`uid`, `card_id`, `bid`, `oid`) VALUES
(1005, 1029384105620349, 1, 1),
(1007, 1048265018491038, 2, 2),
(1008, 8194710517294910, 3, 3),
(1010, 8616950197868193, 4, 4),
(1011, 4810386761988658, 5, 5),
(1012, 1847478191919021, 6, 6),
(1013, 4913774919102938, 7, 7),
(1014, 4818979868175812, 8, 8),
(1015, 501029305125124, 9, 9),
(1016, 5871717399918891, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `manage_order`
--

CREATE TABLE `manage_order` (
  `uid` int(10) NOT NULL,
  `oid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_order`
--

INSERT INTO `manage_order` (`uid`, `oid`) VALUES
(1001, 1),
(1001, 2),
(1001, 9),
(1002, 3),
(1002, 4),
(1002, 10),
(1003, 5),
(1003, 6),
(1004, 7),
(1004, 8);

-- --------------------------------------------------------

--
-- Table structure for table `manage_product`
--

CREATE TABLE `manage_product` (
  `uid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_product`
--

INSERT INTO `manage_product` (`uid`, `pid`) VALUES
(1006, 1),
(1006, 3),
(1006, 5),
(1006, 7),
(1006, 9),
(1006, 11),
(1006, 13),
(1006, 15),
(1009, 2),
(1009, 4),
(1009, 6),
(1009, 8),
(1009, 10),
(1009, 12),
(1009, 14),
(1009, 16);

-- --------------------------------------------------------

--
-- Table structure for table `order_`
--

CREATE TABLE `order_` (
  `oid` int(10) NOT NULL,
  `invoice` char(30) NOT NULL,
  `status` char(15) DEFAULT NULL,
  `expiration_time` char(15) NOT NULL,
  `cargo_address` char(70) DEFAULT NULL,
  `deposit_amount` char(10) DEFAULT NULL,
  `bid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_`
--

INSERT INTO `order_` (`oid`, `invoice`, `status`, `expiration_time`, `cargo_address`, `deposit_amount`, `bid`) VALUES
(1, 'invoice.jpg', 'Deposit Paid', '30/12/2020/', 'Atasehir/ Istanbul', '16', 1),
(2, 'invoice.jpg', 'Delivered', '0', 'Bati Atasehir/ Istanbul', '0', 2),
(3, 'invoice.jpg', 'Preparing', '0', 'Beykoz/ Istanbul', '0', 3),
(4, 'invoice.jpg', 'Preparing', '0', 'Avcilar/ Istanbul', '0', 4),
(5, 'invoice.jpg', 'Delivered', '0', 'Dogu Atasehir/ Istanbul', '0', 5),
(6, 'invoice.jpg', 'Deposit Paid', '26/12/2020', 'Esenyurt/ Istanbul', '56', 6),
(7, 'invoice.jpg', 'Delivered', '0', 'Kosuyolu/ Istanbul', '0', 7),
(8, 'invoice.jpg', 'Shipped', '0', 'Acibadem/ Istanbul', '0', 8),
(9, 'invoice.jpg', 'Refunded', '0', 'Cekmekoy/ Istanbul', '0', 9),
(10, 'invoice.jpg', 'Expired', '10/12/2020', 'Dogu Atasehir/ Istanbul', '76', 10),
(11, 'invoice.jpg', 'Delivered', '0', 'Kozyatagi/ Istanbul', '0', 11),
(12, 'invoice.jpg', 'Shippeed', '0', 'Kucukyali/ Istanbul', '0', 12),
(13, 'invoice.jpg', 'Preparing', '0', 'Tuzla/ Istanbul', '0', 13),
(14, 'invoice.jpg', 'Delivered', '17/12/2020', 'Sisli/ Istanbul', '44', 14),
(15, 'invoice.jpg', 'Refunded', '0', 'Bati Atasehir/ Istanbul', '0', 15),
(16, 'invoice.jpg', 'Expired', '20/11/2020', 'Dogu Atasehir/ Istanbul', '50', 16);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(10) NOT NULL,
  `name` char(25) NOT NULL,
  `price` double NOT NULL,
  `overall_rating` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `name`, `price`, `overall_rating`) VALUES
(1, 'Sport Socks', 20, 9),
(2, 'Sport Gloves', 60, 8),
(3, 'Soccer Jersey', 120, 10),
(4, 'Soccer Ball', 80, 8),
(5, 'Wireless Keyboard', 400, 10),
(6, 'Tooth Brush', 20, 8),
(7, 'Basketball Sneakers', 500, 6),
(8, 'Tennis Racket', 75, 7),
(9, 'Natural Herb Shampoo', 30, 8.2),
(10, 'Soap', 15, 8.5),
(11, 'Lip Gloss', 25, 10),
(12, 'Men Perfume', 180, 8),
(13, 'Women Perfume', 200, 8),
(14, 'Wireless Headphone', 250, 9),
(15, 'Basketball Ball', 150, 8),
(16, 'Sun Screen', 160, 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_manager`
--

CREATE TABLE `product_manager` (
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_manager`
--

INSERT INTO `product_manager` (`uid`) VALUES
(1006),
(1009);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `uid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `date` date NOT NULL,
  `rating` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`uid`, `pid`, `date`, `rating`) VALUES
(1005, 1, '2019-10-11', 6),
(1007, 2, '2020-11-03', 5),
(1008, 3, '2019-01-09', 7),
(1010, 4, '2020-01-01', 2),
(1010, 15, '2020-12-12', 9),
(1010, 16, '2020-12-13', 4),
(1011, 5, '2019-02-04', 5),
(1012, 7, '2019-03-03', 4),
(1013, 6, '2020-04-15', 8),
(1014, 8, '2020-05-10', 1),
(1015, 10, '2019-03-18', 3),
(1015, 12, '2020-10-11', 2),
(1015, 13, '2020-10-29', 9),
(1015, 14, '2019-02-27', 9),
(1016, 9, '2020-04-09', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sales_manager`
--

CREATE TABLE `sales_manager` (
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_manager`
--

INSERT INTO `sales_manager` (`uid`) VALUES
(1001),
(1002),
(1003),
(1004);

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `uid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`uid`, `pid`) VALUES
(1005, 1),
(1005, 3),
(1005, 5),
(1007, 2),
(1007, 5),
(1008, 4),
(1010, 3),
(1011, 8),
(1012, 10),
(1013, 9),
(1014, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_`
--

CREATE TABLE `user_` (
  `uid` int(10) NOT NULL,
  `username` char(20) DEFAULT NULL,
  `password_` char(20) DEFAULT NULL,
  `address` char(70) DEFAULT NULL,
  `phone_num` bigint(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_`
--

INSERT INTO `user_` (`uid`, `username`, `password_`, `address`, `phone_num`) VALUES
(1001, 'Erenakyildiz', 'eren_134', 'istanbul tuzla aydinli mahallesi', 5375410178),
(1002, 'Hakanbuyuktopcu', 'Hakbutop345', 'istanbul kadikoy kozyatagi mahallesi', 5313519808),
(1003, 'melisdogan', 'melo420', 'istanbul kadikoy kosuyolu mahallesi', 5325503940),
(1004, 'sencereyiz', 'sencor_reyizman', 'istanbul kadikoy moda mahallesi', 5532640994),
(1005, 'shoppinghunter123', 'shopshop64', 'istanbul sariyer', 5345939491),
(1006, 'pursemaster', 'ilovepurses13', 'istanbul tuzla yenibirlik osb mahallesi', 5335103068),
(1007, 'john doe', '142klz1j', 'istanbul tuzla esenyali mahallesi', 5389819302),
(1008, 'Angarali06', 'angaram', 'ankara kizilay cincin mahallesi', 5320660606),
(1009, 'Mehmet ustundag', ' canimkizim', 'istanbul bagcilar', 5423245353),
(1010, 'babyoda', 'starwars1900', 'istanbul kadikoy', 5365410294),
(1011, 'iloveobama98', 'blacklivesmatter36', 'istanbul bagcilar', 5365410295),
(1012, 'john mayer', '1l45k1', 'istanbul kadikoy limon mahallesi', 5334235454),
(1013, 'karl', 'lovelife32', 'istanbul kadikoy tarim mahallesi', 5374110403),
(1014, 'kepler35', 'keplerisgreat99', 'istanbul besiktas kartopu mahallesi', 5435466578),
(1015, 'kircan54', 'password', 'istanbul yenikoy kale mahallesi', 5341532343),
(1016, 'usernamelol', 'Sqz123', 'istanbul yenikoy sari mahallesi', 5315350930);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `added_to`
--
ALTER TABLE `added_to`
  ADD PRIMARY KEY (`bid`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `billing_info`
--
ALTER TABLE `billing_info`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cid`,`pid`,`uid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `bid` (`bid`),
  ADD KEY `oid` (`oid`);

--
-- Indexes for table `manage_order`
--
ALTER TABLE `manage_order`
  ADD PRIMARY KEY (`uid`,`oid`),
  ADD KEY `oid` (`oid`);

--
-- Indexes for table `manage_product`
--
ALTER TABLE `manage_product`
  ADD PRIMARY KEY (`uid`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `order_`
--
ALTER TABLE `order_`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `product_manager`
--
ALTER TABLE `product_manager`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`uid`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `sales_manager`
--
ALTER TABLE `sales_manager`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`uid`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `user_`
--
ALTER TABLE `user_`
  ADD PRIMARY KEY (`uid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `added_to`
--
ALTER TABLE `added_to`
  ADD CONSTRAINT `added_to_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `basket` (`bid`),
  ADD CONSTRAINT `added_to_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`);

--
-- Constraints for table `billing_info`
--
ALTER TABLE `billing_info`
  ADD CONSTRAINT `billing_info_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `order_` (`oid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `customer` (`uid`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user_` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `basket` (`bid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`oid`) REFERENCES `order_` (`oid`);

--
-- Constraints for table `manage_order`
--
ALTER TABLE `manage_order`
  ADD CONSTRAINT `manage_order_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `sales_manager` (`uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `manage_order_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `order_` (`oid`) ON DELETE CASCADE;

--
-- Constraints for table `manage_product`
--
ALTER TABLE `manage_product`
  ADD CONSTRAINT `manage_product_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `product_manager` (`uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `manage_product_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE;

--
-- Constraints for table `order_`
--
ALTER TABLE `order_`
  ADD CONSTRAINT `order__ibfk_1` FOREIGN KEY (`bid`) REFERENCES `basket` (`bid`) ON UPDATE CASCADE;

--
-- Constraints for table `product_manager`
--
ALTER TABLE `product_manager`
  ADD CONSTRAINT `product_manager_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user_` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `customer` (`uid`),
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`);

--
-- Constraints for table `sales_manager`
--
ALTER TABLE `sales_manager`
  ADD CONSTRAINT `sales_manager_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user_` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `search`
--
ALTER TABLE `search`
  ADD CONSTRAINT `search_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `customer` (`uid`),
  ADD CONSTRAINT `search_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
