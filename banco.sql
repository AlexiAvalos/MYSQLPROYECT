CREATE DATABASE  IF NOT EXISTS `banco` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `banco`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: banco
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `ciclofacturacion`
--

DROP TABLE IF EXISTS `ciclofacturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciclofacturacion` (
  `idCicloFacturacion` int NOT NULL AUTO_INCREMENT,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `intereses` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idCicloFacturacion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclofacturacion`
--

LOCK TABLES `ciclofacturacion` WRITE;
/*!40000 ALTER TABLE `ciclofacturacion` DISABLE KEYS */;
INSERT INTO `ciclofacturacion` VALUES (1,'2024-01-01','2024-01-31',25.50),(2,'2024-02-01','2024-02-29',30.25),(3,'2024-03-01','2024-03-31',20.75),(4,'2024-04-01','2024-04-30',1.75);
/*!40000 ALTER TABLE `ciclofacturacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `idDistrito` int DEFAULT NULL,
  `idEstadoCivil` int DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `dui` varchar(20) DEFAULT NULL,
  `numeroCelular` int DEFAULT NULL,
  `numeroFijo` int DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `ingresos` decimal(10,2) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `idDistrito` (`idDistrito`),
  KEY `idEstadoCivil` (`idEstadoCivil`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idDistrito`) REFERENCES `distrito` (`idDistrito`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`idEstadoCivil`) REFERENCES `estadocivil` (`idEstadoCivil`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,80,3,'Erika','Waleworke','876832914',40768992,81207221,'ewaleworke0@businessinsider.com','2002-05-27',489.30,'74 Londonderry Center'),(2,230,3,'Waylan','Harbour','858571350',99728569,41725646,'wharbour1@list-manage.com','1992-01-20',631.60,'55053 Clove Crossing'),(3,227,1,'Alfonse','Corhard','803816727',20097445,75789416,'acorhard2@gnu.org','1985-02-20',401.94,'8294 Forest Dale Crossing'),(4,155,3,'Inger','O\'Shea','752632834',32653937,45253487,'ioshea3@nytimes.com','1993-03-28',565.41,'79342 Ridge Oak Parkway'),(5,250,1,'Debee','Spirit','988603253',28849087,93737285,'dspirit4@economist.com','1981-07-25',141.72,'91 Commercial Parkway'),(6,168,2,'Legra','Stollenbeck','107497661',30532867,30716748,'lstollenbeck5@buzzfeed.com','1992-01-29',821.80,'3 Gina Street'),(7,224,2,'Alex','Cobbledick','285724007',35687403,88446662,'acobbledick6@goo.ne.jp','1980-05-20',355.79,'372 Red Cloud Drive'),(8,203,3,'Beryl','Revance','158292810',53196237,25157112,'brevance7@google.com','2001-10-27',340.67,'03 Clemons Alley'),(9,99,1,'Abbie','Azemar','684761204',79257436,80769329,'aazemar8@cbslocal.com','1997-08-25',205.16,'710 Iowa Point'),(10,155,2,'Sigrid','Bugge','978995017',65905341,11257052,'sbugge9@multiply.com','1981-09-14',74.66,'8022 Oneill Alley'),(11,239,2,'Carlyle','Chatin','435282403',92273739,13661330,'cchatina@sitemeter.com','2004-05-21',390.40,'769 Butternut Junction'),(12,62,3,'Delores','Cahey','523441953',98223720,84995723,'dcaheyb@miitbeian.gov.cn','1998-05-05',770.57,'681 Vahlen Street'),(13,191,1,'Opaline','Purcell','767059281',29609166,62080932,'opurcellc@woothemes.com','2003-09-29',317.79,'40316 Badeau Circle'),(14,30,3,'Evita','Yeates','961468999',30544479,95149310,'eyeatesd@usatoday.com','2002-07-03',716.41,'569 Anderson Park'),(15,104,3,'Correna','Musslewhite','874974327',44915719,46283131,'cmusslewhitee@sciencedaily.com','1997-02-10',386.46,'60194 Evergreen Way'),(16,1,3,'Sarina','Critzen','485054358',28544553,48482397,'scritzenf@surveymonkey.com','1991-07-28',733.02,'589 Victoria Pass'),(17,187,1,'Whitby','Corfield','526811188',91359365,26375043,'wcorfieldg@unc.edu','1997-10-15',786.65,'85 Milwaukee Terrace'),(18,107,2,'Fraser','Emmer','202301926',80663080,19091325,'femmerh@hatena.ne.jp','2003-12-01',123.86,'45 Hudson Center'),(19,67,1,'Paquito','Pirrey','173349133',84370150,36744708,'ppirreyi@wordpress.com','2001-05-20',838.46,'52 School Pass'),(20,44,1,'Calvin','Foggarty','803387155',17836819,40186634,'cfoggartyj@altervista.org','2004-09-15',809.33,'8584 Tony Pass'),(21,22,1,'Abbye','Woodroof','937865191',95455769,89279320,'awoodroofk@networkadvertising.org','1988-03-08',243.03,'8 7th Point'),(22,160,3,'Delano','Delle','200761866',35331924,41603874,'ddellel@ibm.com','1992-07-29',850.67,'7 Talmadge Trail'),(23,134,2,'Matthew','Witcherley','787853183',86838730,33338699,'mwitcherleym@indiatimes.com','1989-01-25',622.08,'12249 Toban Junction'),(24,184,3,'Corrinne','Cordle','915281850',35132897,65531192,'ccordlen@netlog.com','2004-09-07',676.67,'50 Carpenter Parkway'),(25,205,1,'Risa','Lancaster','075796207',20486391,32614083,'rlancastero@rediff.com','1994-12-08',611.60,'0 Glacier Hill Pass'),(26,91,1,'Candi','Cella','501052910',53455836,39301526,'ccellap@gmpg.org','1991-01-29',636.50,'70 School Plaza'),(27,71,3,'Burnard','Tatterton','204828325',14186577,99397476,'btattertonq@ehow.com','1986-04-08',81.08,'54192 Northview Road'),(28,58,2,'Ches','Chaloner','175905767',71375798,42737293,'cchalonerr@quantcast.com','1985-04-05',441.77,'0 Maple Plaza'),(29,102,2,'Perkin','Wasielewicz','737035319',62303857,93958441,'pwasielewiczs@prlog.org','1997-03-19',174.84,'13 Doe Crossing Junction'),(30,19,2,'Kissiah','Corstorphine','490201664',35715454,67247769,'kcorstorphinet@cloudflare.com','2000-04-20',937.23,'1 Badeau Plaza'),(31,243,2,'Donica','Emmison','199968679',60813189,15535516,'demmisonu@comsenz.com','1981-09-10',315.06,'23037 Bluejay Crossing'),(32,116,1,'Tildie','Gudeman','205460235',62186941,63983197,'tgudemanv@blogs.com','2004-05-01',232.35,'7324 Hazelcrest Place'),(33,57,2,'Euell','Hanner','614180427',57782214,58845290,'ehannerw@bravesites.com','2002-07-06',762.13,'03638 Melby Alley'),(34,211,1,'Wilone','Sea','530186203',61628764,6856761,'wseax@w3.org','2000-04-06',79.94,'23281 Heath Center'),(35,144,2,'Marion','Foulser','113208585',10985507,60142188,'mfoulsery@fda.gov','1984-06-13',234.73,'713 Lighthouse Bay Place'),(36,189,1,'Netta','Upchurch','563403541',92113712,87191481,'nupchurchz@spiegel.de','1999-05-09',315.47,'7 Tony Hill'),(37,36,2,'Euell','Jeandel','495644293',55289596,1322268,'ejeandel10@bigcartel.com','1988-11-12',423.53,'14578 Twin Pines Plaza'),(38,139,3,'Damara','Covet','918876297',29682628,18376189,'dcovet11@rambler.ru','1983-03-03',205.38,'0 Tony Road'),(39,206,1,'Zerk','Yukhnini','036427421',98175230,31672364,'zyukhnini12@bravesites.com','1980-12-10',577.61,'9188 Del Sol Avenue'),(40,224,1,'Kamilah','Culmer','500054698',14876496,72774663,'kculmer13@ow.ly','2003-06-11',355.01,'91 Muir Circle'),(41,79,3,'Guy','Khrishtafovich','084982022',25840134,25096615,'gkhrishtafovich14@dyndns.org','1999-10-10',96.63,'88 Truax Park'),(42,141,3,'Haze','Narbett','996979879',14275277,83945109,'hnarbett15@newsvine.com','1980-06-26',953.80,'463 Shasta Pass'),(43,123,3,'Luther','Machans','205666489',89619227,83766858,'lmachans16@examiner.com','1988-02-11',508.48,'4938 Linden Road'),(44,203,1,'Hedvig','O\'Sherin','500903764',77087865,57970670,'hosherin17@archive.org','1997-09-10',927.86,'6622 Monterey Plaza'),(45,122,2,'Othelia','Ecob','736034906',99629235,44167214,'oecob18@blog.com','2005-04-18',935.14,'12143 Colorado Hill'),(46,137,2,'Mignonne','Ryles','096657040',43994219,25466702,'mryles19@domainmarket.com','1994-01-22',703.53,'8 Westerfield Way'),(47,162,3,'Fleur','Castelluzzi','374176765',93014535,11720497,'fcastelluzzi1a@senate.gov','1992-09-09',606.53,'87430 Eagle Crest Terrace'),(48,201,3,'Micky','Doyle','368303722',37079249,19963029,'mdoyle1b@51.la','1985-02-08',431.03,'7 Sutteridge Park'),(49,6,2,'Cornell','Batsford','853755220',48357856,30548717,'cbatsford1c@cpanel.net','1995-03-17',587.05,'66655 Katie Junction'),(50,42,2,'Giuseppe','Yanshonok','892952444',42741885,96747377,'gyanshonok1d@pagesperso-orange.fr','1997-07-27',671.67,'65 Randy Terrace'),(51,228,3,'Melesa','Colleran','375173216',88480466,57594496,'mcolleran1e@imdb.com','2001-12-31',965.87,'5 Stephen Point'),(52,29,1,'Eric','Jacquest','150061700',18798504,15007832,'ejacquest1f@harvard.edu','2002-10-06',346.83,'7960 Arrowood Street'),(53,50,1,'Vite','Foreman','166124052',67221948,37271585,'vforeman1g@jimdo.com','1993-01-18',556.83,'68 Dexter Plaza'),(54,50,3,'Brian','Hoy','496484426',24657887,53832302,'bhoy1h@google.co.uk','1984-10-20',376.30,'9987 Coolidge Point'),(55,146,3,'Maddi','Kinkaid','505841248',84485887,34337643,'mkinkaid1i@dmoz.org','1985-06-04',186.77,'06366 Trailsway Junction'),(56,151,3,'Mathias','Laurie','047994165',40127195,15831238,'mlaurie1j@uol.com.br','2004-02-17',328.46,'7035 Brickson Park Point'),(57,240,2,'Pedro','Grimsey','995325708',81822957,65362792,'pgrimsey1k@cnbc.com','1994-01-10',981.85,'53384 Garrison Plaza'),(58,260,3,'Rutledge','Muddle','927136426',73198446,51369595,'rmuddle1l@amazon.co.jp','1990-11-11',838.04,'098 Scofield Hill'),(59,176,1,'Dionne','Porker','011136980',23237681,58239964,'dporker1m@cornell.edu','1999-04-23',250.01,'940 Bellgrove Center'),(60,24,2,'Isidor','Le Grove','964885106',62747456,43800578,'ilegrove1n@mtv.com','1999-02-13',605.40,'4562 Blue Bill Park Avenue'),(61,210,1,'Gabbi','Silverthorne','034647037',40894121,64444041,'gsilverthorne1o@si.edu','2004-08-11',147.37,'32020 Spenser Center'),(62,150,1,'Nickolai','Sibthorp','233586944',52338000,84364271,'nsibthorp1p@usnews.com','2003-11-26',933.20,'92 Chinook Alley'),(63,222,1,'Dorree','De Hooge','671607974',2543788,5836337,'ddehooge1q@barnesandnoble.com','2002-10-25',962.72,'014 Bonner Way'),(64,238,3,'Giff','Brookwell','814524691',16484793,82438689,'gbrookwell1r@wikipedia.org','1988-03-31',752.41,'41 Nelson Point'),(65,148,3,'Ninon','Durward','763687004',84000510,10835512,'ndurward1s@go.com','1987-06-10',347.95,'9 Nevada Crossing'),(66,200,3,'Shela','Boynes','840574436',24360011,21208,'sboynes1t@ucoz.ru','1996-08-15',918.59,'738 Charing Cross Road'),(67,105,3,'Kala','Overbury','486550378',4378286,75183481,'koverbury1u@java.com','1991-10-12',800.74,'1714 Onsgard Circle'),(68,25,1,'Celka','Luard','474378162',70067711,43341389,'cluard1v@chicagotribune.com','2000-09-10',379.84,'007 Moulton Terrace'),(69,43,1,'Mercy','Champley','381684299',40702307,98972029,'mchampley1w@ameblo.jp','1980-08-21',212.93,'31335 Killdeer Trail'),(70,56,1,'Kaine','Ormonde','425344417',35977491,58825100,'kormonde1x@i2i.jp','1997-03-19',780.97,'3 Marcy Court'),(71,18,2,'Vickie','Yeldham','397850849',30629618,36755362,'vyeldham1y@skyrock.com','1990-05-22',398.48,'0412 Crowley Junction'),(72,18,2,'Isabella','Jagg','361186389',32888274,286725,'ijagg1z@youku.com','1980-11-12',776.40,'8182 Duke Drive'),(73,215,3,'Kori','Ducastel','377511072',13450547,42665079,'kducastel20@imageshack.us','1986-05-13',343.95,'22997 Mallory Street'),(74,37,3,'Rosabel','Whetton','447061716',72652541,89333073,'rwhetton21@addtoany.com','1997-12-22',318.52,'66 Schurz Crossing'),(75,248,2,'Maurise','Stallworth','710503808',57491241,68184191,'mstallworth22@etsy.com','1990-06-02',818.56,'65 Swallow Drive'),(76,170,1,'Galina','Haresign','506961038',44468811,26517175,'gharesign23@nyu.edu','1984-04-20',290.09,'2187 Lunder Parkway'),(77,101,3,'Vivyan','Blincowe','005976449',1240456,44399651,'vblincowe24@ft.com','1990-11-02',552.48,'10865 Northridge Avenue'),(78,213,3,'Joyann','Pudding','767992113',81177560,92718033,'jpudding25@arstechnica.com','2002-01-26',471.20,'37 Hayes Lane'),(79,93,3,'Nanny','Coulter','753541403',77324242,93827640,'ncoulter26@goo.gl','1988-11-14',458.21,'24675 Messerschmidt Trail'),(80,182,2,'Lorrin','Gatherell','915913042',12168856,78339721,'lgatherell27@utexas.edu','1991-01-01',650.36,'3498 Duke Place'),(81,159,3,'Ber','Redmond','304754660',44273815,140127,'bredmond28@reference.com','1993-11-14',558.49,'11970 Ridge Oak Court'),(82,167,1,'Yoshi','Marking','092646200',46248912,15755942,'ymarking29@chronoengine.com','2001-07-17',819.78,'9301 Division Park'),(83,133,3,'Rachael','Prescote','687612014',73059281,41246398,'rprescote2a@forbes.com','2003-07-28',898.85,'7944 Pawling Court'),(84,189,2,'Von','Longland','035670017',90630960,79233985,'vlongland2b@nba.com','1997-03-04',472.87,'11 Hallows Road'),(85,254,1,'Rorke','Cars','347034459',83369807,705967,'rcars2c@simplemachines.org','1982-12-08',209.69,'8374 Anzinger Trail'),(86,125,2,'Delmor','Nursey','305433634',4463711,17226744,'dnursey2d@msu.edu','2001-09-17',523.39,'455 Oriole Lane'),(87,202,2,'Vincent','Olligan','804273133',69213707,67903490,'volligan2e@merriam-webster.com','1982-04-03',251.40,'66 Shasta Drive'),(88,58,3,'Sylas','Giraldon','566515184',88637036,49363725,'sgiraldon2f@de.vu','1980-11-26',811.48,'5 Northland Trail'),(89,59,2,'Carmencita','Smiz','568081768',99725728,59552594,'csmiz2g@shutterfly.com','2004-11-20',293.92,'06 Fremont Lane'),(90,137,2,'Louis','Riccioppo','174240810',96272995,29234623,'lriccioppo2h@yahoo.com','1994-05-03',412.83,'6026 Cherokee Lane'),(91,16,2,'Byrann','Salisbury','777370777',65646931,67358794,'bsalisbury2i@weebly.com','1983-06-26',193.30,'78 Artisan Way'),(92,230,2,'Kim','Overshott','399314296',54930587,63233373,'kovershott2j@weibo.com','2002-11-05',686.41,'6 Valley Edge Plaza'),(93,123,3,'Pippa','Varndell','214066817',90624032,89364663,'pvarndell2k@virginia.edu','1989-06-28',669.57,'2 Pond Pass'),(94,97,3,'Micky','Carncross','417176697',31264638,64447366,'mcarncross2l@wisc.edu','1981-07-18',552.54,'751 Pepper Wood Point'),(95,37,2,'Gretta','Dancey','674443646',53505630,39793104,'gdancey2m@fda.gov','2003-08-28',254.64,'2561 Commercial Center'),(96,86,1,'Erwin','Bernli','558433787',21327726,41352558,'ebernli2n@people.com.cn','1986-08-22',655.55,'87748 Mesta Point'),(97,122,1,'Erina','Kaubisch','637498198',99087372,70382131,'ekaubisch2o@digg.com','2002-07-25',892.20,'53649 Center Trail'),(98,37,2,'Gussie','Blondelle','384254768',71356911,83929388,'gblondelle2p@blogspot.com','2002-08-26',310.45,'41872 Hazelcrest Drive'),(99,155,3,'Hugues','Masse','114123289',44793259,21322717,'hmasse2q@cloudflare.com','1990-09-30',522.97,'624 Goodland Circle'),(100,116,1,'Blinny','Tidcomb','277216292',6754677,3537939,'btidcomb2r@mapquest.com','1983-04-23',810.26,'20639 Bonner Trail'),(101,103,1,'Dosi','Churn','908618676',31797058,52574364,'dchurn2s@economist.com','2005-04-18',372.95,'73133 Rigney Point'),(102,249,1,'Mirilla','Riseley','131711618',77943416,20239316,'mriseley2t@histats.com','1990-01-09',261.18,'77 Algoma Avenue'),(103,39,2,'Merrielle','Aubrun','726547081',85414523,63343399,'maubrun2u@istockphoto.com','1985-11-17',732.06,'25 Bashford Road'),(104,83,1,'Lovell','Carlile','003226830',48775786,6082202,'lcarlile2v@time.com','1994-05-26',790.11,'8560 Oakridge Street'),(105,221,2,'Way','Cruft','510811828',11475279,71421349,'wcruft2w@wikispaces.com','2003-12-07',654.65,'83928 Vahlen Way'),(106,57,3,'Amaleta','McGurn','545928165',16193630,45937998,'amcgurn2x@github.io','1984-02-16',725.57,'22975 Fordem Avenue'),(107,118,3,'Allene','Ghiroldi','197509450',79939908,74757823,'aghiroldi2y@discuz.net','1987-07-11',168.28,'893 Russell Terrace'),(108,20,1,'Nola','Domanski','634297743',43512130,52541393,'ndomanski2z@stanford.edu','1997-01-19',688.08,'82 Mayer Trail'),(109,182,1,'Seka','MacClay','053495274',93987933,56283570,'smacclay30@barnesandnoble.com','1991-06-12',754.96,'978 Granby Drive'),(110,166,3,'Florian','Hackworth','561568496',84511532,24953271,'fhackworth31@msn.com','1987-07-03',519.37,'01929 Petterle Circle'),(111,247,1,'Maje','O\'Fihily','630866281',41630666,95386921,'mofihily32@fastcompany.com','1987-12-30',494.13,'3076 Colorado Plaza'),(112,62,1,'Sonnie','Latey','218198294',24192143,29640384,'slatey33@wsj.com','2004-08-29',737.48,'270 Monterey Street'),(113,219,1,'Ulysses','De Zamudio','561680880',89611808,81966426,'udezamudio34@imageshack.us','2003-04-06',872.24,'8413 Summer Ridge Pass'),(114,177,1,'Zak','Midford','635236145',15600296,44983838,'zmidford35@hatena.ne.jp','1998-03-04',155.59,'3 Monument Park'),(115,102,2,'Bartholemy','Urrey','249880021',47183194,94105530,'burrey36@google.com.br','2001-02-05',321.03,'818 Mitchell Junction'),(116,259,3,'Katusha','Ever','216964499',45280027,46007771,'kever37@issuu.com','1989-07-05',137.27,'040 Transport Circle'),(117,107,2,'Cordie','Ostridge','411506747',64466673,90833227,'costridge38@state.gov','1996-08-04',976.18,'78367 Kingsford Road'),(118,255,1,'Esma','MacCarlich','992707440',42694843,6870073,'emaccarlich39@ft.com','1994-02-28',785.73,'017 Schmedeman Place'),(119,23,1,'Kathlin','Seeds','084885383',9789103,82901700,'kseeds3a@google.it','2002-07-28',932.22,'634 Melvin Park'),(120,162,2,'Aggie','Glanvill','873081781',99684591,10785929,'aglanvill3b@geocities.jp','2005-03-22',224.08,'36 Steensland Parkway'),(121,63,1,'Glynis','Readings','148114925',46076711,25396916,'greadings3c@deliciousdays.com','2002-09-20',306.04,'142 Walton Point'),(122,109,2,'Florina','Liversedge','736805332',39328506,53517838,'fliversedge3d@prlog.org','2002-04-21',563.66,'280 Loftsgordon Drive'),(123,201,2,'Ulla','Germaine','501116419',25718979,79749277,'ugermaine3e@google.co.uk','1984-08-18',719.40,'219 Sauthoff Junction'),(124,209,2,'Weider','Tidder','464791055',10741523,17945389,'wtidder3f@vkontakte.ru','1994-04-13',676.86,'17 Clarendon Road'),(125,45,3,'Moshe','Loan','044684495',91427842,21571134,'mloan3g@cdbaby.com','1994-07-21',615.78,'52 Arizona Hill'),(126,195,3,'Beale','Rodie','775676525',59326882,53601528,'brodie3h@soup.io','1998-04-24',217.81,'95 Lakeland Junction'),(127,254,2,'Morgen','Furmedge','820161788',74969385,82499320,'mfurmedge3i@smh.com.au','1998-06-15',325.26,'8784 Pierstorff Point'),(128,127,3,'Laurianne','Bamblett','030515364',12750566,43233450,'lbamblett3j@soundcloud.com','1984-10-27',288.35,'0427 Sutherland Center'),(129,59,1,'Gianni','Mulheron','778884326',4954558,26822043,'gmulheron3k@booking.com','1986-12-18',116.39,'3045 Debs Lane'),(130,11,1,'Scot','McCaskell','782394090',54236327,46210268,'smccaskell3l@hp.com','1991-09-02',595.91,'73 Warbler Road'),(131,97,1,'Dmitri','Luttgert','789699840',39726241,4721788,'dluttgert3m@xinhuanet.com','1994-10-21',104.15,'632 Continental Place'),(132,86,2,'Lovell','Skeats','002301351',32687094,59146618,'lskeats3n@comcast.net','1991-11-13',435.02,'3729 Annamark Plaza'),(133,259,1,'Giacobo','Maskill','467582016',87477902,67331723,'gmaskill3o@dot.gov','1993-04-10',361.68,'97052 Bluejay Center'),(134,257,1,'Lucila','Aime','923179772',22283775,15189371,'laime3p@a8.net','1991-05-22',635.40,'8200 Golf Course Court'),(135,192,3,'Scarlett','Creamen','949684364',84774055,93859988,'screamen3q@about.com','2003-01-11',530.30,'92695 Onsgard Circle'),(136,107,2,'Emalia','Gossington','785197933',65699847,72418987,'egossington3r@usatoday.com','1997-11-25',310.06,'40 Daystar Center'),(137,221,3,'Gerrard','McCosker','019113560',34181049,24867977,'gmccosker3s@wunderground.com','2005-03-21',892.26,'4816 Golf Road'),(138,166,1,'Minna','Pennacci','936268815',97521128,41633299,'mpennacci3t@sphinn.com','1992-12-11',178.39,'10 Hagan Court'),(139,78,3,'Roderic','Dy','111542370',71736520,38700571,'rdy3u@reuters.com','1995-03-03',140.72,'90 High Crossing Court'),(140,45,3,'Fayette','Pavyer','034011333',4269915,63519085,'fpavyer3v@studiopress.com','2001-11-03',786.99,'85767 Fairview Alley'),(141,44,3,'Hamish','Gammidge','609384087',69852500,52250865,'hgammidge3w@blogger.com','1992-11-21',790.26,'63047 Bluejay Plaza'),(142,236,1,'Kathye','Eseler','863513744',44333526,1766673,'keseler3x@discuz.net','2001-07-16',366.99,'0 Grover Park'),(143,112,1,'Alfreda','Kunneke','799767442',75698191,68671869,'akunneke3y@blogtalkradio.com','2004-09-09',181.80,'00680 Declaration Parkway'),(144,119,2,'Lorraine','Corton','210233506',58391766,81606286,'lcorton3z@bbb.org','1991-09-13',222.65,'292 Stone Corner Pass'),(145,250,3,'Estella','Garner','590705457',98450636,52708827,'egarner40@umn.edu','2002-01-24',343.17,'5899 Everett Road'),(146,26,2,'Mahmoud','Dennert','342652735',61485671,97334370,'mdennert41@naver.com','2005-01-03',336.96,'0 Birchwood Court'),(147,48,3,'Darline','Ksandra','184539891',95037002,94743598,'dksandra42@ebay.com','1984-10-28',228.42,'7 Bay Junction'),(148,187,1,'Damien','Fevers','107738406',63210081,61931586,'dfevers43@bbb.org','2001-03-05',265.23,'4917 Fieldstone Place'),(149,108,2,'Jo','Comusso','331457013',26536027,86234076,'jcomusso44@seesaa.net','1995-08-21',288.01,'1 Sauthoff Place'),(150,132,2,'Harriot','Trematick','846267081',73034448,22651352,'htrematick45@seattletimes.com','2004-12-05',446.23,'9 Sloan Circle');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas` (
  `idCuenta` int NOT NULL AUTO_INCREMENT,
  `idTipoCuenta` int NOT NULL,
  `idCliente` int NOT NULL,
  `fechaApertura` date DEFAULT NULL,
  `credito` decimal(10,2) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idCuenta`),
  KEY `idTipoCuenta` (`idTipoCuenta`),
  KEY `cuentas_cllientes_fk_idx` (`idCliente`),
  CONSTRAINT `cuentas_clientes_fk` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `cuentas_tipocuenta_fk` FOREIGN KEY (`idTipoCuenta`) REFERENCES `tipocuentas` (`idTipoCuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (1,2,2,'2023-06-21',529.71,'Activa'),(2,3,2,'2018-12-08',948.23,'Activa'),(3,3,2,'2018-06-13',582.90,'Inactiva'),(4,4,2,'2019-08-26',1136.90,'Activa'),(5,1,2,'2019-04-02',445.21,'Activa'),(6,2,2,'2022-08-01',101.39,'Activa'),(7,3,2,'2019-02-04',181.72,'Activa'),(8,4,2,'2021-01-27',963.65,'Activa'),(9,2,2,'2023-04-27',1205.48,'Activa'),(10,4,2,'2021-06-13',556.15,'Activa'),(11,5,2,'2021-08-02',831.47,'Activa'),(12,1,2,'2022-09-25',95.96,'Inactiva'),(13,3,2,'2017-10-30',1416.07,'Activa'),(14,1,2,'2021-11-17',1278.60,'Activa'),(15,1,2,'2018-11-02',744.83,'Inactiva'),(16,3,2,'2018-02-08',47.55,'Activa'),(17,1,2,'2021-07-27',1217.42,'Activa'),(18,3,2,'2018-09-15',225.01,'Activa'),(19,3,2,'2021-01-15',1011.92,'Inactiva'),(20,1,2,'2020-07-07',430.71,'Activa'),(21,2,2,'2021-03-24',818.26,'Activa'),(22,1,2,'2023-02-05',899.18,'Activa'),(23,5,2,'2023-04-30',821.93,'Activa'),(24,2,2,'2022-08-08',1337.28,'Activa'),(25,1,2,'2021-01-15',1269.90,'Activa'),(26,1,2,'2018-07-09',167.67,'Activa'),(27,2,2,'2017-04-24',405.89,'Activa'),(28,4,2,'2020-06-10',493.77,'Activa'),(29,3,2,'2017-07-20',955.65,'Inactiva'),(30,5,2,'2022-02-15',728.29,'Activa'),(31,4,2,'2017-10-24',1470.50,'Activa'),(32,2,2,'2020-07-01',462.19,'Activa'),(33,3,2,'2022-11-20',207.76,'Inactiva'),(34,2,2,'2018-06-20',200.35,'Inactiva'),(35,4,2,'2022-01-20',1263.68,'Inactiva'),(36,4,2,'2018-06-06',1123.11,'Activa'),(37,1,2,'2020-03-07',500.24,'Inactiva'),(38,2,2,'2018-01-24',1162.86,'Activa'),(39,3,2,'2022-11-22',591.00,'Activa'),(40,4,2,'2018-10-28',268.41,'Inactiva'),(41,2,2,'2018-03-25',1123.90,'Inactiva'),(42,4,2,'2022-08-01',586.39,'Activa'),(43,1,2,'2017-05-13',90.19,'Activa'),(44,3,2,'2018-03-03',1357.25,'Activa'),(45,5,2,'2020-05-11',423.92,'Activa'),(46,1,2,'2023-07-02',79.05,'Activa'),(47,3,2,'2021-11-12',1134.41,'Inactiva'),(48,2,2,'2021-08-29',873.26,'Activa'),(49,3,2,'2018-08-08',586.19,'Activa'),(50,4,2,'2020-04-02',1074.31,'Activa'),(51,3,2,'2023-05-30',1251.57,'Activa'),(52,3,2,'2018-05-31',222.30,'Activa'),(53,5,2,'2019-01-27',338.20,'Activa'),(54,2,2,'2017-11-17',859.17,'Inactiva'),(55,1,2,'2022-04-13',26.65,'Activa'),(56,1,2,'2018-10-30',931.21,'Activa'),(57,2,2,'2022-06-01',247.57,'Inactiva'),(58,2,2,'2019-03-01',1338.59,'Activa'),(59,5,2,'2023-08-13',1324.19,'Activa'),(60,5,2,'2022-08-10',1172.87,'Activa'),(61,1,2,'2023-10-23',1117.88,'Activa'),(62,2,2,'2020-01-25',701.54,'Activa'),(63,4,2,'2018-05-27',1294.03,'Activa'),(64,2,2,'2021-12-29',1434.96,'Inactiva'),(65,3,2,'2018-08-11',858.93,'Activa'),(66,5,2,'2023-11-20',391.39,'Activa'),(67,3,2,'2020-12-11',905.46,'Inactiva'),(68,3,2,'2019-07-01',872.96,'Inactiva'),(69,5,2,'2017-07-20',32.32,'Inactiva'),(70,5,2,'2022-07-08',152.34,'Inactiva'),(71,5,2,'2018-09-14',1035.83,'Activa'),(72,2,2,'2023-11-07',546.50,'Activa'),(73,4,2,'2021-08-14',708.01,'Activa'),(74,3,2,'2023-05-20',1423.55,'Activa'),(75,1,2,'2020-05-30',68.41,'Inactiva'),(76,4,2,'2022-09-24',1151.34,'Activa'),(77,5,2,'2017-09-19',267.11,'Activa'),(78,3,2,'2022-07-21',105.73,'Activa'),(79,3,2,'2019-01-08',1154.36,'Activa'),(80,3,2,'2020-01-10',965.79,'Activa'),(81,5,2,'2022-11-29',1370.22,'Activa'),(82,2,2,'2022-12-19',1017.01,'Activa'),(83,2,2,'2017-12-04',688.11,'Activa'),(84,1,2,'2019-02-18',1234.84,'Inactiva'),(85,4,2,'2022-09-21',225.98,'Activa'),(86,3,2,'2019-12-23',619.89,'Activa'),(87,3,2,'2018-08-22',290.95,'Activa'),(88,1,2,'2023-03-11',555.71,'Activa'),(89,3,2,'2017-06-05',13.42,'Activa'),(90,2,2,'2020-07-09',492.25,'Activa'),(91,2,2,'2019-08-14',400.80,'Activa'),(92,1,2,'2018-07-16',254.92,'Activa'),(93,2,2,'2022-07-14',1488.58,'Inactiva'),(94,1,2,'2022-08-19',1000.99,'Activa'),(95,2,2,'2019-02-28',1109.22,'Activa'),(96,3,2,'2021-09-27',1030.72,'Activa'),(97,2,2,'2019-10-11',950.98,'Inactiva'),(98,5,2,'2020-07-23',1094.90,'Activa'),(99,2,2,'2023-07-26',1114.38,'Activa'),(100,2,2,'2019-02-18',261.59,'Inactiva'),(101,2,2,'2021-03-31',188.88,'Inactiva'),(102,2,2,'2017-05-05',948.22,'Inactiva'),(103,2,2,'2022-08-02',1451.38,'Activa'),(104,2,2,'2017-12-22',1384.28,'Activa'),(105,4,2,'2021-08-03',206.10,'Inactiva'),(106,2,2,'2017-06-27',639.19,'Activa'),(107,3,2,'2017-11-14',33.24,'Activa'),(108,5,2,'2020-09-30',873.87,'Activa'),(109,2,2,'2022-06-10',542.77,'Inactiva'),(110,1,2,'2019-10-25',741.36,'Activa'),(111,2,2,'2023-07-28',1476.07,'Inactiva'),(112,2,2,'2018-03-14',509.06,'Activa'),(113,5,2,'2020-11-15',742.89,'Inactiva'),(114,5,2,'2022-03-10',1038.86,'Activa'),(115,5,2,'2022-10-13',736.45,'Activa'),(116,1,2,'2020-02-20',1068.71,'Inactiva'),(117,1,2,'2022-03-30',270.95,'Activa'),(118,5,2,'2024-01-29',1278.11,'Activa'),(119,1,2,'2022-08-31',300.95,'Activa'),(120,2,2,'2018-03-09',188.39,'Activa'),(121,2,2,'2022-06-08',501.12,'Activa'),(122,1,2,'2021-01-21',1466.80,'Activa'),(123,5,2,'2021-08-12',1081.15,'Activa'),(124,5,2,'2019-06-08',1258.54,'Activa'),(125,5,2,'2018-02-06',734.58,'Activa'),(126,3,2,'2018-01-12',1068.45,'Activa'),(127,2,2,'2018-11-03',520.14,'Activa'),(128,5,2,'2023-10-29',1087.51,'Activa'),(129,1,2,'2022-01-26',652.90,'Inactiva'),(130,1,2,'2024-03-20',189.16,'Activa'),(131,4,2,'2020-01-08',1495.89,'Inactiva'),(132,4,2,'2023-11-03',322.96,'Activa'),(133,4,2,'2023-05-07',938.26,'Activa'),(134,5,2,'2023-12-09',144.47,'Activa'),(135,5,2,'2019-04-06',438.33,'Inactiva'),(136,3,2,'2023-11-03',1307.15,'Activa'),(137,2,2,'2022-04-14',114.22,'Activa'),(138,2,2,'2019-06-24',738.54,'Activa'),(139,3,2,'2021-09-10',87.89,'Activa'),(140,5,2,'2020-12-07',552.84,'Activa'),(141,3,2,'2020-02-16',697.94,'Activa'),(142,3,2,'2018-06-30',1351.62,'Activa'),(143,1,2,'2019-01-06',642.03,'Activa'),(144,2,2,'2020-12-06',336.33,'Activa'),(145,5,2,'2022-01-21',599.94,'Activa'),(146,3,2,'2017-11-15',200.96,'Activa'),(147,4,2,'2019-01-07',987.89,'Activa'),(148,2,2,'2022-03-12',95.44,'Activa'),(149,4,2,'2018-11-09',386.61,'Activa'),(150,3,2,'2021-07-24',525.99,'Activa');
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `idDepartamento` int NOT NULL AUTO_INCREMENT,
  `departamento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'San Salvador'),(2,'Santa Ana'),(3,'San Miguel'),(4,'La Libertad'),(5,'Usulután'),(6,'La Paz'),(7,'Ahuachapán'),(8,'Sonsonate'),(9,'Cuscatlán'),(10,'Chalatenango'),(11,'Cabañas'),(12,'Morazán'),(13,'San Vicente'),(14,'La Unión');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distrito` (
  `idDistrito` int NOT NULL AUTO_INCREMENT,
  `idMunicipio` int DEFAULT NULL,
  `distrito` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDistrito`),
  KEY `idMunicipio` (`idMunicipio`),
  CONSTRAINT `distrito_ibfk_1` FOREIGN KEY (`idMunicipio`) REFERENCES `municipio` (`idMunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES (1,1,'Aguilares'),(2,1,'El Paisnal'),(3,1,'Guazapa'),(4,2,'Apopa'),(5,2,'Nejapa'),(6,3,'Cuscatancingo'),(7,3,'Ciudad Delgado'),(8,3,'Ilopango'),(9,3,'San Martín'),(10,3,'Soyapango'),(11,3,'Tonacatepeque'),(12,4,'Ayutuxtepeque'),(13,4,'Mejicanos'),(14,4,'San Marcos'),(15,4,'San Salvador'),(16,4,'Santo Tomás'),(17,4,'Santiago Texacuangos'),(18,5,'Panchimalco'),(19,5,'Rosario de Mora'),(20,6,'Masahuat'),(21,6,'Metapán'),(22,6,'Santa Rosa Guachipilín'),(23,6,'Texistepeque'),(24,7,'Santa Ana'),(25,8,'Coatepeque'),(26,8,'El Congo'),(27,9,'Candelaria de la Frontera'),(28,9,'Chalchuapa'),(29,9,'El Porvenir'),(30,9,'San Antonio Pajonal'),(31,9,'San Sebastián Salitrillo'),(32,9,'Santiago de la Frontera'),(33,10,'Ciudad Barrios'),(34,10,'Sesori'),(35,10,'Nuevo Edén de San Juan'),(36,10,'San Gerardo'),(37,10,'San Luis La Reina'),(38,10,'Carolina'),(39,10,'San Antonio del Mosco'),(40,10,'Chapeltique'),(41,11,'San Miguel'),(42,11,'Comacarán'),(43,11,'Uluazapa'),(44,11,'Moncagua'),(45,11,'Quelepa'),(46,11,'Chirilagua'),(47,12,'Chinameca'),(48,12,'Nueva Guadalupe'),(49,12,'Lolotique'),(50,12,'San Jorge'),(51,12,'San Rafael Oriente'),(52,12,'El Tránsito'),(53,13,'Quezaltepeque'),(54,13,'San Matías'),(55,13,'San Pablo Tacachico'),(56,14,'San Juan Opico'),(57,14,'Ciudad Arce'),(58,15,'Colón'),(59,15,'Jayaque'),(60,15,'Sacacoyo'),(61,15,'Tepecoyo'),(62,15,'Talnique'),(63,16,'Antiguo Cuscatlán'),(64,16,'Huizúcar'),(65,16,'Nuevo Cuscatlán'),(66,16,'San José Villanueva'),(67,16,'Zaragoza'),(68,17,'Chiltiupán'),(69,17,'Jicalapa'),(70,17,'La Libertad'),(71,17,'Tamanique'),(72,17,'Teotepeque'),(73,18,'Comasagua'),(74,18,'Santa Tecla'),(75,19,'Santiago de María'),(76,19,'Alegría'),(77,19,'Berlín'),(78,19,'Mercedes Umaña'),(79,19,'Jucuapa'),(80,19,'El Triunfo'),(81,19,'Estanzuelas'),(82,19,'San Buenaventura'),(83,19,'Nueva Granada'),(84,20,'Usulután'),(85,20,'Jucuarán'),(86,20,'San Dionisio'),(87,20,'Concepción Batres'),(88,20,'Santa María'),(89,20,'Ozatlán'),(90,20,'Tecapán'),(91,20,'Santa Elena'),(92,20,'California'),(93,20,'Ereguayquín'),(94,21,'Jiquilisco'),(95,21,'Puerto El Triunfo'),(96,21,'San Agustín'),(97,21,'San Francisco Javier'),(98,22,'Cuyultitán'),(99,22,'Olocuilta'),(100,22,'San Juan Talpa'),(101,22,'San Luis Talpa'),(102,22,'San Pedro Masahuat'),(103,22,'Tapalhuaca'),(104,22,'San Francisco Chinameca'),(105,23,'El Rosario'),(106,23,'Jerusalén'),(107,23,'Mercedes La Ceiba'),(108,23,'Paraíso de Osorio'),(109,23,'San Antonio Masahuat'),(110,23,'San Emigdio'),(111,23,'San Juan Tepezontes'),(112,23,'San Luis La Herradura'),(113,23,'San Miguel Tepezontes'),(114,23,'San Pedro Nonualco'),(115,23,'Santa María Ostuma'),(116,23,'Santiago Nonualco'),(117,24,'San Juan Nonualco'),(118,24,'San Rafael Obrajuelo'),(119,24,'Zacatecoluca'),(120,25,'Atiquizaya'),(121,25,'El Refugio'),(122,25,'San Lorenzo'),(123,25,'Turín'),(124,26,'Ahuachapán'),(125,26,'Apaneca'),(126,26,'Concepción de Ataco'),(127,26,'Tacuba'),(128,27,'Guaymango'),(129,27,'Jujutla'),(130,27,'San Francisco Menéndez'),(131,27,'San Pedro Puxtla'),(132,28,'Juayúa'),(133,28,'Nahuizalco'),(134,28,'Salcoatitán'),(135,28,'San Catarina Masahuat'),(136,29,'Sonsonate'),(137,29,'Sonzacate'),(138,29,'Nahulingo'),(139,29,'San Antonio del Monte'),(140,29,'Santo Domingo de Guzmán'),(141,30,'Izalco'),(142,30,'Armenia'),(143,30,'Caluco'),(144,30,'San Julián'),(145,30,'Cuisnahuat'),(146,30,'Santa Isabel Ishuatán'),(147,31,'Acajutla'),(148,32,'Suchitoto'),(149,32,'San José Guayabal'),(150,32,'Oratorio de Concepción'),(151,32,'San Bartolomé Perulapía'),(152,32,'San Pedro Perulapán'),(153,33,'Cojutepeque'),(154,33,'San Rafael Cedros'),(155,33,'Candelaria'),(156,33,'Monte San Juan'),(157,33,'El Carmen'),(158,33,'San Cristóbal'),(159,33,'Santa Cruz Michapa'),(160,33,'San Ramón'),(161,33,'El Rosario'),(162,33,'Santa Cruz Analquito'),(163,33,'Tenancingo'),(164,34,'La Palma'),(165,34,'Citalá'),(166,34,'San Ignacio'),(167,35,'Nueva Concepción'),(168,35,'Tejutla'),(169,35,'La Reina'),(170,35,'Agua Caliente'),(171,35,'Dulce Nombre de María'),(172,35,'El Paraíso'),(173,35,'San Fernando'),(174,35,'San Francisco Morazán'),(175,35,'San Rafael'),(176,35,'Santa Rita'),(177,36,'Chalatenango'),(178,36,'Arcatao'),(179,36,'Azacualpa'),(180,36,'Comalapa'),(181,36,'Concepción Quezaltepeque'),(182,36,'El Carrizal'),(183,36,'La Laguna'),(184,36,'Las Vueltas'),(185,36,'Nombre de Jesús'),(186,36,'Nueva Trinidad'),(187,36,'Ojos de Agua'),(188,36,'Potonico'),(189,36,'San Antonio de la Cruz'),(190,36,'San Antonio Los Ranchos'),(191,36,'San Francisco Lempa'),(192,36,'San Isidro Labrador'),(193,36,'San José Cancasque'),(194,36,'San Miguel de Mercedes'),(195,36,'San José Las Flores'),(196,36,'San Luis del Carmen'),(197,37,'Sensuntepeque'),(198,37,'Victoria'),(199,37,'Villa Dolores'),(200,37,'Guacotecti'),(201,37,'San Isidro'),(202,38,'Ilobasco'),(203,38,'Tejutepeque'),(204,38,'Jutiapa'),(205,38,'Cinquera'),(206,39,'Arambala'),(207,39,'Cacaopera'),(208,39,'Corinto'),(209,39,'El Rosario'),(210,39,'Joateca'),(211,39,'Jocoaitique'),(212,39,'Meanguera'),(213,39,'Perquín'),(214,39,'San Fernando'),(215,39,'San Isidro'),(216,39,'Torola'),(217,40,'Chilanga'),(218,40,'Delicias de Concepción'),(219,40,'El Divisadero'),(220,40,'Gualococti'),(221,40,'Guatajiagua'),(222,40,'Jocoro'),(223,40,'Lolotiquillo'),(224,40,'Osicala'),(225,40,'San Carlos'),(226,40,'San Francisco Gotera'),(227,40,'San Simón'),(228,40,'Sensembra'),(229,40,'Sociedad'),(230,40,'Yamabal'),(231,40,'Yoloaiquín'),(232,41,'Apastepeque'),(233,41,'Santa Clara'),(234,41,'San Ildefonso'),(235,41,'San Esteban Catarina'),(236,41,'San Sebastián'),(237,41,'San Lorenzo'),(238,41,'Santo Domingo'),(239,42,'San Vicente'),(240,42,'Guadalupe'),(241,42,'Verapaz'),(242,42,'Nuevo Tepetitán'),(243,42,'Tecoluca'),(244,42,'San Cayetano Istepeque'),(245,43,'Anamorós'),(246,43,'Bolívar'),(247,43,'Concepción de Oriente'),(248,43,'El Sauce'),(249,43,'Lislique'),(250,43,'Nueva Esparta'),(251,43,'Pasaquina'),(252,43,'Polorós'),(253,43,'San José La Fuente'),(254,43,'Santa Rosa de Lima'),(255,44,'Conchagua'),(256,44,'El Carmen'),(257,44,'Intipucá'),(258,44,'La Unión'),(259,44,'Meanguera del Golfo'),(260,44,'San Alejo'),(261,44,'Yayantique'),(262,44,'Yucuaiquín');
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadocivil`
--

DROP TABLE IF EXISTS `estadocivil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadocivil` (
  `idEstadoCivil` int NOT NULL AUTO_INCREMENT,
  `estadoCivil` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idEstadoCivil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadocivil`
--

LOCK TABLES `estadocivil` WRITE;
/*!40000 ALTER TABLE `estadocivil` DISABLE KEYS */;
INSERT INTO `estadocivil` VALUES (1,'Casado/a'),(2,'Soltero/a'),(3,'Viudo/a');
/*!40000 ALTER TABLE `estadocivil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historialingreso`
--

DROP TABLE IF EXISTS `historialingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historialingreso` (
  `idIngreso` int NOT NULL AUTO_INCREMENT,
  `idCuenta` int DEFAULT NULL,
  `fechaHoraIngreso` datetime DEFAULT NULL,
  `fechaHoraSalida` datetime DEFAULT NULL,
  `dispositivo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idIngreso`),
  KEY `idCuenta` (`idCuenta`),
  CONSTRAINT `historialingreso_ibfk_1` FOREIGN KEY (`idCuenta`) REFERENCES `cuentas` (`idCuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialingreso`
--

LOCK TABLES `historialingreso` WRITE;
/*!40000 ALTER TABLE `historialingreso` DISABLE KEYS */;
INSERT INTO `historialingreso` VALUES (1,59,'2024-04-18 10:37:55','2024-04-19 14:52:56','Philips X125'),(2,72,'2024-04-18 05:46:55','2024-04-19 13:17:11','Samsung J210'),(3,59,'2024-04-17 19:44:18','2024-04-19 07:11:22','Samsung E890'),(4,33,'2024-04-17 22:19:05','2024-04-19 03:42:46','Tecno Spark 6 Air'),(5,28,'2024-04-18 18:48:27','2024-04-19 23:35:17','Motorola Milestone XT883'),(6,56,'2024-04-17 19:41:44','2024-04-19 03:36:40','Eten glofiish V900'),(7,148,'2024-04-17 19:54:56','2024-04-19 01:04:01','Samsung Galaxy Tab 3 Lite 7.0 3G'),(8,66,'2024-04-17 23:25:08','2024-04-19 22:49:11','Sony Xperia H8541'),(9,48,'2024-04-17 18:25:50','2024-04-19 03:24:20','BLU Studio J8 LTE'),(10,114,'2024-04-18 20:25:33','2024-04-19 01:13:32','Karbonn Titanium X'),(11,65,'2024-04-18 11:38:55','2024-04-19 23:20:54','LG KE850 Prada'),(12,85,'2024-04-17 00:35:08','2024-04-19 00:04:11','Yezz Andy 4E7'),(13,40,'2024-04-18 18:15:13','2024-04-19 08:16:46','Celkon C1'),(14,86,'2024-04-18 08:54:39','2024-04-19 07:57:25','Acer Iconia Tab A1-811'),(15,3,'2024-04-17 17:45:31','2024-04-19 15:40:13','Gionee K30 Pro'),(16,78,'2024-04-18 23:58:51','2024-04-19 23:18:08','Oppo Mirror 3'),(17,13,'2024-04-17 19:21:22','2024-04-19 08:14:57','Sony Ericsson Xperia PLAY CDMA'),(18,31,'2024-04-18 13:37:13','2024-04-19 14:28:29','O2 X1i'),(19,145,'2024-04-17 19:12:05','2024-04-19 11:23:49','Samsung U320 Haven'),(20,62,'2024-04-18 06:18:13','2024-04-19 02:29:22','Allview X1 Xtreme Mini'),(21,131,'2024-04-18 15:38:13','2024-04-19 21:42:23','Asus Fonepad 7 FE171CG'),(22,13,'2024-04-17 12:44:13','2024-04-19 20:33:06','BLU Vivo X5'),(23,97,'2024-04-18 12:56:59','2024-04-19 19:32:50','BenQ M300'),(24,50,'2024-04-17 02:51:03','2024-04-19 01:00:40','Sony Xperia sola'),(25,138,'2024-04-18 23:23:52','2024-04-19 21:29:57','Motorola XPRT MB612'),(26,131,'2024-04-18 22:18:07','2024-04-19 19:12:03','ZTE nubia M2 lite'),(27,44,'2024-04-18 04:43:11','2024-04-19 16:30:39','Tecno Camon iACE2'),(28,14,'2024-04-17 17:56:54','2024-04-19 02:56:57','Oppo A53s'),(29,18,'2024-04-17 20:58:27','2024-04-19 10:39:26','Acer Liquid Zest Plus'),(30,105,'2024-04-18 11:14:05','2024-04-19 04:43:02','Sony Xperia 10 III'),(31,17,'2024-04-17 08:13:39','2024-04-19 22:40:18','Philips W635'),(32,43,'2024-04-18 15:43:49','2024-04-19 21:30:24','Apple Watch Edition Series 2 38mm'),(33,101,'2024-04-18 03:02:48','2024-04-19 00:40:00','Ericsson T20s'),(34,107,'2024-04-17 21:14:13','2024-04-19 06:14:29','Plum Ram 8'),(35,109,'2024-04-17 11:05:15','2024-04-19 05:56:01','BLU Vivo 4.8 HD'),(36,35,'2024-04-17 05:19:29','2024-04-19 13:29:31','Posh Micro X S240'),(37,117,'2024-04-17 06:27:45','2024-04-19 07:14:34','NIU GO 21'),(38,36,'2024-04-18 05:13:42','2024-04-19 02:50:13','LG Optimus LTE LU6200'),(39,29,'2024-04-17 00:56:11','2024-04-19 19:44:38','Samsung E2652 Champ Duos'),(40,19,'2024-04-17 14:01:39','2024-04-19 04:05:14','Sagem my200C'),(41,108,'2024-04-17 20:15:50','2024-04-19 00:58:33','Google Pixel 4a 5G'),(42,128,'2024-04-17 00:23:02','2024-04-19 14:12:40','Huawei MediaPad M3 Lite 8'),(43,113,'2024-04-17 22:30:34','2024-04-19 09:54:25','LG P520'),(44,98,'2024-04-18 11:15:28','2024-04-19 05:55:59','Oppo K3'),(45,99,'2024-04-18 10:03:47','2024-04-19 22:47:54','Amazon Kindle Fire'),(46,116,'2024-04-17 00:41:43','2024-04-19 16:21:48','Plum Tag 3G'),(47,8,'2024-04-17 04:30:45','2024-04-19 15:18:44','Motorola C450'),(48,8,'2024-04-18 23:16:15','2024-04-19 18:49:05','Gigabyte GSmart Akta A4'),(49,67,'2024-04-17 12:52:47','2024-04-19 14:49:11','Huawei nova 7 SE 5G Youth'),(50,94,'2024-04-17 00:24:37','2024-04-19 05:16:26','Asus Zenfone Max Pro (M1) ZB601KL/ZB602K'),(51,113,'2024-04-17 16:30:31','2024-04-19 16:21:20','Celkon A95'),(52,91,'2024-04-17 22:36:59','2024-04-19 16:24:45','LG V50 ThinQ 5G'),(53,39,'2024-04-18 18:41:53','2024-04-19 02:37:54','Sony Ericsson K300'),(54,100,'2024-04-17 22:19:21','2024-04-19 11:45:03','NEC DB2000'),(55,28,'2024-04-17 18:42:09','2024-04-19 14:12:58','Philips Spark'),(56,112,'2024-04-18 08:20:59','2024-04-19 20:14:15','LG G5400'),(57,46,'2024-04-18 20:56:45','2024-04-19 01:43:00','Lava Z6'),(58,125,'2024-04-18 00:47:20','2024-04-19 08:13:21','Siemens AP75'),(59,57,'2024-04-18 06:22:57','2024-04-19 18:24:49','Oppo F5'),(60,27,'2024-04-18 17:40:40','2024-04-19 03:51:30','Samsung Z370'),(61,3,'2024-04-18 07:38:30','2024-04-19 02:31:47','Sagem my730c'),(62,45,'2024-04-18 22:13:15','2024-04-19 07:41:00','Motorola Quench XT5 XT502'),(63,2,'2024-04-18 19:05:10','2024-04-19 22:02:51','BenQ-Siemens E52'),(64,21,'2024-04-17 11:36:58','2024-04-19 21:44:37','Sharp Aquos Crystal 2'),(65,139,'2024-04-17 05:00:13','2024-04-19 02:22:09','Samsung Galaxy S5 Sport'),(66,97,'2024-04-18 19:00:01','2024-04-19 06:40:04','Energizer Energy S500E'),(67,73,'2024-04-18 19:18:31','2024-04-19 20:32:02','Sagem my411c'),(68,28,'2024-04-18 09:38:29','2024-04-19 07:24:01','Samsung T669 Gravity T'),(69,113,'2024-04-18 14:16:41','2024-04-19 15:11:01','verykool i601'),(70,106,'2024-04-18 08:37:01','2024-04-19 22:43:25','Plum Optimax 11'),(71,146,'2024-04-18 13:37:48','2024-04-19 10:07:47','Samsung B7320 OmniaPRO'),(72,94,'2024-04-18 15:45:38','2024-04-19 10:09:51','Celkon C609'),(73,37,'2024-04-18 12:39:43','2024-04-19 03:59:03','Coolpad Mega 3'),(74,52,'2024-04-17 14:51:07','2024-04-19 07:59:14','BLU J2'),(75,99,'2024-04-17 14:42:09','2024-04-19 17:01:41','Sewon SGD-1010'),(76,60,'2024-04-17 15:46:08','2024-04-19 06:20:18','Samsung Array M390'),(77,136,'2024-04-18 08:17:42','2024-04-19 05:14:08','Motorola A1890'),(78,135,'2024-04-17 00:49:25','2024-04-19 08:55:13','BLU Vivo One'),(79,83,'2024-04-18 09:54:20','2024-04-19 20:38:40','Samsung S8300 UltraTOUCH'),(80,71,'2024-04-18 14:20:30','2024-04-19 13:29:40','Asus Zenfone 5 A500CG (2014)'),(81,94,'2024-04-18 14:30:27','2024-04-19 06:36:46','vivo NEX A'),(82,60,'2024-04-18 11:14:45','2024-04-19 08:02:47','Lenovo A328'),(83,41,'2024-04-17 14:08:16','2024-04-19 09:06:09','Xiaomi Redmi 4 (China)'),(84,119,'2024-04-18 04:57:47','2024-04-19 10:42:10','BlackBerry Curve 9360'),(85,66,'2024-04-18 03:21:31','2024-04-19 20:25:58','Nokia 1662'),(86,78,'2024-04-18 16:00:04','2024-04-19 13:07:32','Meizu M10'),(87,121,'2024-04-17 16:20:41','2024-04-19 08:07:08','verykool s5031 Bolt Turbo'),(88,74,'2024-04-18 18:17:01','2024-04-19 04:52:32','BLU Grand M2 (2018)'),(89,150,'2024-04-18 00:51:15','2024-04-19 11:11:13','Samsung I9100G Galaxy S II'),(90,60,'2024-04-18 18:57:11','2024-04-19 22:48:17','Sony Xperia ZL'),(91,130,'2024-04-17 06:46:47','2024-04-19 18:33:48','Micromax Canvas Knight 2 E471'),(92,115,'2024-04-18 06:11:38','2024-04-19 12:22:06','Xiaomi Redmi 2 Pro'),(93,48,'2024-04-17 10:10:57','2024-04-19 11:22:15','Plum Sync 5.0'),(94,51,'2024-04-17 04:56:37','2024-04-19 15:42:47','Oppo R11s Plus'),(95,120,'2024-04-17 23:17:10','2024-04-19 14:59:58','Philips T129'),(96,30,'2024-04-18 20:38:47','2024-04-19 21:27:58','Philips 968'),(97,32,'2024-04-17 06:00:39','2024-04-19 21:28:54','Lenovo IdeaTab S6000L'),(98,50,'2024-04-17 09:15:14','2024-04-19 00:19:53','verykool i320'),(99,86,'2024-04-17 17:14:57','2024-04-19 02:16:19','Honor Play 4T Pro'),(100,79,'2024-04-17 01:38:37','2024-04-19 22:05:53','Sharp Aquos Zero 2');
/*!40000 ALTER TABLE `historialingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio` (
  `idMunicipio` int NOT NULL AUTO_INCREMENT,
  `idDepartamento` int DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idMunicipio`),
  KEY `idDepartamento` (`idDepartamento`),
  CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,1,'San Salvador Norte'),(2,1,'San Salvador Oeste'),(3,1,'San Salvador Este'),(4,1,'San Salvador Centro'),(5,1,'San Salvador Sur'),(6,2,'Santa Ana Norte'),(7,2,'Santa Ana Centro'),(8,2,'Santa Ana Este'),(9,2,'Santa Ana Oeste'),(10,3,'San Miguel Norte'),(11,3,'San Miguel Centro'),(12,3,'San Miguel Oeste'),(13,4,'La Libertad Norte'),(14,4,'La Libertad Centro'),(15,4,'La Libertad Sur'),(16,4,'La Libertad Este'),(17,4,'La Libertad Oeste'),(18,4,'La Libertad Costa'),(19,5,'Usulután Norte'),(20,5,'Usulután Oeste'),(21,5,'Usulután Este'),(22,6,'La Paz Oeste'),(23,6,'La Paz Centro'),(24,6,'La Paz Este'),(25,7,'Ahuachapán Norte'),(26,7,'Ahuachapán Centro'),(27,7,'Ahuachapán Sur'),(28,8,'Sonsonate Norte'),(29,8,'Sonsonate Centro'),(30,8,'Sonsonate Este'),(31,8,'Sonsonate Oeste'),(32,9,'Cuscatlán Norte'),(33,9,'Cuscatlán Sur'),(34,10,'Chalatenango Norte'),(35,10,'Chalatenango Centro'),(36,10,'Chalatenango Sur'),(37,11,'Cabañas Este'),(38,11,'Cabañas Oeste'),(39,12,'Morazán Norte'),(40,12,'Morazán Sur'),(41,13,'San Vicente Norte'),(42,13,'San Vicente Sur'),(43,14,'La Unión Norte'),(44,14,'La Unión Sur');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `idPago` int NOT NULL AUTO_INCREMENT,
  `idCuenta` int DEFAULT NULL,
  `idTipoPago` int DEFAULT NULL,
  `montoPago` decimal(10,2) DEFAULT NULL,
  `fechaPago` date DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estadoPago` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPago`),
  KEY `idCuenta` (`idCuenta`),
  KEY `idTipoPago` (`idTipoPago`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`idCuenta`) REFERENCES `cuentas` (`idCuenta`),
  CONSTRAINT `pagos_ibfk_2` FOREIGN KEY (`idTipoPago`) REFERENCES `tipopagos` (`idTipoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,36,4,652.74,'2023-09-27','pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in','Pendiente'),(2,126,4,67.90,'2024-01-17','suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus','Cancelado'),(3,66,1,730.22,'2023-05-03','penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue','Cancelado'),(4,74,1,186.12,'2024-02-03','sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque','Pendiente'),(5,32,3,314.34,'2024-02-23','nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae','Pendiente'),(6,82,5,785.54,'2023-09-08','habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien','Cancelado'),(7,109,1,557.68,'2023-04-20','venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus','Cancelado'),(8,47,1,995.00,'2023-10-22','dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at','Cancelado'),(9,61,2,98.01,'2023-10-18','vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer','Cancelado'),(10,87,1,252.84,'2024-02-11','sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non','Cancelado'),(11,44,3,150.07,'2023-05-04','quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis','Cancelado'),(12,144,4,780.07,'2023-11-23','felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet','Realizado'),(13,27,5,895.15,'2024-03-01','vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum','Cancelado'),(14,31,3,226.05,'2023-12-11','eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat','Cancelado'),(15,21,4,48.47,'2023-10-21','tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in','Realizado'),(16,120,3,58.92,'2023-07-25','a suscipit nulla elit ac nulla sed vel enim sit amet','Realizado'),(17,104,4,904.27,'2023-11-19','consequat lectus in est risus auctor sed tristique in tempus sit amet','Cancelado'),(18,137,2,867.31,'2024-02-22','vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra','Realizado'),(19,71,5,141.77,'2023-06-11','pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis','Cancelado'),(20,124,5,578.59,'2024-03-09','nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus','Cancelado'),(21,132,2,993.24,'2023-11-20','nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget','Realizado'),(22,53,3,396.07,'2024-03-11','vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum','Pendiente'),(23,36,4,735.14,'2023-04-24','nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis','Cancelado'),(24,73,1,679.25,'2023-07-13','mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper','Cancelado'),(25,129,3,18.07,'2023-11-28','mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem','Pendiente'),(26,138,2,341.72,'2023-05-19','pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque','Realizado'),(27,54,5,392.30,'2023-10-27','imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus','Pendiente'),(28,114,4,588.07,'2023-07-10','lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam','Pendiente'),(29,95,5,583.73,'2023-07-21','nunc commodo placerat praesent blandit nam nulla integer pede justo','Pendiente'),(30,1,4,668.39,'2023-11-02','magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus','Realizado'),(31,120,5,556.94,'2023-05-13','condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt','Pendiente'),(32,123,4,264.23,'2023-11-20','aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse','Cancelado'),(33,149,1,116.13,'2024-02-15','ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend','Cancelado'),(34,105,1,894.36,'2023-07-17','suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus','Pendiente'),(35,58,2,312.44,'2024-03-20','id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit','Pendiente'),(36,88,1,594.33,'2024-02-09','est quam pharetra magna ac consequat metus sapien ut nunc vestibulum','Realizado'),(37,16,4,678.49,'2023-10-05','lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat','Cancelado'),(38,93,5,951.01,'2023-07-15','cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus','Realizado'),(39,124,2,59.66,'2023-06-16','euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula','Realizado'),(40,37,3,179.61,'2023-05-28','suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet','Pendiente'),(41,98,4,229.63,'2024-03-17','malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet','Pendiente'),(42,10,4,314.75,'2024-03-04','pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in','Pendiente'),(43,86,5,185.78,'2024-04-18','semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan','Realizado'),(44,73,1,277.44,'2023-06-04','ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices','Pendiente'),(45,60,1,251.37,'2023-05-06','imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet','Pendiente'),(46,128,4,781.58,'2023-11-01','primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo','Realizado'),(47,37,5,480.81,'2023-07-15','tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget','Cancelado'),(48,3,1,87.83,'2024-03-12','tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi','Pendiente'),(49,22,1,662.33,'2023-07-15','maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque','Realizado'),(50,82,4,996.12,'2023-10-21','erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam','Realizado'),(51,129,1,119.47,'2023-11-27','ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec','Cancelado'),(52,95,2,273.25,'2023-06-02','mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus','Realizado'),(53,16,4,425.75,'2024-01-25','venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium','Cancelado'),(54,56,4,868.22,'2024-02-18','suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus','Realizado'),(55,117,2,495.04,'2023-08-11','pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla','Realizado'),(56,98,2,213.92,'2023-05-04','sed tristique in tempus sit amet sem fusce consequat nulla','Pendiente'),(57,130,4,249.56,'2023-09-06','sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc','Realizado'),(58,143,3,154.20,'2023-10-10','aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in','Cancelado'),(59,81,3,626.63,'2023-08-31','id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci','Pendiente'),(60,66,2,89.89,'2024-03-06','enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit','Realizado'),(61,108,3,747.26,'2023-05-01','in est risus auctor sed tristique in tempus sit amet sem fusce consequat','Realizado'),(62,105,1,634.16,'2024-02-27','ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et','Pendiente'),(63,53,3,469.54,'2023-12-08','malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit','Realizado'),(64,51,2,761.85,'2023-06-15','platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque','Realizado'),(65,75,5,119.17,'2024-04-09','purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat','Realizado'),(66,7,1,437.11,'2023-04-29','tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis','Pendiente'),(67,62,2,807.90,'2023-11-24','varius integer ac leo pellentesque ultrices mattis odio donec vitae','Pendiente'),(68,94,2,29.94,'2023-08-24','curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at','Pendiente'),(69,76,2,504.38,'2024-02-11','neque libero convallis eget eleifend luctus ultricies eu nibh quisque','Realizado'),(70,72,3,2.55,'2023-10-02','nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue','Realizado'),(71,80,1,450.11,'2024-01-30','convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus','Realizado'),(72,42,5,465.71,'2023-10-23','aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper','Cancelado'),(73,119,1,775.26,'2024-01-21','iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget','Realizado'),(74,147,1,962.49,'2023-06-05','orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in','Pendiente'),(75,93,5,471.62,'2024-03-30','justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat','Pendiente'),(76,141,3,666.50,'2024-02-07','nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce','Realizado'),(77,56,4,835.30,'2024-02-27','amet eleifend pede libero quis orci nullam molestie nibh in lectus','Pendiente'),(78,76,1,309.62,'2023-09-06','pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit','Realizado'),(79,71,1,272.48,'2023-06-20','ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim','Cancelado'),(80,74,5,113.83,'2024-02-17','sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris','Pendiente'),(81,17,4,252.03,'2023-11-13','fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti','Realizado'),(82,119,5,309.26,'2023-11-07','fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet','Realizado'),(83,50,2,76.55,'2024-04-08','donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo','Pendiente'),(84,123,2,958.60,'2023-09-02','volutpat erat quisque erat eros viverra eget congue eget semper rutrum','Cancelado'),(85,64,2,611.43,'2023-11-12','ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie','Realizado'),(86,45,1,763.58,'2023-08-16','lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio','Realizado'),(87,71,5,906.83,'2023-11-01','pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien','Realizado'),(88,66,1,568.70,'2023-09-09','hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci','Cancelado'),(89,49,4,268.73,'2024-01-08','justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla','Pendiente'),(90,44,4,223.35,'2023-06-10','vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus','Pendiente'),(91,62,2,273.36,'2024-03-07','luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non','Pendiente'),(92,34,4,729.69,'2023-09-16','eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat','Cancelado'),(93,45,5,328.97,'2024-02-10','felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in','Pendiente'),(94,64,5,199.42,'2024-03-06','vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat','Pendiente'),(95,150,5,637.74,'2023-11-07','justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi','Pendiente'),(96,114,1,474.06,'2023-05-09','vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum','Realizado'),(97,114,3,667.30,'2023-09-12','gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet','Cancelado'),(98,116,4,290.15,'2023-05-15','magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu','Pendiente'),(99,65,2,730.86,'2023-06-19','vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel','Pendiente'),(100,69,4,943.08,'2024-02-17','nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes','Pendiente');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos` (
  `idPrestamo` int NOT NULL AUTO_INCREMENT,
  `idCliente` int DEFAULT NULL,
  `fechaPrestamo` date DEFAULT NULL,
  `fechaVencimiento` date DEFAULT NULL,
  `creditoPrestado` decimal(10,2) DEFAULT NULL,
  `creditoRecaudado` decimal(10,2) DEFAULT NULL,
  `intereses` decimal(10,2) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPrestamo`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES (1,89,'2023-12-05','2024-06-20',336.51,510.51,4.09,'Pendiente'),(2,50,'2024-01-22','2024-08-15',186.40,511.68,40.85,'Pendiente'),(3,4,'2023-04-24','2024-11-10',178.70,558.72,27.95,'Pendiente'),(4,134,'2024-01-24','2024-06-03',304.25,580.36,18.96,'Pendiente'),(5,35,'2023-09-01','2025-01-01',208.99,511.36,38.42,'Pendiente'),(6,113,'2023-08-14','2024-09-01',343.45,477.37,42.78,'Pagado'),(7,80,'2024-03-26','2024-11-12',234.75,488.38,31.54,'Pagado'),(8,24,'2023-08-26','2025-04-11',234.68,533.63,22.32,'Pagado'),(9,74,'2023-08-18','2024-09-18',159.91,435.63,29.53,'Pendiente'),(10,74,'2023-12-25','2025-03-02',398.81,517.41,42.78,'Pagado'),(11,114,'2023-07-31','2024-12-15',257.20,515.41,12.39,'Pendiente'),(12,49,'2023-09-27','2024-07-29',365.46,555.88,11.87,'Pendiente'),(13,19,'2023-08-13','2024-06-25',236.11,425.30,7.76,'Pagado'),(14,57,'2023-08-13','2024-07-19',180.51,488.91,40.10,'Pendiente'),(15,28,'2023-07-14','2025-02-17',297.80,592.17,38.75,'Pagado'),(16,51,'2023-09-11','2024-12-14',395.87,444.92,31.97,'Pagado'),(17,52,'2024-01-06','2024-05-29',293.99,416.59,26.15,'Pendiente'),(18,41,'2024-04-09','2024-11-11',364.13,513.45,38.61,'Pendiente'),(19,10,'2023-12-03','2024-08-06',173.13,554.76,45.03,'Pagado'),(20,141,'2023-07-09','2024-06-24',224.94,594.78,37.05,'Pendiente'),(21,74,'2024-01-11','2024-08-04',222.85,402.81,32.19,'Pagado'),(22,8,'2023-08-20','2024-09-12',211.79,498.40,26.35,'Pagado'),(23,98,'2023-12-17','2024-12-30',314.43,557.09,30.01,'Pagado'),(24,27,'2023-12-06','2024-05-20',226.44,424.42,22.97,'Pagado'),(25,69,'2024-01-24','2024-09-22',201.67,541.49,4.57,'Pendiente'),(26,38,'2024-02-07','2025-02-01',296.16,519.94,35.35,'Pagado'),(27,69,'2024-02-07','2025-03-18',185.56,404.04,5.11,'Pagado'),(28,18,'2023-05-26','2024-08-13',365.69,401.49,46.91,'Pagado'),(29,99,'2023-09-12','2024-11-09',173.30,511.96,15.43,'Pendiente'),(30,82,'2023-11-10','2025-02-11',209.70,511.31,41.26,'Pendiente'),(31,100,'2023-06-15','2024-08-09',360.91,555.17,37.89,'Pendiente'),(32,113,'2023-06-05','2024-10-11',355.27,534.63,6.78,'Pendiente'),(33,89,'2023-05-28','2024-12-24',348.43,486.36,14.07,'Pendiente'),(34,140,'2024-01-23','2024-10-18',251.94,411.11,22.34,'Pagado'),(35,30,'2023-05-13','2024-06-28',332.12,549.85,48.05,'Pagado'),(36,23,'2023-05-15','2025-04-07',352.84,413.35,30.42,'Pendiente'),(37,50,'2023-08-24','2025-02-13',201.93,408.49,14.83,'Pagado'),(38,95,'2023-09-17','2025-04-07',368.16,456.36,12.54,'Pagado'),(39,58,'2023-11-02','2025-02-18',349.86,492.16,22.23,'Pendiente'),(40,84,'2024-01-06','2025-04-11',222.05,579.19,9.84,'Pendiente'),(41,136,'2023-09-04','2025-03-10',399.19,534.56,37.64,'Pendiente'),(42,149,'2023-07-19','2025-04-10',252.31,578.72,48.85,'Pagado'),(43,68,'2024-04-18','2024-10-18',289.49,459.84,34.56,'Pendiente'),(44,126,'2023-05-01','2024-12-09',153.27,554.02,20.46,'Pendiente'),(45,32,'2024-03-24','2024-11-25',318.20,470.34,10.84,'Pagado'),(46,115,'2023-07-01','2025-04-09',377.01,580.40,19.49,'Pendiente'),(47,119,'2023-05-08','2024-07-09',169.39,405.52,16.04,'Pendiente'),(48,58,'2023-07-22','2024-08-29',198.02,466.34,47.95,'Pagado'),(49,113,'2023-10-17','2024-06-01',310.24,460.57,43.84,'Pendiente'),(50,2,'2023-10-05','2025-03-20',195.80,571.34,23.82,'Pendiente');
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugerenciasanonimas`
--

DROP TABLE IF EXISTS `sugerenciasanonimas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugerenciasanonimas` (
  `idSugerencia` int NOT NULL AUTO_INCREMENT,
  `asunto` varchar(255) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`idSugerencia`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugerenciasanonimas`
--

LOCK TABLES `sugerenciasanonimas` WRITE;
/*!40000 ALTER TABLE `sugerenciasanonimas` DISABLE KEYS */;
INSERT INTO `sugerenciasanonimas` VALUES (1,'Problema con el servicio','tempus semper est quam pharetra magna ac consequat metus sapien ut'),(2,'Queja sobre la atencion','id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat'),(3,'Recomendación sobre el servicio','convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo'),(4,'Sugerencia para mejorar','rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia'),(5,'Recomendación sobre el servicio','aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in'),(6,'Problema con el servicio','placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet'),(7,'Sugerencia para mejorar','duis aliquam convallis nunc proin at turpis a pede posuere nonummy'),(8,'Recomendación sobre el servicio','amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien'),(9,'Sugerencia para mejorar','consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non'),(10,'Queja sobre la atencion','felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla'),(11,'Problema con el servicio','nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac'),(12,'Sugerencia para mejorar','lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in'),(13,'Recomendación sobre el servicio','non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae'),(14,'Sugerencia para mejorar','ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus'),(15,'Queja sobre la atencion','maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum'),(16,'Problema con el servicio','nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis'),(17,'Queja sobre la atencion','in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam'),(18,'Queja sobre la atencion','scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum'),(19,'Sugerencia para mejorar','aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit'),(20,'Queja sobre la atencion','leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non'),(21,'Problema con el servicio','dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros'),(22,'Recomendación sobre el servicio','donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est'),(23,'Problema con el servicio','natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque'),(24,'Sugerencia para mejorar','quisque arcu libero rutrum ac lobortis vel dapibus at diam nam'),(25,'Sugerencia para mejorar','sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque'),(26,'Sugerencia para mejorar','purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea'),(27,'Sugerencia para mejorar','leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac'),(28,'Sugerencia para mejorar','odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a'),(29,'Recomendación sobre el servicio','sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa'),(30,'Problema con el servicio','cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque'),(31,'Recomendación sobre el servicio','felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec'),(32,'Recomendación sobre el servicio','curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar'),(33,'Queja sobre la atencion','ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh'),(34,'Recomendación sobre el servicio','justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec'),(35,'Problema con el servicio','in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed'),(36,'Recomendación sobre el servicio','rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium'),(37,'Sugerencia para mejorar','libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim'),(38,'Recomendación sobre el servicio','lacinia aenean sit amet justo morbi ut odio cras mi pede'),(39,'Recomendación sobre el servicio','justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor'),(40,'Problema con el servicio','vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa'),(41,'Queja sobre la atencion','praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam'),(42,'Sugerencia para mejorar','et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit'),(43,'Recomendación sobre el servicio','quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor'),(44,'Queja sobre la atencion','id sapien in sapien iaculis congue vivamus metus arcu adipiscing'),(45,'Problema con el servicio','platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla');
/*!40000 ALTER TABLE `sugerenciasanonimas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjetascredito`
--

DROP TABLE IF EXISTS `tarjetascredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjetascredito` (
  `idCredito` int NOT NULL AUTO_INCREMENT,
  `idCliente` int DEFAULT NULL,
  `idCicloFacturacion` int DEFAULT NULL,
  `numeroTarjeta` int DEFAULT NULL,
  `limiteCredito` decimal(10,2) DEFAULT NULL,
  `saldoActual` decimal(10,2) DEFAULT NULL,
  `fechaEmision` date DEFAULT NULL,
  `fechaVencimiento` date DEFAULT NULL,
  PRIMARY KEY (`idCredito`),
  KEY `idCliente` (`idCliente`),
  KEY `idCicloFacturacion` (`idCicloFacturacion`),
  CONSTRAINT `tarjetascredito_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `tarjetascredito_ibfk_2` FOREIGN KEY (`idCicloFacturacion`) REFERENCES `ciclofacturacion` (`idCicloFacturacion`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjetascredito`
--

LOCK TABLES `tarjetascredito` WRITE;
/*!40000 ALTER TABLE `tarjetascredito` DISABLE KEYS */;
INSERT INTO `tarjetascredito` VALUES (1,52,1,1860,349.09,4.31,'2023-11-28','2026-07-08'),(2,46,1,8997,211.49,152.72,'2024-01-08','2025-10-20'),(3,6,2,4552,406.84,222.09,'2024-01-25','2025-09-28'),(4,83,2,2209,518.00,114.15,'2023-06-18','2025-04-24'),(5,9,3,3193,542.30,272.30,'2023-06-03','2027-03-27'),(6,41,1,1010,205.99,82.23,'2023-09-22','2025-12-21'),(7,22,3,2492,216.71,383.86,'2024-02-29','2026-04-05'),(8,33,3,751,224.79,169.69,'2023-05-11','2025-09-15'),(9,90,2,5199,199.93,192.79,'2023-08-04','2026-05-13'),(10,142,2,4391,364.19,154.24,'2023-11-10','2025-08-18'),(11,45,2,947,427.31,57.52,'2023-09-08','2025-09-25'),(12,58,2,6885,171.32,146.84,'2023-09-09','2026-10-29'),(13,129,1,9489,211.66,158.75,'2023-08-21','2025-10-29'),(14,101,1,9182,574.51,205.79,'2024-03-01','2027-03-13'),(15,121,2,7637,587.64,119.72,'2023-07-21','2025-11-11'),(16,43,3,4142,282.70,30.45,'2023-07-12','2025-12-02'),(17,9,1,947,496.67,175.48,'2023-11-23','2025-08-02'),(18,145,2,3955,357.82,239.42,'2024-03-11','2025-06-09'),(19,117,2,702,466.99,363.55,'2023-08-09','2027-03-09');
/*!40000 ALTER TABLE `tarjetascredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocuentas`
--

DROP TABLE IF EXISTS `tipocuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipocuentas` (
  `idTipoCuenta` int NOT NULL AUTO_INCREMENT,
  `TipoCuenta` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Estado` varchar(255) NOT NULL,
  PRIMARY KEY (`idTipoCuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocuentas`
--

LOCK TABLES `tipocuentas` WRITE;
/*!40000 ALTER TABLE `tipocuentas` DISABLE KEYS */;
INSERT INTO `tipocuentas` VALUES (1,'Cuenta Corriente','Una cuenta que permite realizar múltiples transacciones, como depósitos, retiros y pagos, sin límites en la cantidad de operaciones.','1'),(2,'Cuenta de Ahorros','Una cuenta diseñada para ahorrar dinero, generalmente con una tasa de interés sobre el saldo y limitaciones en la cantidad de retiros permitidos por período.','1'),(3,'Cuenta Nómina','Una cuenta utilizada para recibir el salario o sueldo de un empleado, generalmente asociada con ventajas como exención de comisiones y acceso a préstamos.','1'),(4,'Cuenta de Cheques','Una cuenta que permite realizar pagos mediante cheques emitidos por el titular de la cuenta.','1'),(5,'Cuenta de Inversión','Una cuenta diseñada para invertir dinero en instrumentos financieros, como acciones, bonos o fondos mutuos, con el objetivo de obtener un retorno sobre la inversión.','1');
/*!40000 ALTER TABLE `tipocuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopagos`
--

DROP TABLE IF EXISTS `tipopagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipopagos` (
  `idTipoPago` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTipoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopagos`
--

LOCK TABLES `tipopagos` WRITE;
/*!40000 ALTER TABLE `tipopagos` DISABLE KEYS */;
INSERT INTO `tipopagos` VALUES (1,'Tarjeta de Crédito','Pago realizado utilizando una tarjeta de crédito.'),(2,'Transferencia Bancaria','Transferencia de fondos entre cuentas bancarias.'),(3,'Cheque','Pago realizado mediante la emisión de un cheque.'),(4,'Efectivo','Pago en efectivo realizado en persona.'),(5,'Pago en Línea','Pago realizado a través de plataformas de pago en línea como PayPal o Stripe.');
/*!40000 ALTER TABLE `tipopagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipotransacciones`
--

DROP TABLE IF EXISTS `tipotransacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipotransacciones` (
  `idTipoTransaccion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `comision` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idTipoTransaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipotransacciones`
--

LOCK TABLES `tipotransacciones` WRITE;
/*!40000 ALTER TABLE `tipotransacciones` DISABLE KEYS */;
INSERT INTO `tipotransacciones` VALUES (1,'Depósito','Transacción que implica depositar dinero en una cuenta bancaria.',NULL),(2,'Retiro','Transacción que implica retirar dinero de una cuenta bancaria.',NULL),(3,'Transferencia','Transacción que implica transferir dinero entre cuentas bancarias.',0.50),(4,'Pago de Servicios','Transacción que implica el pago de servicios como facturas de electricidad, agua, teléfono, etc.',0.75),(5,'Compra con Tarjeta','Transacción que implica realizar una compra utilizando una tarjeta de débito o crédito.',1.00);
/*!40000 ALTER TABLE `tipotransacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacciones` (
  `idTransaccion` int NOT NULL AUTO_INCREMENT,
  `idCuentaEmisor` int DEFAULT NULL,
  `idCuentaDestino` int DEFAULT NULL,
  `idTipoTransaccion` int DEFAULT NULL,
  `fechaTransaccion` date DEFAULT NULL,
  `descripcion` text,
  `monto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idTransaccion`),
  KEY `idCuentaEmisor` (`idCuentaEmisor`),
  KEY `idCuentaDestino` (`idCuentaDestino`),
  KEY `idTipoTransaccion` (`idTipoTransaccion`),
  CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`idCuentaEmisor`) REFERENCES `cuentas` (`idCuenta`),
  CONSTRAINT `transacciones_ibfk_2` FOREIGN KEY (`idCuentaDestino`) REFERENCES `cuentas` (`idCuenta`),
  CONSTRAINT `transacciones_ibfk_3` FOREIGN KEY (`idTipoTransaccion`) REFERENCES `tipotransacciones` (`idTipoTransaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (1,2,145,5,'2024-01-30','sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor',672.68),(2,13,10,4,'2023-11-16','posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae',336.94),(3,9,13,5,'2023-09-26','in quis justo maecenas rhoncus aliquam lacus morbi quis tortor',426.62),(4,97,61,4,'2023-05-20','nunc proin at turpis a pede posuere nonummy integer non velit',212.93),(5,45,79,2,'2023-07-31','consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante',607.86),(6,139,115,4,'2024-02-29','eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus',73.21),(7,4,103,3,'2024-03-20','ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel',682.37),(8,124,122,4,'2024-01-17','at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia',202.86),(9,136,81,2,'2023-05-25','ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam',95.90),(10,126,11,3,'2024-03-09','vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis',22.80),(11,71,133,2,'2023-06-30','sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus',855.70),(12,35,74,3,'2023-05-17','sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum',93.43),(13,25,91,1,'2024-03-02','volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus',282.67),(14,35,45,5,'2023-07-31','nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur',715.29),(15,27,145,5,'2024-01-04','nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque',251.85),(16,74,48,1,'2023-05-23','vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing',337.52),(17,9,141,2,'2023-06-12','ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor',488.97),(18,46,44,5,'2024-02-28','vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci',831.90),(19,85,33,2,'2023-07-05','viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper',449.76),(20,115,76,4,'2023-08-24','sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam',461.41),(21,80,111,3,'2023-07-01','fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio',281.12),(22,109,6,1,'2023-10-10','in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum',143.50),(23,121,141,3,'2024-01-23','at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc',778.87),(24,98,105,5,'2023-04-26','lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in',182.40),(25,76,122,5,'2023-06-27','massa donec dapibus duis at velit eu est congue elementum in hac',817.07),(26,87,35,1,'2023-06-07','curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec',215.95),(27,83,90,3,'2023-05-24','sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean',408.33),(28,149,85,3,'2023-10-28','lectus in est risus auctor sed tristique in tempus sit amet',60.98),(29,111,119,4,'2023-04-20','volutpat dui maecenas tristique est et tempus semper est quam pharetra',853.90),(30,117,70,4,'2023-11-24','lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus',765.58),(31,79,148,2,'2023-08-11','odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus',825.64),(32,149,61,4,'2023-10-25','placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis',215.16),(33,69,25,5,'2023-10-10','at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque',519.71),(34,93,92,4,'2023-07-17','porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis',505.93),(35,141,112,3,'2023-11-08','justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi',43.73),(36,64,26,3,'2023-04-26','vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas',542.08),(37,34,122,3,'2023-06-10','luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque',313.23),(38,59,139,1,'2023-07-28','metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus',727.74),(39,107,114,5,'2023-09-10','proin eu mi nulla ac enim in tempor turpis nec',1.60),(40,24,45,4,'2023-12-30','nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum',876.61),(41,79,117,3,'2023-08-28','faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam',593.51),(42,140,130,2,'2023-11-24','vestibulum velit id pretium iaculis diam erat fermentum justo nec',321.44),(43,64,105,4,'2023-09-28','ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce',343.98),(44,129,143,2,'2023-10-22','platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante',565.18),(45,12,124,3,'2023-09-16','sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla',645.43),(46,16,99,4,'2024-01-18','nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum',64.12),(47,14,22,1,'2023-04-26','leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut',732.46),(48,70,141,4,'2023-06-01','lacinia aenean sit amet justo morbi ut odio cras mi pede',357.95),(49,53,99,5,'2024-03-31','consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar',534.70),(50,75,28,3,'2023-12-06','augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur',272.65),(51,142,95,4,'2024-01-26','justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan',177.47),(52,61,5,3,'2023-12-18','tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis',380.48),(53,110,61,4,'2023-09-19','erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam',2.64),(54,91,140,5,'2023-07-18','cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit',485.34),(55,135,98,1,'2023-05-17','nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit',873.55),(56,39,146,1,'2023-05-11','turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante',503.43),(57,140,82,5,'2023-12-09','convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis',26.82),(58,122,54,3,'2023-05-10','in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam',660.86),(59,97,124,1,'2023-08-22','maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum',635.85),(60,7,25,2,'2024-01-07','sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero',50.53),(61,65,70,5,'2023-08-31','in ante vestibulum ante ipsum primis in faucibus orci luctus',636.55),(62,76,6,1,'2023-08-06','eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum',152.80),(63,63,4,5,'2023-08-14','amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit',342.36),(64,88,104,3,'2023-11-02','tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo',192.49),(65,91,109,5,'2023-11-29','morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem',319.35),(66,123,140,5,'2024-04-13','enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien',6.97),(67,11,2,3,'2023-07-06','id turpis integer aliquet massa id lobortis convallis tortor risus',226.15),(68,14,56,4,'2023-08-28','a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio',247.29),(69,74,95,1,'2023-09-22','cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus',425.73),(70,4,106,2,'2023-09-23','et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum',75.38),(71,106,140,1,'2023-09-05','in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis',442.44),(72,33,108,2,'2023-04-25','primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio',427.89),(73,54,86,2,'2023-11-09','augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet',184.51),(74,106,82,1,'2024-02-04','ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in',156.12),(75,26,150,4,'2024-04-13','nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio',266.55),(76,132,23,1,'2023-09-24','non quam nec dui luctus rutrum nulla tellus in sagittis',52.60),(77,132,103,5,'2023-05-05','mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec',387.72),(78,116,21,3,'2023-07-09','tellus nulla ut erat id mauris vulputate elementum nullam varius nulla',447.34),(79,54,109,3,'2023-10-20','venenatis turpis enim blandit mi in porttitor pede justo eu massa',511.25),(80,47,116,3,'2023-10-17','in quis justo maecenas rhoncus aliquam lacus morbi quis tortor',250.19),(81,24,134,4,'2023-08-26','nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices',260.75),(82,66,71,1,'2023-06-23','pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non',769.63),(83,66,4,4,'2023-07-19','donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus',129.52),(84,50,112,3,'2023-06-01','justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla',202.32),(85,12,76,3,'2023-11-14','lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus',259.40),(86,56,60,4,'2023-06-17','ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit',62.71),(87,112,150,4,'2023-11-22','tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer',868.08),(88,103,85,5,'2024-03-17','interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit',51.31),(89,146,119,1,'2023-05-02','nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus',301.02),(90,113,80,2,'2023-12-23','mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede',551.62),(91,96,81,3,'2024-01-25','amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla',278.71),(92,10,38,2,'2024-01-28','turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere',866.48),(93,143,64,4,'2023-11-23','suscipit ligula in lacus curabitur at ipsum ac tellus semper',94.52),(94,17,45,2,'2023-05-30','vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat',538.21),(95,25,39,3,'2024-04-07','tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis',633.35),(96,28,118,3,'2024-03-19','augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur',863.72),(97,99,85,4,'2024-04-12','pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut',646.54),(98,105,99,5,'2023-10-10','vel est donec odio justo sollicitudin ut suscipit a feugiat et eros',830.63),(99,13,125,3,'2024-02-02','nunc purus phasellus in felis donec semper sapien a libero',796.79),(100,51,100,5,'2024-01-25','morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit',779.23);
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'banco'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-02 13:56:03
