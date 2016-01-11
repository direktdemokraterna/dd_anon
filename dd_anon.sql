-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	4.1.22-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--
-- Create schema dd_anon
--
SET SQL_SAFE_UPDATES = 0;

CREATE DATABASE IF NOT EXISTS dd_anon;
USE dd_anon;

--
-- Definition of table `temp_codes_constituencies`
--

DROP TABLE IF EXISTS `temp_codes_constituencies`;
CREATE TABLE `temp_codes_constituencies` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `temp_code` varchar(45) NOT NULL default '',
  `constituency_id` int(10) unsigned NOT NULL default '0',
  `timestamp_created` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Definition of table `user_temp_codes`
--

DROP TABLE IF EXISTS `user_temp_codes`;
CREATE TABLE `user_temp_codes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `temp_code` varchar(45) NOT NULL default '',
  `user_id` int(10) unsigned default NULL,
  `timestamp_created` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_temp_codes`
--

/*!40000 ALTER TABLE `user_temp_codes` DISABLE KEYS */;
INSERT INTO `user_temp_codes` (`id`,`temp_code`,`user_id`,`timestamp_created`) VALUES 
 (1,'j7O5zpQpJ1Dpc28VyYxb',5,1428224049),
 (2,'s6eY7CZM1Ghp8kTkms3',5,1428224399),
 (3,'7oTsdUgON7w9YRG2ljEp',5,1428224421),
 (4,'DLwuMGBGw9GTlIxRksuI',5,1428224573),
 (5,'2plbn3WeF66nm0nxEwH',5,1428224621),
 (6,'WJc0JMmnC8sHEcGmu2oR',5,1428224819),
 (7,'cA90oizGqSAmYvRsKM35',5,1428225044),
 (8,'Fit4ZtzB8Ldro1Jnub',5,1428228361),
 (9,'p3Ly25MPTFe7MiJgXHJ',5,1428228387),
 (10,'O2SnE2xo9CTpbGLNRiv1',5,1428229939),
 (11,'YJDQpf8BSzTtPVbBnG2R',5,1428230032),
 (12,'vsQLeg1EsPWtbShsFgBL',5,1428230131),
 (13,'uCMCLJh3A85f8K0hwvRC',5,1428230311),
 (14,'eHuSaRnV8AvC1iOsjUpk',5,1428231196),
 (15,'DqHpdgKvQ9La6UxqP0oJ',5,1428231331),
 (16,'o8WGpOqAw9l9bZrGQWQ',5,1428231686),
 (17,'QtFauzkoaI2w2MmoPbhI',5,1428231824),
 (18,'RJeZlSfwzm46pUYylak',5,1428232713),
 (19,'XJraWK20nfQhO2XVNWdP',4,1428469709),
 (20,'3PhSBo0LaKp2ZINxo1uu',5,1428695056),
 (21,'CbsoVTMt73DQji09BLl0',6,1429087518),
 (22,'vP0hl3kM3nDD8hqJJq0y',5,1429092557),
 (23,'IShC4Kgif0olNQy5UVLe',1,1429092564),
 (24,'L9U240yGy0tzJuNn28ly',6,1429123006),
 (25,'eaQBqwZ59UOuEBIrewE0',1,1429166182),
 (26,'eu4P0EEr0dJixZmqDQxT',6,1429166227),
 (27,'C2060ASDolZQrqwH5Ei1',6,1429521738),
 (28,'yN7QBxING30BgByj0sFf',6,1429601269),
 (29,'9hUbPxlPzMg6QdRxEJ1H',6,1429604714),
 (30,'vmmU4cjllex5dqqOsY9j',6,1431326289),
 (31,'jI01TPxbXDVfjWtuCGYy',1,1431328858),
 (32,'2g5JLOkTCN34jSVTFUcO',1,1431425285),
 (33,'BowmOCjV12sfdyMCUL4r',6,1432010082),
 (34,'yKJIH8UyHQqXTPjDqr88',1,1432012108),
 (35,'ChYErZkWoLc4RZ0h4DBH',6,1432105445),
 (36,'HAw439LECP1zJYysM0xQ',1,1432108440),
 (37,'VeKxedxNyS1JxQ2c5Pma',6,1432108798),
 (38,'pgI0dc2yqc8JpjLsCt9h',1,1432110519),
 (39,'ogHKs9ddjioTOP9buswy',8,1432275195),
 (40,'HsGHVzfYjsatTTLs9wH1',11,1432277331),
 (41,'Ostp6LsXeuy4ZAjYXhXU',11,1432277702),
 (42,'M6QtXCkGnvEpXxaIHX9c',1,1432277749),
 (43,'v9lFidqj9Cfl8HVgVh2f',4,1432278021),
 (44,'KC4XFi124KNHxGBT3nLE',6,1432278189),
 (45,'EjZBjUobImMZUlfnCFr0',5,1432278207),
 (46,'U5EyS5uCJ2gflf3FiRMZ',4,1432278223),
 (47,'lInIMMoMSoQesaqobdxk',13,1432280541),
 (48,'1jc1QYgKjA5xrFd4vI2w',4,1432280572),
 (49,'5Y9oW7I6e3His02q1GrL',5,1432280590),
 (50,'AztDYFxAP11JJAOz5AiJ',4,1432285333),
 (51,'9IXGx18M6xc0gvv9kQMO',6,1432311727),
 (52,'1gQrG1vahFgpPdHzwXM2',5,1433239547),
 (53,'2U8GMPxNfi36hitomQ7J',6,1433330071),
 (54,'Rk7LisGCRlWlnpq8bWoY',13,1433490316),
 (55,'OM8aRSXEgliEOWsCznaC',5,1433764911),
 (56,'QMbwFglGrlsNvoXmNZAI',13,1433764952),
 (57,'jo3gwhnzYRXycDIJp6Yp',6,1433765673),
 (58,'7RufJUSfpkE1jQ8rF1Hu',5,1433765976),
 (59,'X0TodqxamuSuKRZ9m2EK',6,1433831435),
 (60,'xw6EnH4ynyrqcSfrNNRF',5,1433832939),
 (61,'Ix4CiWGwDngSl0IqvdXr',4,1433832994),
 (62,'2vBLZ4kKf0AWf4PoenC1',5,1433833055),
 (63,'zWbZpxWeBZKojag381EN',6,1433833296),
 (64,'lHIxuHyjCsG6dkQffX2O',6,1433833316),
 (65,'RfDBVGbkyQtulnDoj7eB',6,1433833439),
 (66,'0ftemHL3SfoAoS607TY9',6,1433921138),
 (67,'FPkJzbyVyCRgxOoQ8K7S',6,1434022933),
 (68,'XZ08UK25sxaVCVMw2sMi',6,1434356128),
 (69,'ljqbxLvRrGMmexb6lEtX',6,1434555986),
 (70,'RBXL2ZnG7iXYA4MizTti',5,1434988715),
 (71,'OCEiQ6jjpnEJAIjRePMD',5,1435233880),
 (72,'nmJH8fR3dw6EJ6ROnuke',5,1435236707),
 (73,'jXey8auMiiriWJe5kpat',5,1435306855),
 (74,'BwVNEbo39sQoR3P749dd',5,1436274029),
 (75,'1biXd2W0rE8x0ycHYBEg',5,1439705639),
 (76,'Vzz2xr23Bzk8broaSzU8',14,1440242816),
 (77,'utTXx42XXfY2dTzT1MoY',5,1440243656),
 (78,'wAkXsf2WWOe3Ot3KL4hE',14,1440243808),
 (79,'aL7AOZnZ4gzZhQnMOrAe',5,1440244687),
 (80,'QJgmf8FNufhj09KNstYe',5,1440271739),
 (81,'WQtAWMfuML3odctv03q1',5,1440314817),
 (82,'KNEtaMoQOBSdI2w6NP0U',16,1440401333),
 (83,'TSmxM48i76kYpaTiK4AD',5,1440401359),
 (84,'08sG2cjfaO0TOy5aMdRG',6,1440831621),
 (85,'vjkLzEXsGtcnWOrptzjF',4,1440834631),
 (86,'STHCEpCP1SnVmAtO3kFc',4,1440834660),
 (87,'5EdJwG2teV3VU9fqt13V',5,1441045436),
 (88,'DNFH2PmH5V1Mjr77GJUs',4,1441045449),
 (89,'azof6c4JsvjiKgpmHMVo',5,1441193417),
 (90,'C48KLllW06yJTng5YREj',4,1441270293),
 (91,'JTi51VF5E75YQxVPgRXn',5,1441305620),
 (92,'5EXrG8eqthTXK50UNBip',4,1441401216),
 (93,'6EXRgA6TqKqjXLNr5AuT',5,1442754858),
 (94,'cgooYscZuQNfSIo9YaUK',5,1444411776),
 (95,'AJa5JY5NSrBMWkA1vQ5V',5,1444481227),
 (96,'nntNF69OeYdgkbG62tw0',6,1444481394),
 (97,'ab56LBCjpsytcMyn6hwz',6,1444547284),
 (98,'O1JOBVwLYYIcxae5tHsd',6,1444585621);
/*!40000 ALTER TABLE `user_temp_codes` ENABLE KEYS */;

--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `user_code` varchar(20) NOT NULL default '',
  `timestamp_last_login` int(10) unsigned default NULL,
  `timestamp_last_activity` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`user_id`,`user_code`,`timestamp_last_login`,`timestamp_last_activity`) VALUES 
 (1,5,'osb8A8xrrQrGQfologrm',NULL,NULL),
 (2,6,'9ZvUSJF2Y9binMKfwOr7',NULL,NULL),
 (3,4,'OBc7rZoonK45KsRWs4gq',NULL,NULL),
 (4,13,'nNSpJccU3OdwJxq3SMBw',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
