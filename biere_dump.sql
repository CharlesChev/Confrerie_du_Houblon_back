-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: biere
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `biere`
--

DROP TABLE IF EXISTS `biere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biere` (
  `id` bigint NOT NULL,
  `brasserie` varchar(255) DEFAULT NULL,
  `description` longtext,
  `gouteur` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `pay` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `lat` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biere`
--

LOCK TABLES `biere` WRITE;
/*!40000 ALTER TABLE `biere` DISABLE KEYS */;
INSERT INTO `biere` VALUES (0,'La Brasserie d\'Alsace','Cette IPA présente une teinte dorée étincelante, avec une mousse blanche crémeuse. Elle déborde d\'arômes floraux et d\'agrumes, tandis que son goût est une explosion d\'houblon, offrant une amertume équilibrée par des notes de fruits tropicaux et une finition rafraîchissante.','François','La Bonne Bière','France','assets/beer_arti.png','IPA',2,48),(2,'Emerald Isle Brewery','Une stout noire comme l\'ébène, avec des arômes riches de café torréfié et de cacao noir. Une expérience intense pour les amateurs de bières sombres.','Balou','Porter Ébène','Irlande','assets/beer_arti.png','Porter',6,53),(3,'Bohemian Brews','Une pilsner tchèque classique avec une robe dorée et des arômes frais de houblon noble. Parfaite pour accompagner des plats tchèques.','Cantin','Pilsner Bohémienne','République tchèque','assets/beer_arti.png','Pilsner',15,49),(5,'Brasserie Sainte-Trinité','Une triple belge divine aux arômes de levure épicée, de fruits tropicaux et une finition sèche. Une expérience inoubliable.','Kevin','Triple Divine','Belgique','assets/beer_arti.png','Triple',4,50),(7,'Côte d\'Or Brasserie','Une blanche belge légère et rafraîchissante, parfumée au citron et aux épices. Idéale pour les journées en bord de mer.','Charles','Blanche de la Côte','Belgique','assets/beer_arti.png','Blanche',4,51),(8,'Highland Distillery','Une scotch ale tourbée avec des saveurs fumées de tourbe, de caramel et de fruits secs. Une expérience écossaise authentique.','Balou','Scotch Ale Tourbée','Écosse','assets/beer_arti3.png','Scotch Ale',4,55),(9,'Cascade Hop Farm','Une IPA américaine aux arômes de pin, de pamplemousse et une amertume prononcée. Parfaite pour les amateurs de houblon.','Nicolas','IPA des Cascades','États-Unis','assets/beer_arti3.png','IPA',-121,45),(10,'Dark Roast Brewery','Une stout irlandaise au café, avec des saveurs de café fraîchement moulu, de chocolat noir et une touche de vanille.','Kevin','Stout au Café','Irlande','assets/beer_arti3.png','Stout',-8,53),(11,'Brasserie de l\'Été','Une bière blonde légère et rafraîchissante, parfaite pour les journées estivales. Des arômes de céréales et de miel avec une finale propre.','François','Blonde d\'Été','France','assets/beer_arti3.png','Blonde',2,46),(12,'Alpine Brewmasters','Une lager suisse aux arômes de montagne, de malt et une finition propre. Pour les amateurs de randonnée et de paysages alpins.','Charles','Lager des Montagnes','Suisse','assets/beer_arti3.png','Lager',8,46),(13,'Caramel Craft Brewery','Une porter canadienne avec des saveurs sucrées de caramel, de toffee et une pointe de café. Un délice pour les amateurs de bières dessert.','Balou','Porter Caramel','Canada','assets/beer_arti3.png','Porter',-106,56),(14,'Bohemian Bierhaus','Une pilsner tchèque classique, légère, avec des arômes de malt et de houblon noble. Une tradition tchèque dans une bouteille.','Cantin','Pilsner de Bohême','République tchèque','assets/beer_arti3.png','Pilsner',15,49),(15,'Orchard Ales','Une saison française aux arômes de pommes, de poires et de fleurs des vergers, avec une finale sèche et fruitée.','Nicolas','Saison des Vergers','France','assets/beer_arti3.png','Saison',2,47),(16,'Alpine Brewmasters','Une bière blonde suisse, légère et rafraîchissante, avec des notes de miel, de malt et une fraîcheur alpine. Pour les amateurs de montagnes.','Kevin','Blonde des Alpes','Suisse','assets/beer_arti3.png','Blonde',8,46),(17,'Rocky Mountain Hops','Une IPA canadienne avec des arômes de pin, de résine, et une amertume vive. Parfaite pour les amateurs de randonnée en montagne.','François','IPA des Montagnes','Canada','assets/beer_arti3.png','IPA',-122,43),(18,'Chocolatier Brews','Une porter belge au chocolat noir, avec des saveurs riches de cacao, de café torréfié et de pralines. Un dessert en bouteille.','Kevin','Porter au Chocolat','Belgique','assets/beer_arti3.png','Porter',50,4),(19,'Forest Brews','Une lager allemande avec des arômes de forêt, de malt et une touche de résine. Parfaite pour une aventure en pleine nature.','Balou','Lager Forestière','Allemagne','assets/beer_arti3.png','Lager',51,10),(20,'Brasserie Royale','Une bière blonde rafraîchissante aux reflets dorés, avec des arômes subtils de céréales et une finale propre. Parfaite pour une journée ensoleillée.','Charles','La Dorée','Belgique','assets/beer_arti.png','Blonde',4,51),(21,'La Brasserie d\'Alsace','Cette IPA présente une teinte dorée étincelante, avec une mousse blanche crémeuse. Elle déborde d\'arômes floraux et d\'agrumes, tandis que son goût est une explosion d\'houblon, offrant une amertume équilibrée par des notes de fruits tropicaux et une finition rafraîchissante.','François','000 spéciale','France','assets/beer_arti.png','IPA',48,2),(26,'La Brasserie des US','Cette Stout présente une teinte dorée étincelante, avec une mousse blanche crémeuse. Elle déborde d\'arômes floraux et d\'agrumes, tandis que son goût est une explosion d\'houblon, offrant une amertume équilibrée par des notes de fruits tropicaux et une finition rafraîchissante.','François','American Pie','USA','assets/beer_arti.png','Stout',-123,49),(153,'brew brasserie','Une stout noire comme l\'ébène, avec des arômes riches de café torréfié et de cacao','NomGouteur','Stout special','PaysDeLaBiere','assets/beer_arti.png','Stout',7,58),(202,'Loire Brass','Une bonne binouze de la loire!!! Brassée avec de l\'eau de la loire!','François','Biere de la Loire','france','assets/beer_arti.png','blonde',2.5,47),(357,'Red Brasserie','Une arrière gout de fruit et une forte impression de patate en première bouche!','François','Archangel','Russie','assets/beer_arti3.png','Noire',99.69,64.65),(358,'Golden brass\'','Une bière à la pomme de type Golden, garde la pêche, on ce fend la poire!','François','Golden biere','Venezuela','assets/beer_arti.png','Lager',-65.7,7.6),(360,'Aussie','Une biere autalienne pour les australiens! Avec un arrière gout de l\'outback si vous en buvez trop vous vous réveillerez dans la terreur!','Charles','Amber beer','Australie','assets/beer_arti3.png','Ambrée',135.3,-27);
/*!40000 ALTER TABLE `biere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biere_seq`
--

DROP TABLE IF EXISTS `biere_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biere_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biere_seq`
--

LOCK TABLES `biere_seq` WRITE;
/*!40000 ALTER TABLE `biere_seq` DISABLE KEYS */;
INSERT INTO `biere_seq` VALUES (1201);
/*!40000 ALTER TABLE `biere_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-22 17:54:20



INSERT INTO biere (id, nom, type, pay, brasserie, gouteur, description, photo, lng, lat)
VALUES
(0, 'La Bonne Bière', 'IPA', 'France', 'La Brasserie d\'Alsace', 'François',
 'Cette IPA présente une teinte dorée étincelante, avec une mousse blanche crémeuse. Elle déborde d\'arômes floraux et d\'agrumes, tandis que son goût est une explosion d\'houblon, offrant une amertume équilibrée par des notes de fruits tropicaux et une finition rafraîchissante.', 'assets/beer_arti.png', 2, 48),
(2, 'Porter Ébène', 'Porter', 'Irlande', 'Emerald Isle Brewery', 'Balou',
 'Une stout noire comme l\'ébène, avec des arômes riches de café torréfié et de cacao noir. Une expérience intense pour les amateurs de bières sombres.', 'assets/beer_arti.png', 6, 53),
(3, 'Pilsner Bohémienne', 'Pilsner', 'République tchèque', 'Bohemian Brews', 'Cantin',
 'Une pilsner tchèque classique avec une robe dorée et des arômes frais de houblon noble. Parfaite pour accompagner des plats tchèques.', 'assets/beer_arti.png', 15, 49),
(4, 'Lager Alpine', 'Lager', 'Suisse', 'Alps Brews', 'Nicolas',
 'Une lager suisse qui évoque les Alpes, avec des notes de malt, une finale propre et une fraîcheur alpine. Idéale pour les randonneurs.', 'assets/beer_arti.png', 35, 69),
(5, 'Triple Divine', 'Triple', 'Belgique', 'Brasserie Sainte-Trinité', 'Kevin',
 'Une triple belge divine aux arômes de levure épicée, de fruits tropicaux et une finition sèche. Une expérience inoubliable.', 'assets/beer_arti.png', 4, 50),
(6, 'Saison Printanière', 'Saison', 'France', 'Brasserie des Fleurs', 'François',
 'Une saison française avec des notes florales et une pointe de citron, parfaite pour célébrer l\'arrivée du printemps.', 'assets/beer_arti.png', 24, 70),
(7, 'Blanche de la Côte', 'Blanche', 'Belgique', 'Côte d\'Or Brasserie', 'Charles',
 'Une blanche belge légère et rafraîchissante, parfumée au citron et aux épices. Idéale pour les journées en bord de mer.', 'assets/beer_arti.png', 4, 51),
(8, 'Scotch Ale Tourbée', 'Scotch Ale', 'Écosse', 'Highland Distillery', 'Balou',
 'Une scotch ale tourbée avec des saveurs fumées de tourbe, de caramel et de fruits secs. Une expérience écossaise authentique.', 'assets/beer_arti3.png', 4, 55),
(9, 'IPA des Cascades', 'IPA', 'États-Unis', 'Cascade Hop Farm', 'Nicolas',
 'Une IPA américaine aux arômes de pin, de pamplemousse et une amertume prononcée. Parfaite pour les amateurs de houblon.', 'assets/beer_arti3.png', -121, 45),
(10, 'Stout au Café', 'Stout', 'Irlande', 'Dark Roast Brewery', 'Kevin',
 'Une stout irlandaise au café, avec des saveurs de café fraîchement moulu, de chocolat noir et une touche de vanille.', 'assets/beer_arti3.png', -8, 53),
(11, 'Blonde d\'Été', 'Blonde', 'France', 'Brasserie de l\'Été', 'François',
 'Une bière blonde légère et rafraîchissante, parfaite pour les journées estivales. Des arômes de céréales et de miel avec une finale propre.', 'assets/beer_arti3.png', 2, 46),
(12, 'Lager des Montagnes', 'Lager', 'Suisse', 'Alpine Brewmasters', 'Charles',
 'Une lager suisse aux arômes de montagne, de malt et une finition propre. Pour les amateurs de randonnée et de paysages alpins.', 'assets/beer_arti3.png', 8, 46),
(13, 'Porter Caramel', 'Porter', 'Canada', 'Caramel Craft Brewery', 'Balou',
 'Une porter canadienne avec des saveurs sucrées de caramel, de toffee et une pointe de café. Un délice pour les amateurs de bières dessert.', 'assets/beer_arti3.png', -106, 56),
(14, 'Pilsner de Bohême', 'Pilsner', 'République tchèque', 'Bohemian Bierhaus', 'Cantin',
 'Une pilsner tchèque classique, légère, avec des arômes de malt et de houblon noble. Une tradition tchèque dans une bouteille.', 'assets/beer_arti3.png', 15, 49),
(15, 'Saison des Vergers', 'Saison', 'France', 'Orchard Ales', 'Nicolas',
 'Une saison française aux arômes de pommes, de poires et de fleurs des vergers, avec une finale sèche et fruitée.', 'assets/beer_arti3.png', 2, 47),
(16, 'Blonde des Alpes', 'Blonde', 'Suisse', 'Alpine Brewmasters', 'Kevin',
 'Une bière blonde suisse, légère et rafraîchissante, avec des notes de miel, de malt et une fraîcheur alpine. Pour les amateurs de montagnes.', 'assets/beer_arti3.png', 8, 46),
(17, 'IPA des Montagnes', 'IPA', 'Canada', 'Rocky Mountain Hops', 'François',
 'Une IPA canadienne avec des arômes de pin, de résine, et une amertume vive. Parfaite pour les amateurs de randonnée en montagne.', 'assets/beer_arti3.png', -122, 43);

 INSERT INTO biere (id, nom, type, pay, brasserie, gouteur, description, photo, lng, lat)
VALUES
(18, 'Porter au Chocolat', 'Porter', 'Belgique', 'Chocolatier Brews', 'Kevin',
 'Une porter belge au chocolat noir, avec des saveurs riches de cacao, de café torréfié et de pralines. Un dessert en bouteille.', 'assets/beer_arti3.png', 50, 4),
(19, 'Lager Forestière', 'Lager', 'Allemagne', 'Forest Brews', 'Balou',
 'Une lager allemande avec des arômes de forêt, de malt et une touche de résine. Parfaite pour une aventure en pleine nature.', 'assets/beer_arti3.png', 51, 10),
(20, 'La Dorée', 'Blonde', 'Belgique', 'Brasserie Royale', 'Charles',
 'Une bière blonde rafraîchissante aux reflets dorés, avec des arômes subtils de céréales et une finale propre. Parfaite pour une journée ensoleillée.', 'assets/beer_arti.png', 4, 51);

INSERT INTO biere (id, nom, type, pay, brasserie, gouteur, description, photo, lng, lat)
VALUES
(21, '000 spéciale', 'IPA', 'France', 'La Brasserie d\'Alsace', 'François',
 'Cette IPA présente une teinte dorée étincelante, avec une mousse blanche crémeuse. Elle déborde d\'arômes floraux et d\'agrumes, tandis que son goût est une explosion d\'houblon, offrant une amertume équilibrée par des notes de fruits tropicaux et une finition rafraîchissante.', 'assets/beer_arti.png', 48, 2),
(22, '!!! la surprise', 'IPA', 'France', 'La Brasserie d\'Alsace', 'François',
 'Cette IPA présente une teinte dorée étincelante, avec une mousse blanche crémeuse. Elle déborde d\'arômes floraux et d\'agrumes, tandis que son goût est une explosion d\'houblon, offrant une amertume équilibrée par des notes de fruits tropicaux et une finition rafraîchissante.', 'assets/beer_arti.png', 68, 22);

INSERT INTO biere (id, nom, type, pay, brasserie, gouteur, description, photo, lng, lat)
VALUES
(357, 'Archangel', 'Noire', 'Russie', 'Red Brasserie', 'François',
 'Une arrière gout de fruit et une forte impression de patate en première bouche!', 'assets/beer_arti3.png', 99.69, 64.65),
(358, 'Golden biere', 'Lager', 'Venezuela', 'Golden brass\'', 'François',
 'Une bière à la pomme de type Golden, garde la pêche, on ce fend la poire!', 'assets/beer_arti.png', -65.7, 7.6),
(360, 'Amber beer', 'Ambrée', 'Australie', 'Aussie', 'Charles',
 'Une biere autalienne pour les australiens! Avec un arrière gout de l\'outback si vous en buvez trop vous vous réveillerez dans la terreur!', 'assets/beer_arti3.png', 135.3, -27);

INSERT INTO biere (id, nom, type, pay, brasserie, gouteur, description, photo, lng, lat)
VALUES
(1, 'La Bonne Bière', 'IPA', 'France', 'La Brasserie d\'Alsace', 'François',
 'Cette IPA présente une teinte dorée étincelante, avec une mousse blanche crémeuse. Elle déborde d\'arômes floraux et d\'agrumes, tandis que son goût est une explosion d\'houblon, offrant une amertume équilibrée par des notes de fruits tropicaux et une finition rafraîchissante.', 'assets/beer_arti.png', 2, 48),
(4, 'Porter Ébène', 'Porter', 'Irlande', 'Emerald Isle Brewery', 'Balou',
 'Une stout noire comme l\'ébène, avec des arômes riches de café torréfié et de cacao noir. Une expérience intense pour les amateurs de bières sombres.', 'assets/beer_arti.png', 6, 53),
(6, 'Pilsner Bohémienne', 'Pilsner', 'République tchèque', 'Bohemian Brews', 'Cantin',
 'Une pilsner tchèque classique avec une robe dorée et des arômes frais de houblon noble. Parfaite pour accompagner des plats tchèques.', 'assets/beer_arti.png', 15, 49);
