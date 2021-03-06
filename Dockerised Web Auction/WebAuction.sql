CREATE DATABASE IF NOT EXISTS WebAuction;

USE WebAuction;
-- --------------------------------------------------------
--
-- Table structure for table `User`
--
CREATE TABLE User
(userid int (11) NOT NULL AUTO_INCREMENT,
name VARCHAR (50) NOT NULL,
username VARCHAR (20) NOT NULL,
password VARCHAR (20) NOT NULL,
PRIMARY KEY (userid));
-- --------------------------------------------------------
--
-- Table structure for table `Category`
--
CREATE TABLE Category
(catid int (11) NOT NULL AUTO_INCREMENT,
catName VARCHAR (50) NOT NULL,
PRIMARY KEY (catid));
-- --------------------------------------------------------
--
-- Table structure for table `Item`
--
CREATE TABLE Item
(itemid int (11) NOT NULL AUTO_INCREMENT,
itemname VARCHAR (50) NOT NULL,
catid int (11) NOT NULL,
sellerid int (11) NOT NULL,
PRIMARY KEY (itemid),
FOREIGN KEY (catid) REFERENCES Category (catid),
FOREIGN KEY (sellerid) REFERENCES User (userid));
-- --------------------------------------------------------
--
-- Table structure for table `Auction`
--
CREATE TABLE Auction
(auctionId int (11) NOT NULL AUTO_INCREMENT,
itemId int (11) NOT NULL,
startPrice DOUBLE NOT NULL,
currentBid DOUBLE NOT NULL,
PRIMARY KEY (auctionId),
FOREIGN KEY (itemId) REFERENCES Item (itemid));
-- --------------------------------------------------------
--
-- Table structure for table `Bid`
--
CREATE TABLE Bid
(bidId int (11) NOT NULL AUTO_INCREMENT,
auctionId int (11) NOT NULL,
bidderId int (11) NOT NULL,
bidAmount DOUBLE NOT NULL,
time VARCHAR (50) NOT NULL,
PRIMARY KEY (bidId),
FOREIGN KEY (auctionId) REFERENCES Auction (auctionId),
FOREIGN KEY (bidderId) REFERENCES User (userid));
-- --------------------------------------------------------
--
-- Dumping data for table `User`
--
INSERT INTO `User` (`userid`, `name`, `username`, `password`) VALUES
(1, 'Khalid Mohamed', 'kam1002', 'arsenal'),
(2, 'Jake Smith', 'jak1002', 'fan');
-- --------------------------------------------------------
--
-- Dumping data for table `Category`
--
INSERT INTO `Category` (`catid`, `catName`) VALUES
(1, 'Vehicle'),
(2, 'Mobile Phone'),
(3, 'Clothing'),
(4, 'Toys');
-- --------------------------------------------------------
--
-- Dumping data for table `Item`
--
INSERT INTO `Item` (`itemid`, `itemname`, `catid`, `sellerid`) VALUES
(1, 'BMW 116i', '1', '1'),
(2, 'Audi A3', '1', '1'),
(3, 'Iphone 6', '2', '1'),
(4, 'Iphone 7s', '2', '1'),
(5, 'Plain T-Shirt', '3', '1'),
(6, 'Black Boots', '3', '1'),
(7, 'Yellow Flat Cap', '3', '1'),
(8, 'Lego Bricks', '4', '1'),
(9, 'Fireman Sam Doll', '4', '1'),
(10, 'Jaguar XJ', '1', '2'),
(11, 'Ford Focus', '1', '2'),
(12, 'Samsung Galaxy S5', '2', '2'),
(13, 'Blackberry ', '2', '2'),
(14, 'Google Pixel ', '2', '2'),
(15, 'Primark Vest', '3', '2'),
(16, 'Gucci Belt', '3', '2'),
(17, 'Winter Coat', '3', '2'),
(18, 'Bouncy Ball', '4', '2'),
(19, 'RC Car', '4', '2'),
(20, 'Mini Pram', '4', '2');
-- --------------------------------------------------------
--
-- Dumping data for table `Auction`
--
INSERT INTO `Auction` (`auctionId`, `itemId`, `startPrice`, `currentBid`) VALUES
(1, 1, 3500, 3500),
(2, 2, 5000, 5000),
(3, 3, 500, 500),
(4, 4, 850, 850),
(5, 5, 15, 15),
(6, 6, 30, 30),
(7, 7, 20, 20),
(8, 8, 5, 5),
(9, 9, 9, 9),
(10, 10, 35000, 35000),
(11, 11, 1200, 1200),
(12, 12, 600, 600),
(13, 13, 300, 300),
(14, 14, 700, 700),
(15, 15, 4, 4),
(16, 16, 50, 50),
(17, 17, 20, 20),
(18, 18, 8, 8),
(19, 19, 70, 70),
(20, 20, 12, 12);
-- --------------------------------------------------------



