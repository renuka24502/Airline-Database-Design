-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: airlines
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aircrafts`
--

DROP TABLE IF EXISTS `aircrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aircrafts` (
  `AC_ID` int(11) NOT NULL,
  `Aircraft_capacity` int(11) NOT NULL,
  `MFD_BY` varchar(50) NOT NULL,
  `MFD_ON` date NOT NULL,
  PRIMARY KEY (`AC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircrafts`
--

LOCK TABLES `aircrafts` WRITE;
/*!40000 ALTER TABLE `aircrafts` DISABLE KEYS */;
INSERT INTO `aircrafts` VALUES (2324,190,'AAR Corporation','1997-01-01'),(2325,195,'AviaBellanca Aircraft','1997-02-02'),(2326,200,'Blackburn Aircraft','1997-03-03'),(2327,250,'Boeing','1997-04-04'),(2328,300,'Textron','1997-05-05'),(2329,350,'Deccan Corporation','1997-06-06'),(2330,400,'Lockheed','1997-07-07'),(2331,450,'Northrop Grumman','1997-08-08'),(2332,500,'Safran Group','1997-09-09'),(2333,550,'General Dynamics Corporation','1997-10-10');
/*!40000 ALTER TABLE `aircrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airfare`
--

DROP TABLE IF EXISTS `airfare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airfare` (
  `AFID` int(11) NOT NULL,
  `Fare` int(11) NOT NULL,
  PRIMARY KEY (`AFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airfare`
--

LOCK TABLES `airfare` WRITE;
/*!40000 ALTER TABLE `airfare` DISABLE KEYS */;
INSERT INTO `airfare` VALUES (400,5000),(401,5500),(402,6000),(403,6500),(404,7000),(405,7500),(406,8000),(407,8500),(408,9000),(409,9500);
/*!40000 ALTER TABLE `airfare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches` (
  `BRID` varchar(10) NOT NULL,
  `Centre` varchar(40) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `STID` varchar(10) NOT NULL,
  PRIMARY KEY (`BRID`),
  KEY `STID` (`STID`),
  CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`STID`) REFERENCES `state` (`STID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES ('B100','Kempegowda International','P1/2, Hosiyar Enclave','S100'),('B101','Sde Dov Airp.','Q1/2, Salaria Enclave','S101'),('B102','Ninoy Aquino ','P1/2, K.L.P. Enclave','S102'),('B103','Cam Ranh International','P1/2, S.F. Enclave','S103'),('B104','Ngurah Rai','P1/2, D.A Enclave','S104'),('B105','Baghdad International','P1/2, Q.E Enclave','S105'),('B106','Flugschule Bruno','P1/2, J.I Enclave','S106'),('B107','King Shaka','P1/2, K.B Enclave','S107'),('B108','Donaldson Center','P1/2, Thomas Enclave','S108'),('B109','Toledo Express','P1/2, Pittsberg Enclave','S109');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charges`
--

DROP TABLE IF EXISTS `charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charges` (
  `CHID` varchar(10) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Camount` int(11) NOT NULL,
  `Cdescription` varchar(50) NOT NULL,
  `TSID` varchar(10) NOT NULL,
  PRIMARY KEY (`CHID`),
  KEY `TSID` (`TSID`),
  CONSTRAINT `charges_ibfk_1` FOREIGN KEY (`TSID`) REFERENCES `transactions` (`TSID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charges`
--

LOCK TABLES `charges` WRITE;
/*!40000 ALTER TABLE `charges` DISABLE KEYS */;
INSERT INTO `charges` VALUES ('CH100','Airfare Charges',9700,'Charges for Flight','TR100'),('CH101','Fuel Charges',2300,'Charges for Fuel','TR101'),('CH102','Airfare Charges',8900,'Charges for Flight','TR102'),('CH103','Airfare Charges',10000,'Charges for Flight','TR103'),('CH104','Airfare Charges',6400,'Charges for Flight','TR104'),('CH105','Additional Charges',600,'Oveerhead Expenses','TR105'),('CH106','Airfare Charges',2300,'Charges for Flight','TR106'),('CH107','Tax+Fooding Charges',5600,'Tax plus Charges for Food','TR107'),('CH108','Airfare Charges',17000,'Charges for Flight','TR108'),('CH109','Airfare Charges',35800,'Charges for Flight','TR109');
/*!40000 ALTER TABLE `charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_details`
--

DROP TABLE IF EXISTS `contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_details` (
  `CNID` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Contact_no` varchar(15) NOT NULL,
  `PSID` varchar(10) NOT NULL,
  `STID` varchar(10) NOT NULL,
  PRIMARY KEY (`CNID`,`PSID`),
  KEY `PSID` (`PSID`),
  KEY `STID` (`STID`),
  CONSTRAINT `contact_details_ibfk_1` FOREIGN KEY (`PSID`) REFERENCES `passengers` (`PSID`) ON DELETE CASCADE,
  CONSTRAINT `contact_details_ibfk_2` FOREIGN KEY (`STID`) REFERENCES `state` (`STID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_details`
--

LOCK TABLES `contact_details` WRITE;
/*!40000 ALTER TABLE `contact_details` DISABLE KEYS */;
INSERT INTO `contact_details` VALUES ('CN100','anuraag@gmail.com','9671838411','P100','S100'),('CN101','jordan@gmail.com','9671838422','P101','S101'),('CN102','nicole@gmail.com','9671838433','P102','S102'),('CN103','bichjade@gmail.com','9671838444','P103','S103'),('CN104','dinda@gmail.com','9671838455','P104','S104'),('CN105','aylin@gmail.com','9671838466','P105','S105'),('CN106','julia@gmail.com','9671838477','P106','S106'),('CN107','karabou@gmail.com','9671838488','P107','S107'),('CN108','helen@gmail.com','9671838499','P108','S108'),('CN109','sofia@gmail.com','9671838400','P109','S109');
/*!40000 ALTER TABLE `contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `CTID` varchar(10) NOT NULL,
  `Country_name` varchar(50) NOT NULL,
  PRIMARY KEY (`CTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('C100','India'),('C101','Jordan'),('C102','Philippines'),('C103','Vietnam'),('C104','Indonesia'),('C105','Turkey'),('C106','Austria'),('C107','South Africa'),('C108','Greece'),('C109','Spain');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount` (
  `DIID` varchar(10) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Damount_in_percent` int(11) NOT NULL,
  `Ddescription` varchar(50) NOT NULL,
  PRIMARY KEY (`DIID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES ('D100','Diwali Discount',8,'Discount for Diwali Festival'),('D101','Diwali Discount',8,'Discount for Diwali Festival'),('D102','Diwali Discount',8,'Discount for Diwali Festival'),('D103','Summer Surprise Discount',8,'Discount for Summers'),('D104','Summer Surprise Discount',8,'Discount for Summers'),('D105','Summer Surprise Discount',8,'Discount for Summers'),('D106','Easter Discount',8,'Discount for Easter Eve'),('D107','Easter Discount',8,'Discount for Easter Eve'),('D108','Easter Discount',8,'Discount for Easter Eve'),('D109','Easter Discount',8,'Discount for Easter Eve');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `Emp_ID` varchar(10) NOT NULL,
  `Ename` varchar(30) NOT NULL,
  `Eaddress` varchar(50) NOT NULL,
  `Designation` varchar(15) NOT NULL,
  `Eemail` varchar(20) NOT NULL,
  `Etel_no` int(11) NOT NULL,
  `BRID` varchar(10) NOT NULL,
  PRIMARY KEY (`Emp_ID`),
  KEY `BRID` (`BRID`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`BRID`) REFERENCES `branches` (`BRID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('E100','Ramesh','P1/2, Hosiyar Enclave','General Manager','ramesh@gmail.com',234567859,'B100'),('E101','Rajesh','Q1/2, Salaria Enclave','Manager','rajesh@gmail.com',234567860,'B101'),('E102','Suresh','P1/2, K.L.P. Enclave','Supreme Manager','suresh@gmail.com',234567861,'B102'),('E103','Bhuvesh','P1/2, S.F. Enclave','Chairman','bhuvesh@gmail.com',234567862,'B103'),('E104','Isabella','P1/2, D.A Enclave','C.E.O','isabella@gmail.com',234567863,'B104'),('E105','Cinrella','P1/2, Q.E Enclave','Dir. Manager','cinrella@gmail.com',234567864,'B105'),('E106','Emma','P1/2, J.I Enclave','Officer','emma@gmail.com',234567865,'B106'),('E107','Olivia','P1/2, K.B Enclave','Dir. Manager','olivia@gmail.com',234567866,'B107'),('E108','Mikasa','P1/2, Thomas Enclave','Director','mikasa@gmail.com',234567867,'B108'),('E109','Misa','P1/2, Pittsberg Enclave','Hornally Offr.','misa@gmail.com',234567869,'B109');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_schedule`
--

DROP TABLE IF EXISTS `flight_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight_schedule` (
  `FLID` varchar(10) NOT NULL,
  `Flight_date` date NOT NULL,
  `Departure` datetime NOT NULL,
  `Arrival` datetime NOT NULL,
  `AC_ID` int(11) NOT NULL,
  `RTID` varchar(10) NOT NULL,
  `AFID` int(11) NOT NULL,
  PRIMARY KEY (`FLID`),
  KEY `AC_ID` (`AC_ID`),
  KEY `RTID` (`RTID`),
  CONSTRAINT `flight_schedule_ibfk_1` FOREIGN KEY (`AC_ID`) REFERENCES `aircrafts` (`AC_ID`) ON DELETE CASCADE,
  CONSTRAINT `flight_schedule_ibfk_2` FOREIGN KEY (`RTID`) REFERENCES `route` (`RTID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_schedule`
--

LOCK TABLES `flight_schedule` WRITE;
/*!40000 ALTER TABLE `flight_schedule` DISABLE KEYS */;
INSERT INTO `flight_schedule` VALUES ('FL100','2017-01-21','2017-01-21 07:00:00','2017-01-21 08:00:00',2324,'R100',400),('FL101','2017-02-22','2017-02-22 09:00:00','2017-02-22 10:00:00',2325,'R101',401),('FL102','2017-03-23','2017-03-23 09:30:00','2017-03-23 11:00:00',2326,'R102',402),('FL103','2017-04-24','2017-04-24 10:00:00','2017-04-24 11:30:00',2327,'R103',403),('FL104','2017-05-25','2017-05-25 11:00:00','2017-05-25 11:45:00',2328,'R104',404),('FL105','2017-06-26','2017-06-26 12:00:00','2017-06-26 13:30:00',2329,'R105',405),('FL106','2017-07-27','2017-07-27 12:30:00','2017-07-27 13:45:00',2330,'R106',406),('FL107','2017-08-28','2017-08-28 13:00:00','2017-08-28 14:30:00',2331,'R107',407),('FL108','2017-08-28','2017-08-28 14:40:00','2017-08-28 15:50:00',2332,'R108',408),('FL109','2017-09-29','2017-09-29 16:00:00','2017-09-29 19:50:00',2333,'R109',409);
/*!40000 ALTER TABLE `flight_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passengers` (
  `PSID` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `Password` int(11) NOT NULL,
  `Login_ID` int(11) NOT NULL,
  PRIMARY KEY (`PSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers`
--

LOCK TABLES `passengers` WRITE;
/*!40000 ALTER TABLE `passengers` DISABLE KEYS */;
INSERT INTO `passengers` VALUES ('P100','Anuraag','P1/2, Hosiyar Enclave',20,'Indian',12345,100),('P101','Jordan','Q1/2, Salaria Enclave',22,'Indian',13445,101),('P102','Nicole ','P1/2, K.L.P. Enclave',24,'Indian',92745,102),('P103','Bichjade','P1/2, S.F. Enclave',21,'Indian',89345,103),('P104','Dinda','P1/2, D.A Enclave',26,'Indian',88345,104),('P105','Aylin','P1/2, Q.E Enclave',27,'Indian',92345,105),('P106','Julia','P1/2, J.I Enclave',24,'Indian',18345,106),('P107','Karabou','P1/2, K.B Enclave',28,'Indian',15645,107),('P108','Helen','P1/2, Thomas Enclave',29,'Indian',11345,108),('P109','Sofia','P1/2, Pittsberg Enclave',23,'Indian',55675,109);
/*!40000 ALTER TABLE `passengers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_details` (
  `Card_holder_name` varchar(30) NOT NULL,
  `Card_number` int(11) NOT NULL,
  `Exp_date` date NOT NULL,
  `CVV` int(11) NOT NULL,
  `PSID` varchar(10) NOT NULL,
  PRIMARY KEY (`Card_number`),
  KEY `PSID` (`PSID`),
  CONSTRAINT `payment_details_ibfk_1` FOREIGN KEY (`PSID`) REFERENCES `passengers` (`PSID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_details`
--

LOCK TABLES `payment_details` WRITE;
/*!40000 ALTER TABLE `payment_details` DISABLE KEYS */;
INSERT INTO `payment_details` VALUES ('Anuraag',20406080,'2022-01-01',123,'P100'),('Jordan',20406081,'2022-02-02',124,'P101'),('Nicole ',20406082,'2022-03-03',125,'P102'),('Bichjade',20406083,'2022-04-04',126,'P103'),('Dinda',20406084,'2022-05-05',127,'P104'),('Aylin',20406085,'2022-06-06',128,'P105'),('Julia',20406086,'2022-07-07',129,'P106'),('Karabou',20406087,'2022-08-08',133,'P107'),('Helen',20406088,'2022-09-09',143,'P108'),('Sofia',20406089,'2022-10-10',153,'P109');
/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route` (
  `Route_code` varchar(10) NOT NULL,
  `RTID` varchar(10) NOT NULL,
  `AFID` int(11) NOT NULL,
  PRIMARY KEY (`RTID`,`AFID`),
  KEY `AFID` (`AFID`),
  CONSTRAINT `route_ibfk_1` FOREIGN KEY (`AFID`) REFERENCES `airfare` (`AFID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES ('RC100','R100',400),('RC101','R101',401),('RC102','R102',402),('RC103','R103',403),('RC104','R104',404),('RC105','R105',405),('RC106','R106',406),('RC107','R107',407),('RC108','R108',408),('RC109','R109',409);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `STID` varchar(10) NOT NULL,
  `State_name` varchar(30) NOT NULL,
  `CTID` varchar(10) NOT NULL,
  PRIMARY KEY (`STID`),
  KEY `CTID` (`CTID`),
  CONSTRAINT `state_ibfk_1` FOREIGN KEY (`CTID`) REFERENCES `countries` (`CTID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES ('S100','Banglore','C100'),('S101','Irbid','C101'),('S102','Manila','C102'),('S103','Khanh Hoa','C103'),('S104','Bali','C104'),('S105','Iraq','C105'),('S106','Tirol','C106'),('S107','Durban','C107'),('S108','Sparta','C108'),('S109','Toledo','C109');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `TSID` varchar(10) NOT NULL,
  `Booking_date` datetime NOT NULL,
  `Departure_date` datetime NOT NULL,
  `Flight_type` varchar(30) NOT NULL,
  `FLID` varchar(10) NOT NULL,
  `PSID` varchar(10) NOT NULL,
  `Emp_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`TSID`),
  KEY `FLID` (`FLID`),
  KEY `PSID` (`PSID`),
  KEY `Emp_ID` (`Emp_ID`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`FLID`) REFERENCES `flight_schedule` (`FLID`) ON DELETE CASCADE,
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`PSID`) REFERENCES `passengers` (`PSID`) ON DELETE CASCADE,
  CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('TR100','2016-11-01 14:30:12','2017-01-21 07:00:00','Indigo','FL100','P100','E100'),('TR101','2016-09-01 16:30:00','2017-02-22 09:00:00','Air India','FL101','P101','E101'),('TR102','2016-12-01 04:00:12','2017-03-23 09:30:00','Qatar Airways','FL102','P102','E102'),('TR103','2016-12-01 18:30:32','2017-04-24 10:00:00','Sun Country','FL103','P103','E103'),('TR104','2016-10-01 11:34:22','2017-05-25 11:00:00','Cathay Pacific','FL104','P104','E104'),('TR105','2016-10-01 10:30:14','2017-06-26 12:00:00','Czech Airways','FL105','P105','E105'),('TR106','2016-11-01 09:43:21','2017-07-27 12:30:00','Emirates International','FL106','P106','E106'),('TR107','2016-10-01 19:21:12','2017-08-28 13:00:00','Iberia','FL107','P107','E107'),('TR108','2016-12-01 20:44:32','2017-08-28 14:40:00','Japan Airlines','FL108','P108','E108'),('TR109','2016-09-01 22:12:54','2017-09-29 16:00:00','Jet Airways','FL109','P109','E109');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-30 20:43:56
