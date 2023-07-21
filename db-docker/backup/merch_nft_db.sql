-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: merch_nft_db
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contract_address` varchar(255) NOT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `sponsored` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (1,'0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://monstermashnft.com/',2943,'MonsterMash','Monster Mash is home to 10,000 randomly generated monsters who have been hand drawn and are comprise','https://lh3.googleusercontent.com/SuV-d5yUklQD1vRnMaFqq7bHGz5saVaIlMt_W7AcGbHpZrZkcUYCQq9oW7NfJcBpdHrsU81r5VNI_4haGUzijpe9Ds1-eWgKDbVz=s120','https://lh3.googleusercontent.com/VDlNKxBvS0jj0I8IizATcqcmbQ1-pIbTr6bBReStUg2ocWbmeW8Emx5iG5DYVE1S3Eu7thTzBO26wuVew284MJ9kpwd2IRYO4jaX=s2500','2022-01-11 08:27:54','2022-01-22 17:13:36',1,0);
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merch_variations`
--

DROP TABLE IF EXISTS `merch_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merch_variations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `merch_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merch_variations`
--

LOCK TABLES `merch_variations` WRITE;
/*!40000 ALTER TABLE `merch_variations` DISABLE KEYS */;
INSERT INTO `merch_variations` VALUES (20,1,'Size','2022-01-12 04:53:31','2022-01-12 04:53:31'),(21,1,'Color','2022-01-12 05:06:15','2022-01-12 05:06:15'),(22,1,'Gender','2022-01-12 14:17:51','2022-01-12 14:17:51'),(23,1,'Nation','2022-01-13 06:07:27','2022-01-13 06:07:27'),(24,2,'Color','2022-01-14 05:50:26','2022-01-14 05:50:26');
/*!40000 ALTER TABLE `merch_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merch_variations_options`
--

DROP TABLE IF EXISTS `merch_variations_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merch_variations_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_variant_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_variant_id` (`product_variant_id`),
  CONSTRAINT `merch_variations_options_ibfk_2` FOREIGN KEY (`product_variant_id`) REFERENCES `merch_variations` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merch_variations_options`
--

LOCK TABLES `merch_variations_options` WRITE;
/*!40000 ALTER TABLE `merch_variations_options` DISABLE KEYS */;
INSERT INTO `merch_variations_options` VALUES (1,20,'Small',1,'2022-01-12 04:53:31','2022-01-12 04:53:31'),(2,20,'Medium',2,'2022-01-12 04:53:31','2022-01-12 04:53:31'),(3,20,'Large',3,'2022-01-12 04:53:31','2022-01-12 04:53:31'),(4,21,'Red',1,'2022-01-12 05:06:15','2022-01-12 05:06:15'),(5,21,'Green',2,'2022-01-12 05:06:15','2022-01-12 05:06:15'),(6,21,'Blue',3,'2022-01-12 05:06:15','2022-01-12 05:06:15'),(7,20,'Extra Large',4,'2022-01-12 08:29:51','2022-01-12 08:29:51'),(8,22,'Male',1,'2022-01-12 14:17:51','2022-01-12 14:17:51'),(9,22,'Female',2,'2022-01-12 14:17:51','2022-01-12 14:17:51'),(10,23,'India',1,'2022-01-13 06:07:27','2022-01-13 06:07:27'),(11,23,'USA',2,'2022-01-13 06:07:27','2022-01-13 06:07:27'),(12,24,'Red',1,'2022-01-14 05:50:26','2022-01-14 05:50:26'),(13,24,'Green',2,'2022-01-14 05:50:26','2022-01-14 05:50:26'),(14,24,'Blue',3,'2022-01-14 05:50:26','2022-01-14 05:50:26');
/*!40000 ALTER TABLE `merch_variations_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchandises`
--

DROP TABLE IF EXISTS `merchandises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchandises` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token_id` int NOT NULL,
  `nft_image_url` varchar(1234) DEFAULT NULL,
  `contract_address` varchar(1234) DEFAULT NULL,
  `opensea_link` varchar(1234) DEFAULT NULL,
  `owner_wallet` varchar(255) DEFAULT NULL,
  `collection_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `merchandises_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_variations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchandises`
--

LOCK TABLES `merchandises` WRITE;
/*!40000 ALTER TABLE `merchandises` DISABLE KEYS */;
INSERT INTO `merchandises` VALUES (1,26,'https://lh3.googleusercontent.com/Su0ZKT1kwkC31p0yfiN6gyj0E_pk9Jxm9bSbgRyvnAgoYOQKBPiRllCIgeyUH2gkhY2dPBv3bMth2c_snRIj-8fDyd5H8tyPZxDOOQ','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/26',NULL,1,'2022-01-11 08:27:55','2022-01-11 08:27:55',NULL),(2,12,'https://lh3.googleusercontent.com/Mod190bU5hHsqmLx2QMjzZP61RmRkxBbtIFk147eNLCs2V1MKDpd9Pt4RT8e2mCwqvXlAjDXfp1TP1DfrzkEFS0XrqB0LU4ArFLWsQ','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/12',NULL,1,'2022-01-11 08:27:55','2022-01-11 08:27:55',NULL),(3,11,'https://lh3.googleusercontent.com/PKfzjxpRcxZzekUQH1JTPYaxgoDqyk7QtOA2X4RbLfOcu5VAeKoJp814Kzm1HWrZVLh1mSBzogt1bu7_MneU4kOE6cJHBFBpntHWUA','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/11',NULL,1,'2022-01-11 08:27:55','2022-01-11 08:27:55',NULL),(4,3,'https://lh3.googleusercontent.com/vbyg532gD7W1DNjMTvlAJdDZgufoM6RPUVy2qLD70GHGnTFs8xsz6XmO3k7b1jO2kIFopbHsuDea7kjzFpw3vyFgMUerr43uUA1zZhQ','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/3',NULL,1,'2022-01-11 08:27:55','2022-01-11 08:27:55',NULL),(5,59,'https://lh3.googleusercontent.com/P0xQxdeJv0YRveQLJrNCpHgDsc70X-3bU0J9dMpyrkPta92Bniw-N5koMd0jnOpC3sbYgTQ-GjNe-pVCc1m63g-cjuRYiuRzZFZD3Vk','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/59',NULL,1,'2022-01-11 08:27:57','2022-01-11 08:27:57',NULL),(6,54,'https://lh3.googleusercontent.com/PpiG8qIG0bFCeXe14TF39JwokmM4ukV90YEA8MpLcxfoirfOOUhrLKJDUCs4403TL05fqNGLfsPod5wis0dJaqaWzQa2bbap6E0VqJ0','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/54',NULL,1,'2022-01-11 08:27:57','2022-01-11 08:27:57',NULL),(7,50,'https://lh3.googleusercontent.com/Sbu7fPBkbpqBgH0-Rph0U8AG1Fe2Upvx4p40_tb1N7P4z65Rg0XqJ1djHgmMSrnNTbCnaWlmNMwtKOUg5q3Df95II8k4oJnhKtuq8Co','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/50',NULL,1,'2022-01-11 08:27:57','2022-01-11 08:27:57',NULL),(8,44,'https://lh3.googleusercontent.com/9oQQ03Ax3XX76NcbXp_iGt79SdW9zVytEvkow_4giuz8F6-Rq8OXbkx35Z7qBomixwjWkcW13FDEHsyfVc7pJsB3uNWoT1mSGCzQog','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/44',NULL,1,'2022-01-11 08:27:57','2022-01-11 08:27:57',NULL),(9,38,'https://lh3.googleusercontent.com/JYYONH0a2yxh4YqhimHDCU5ujTRnRV_FqikfUWbnw--uvXwigfh2Sx5A62SY8jcGjxSm11DUS82hWmjODAY3LVIj_nVsGHEmItRi-g','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/38',NULL,1,'2022-01-11 08:27:57','2022-01-11 08:27:57',NULL),(10,35,'https://lh3.googleusercontent.com/4YbIXmyCzhdPYW_bmkWSDmSR0I6oCtwbChrQkYGjhsx4zvmeREQ8zNjnpSruM_RaahxGpJ-req5WG6YRSqQEv_eeSLywx7dBiv6U84g','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/35',NULL,1,'2022-01-11 08:27:57','2022-01-11 08:27:57',NULL),(11,32,'https://lh3.googleusercontent.com/0HO6awPmvwNjKJRyEwK6LeNRkTtZJBZMvgwnxy9D2BHxFVs8aEmbmk_XsmMKdhqFfcUosxd792dgmV2jfRZdRRvxKPcMCONE6mYDGro','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/32',NULL,1,'2022-01-11 08:27:57','2022-01-11 08:27:57',NULL),(12,86,'https://lh3.googleusercontent.com/pV2SIDEfEO_OrO1MvDL7xeL0oRtOefvWj724eLfNG-VCYlXK19Pofnxl8B2grMnaaQhKRudDCRdLO4rajWcOTEs8efcXIUk_j8jXMg','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/86',NULL,1,'2022-01-11 08:27:58','2022-01-11 08:27:58',NULL),(13,85,'https://lh3.googleusercontent.com/7_5P55HOAQMR9F9C2e_wqD6a1iJpg5bvn6viz0kcLGJ1KGi6Y7Bsismu-awIcpXES-unwQTnw1Oi12ljtYCNzQ1t23vflKxPIA8','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/85',NULL,1,'2022-01-11 08:27:58','2022-01-11 08:27:58',NULL),(14,83,'https://lh3.googleusercontent.com/VUeMTANO7tfNoPC-lQ4ZQe3sU1hyUHH2mvBZ8oElabJDiZWJ6VDRrF2llKTNT0in-x1xMMBUFWUysYToU7ux4xuNbdczD3p8Bund_A','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/83',NULL,1,'2022-01-11 08:27:58','2022-01-11 08:27:58',NULL),(15,80,'https://lh3.googleusercontent.com/icBM_IbLqS5c6cYwCALMlzjAenp7QnShtaEKcbFxF6AibTq81OHeL0S6kB7UQCZJipL090Ao1yYdRA5IETZRnsvhSgKpwuCDi-d9','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/80',NULL,1,'2022-01-11 08:27:58','2022-01-11 08:27:58',NULL),(16,78,'https://lh3.googleusercontent.com/pcK8KvyDXhVkJijwzRVW-D6CMSUlrRaxcKEDr8VxwvOQIlUYV2ecS5b-820n6dEx0B9e2ix7NcjxId27ab0EP2s1acpyWr1LbnSPcg','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/78',NULL,1,'2022-01-11 08:27:58','2022-01-11 08:27:58',NULL),(17,76,'https://lh3.googleusercontent.com/lkFCzfummf1LXnmu4QYM45pvk6zvNcyjbmsF7gFq493AgvWyzTwNXPsr8pmg6qZO8nW78evHA0D0aRnm6b0D7-BAZXXlMITh45A1mQ','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/76',NULL,1,'2022-01-11 08:27:58','2022-01-11 08:27:58',NULL),(18,70,'https://lh3.googleusercontent.com/BFF4PAw0bran4wjLovkgPr-34qvqBu7m_I-Hkxs36po8TXzM9nFKTNtBN9GPTT-CmPKlFbN89DXsDdMZ26LN2dXhMKQThbbUrs5RHtE','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/70',NULL,1,'2022-01-11 08:27:58','2022-01-11 08:27:58',NULL),(19,69,'https://lh3.googleusercontent.com/bQ4D-h9-cQAi2VJc1vGqWZMwDaN5i4VxDuENOO6E16nhozNrnLGrISmGpU2KcPFx7MA2EUZs4B6b7hyO1Lue0gZYygIbRUeOyn2MQw','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/69',NULL,1,'2022-01-11 08:27:58','2022-01-11 08:27:58',NULL),(20,68,'https://lh3.googleusercontent.com/uYtmB2sJdsr-8LD8fpG_R-3Sg7MPNErAeksCVbwBZikpPcOqUjps5Ojo8af8QHLHWVoffJ5pXJ2Mt8yfmm0cxTMhxa59EfmwUDXp5A','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/68',NULL,1,'2022-01-11 08:27:58','2022-01-11 08:27:58',NULL),(21,66,'https://lh3.googleusercontent.com/sV87fRB01aZiH0mBzn44VxYCU3QVFFbMLa8G0NCFTEWc5oZwrc24W7r5ytM7tKSXriu37Gd43fMzmqmE34mM5jOmAJ6cxAePbzUrpQ','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/66',NULL,1,'2022-01-11 08:27:58','2022-01-11 08:27:58',NULL),(22,61,'https://lh3.googleusercontent.com/RoOH67I8flBPyXDVAgF92b3fBqYq3yVEYsV_RGQL-5evXRzaICqJJ-2N6lMP5rLmn7AQizdaO5WTU4ezxyw5wbShSGcaIfCexeTsm-E','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/61',NULL,1,'2022-01-11 08:27:58','2022-01-11 08:27:58',NULL),(23,119,'https://lh3.googleusercontent.com/XqJDflq5o8GvV4uhRyxs1_6dmw0CwDiYKxH2izW_B6JrLQHDhKYa_WicT52I7NAgiHWli5SARAjDyJp-U7wqSt3ewyHWUDyeZMfFHQ','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/119',NULL,1,'2022-01-11 08:28:00','2022-01-11 08:28:00',NULL),(24,117,'https://lh3.googleusercontent.com/QC3frR6Ka5-VF_URIBFQxbcyQCqTHVBzUK-We00Fq9r94EkP0VYgcpmImjV1s8qG4rTfDUJvgGqDXktesLuwmXLeELWxfAMKRkv80w','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/117',NULL,1,'2022-01-11 08:28:00','2022-01-11 08:28:00',NULL),(25,114,'https://lh3.googleusercontent.com/MOFsPNosAHR7VU4l6ZE5-4GOrUvvCxOEURSweyMwyazOokKtlR_VOIfIkZ3bM6gsEVX35P5qsAd0M1894WN3-MuFDu7WzWcjJ-HcYQ','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/114',NULL,1,'2022-01-11 08:28:00','2022-01-11 08:28:00',NULL),(26,113,'https://lh3.googleusercontent.com/dktSuSEYB8uYnFLm8cxuJxoThBvj41irO8i_CMyTSmQb1POmGhi2WdiN0vxu0N0FVUSI5E3GQXIlFiK6wXdhbCakvxQpW67IbfCIaQ','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/113',NULL,1,'2022-01-11 08:28:00','2022-01-11 08:28:00',NULL),(27,101,'https://lh3.googleusercontent.com/tOXHTJVCvhMi6YQvhwoKkoVxkyaW9ZJoQgo-XwEh3hCRmosBpm1xmVvfJ6rkfyCX68OlBIRlxGEHUiDEteV-D-LGL6AKtp36BuzNchA','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/101',NULL,1,'2022-01-11 08:28:00','2022-01-11 08:28:00',NULL),(28,98,'https://lh3.googleusercontent.com/IQEOL4eBpSx14K6QfShAe2ByYXOQiJRppUJ44GmnGjqa9B_7KFwyQDI3uI_bS1uczIGWplFcPyND9Dy_QAdPRncRKPeqolkZStpovnw','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/98',NULL,1,'2022-01-11 08:28:00','2022-01-11 08:28:00',NULL),(29,94,'https://lh3.googleusercontent.com/yJqrlfSWowulT3AmWEi5BddrQr6RWGua34yGfH2cArReqreiUzh966Be6sRVzj05R0unFRt1KK7ZrigRLT4TqYGzI59_9ueXPkaOzQ','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/94',NULL,1,'2022-01-11 08:28:00','2022-01-11 08:28:00',NULL),(30,149,'https://lh3.googleusercontent.com/kTDkbNDYlXRYqPRcKaEQkXpzlyGph5a7wbys_UICnp9i30HQ9CYLK3X749-k2tfnASecUQ5a3H6s4HiviSNlmw7KRyhEqyhDrcn9Ito','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/149',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL),(31,147,'https://lh3.googleusercontent.com/RzkWfUeWj-O2cTdyKu_I4HRxn2zaNCqb3_cCtFRsQerdw2TUiUN8FEr4Ody8a_5O7y1MlD9GfqU_s0tY9VYCqJnKTOnqxAjY5VOL','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/147',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL),(32,143,'https://lh3.googleusercontent.com/pRj_DZ7yS56L1IQzkGGV8VrPjsdaKLp23n75RCDxcH1y3DZGLGhlq2ZRL-PaGNKzTXgL8z1cswaT93h7ZBbrDEm-bJpxAWZl8XFwE7A','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/143',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL),(33,137,'https://lh3.googleusercontent.com/VZ9JzEzoRC1wSZCPVAH4wGvD6AMwu2JWOtWOttGJSLm_dpZ5IeqeSn8YJ3iUgDUe6CyzoBLta8ifsob2sr2uz_gzxpxXxhBqSGd1lA','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/137',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL),(34,136,'https://lh3.googleusercontent.com/206g22zr47DXZVR9gds3fnxDbRZr7kHGrChURPP-3tXsxvSdSLBNaE4e5poAo1Q6yQqLILz63sQPMQhAxAmgPhygpfxH-jgFzUKEoY8','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/136',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL),(35,131,'https://lh3.googleusercontent.com/DnZywVWhUYFIzqBBlNRXBBNfrFW97HZE-bVdfCV0rUI5sJ9RLrCPBApBegVSXi0vg9ySV2vI_wdwB0p58BYgDN0GwPYsZjErr-h9_Zo','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/131',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL),(36,130,'https://lh3.googleusercontent.com/M2B9ucamTI6weRaXM0fwX0Ciq0q3rf9KtDPfjcYD0s-QCTVCgbGFgeNI3J54397KaIaq7fg3MubnBdEWUTUixZx8exFtywNBAUwp','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/130',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL),(37,128,'https://lh3.googleusercontent.com/EUvQz0Q6Ac6FwGCKQCM1DkIwHwCYjUbVx75z7uBGiaBACqakKuWfCCKkwe-B5P1QlqBRIsoZZQ1f5lvmfTn2j5YOUAORp3ln92r8','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/128',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL),(38,127,'https://lh3.googleusercontent.com/mATRStFITP40e6P7yLeEEucn85TPCuTZtWuNem6TMU3aQzl2XLPRpI-3C_pjK1aboD1WX-pGYuYz8WjOlORJfqz62TGlgMS7E87dcg','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/127',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL),(39,124,'https://lh3.googleusercontent.com/xzGPTo_6qVfYxmMvoilrJJr7OwrsM7ozp6qPKeutP5ujT6pc8zppkG83NwHqvAv8RcuWMbHbxuSb9BgsA0V76QHrg9OPpCNBV04Y','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/124',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL),(40,123,'https://lh3.googleusercontent.com/oLmN9PFlIWHMEZMsc9btYD1JsSF7Ycb0hfM5rEA7oK37qY2fSR7M6_ZkSqnYev63-VccBSZRKKRq46XIHNgFI8Cfr74JLnyfPphzxA','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/123',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL),(41,121,'https://lh3.googleusercontent.com/RdS8jNHLs6baik3oj_ioewBlBRaKWAKDg8yHJ5fl18dMNsXP7VVk2Ckfj9n9gwZE5At6twQ7ggIj1pWRqfejJhkRFIGRCrwyr5fubQ','0x3b49ec0769D461FDFD2ed18dd69b3B8cb7788597','https://opensea.io/assets/0x3b49ec0769d461fdfd2ed18dd69b3b8cb7788597/121',NULL,1,'2022-01-11 08:28:01','2022-01-11 08:28:01',NULL);
/*!40000 ALTER TABLE `merchandises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `nft_id` int DEFAULT NULL,
  `shipping_id` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `variation_id` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nft_id` (`nft_id`),
  KEY `shipping_id` (`shipping_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id`) REFERENCES `merchandises` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`nft_id`) REFERENCES `merchandises` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`shipping_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4,NULL,1,1,1,'Medium','Green',NULL,'out for delivery','2022-01-13 13:53:13','2022-01-13 13:54:12');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variations`
--

DROP TABLE IF EXISTS `product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `sku_id` int DEFAULT NULL,
  `option_id` int DEFAULT NULL,
  `option_value_id` int DEFAULT NULL,
  `stock_quantity` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variations`
--

LOCK TABLES `product_variations` WRITE;
/*!40000 ALTER TABLE `product_variations` DISABLE KEYS */;
INSERT INTO `product_variations` VALUES (1,1,1,20,1,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(2,1,1,21,1,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(3,1,2,21,1,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(4,1,2,20,2,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(5,1,3,20,3,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(6,1,3,21,1,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(7,1,4,20,1,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(8,1,4,21,2,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(9,1,5,20,2,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(10,1,5,21,2,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(11,1,6,20,3,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(12,1,6,21,2,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(13,1,7,20,1,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(14,1,7,21,3,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(15,1,8,20,2,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(16,1,8,21,3,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(17,1,9,21,3,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(18,1,9,20,3,NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(19,1,10,21,1,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(20,1,10,20,1,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(21,1,11,21,1,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(22,1,11,20,2,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(23,1,12,20,3,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(24,1,12,21,1,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(25,1,13,20,4,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(26,1,13,21,1,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(27,1,14,20,1,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(28,1,14,21,2,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(29,1,15,20,2,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(30,1,15,21,2,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(31,1,16,21,2,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(32,1,16,20,3,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(33,1,17,20,4,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(34,1,17,21,2,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(35,1,18,20,1,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(36,1,18,21,3,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(37,1,19,20,2,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(38,1,19,21,3,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(39,1,20,20,3,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(40,1,20,21,3,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(41,1,21,20,4,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(42,1,21,21,3,NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(43,2,NULL,24,1,NULL,'2022-01-14 05:50:26','2022-01-14 05:50:26'),(44,2,NULL,24,2,NULL,'2022-01-14 05:50:26','2022-01-14 05:50:26');
/*!40000 ALTER TABLE `product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippings` (
  `shipping_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street_address_1` varchar(255) DEFAULT NULL,
  `street_address_2` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippings`
--

LOCK TABLES `shippings` WRITE;
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
INSERT INTO `shippings` VALUES (1,'India','Maharashtra','Thane','304/Chintan-01,Gaurav Sankalp phase-1,','Mira Bhayander Road, Mira Road East','Sachin Singh Bhadoriya',NULL,1,'2022-01-12 13:23:46','2022-01-12 13:23:46');
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skus`
--

DROP TABLE IF EXISTS `skus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `sku_id` int DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `stock_quantity` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skus`
--

LOCK TABLES `skus` WRITE;
/*!40000 ALTER TABLE `skus` DISABLE KEYS */;
INSERT INTO `skus` VALUES (1,1,1,'M1-201-211',NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(2,1,2,'M1-202-211',NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(3,1,3,'M1-203-211',NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(4,1,4,'M1-201-212',NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(5,1,5,'M1-202-212',NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(6,1,6,'M1-203-212',NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(7,1,7,'M1-201-213',NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(8,1,8,'M1-202-213',NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(9,1,9,'M1-203-213',NULL,'2022-01-12 05:09:05','2022-01-12 05:09:05'),(10,1,1,'M1-201-211',NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(11,1,2,'M1-202-211',NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(12,1,3,'M1-203-211',NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(13,1,4,'M1-204-211',NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(14,1,5,'M1-201-212',NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(15,1,6,'M1-202-212',NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(16,1,7,'M1-203-212',NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(17,1,8,'M1-204-212',NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(18,1,9,'M1-201-213',NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(19,1,10,'M1-202-213',NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(20,1,11,'M1-203-213',NULL,'2022-01-12 08:30:26','2022-01-12 08:30:26'),(21,1,12,'M1-204-213',200,'2022-01-12 08:30:26','2022-01-12 15:54:59'),(22,1,1,'M1-201-211-221-231',NULL,'2022-01-13 06:07:27','2022-01-13 06:07:27'),(23,1,2,'M1-202-211-221-231',NULL,'2022-01-13 06:07:27','2022-01-13 06:07:27'),(24,1,3,'M1-203-211-221-231',NULL,'2022-01-13 06:07:27','2022-01-13 06:07:27'),(25,1,4,'M1-204-211-221-231',NULL,'2022-01-13 06:07:27','2022-01-13 06:07:27'),(26,1,5,'M1-201-212-221-231',NULL,'2022-01-13 06:07:27','2022-01-13 06:07:27'),(27,1,6,'M1-202-212-221-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(28,1,7,'M1-203-212-221-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(29,1,8,'M1-204-212-221-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(30,1,9,'M1-201-213-221-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(31,1,10,'M1-202-213-221-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(32,1,11,'M1-203-213-221-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(33,1,12,'M1-204-213-221-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(34,1,13,'M1-201-211-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(35,1,14,'M1-202-211-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(36,1,15,'M1-203-211-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(37,1,16,'M1-204-211-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(38,1,17,'M1-201-212-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(39,1,18,'M1-202-212-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(40,1,19,'M1-203-212-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(41,1,20,'M1-204-212-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(42,1,21,'M1-201-213-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(43,1,22,'M1-202-213-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(44,1,23,'M1-203-213-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(45,1,24,'M1-204-213-222-231',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(46,1,25,'M1-201-211-221-232',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(47,1,26,'M1-202-211-221-232',NULL,'2022-01-13 06:07:28','2022-01-13 06:07:28'),(48,1,27,'M1-203-211-221-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(49,1,28,'M1-204-211-221-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(50,1,29,'M1-201-212-221-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(51,1,30,'M1-202-212-221-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(52,1,31,'M1-203-212-221-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(53,1,32,'M1-204-212-221-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(54,1,33,'M1-201-213-221-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(55,1,34,'M1-202-213-221-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(56,1,35,'M1-203-213-221-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(57,1,36,'M1-204-213-221-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(58,1,37,'M1-201-211-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(59,1,38,'M1-202-211-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(60,1,39,'M1-203-211-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(61,1,40,'M1-204-211-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(62,1,41,'M1-201-212-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(63,1,42,'M1-202-212-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(64,1,43,'M1-203-212-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(65,1,44,'M1-204-212-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(66,1,45,'M1-201-213-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(67,1,46,'M1-202-213-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(68,1,47,'M1-203-213-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(69,1,48,'M1-204-213-222-232',NULL,'2022-01-13 06:07:29','2022-01-13 06:07:29'),(70,2,1,'M2-241',NULL,'2022-01-14 05:50:26','2022-01-14 05:50:26'),(71,2,2,'M2-242',NULL,'2022-01-14 05:50:26','2022-01-14 05:50:26'),(72,2,3,'M2-243',NULL,'2022-01-14 05:50:26','2022-01-14 05:50:26');
/*!40000 ALTER TABLE `skus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wallet_address` varchar(255) DEFAULT NULL,
  `shipping_id` int DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'0x7046b8A8058bF21e9C925Bc5b964A8c13A8Dc977',NULL,1,'2022-01-21 20:10:54','2022-01-21 20:10:54','patient-major-6');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-13 14:47:33
