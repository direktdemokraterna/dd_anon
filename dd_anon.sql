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
-- Dumping data for table `temp_codes_constituencies`
--

/*!40000 ALTER TABLE `temp_codes_constituencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_codes_constituencies` ENABLE KEYS */;


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
 (51,'9IXGx18M6xc0gvv9kQMO',6,1432311727);
/*!40000 ALTER TABLE `user_temp_codes` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `active_user_code` varchar(20) NOT NULL default '',
  `passive_user_code1` varchar(20) NOT NULL default '',
  `passive_user_code2` varchar(20) NOT NULL default '',
  `passive_user_code3` varchar(20) NOT NULL default '',
  `timestamp_last_login` int(10) unsigned default NULL,
  `timestamp_last_activity` int(10) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`user_id`,`active_user_code`,`passive_user_code1`,`passive_user_code2`,`passive_user_code3`,`timestamp_last_login`,`timestamp_last_activity`) VALUES 
 (1,5,'osb8A8xrrQrGQfologrm','Csc0Wdfy6CHQB9eEx2UW','nTY2K5KFS3qsVuewTQNj','evYYqLsXAtpiEyQAu9vU',NULL,NULL),
 (2,1,'9ZvUSJF2Y9binMKfwOr7','QzcZsdP5ilu1roSlrhSW','qW4dkmHmZGXd2qpTAAeC','4uNKQd3WK8RzdQAqtFRp',NULL,NULL),
 (3,4,'OBc7rZoonK45KsRWs4gq','S28ZUXNjGMofzPxd16iJ','Dys7rHw0qdeH3vOrmDk0','afflJNzLhhT5QyX1cDuF',NULL,NULL),
 (4,6,'nNSpJccU3OdwJxq3SMBw','sKbDUhNO4GHSweyENtF4','nrjiKEbZCJm7XrUhg8Yg','ko7qVZd1ePk3vF5JU8o5',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
