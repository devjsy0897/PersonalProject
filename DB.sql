-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: jspdb
-- ------------------------------------------------------
-- Server version	5.6.48-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fun_board`
--

DROP TABLE IF EXISTS `fun_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fun_board` (
  `bno` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `readcount` int(11) DEFAULT NULL,
  `re_ref` int(11) DEFAULT NULL,
  `re_seq` int(11) DEFAULT NULL,
  `re_lev` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_board`
--

LOCK TABLES `fun_board` WRITE;
/*!40000 ALTER TABLE `fun_board` DISABLE KEYS */;
INSERT INTO `fun_board` VALUES (1,'abc123','1212','첫글?','첫글',2,1,0,0,'2020-08-13','0:0:0:0:0:0:0:1',NULL),(3,'admin','1212','가나다','1111',2,2,1,1,'2020-08-14','0:0:0:0:0:0:0:1',NULL),(4,'abc123','123123','123123','123123',72,4,0,0,'2020-08-20','0:0:0:0:0:0:0:1','부산야경.jpg');
/*!40000 ALTER TABLE `fun_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_board_east`
--

DROP TABLE IF EXISTS `fun_board_east`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fun_board_east` (
  `bno` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `readcount` int(11) DEFAULT NULL,
  `re_ref` int(11) DEFAULT NULL,
  `re_seq` int(11) DEFAULT NULL,
  `re_lev` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_board_east`
--

LOCK TABLES `fun_board_east` WRITE;
/*!40000 ALTER TABLE `fun_board_east` DISABLE KEYS */;
INSERT INTO `fun_board_east` VALUES (1,'admin','111','east 첫','ㅁㅁ',8,1,0,0,'2020-08-13','0:0:0:0:0:0:0:1',NULL),(2,'admin','222','south 첫','ㅎㅎㅎㅎㅎ',20,2,0,0,'2020-08-13','0:0:0:0:0:0:0:1',NULL),(3,'abc123','111','광안대교 야경','기대해도 좋아요',21,3,0,0,'2020-08-13','0:0:0:0:0:0:0:1','부산야경.jpg'),(4,'admin','1212','가나다','asdf',131,4,0,0,'2020-08-13','0:0:0:0:0:0:0:1','해운대.jpg'),(5,'asd123','1234','1234','dfsfa',9,5,0,0,'2020-08-27','192.168.7.3','img_chania.jpg');
/*!40000 ALTER TABLE `fun_board_east` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_board_south`
--

DROP TABLE IF EXISTS `fun_board_south`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fun_board_south` (
  `bno` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `readcount` int(11) DEFAULT NULL,
  `re_ref` int(11) DEFAULT NULL,
  `re_seq` int(11) DEFAULT NULL,
  `re_lev` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_board_south`
--

LOCK TABLES `fun_board_south` WRITE;
/*!40000 ALTER TABLE `fun_board_south` DISABLE KEYS */;
INSERT INTO `fun_board_south` VALUES (1,'admin','1212','읭?','ㅁㅁㅁㅁ',5,1,0,0,'2020-08-13','0:0:0:0:0:0:0:1',NULL),(2,'admin','1212','감천문화마을','감천감천',16,2,0,0,'2020-08-13','0:0:0:0:0:0:0:1','감천문화마을.jpg');
/*!40000 ALTER TABLE `fun_board_south` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_board_west`
--

DROP TABLE IF EXISTS `fun_board_west`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fun_board_west` (
  `bno` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `readcount` int(11) DEFAULT NULL,
  `re_ref` int(11) DEFAULT NULL,
  `re_lev` int(11) DEFAULT NULL,
  `re_seq` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_board_west`
--

LOCK TABLES `fun_board_west` WRITE;
/*!40000 ALTER TABLE `fun_board_west` DISABLE KEYS */;
INSERT INTO `fun_board_west` VALUES (1,'admin','1212','west 첫 글','과연',3,1,0,0,'2020-08-13','0:0:0:0:0:0:0:1',NULL),(2,'admin','123123','west 두번째','ㅎㅎ',1,2,0,0,'2020-08-13','0:0:0:0:0:0:0:1',NULL),(3,'admin','111','사상 삼락생태공원','안쪽 쭉 걸어가면 요트가 많아용!',22,3,0,0,'2020-08-13','0:0:0:0:0:0:0:1','사상생태공원.JPG'),(4,'asd123','1234','1234','sdadasd',9,4,0,0,'2020-08-27','192.168.7.3','cat02.jpg');
/*!40000 ALTER TABLE `fun_board_west` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_member`
--

DROP TABLE IF EXISTS `fun_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fun_member` (
  `id` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(200) NOT NULL,
  `birth` int(11) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `addr` varchar(2000) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_member`
--

LOCK TABLES `fun_member` WRITE;
/*!40000 ALTER TABLE `fun_member` DISABLE KEYS */;
INSERT INTO `fun_member` VALUES ('aaaa','1111','aaaa','aaaa@naver.com',909090,'남','a','a',NULL,'2020-08-28'),('abc123','1234','이아오','as@as.as',922222,'남',NULL,NULL,NULL,'2020-08-05'),('admin','111','가가가나나나','admin@naver.com',850121,'남',NULL,NULL,NULL,'2020-07-30'),('asd123','1234','1234','1234@naver.com',1234,'남','1','1','1','2020-08-27'),('lulu','12345','Hong','dog@gmail.com',101010,'남',NULL,NULL,NULL,'2020-07-30'),('test','1212','테스트','test@test.com',105,'여',NULL,NULL,NULL,'2020-08-03');
/*!40000 ALTER TABLE `fun_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itwill_board`
--

DROP TABLE IF EXISTS `itwill_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itwill_board` (
  `bno` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `passwd` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `readcount` int(11) DEFAULT NULL,
  `re_ref` int(11) DEFAULT NULL,
  `re_lev` int(11) DEFAULT NULL,
  `re_seq` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itwill_board`
--

LOCK TABLES `itwill_board` WRITE;
/*!40000 ALTER TABLE `itwill_board` DISABLE KEYS */;
INSERT INTO `itwill_board` VALUES (1,'홍길동','1234','123123','가나다라\r\nhasdlfkjasf',3,1,0,0,'2020-07-20',NULL,'0:0:0:0:0:0:0:1'),(2,'가나다','123456789','제목입니다','내용입니다.',4,2,0,0,'2020-07-20',NULL,'0:0:0:0:0:0:0:1'),(3,'짜잔맨','123','짜자안~','짜장임',2,3,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(4,'강아지','123','멍멍멍','왈왈으르릉 컹컹 깽깽 bark',2,4,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(5,'홍길동','1010','아버지를 아버지라 부르지','못하고 엉엉',2,5,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(6,'외쿸인','hi','hi~','외쿸인이에욥',2,6,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(7,'잠온다','1212','드르렁','쿨쿨 Zzz',2,7,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(8,'배가고프다','4444','배','는 영어로pear',2,8,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(9,'13분남음','1313','아 말하는 순간','12분 남음',2,9,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(10,'추카추카','3434','드디어 10번째','폭죽 펑펑',2,10,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(11,'빼빼로맨','1111','11번째','1111111111111111111111',3,11,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(12,'오리','5252','오리는','꽼꽼',3,12,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(13,'이게뭐하는짓이람','123','글아 ','빨리 늘어나렴',3,13,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(14,'동쪽','123','여기는 동쪽','동해는 우리땅',3,14,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(15,'서쪽맨','1212','서쪽임','서쪽',3,15,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(16,'남쪽','111','남쪽맨','여기는 한국',2,16,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(18,'고양이','1212','야옹야옹','어흥',3,18,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(19,'컴퓨터맨','1212','컴퓨터사고싶다','사실 노트북으로',6,19,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(20,'30-10','3010','드디어 30번째','-10번째임',9,20,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(21,'관리자','1212','공지입니다.','공지asdfasdf',23,21,0,0,'2020-07-21',NULL,'0:0:0:0:0:0:0:1'),(22,'실험','000','실헝','실험임',5,22,0,0,'2020-07-23',NULL,'0:0:0:0:0:0:0:1'),(23,'admin','12345','ㅎㅎㅎ','메롱',8,23,0,0,'2020-07-23',NULL,'0:0:0:0:0:0:0:1'),(24,'홍길동','123','[답글] asdf','asdfasdf',3,22,0,0,'2020-07-23',NULL,'0:0:0:0:0:0:0:1'),(25,'가나다','234','[답글] 공지 금지','금지',1,21,0,0,'2020-07-23',NULL,'0:0:0:0:0:0:0:1'),(26,'홍길동','123','[답글] 123','234we',3,23,1,1,'2020-07-23',NULL,'0:0:0:0:0:0:0:1'),(27,'홍길동','234','[답글] 15653rdf','asdfasdf',1,23,1,1,'2020-07-23',NULL,'0:0:0:0:0:0:0:1'),(28,'다답','123','[답글] qq','qwe',1,23,2,3,'2020-07-27',NULL,'0:0:0:0:0:0:0:1'),(29,'123','12321','[답글]  다닫ㅂ','ㅂㅂ',0,23,2,2,'2020-07-27',NULL,'0:0:0:0:0:0:0:1'),(30,'낄','123','깔깔','마녀',3,30,0,0,'2020-07-27',NULL,'0:0:0:0:0:0:0:1'),(31,'진짜','123','껄껄','마녕',1,31,0,0,'2020-07-27','boat2.jpg','0:0:0:0:0:0:0:1'),(32,'엮은이','123','호호','아줌마',0,32,0,0,'2020-07-27','pudding.jpg','0:0:0:0:0:0:0:1'),(33,'베개','123','똑같은','베고서',1,33,0,0,'2020-07-27',NULL,'0:0:0:0:0:0:0:1'),(34,'실수','123','앗 나의','ㅠㅠ',6,34,0,0,'2020-07-27','car1.jpg','0:0:0:0:0:0:0:1'),(35,'홍길동','qwe','[답글] qweqwe','qwerqwe',0,34,1,2,'2020-08-12',NULL,'0:0:0:0:0:0:0:1'),(36,'홍길동','123','[답글] 123123','123123',0,34,1,1,'2020-08-12',NULL,'0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `itwill_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itwill_member`
--

DROP TABLE IF EXISTS `itwill_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itwill_member` (
  `id` varchar(50) NOT NULL,
  `pw` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itwill_member`
--

LOCK TABLES `itwill_member` WRITE;
/*!40000 ALTER TABLE `itwill_member` DISABLE KEYS */;
INSERT INTO `itwill_member` VALUES ('aaa','111','헤헤헤',1111,'남','aaa@aaa.aaa','2020-08-19 02:29:51'),('abc','123','가나다',17,'W','abc@naver.com','2020-07-07 03:42:18'),('admin','1234','관리자',20,'M','admin@naver.com','2020-07-07 03:42:04'),('bbbb','123','bbbb',123123,'여','bbb@bbb.bbb','2020-08-19 02:31:03'),('ccc','cccc','비타민C',1111,'남','ccc@ccc.ccc','2020-08-19 02:45:18'),('dog','1212','dog',15,'남','dog@gmail.com','2020-07-16 05:28:29'),('girl1','1212','girl1',321,'여','girl@hanmail.com','2020-07-16 05:29:49'),('itwill','123456','123',234,'M','itwill@naver.com','2020-07-07 03:42:38'),('man1','123','man1',203,'남','man1@daum.net','2020-07-16 05:29:13');
/*!40000 ALTER TABLE `itwill_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `idx` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test2`
--

DROP TABLE IF EXISTS `test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test2` (
  `idx` int(11) DEFAULT NULL,
  `d_num` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test2`
--

LOCK TABLES `test2` WRITE;
/*!40000 ALTER TABLE `test2` DISABLE KEYS */;
INSERT INTO `test2` VALUES (NULL,NULL),(1,3.123),(2,NULL),(NULL,1.123);
/*!40000 ALTER TABLE `test2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test3`
--

DROP TABLE IF EXISTS `test3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test3` (
  `idx` int(11) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `jumin` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test3`
--

LOCK TABLES `test3` WRITE;
/*!40000 ALTER TABLE `test3` DISABLE KEYS */;
INSERT INTO `test3` VALUES (1,'Lee','900101-1231231'),(2,'Kim','900101-1111111'),(3,'Hong',NULL),(NULL,'Jung','900202-2222222');
/*!40000 ALTER TABLE `test3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test4`
--

DROP TABLE IF EXISTS `test4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test4` (
  `idx` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test4`
--

LOCK TABLES `test4` WRITE;
/*!40000 ALTER TABLE `test4` DISABLE KEYS */;
INSERT INTO `test4` VALUES (1,'Lee'),(2,NULL);
/*!40000 ALTER TABLE `test4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test5`
--

DROP TABLE IF EXISTS `test5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test5` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test5`
--

LOCK TABLES `test5` WRITE;
/*!40000 ALTER TABLE `test5` DISABLE KEYS */;
INSERT INTO `test5` VALUES (1,'2020-07-02 15:30:00','2020-07-02 06:30:00','2020-07-02'),(2,NULL,'2020-07-02 06:33:11',NULL),(3,'2020-07-02 15:35:23','2020-07-02 06:35:23','2020-07-02');
/*!40000 ALTER TABLE `test5` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-28 16:45:13
