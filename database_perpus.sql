-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: database_perpustakaan
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `isValid` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'riza16','abcd1234','2022-11-20 00:00:00','2022-11-20 00:00:00',1),(2,'putra','abcd1234','2022-11-20 00:00:00','2022-11-20 00:00:00',1),(3,'putri','$2b$10$siqzL/XJY0COhbHpbXD9o.nrMUr2/EwLw05rt8.A.4Ihh0P6vJbF6','2022-11-20 11:05:56','2022-11-20 11:05:56',1);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Author` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Genre` varchar(255) NOT NULL,
  `Publisher` varchar(255) NOT NULL,
  `Images` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `Abstract` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Taylor Jenkins Reid','The Seven Husbands of Evelyn Hugo: A Novel','Fiction','Washington Square Press','https://m.media-amazon.com/images/I/81pybFd2PBL._AC_UY327_FMwebp_QL65_.jpg','2022-11-15 06:54:36','2022-11-16 04:14:46','Aging and reclusive Hollywood movie icon Evelyn Hugo is finally ready to tell the truth about her glamorous and scandalous life.'),(2,'Rush Limbaugh','Radio\'s Greatest of All Time','Non-Fiction','Threshold Editions','https://m.media-amazon.com/images/I/616wn8i6eTL._AC_UY327_FMwebp_QL65_.jpg','2022-11-15 07:00:41','2022-11-16 04:15:47','For more than thirty years, millions of listeners tuned in to hear Rush Limbaugh’s voice. '),(3,'Katie Wood','A Simple Seed: of Growth, Gratitude & Giggles: 5-minute morning journal for kids','Fiction','The New York Times','https://m.media-amazon.com/images/I/61wsLBNZqZL._AC_UY327_FMwebp_QL65_.jpg','2022-11-15 07:02:31','2022-11-19 00:06:40','A Simple Seed reinforces a growth mindset, helping children build the habit of choosing love over hate, forgiveness over anger and courage over fear.'),(4,'Michelle Obama','The Light We Carry: Overcoming in Uncertain Times','Non-Fiction','Crown','https://images-na.ssl-images-amazon.com/images/I/91MowzF+WZL._AC_UL210_SR195,210_.jpg','2022-11-15 07:03:57','2022-11-19 00:06:49','There may be no tidy solutions or pithy answers to life’s big challenges, but Michelle Obama believes that we can all locate and lean on a set of tools to help us better navigate change and remain steady within flux.'),(5,'Colleen Hover','It Starts with Us: A Novel (It Ends with Us)','Fiction','Crown','https://images-na.ssl-images-amazon.com/images/I/71PNGYHykrL._AC_UL210_SR195,210_.jpg','2022-11-15 07:05:16','2022-11-19 00:06:52','Lily and her ex-husband, Ryle, have just settled into a civil coparenting rhythm when she suddenly bumps into her first love, Atlas, again.'),(6,'Mike Pence','So Help Me God','Non-Fiction','Simon & Schuster','https://images-na.ssl-images-amazon.com/images/I/81MDrZAEsRL._AC_UL210_SR195,210_.jpg','2022-11-15 07:06:51','2022-11-19 00:06:54','Mike Pence spent more hours in the Oval Office than any of his predecessors. On the surface, the affable evangelical Christian from a gas-station-owning family in Indiana wouldn’t seem to have much in common with a brash real estate mogul from New York.'),(7,'Prince Harry','Spare','Non-Fiction','Random House','https://m.media-amazon.com/images/I/91Szm8FpdfL._AC_UY327_FMwebp_QL65_.jpg','2022-11-15 07:07:59','2022-11-19 00:06:57','It was one of the most searing images of the twentieth century: two young boys, two princes, walking behind their mother’s coffin as the world watched in sorrow—and horror.'),(8,'Colleen Hoover','Ugly Love: A Novel ','Fiction','The New York Times','https://m.media-amazon.com/images/I/71E8VNPC1dL._AC_UY327_FMwebp_QL65_.jpg','2022-11-15 07:08:53','2022-11-19 00:07:00','When Tate Collins meets airline pilot Miles Archer, she doesn\'t think it\'s love at first sight. They wouldn’t even go so far as to consider themselves friends. The only thing Tate and Miles have in common is an undeniable mutual attraction.'),(9,'Stephen King','Fairy Tale','Fiction','Scribner','https://images-na.ssl-images-amazon.com/images/I/81blQfKsLtL._AC_UL210_SR195,210_.jpg','2022-11-15 07:09:53','2022-11-19 00:07:03','Charlie Reade looks like a regular high school kid, great at baseball and football, a decent student. But he carries a heavy load. His mom was killed in a hit-and-run accident when he was seven, and grief drove his dad to drink.'),(10,'Patti Smith','A Book of Days','Non-Fiction','Random House','https://m.media-amazon.com/images/I/71oSWIfQI8L._AC_UY327_FMwebp_QL65_.jpg','2022-11-15 07:11:12','2022-11-19 00:07:06','In 2018, without any plan or agenda for what might happen next, Patti Smith posted her first Instagram photo: her hand with the simple message “Hello Everybody!” Known for shooting with her beloved Land Camera 250.'),(11,'James Clear','Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones','Fiction','Avery','https://images-na.ssl-images-amazon.com/images/I/81wgcld4wxL._AC_UL210_SR195,210_.jpg','2022-11-16 09:10:14','2022-11-19 00:07:08','No matter your goals, Atomic Habits offers a proven framework for improving--every day. James Clear, one of the world\'s leading experts on habit formation, reveals practical strategies that will teach you exactly how to form good habits, break bad ones.'),(12,'Dick Morris','The Return: Trump\'s Big 2024 Comeback','Non-Fiction','Avery','https://images-na.ssl-images-amazon.com/images/I/71lwvQIGI8L._AC_UL210_SR195,210_.jpg','2022-11-16 09:12:31','2022-11-19 00:07:10','Since 2016 Dick Morris has been a behind-the-scenes adviser to Donald Trump.  Dick played a key role in Trump’s surprise 2016 win. Dick Morris reveals first time President Trump’s strategy to win in 2024. And yes, he’s running!'),(13,'Matthew Perry','Friends, Lovers, and the Big Terrible Thing: A Memoir','Non-Fiction','Avery','https://images-na.ssl-images-amazon.com/images/I/81ZkvDcuCzL._AC_UL210_SR195,210_.jpg','2022-11-16 09:14:35','2022-11-19 00:07:13','So begins the riveting story of acclaimed actor Matthew Perry, taking us along on his journey from childhood ambition to fame to addiction and recovery in the aftermath of a life-threatening health scare.'),(14,'Fiersa Besari','Konspirasi Alam Semesta','Fiction','Mediakita','https://cdn.gramedia.com/uploads/items/9789797945350_Konspirasi-Alam-Semesta.jpg','2022-11-16 10:14:11','2022-11-19 00:07:15','Seperti apakah warna cinta? Apakah merah muda mewakili rekahannya, ataukah kelabu mewakili pecahannya?'),(15,'Fiersa Besari','Garis Waktu : Sebuah Perjalanan Menghapus Luka','Fiction','Mediakita','https://cdn.gramedia.com/uploads/items/9789797945251_garis_waktu_sebuah_perjalanan_menghapus_lupa.jpg','2022-11-16 10:15:43','2022-11-19 00:07:18','Pada sebuah garis waktu yang merangkak maju, akan ada saatnya kau bertemu dengan satu orang yang mengubah hidupmu untuk selamanya.'),(16,'Fiersa Besari','Catatan Juang','Fiction','Mediakita','https://cdn.gramedia.com/uploads/items/207959051.jpg','2022-11-16 10:30:45','2022-11-19 00:07:21','Seseorang yang akan menemani setiap langkahmu dengan satu kebaikan kecil setiap harinya.'),(17,'Fiersa Besari','Arah langkah','Fiction','Mediakita','https://cdn.gramedia.com/uploads/items/arah-langkah-edit.jpg','2022-11-16 10:34:07','2022-11-19 00:07:23','Arah Langkah bukan sekadar catatan perjalanan yang melukiskan keindahan alam, budaya, dan manusia lewat teks dan foto. Tetapi juga memberikan cerita lain tentang kondisi negeri yang tidak selalu sebagus seperti di layar televisi.'),(18,'Fiersa Besari','Konspirasi Alam Semesta','Fiction','Mediakita','https://cdn.gramedia.com/uploads/items/buku-konspirasi-alam-semesta-fiersa-besari__w149_hauto.jpeg','2022-11-16 14:42:24','2022-11-19 00:07:26','Entah apa yang ada di dalam pikiran Juang Astrajingga, ketika di suatu sore, dirinya tidak sengaja bertabrakan dengan seorang gadis di salah satu lorong di antara deretan toko buku di daerah Palasari.'),(19,'Tere Liye','Bulan','Fiction','PENERBIT SABAK GRIP','https://cdn.gramedia.com/uploads/items/img20220905_11324048.jpg','2022-11-16 14:45:24','2022-11-19 00:07:28','Petualangan Raib, Seli, dan Ali berlanjut.Beberapa bulan setelah peristiwa klan bulan, Miss Selena akhirnya muncul di sekolah. Ia membawa kabar menggembirakan untuk anak-anak yang berjiwa petualang seperti Raib, Seli, dan Ali.'),(20,'Tere Liye','Bumi','Fiction','PENERBIT SABAK GRIP','https://cdn.gramedia.com/uploads/items/img20220830_10560995.jpg','2022-11-16 15:21:23','2022-11-19 00:07:31','Bumi, merupakan rangkaian awal dari kisah sekelompok anak remaja berkemampuan istimewa. Menceritakan tentang Raib, Ali, dan Seli yang bertualang ke dunia paralel.'),(22,'Tere Liye','Matahari','Fiction','PENERBIT SABAK GRIP','https://cdn.gramedia.com/uploads/items/img20220905_11433462.jpg','2022-11-16 15:31:40','2022-11-19 00:07:34','Namanya Ali, 15 tahun, kelas X. Jika saja orangtuanya mengizinkan, seharusnya dia sudah duduk di tingkat akhir ilmu fisika program doktor di universitas ternama. Ali tidak menyukai sekolahnya, guru-gurunya, teman-teman sekelasnya.'),(23,'Jonathan Black','Sejarah Dunia Yang Disembunyikan','Non-Fiction','Alvabeta','https://cdn.gramedia.com/uploads/items/lgkld.jpg','2022-11-16 15:35:00','2022-11-19 00:07:36','Banyak orang mengatakan bahwa sejarah ditulis oleh para pemenang. Hal ini sama sekali tak mengejutkan alias wajar belaka. Tetapi, bagaimana jika sejarah—atau apa yang kita ketahui sebagai sejarah—ditulis oleh orang yang salah?'),(24,'Robert T. Kiyosaki','Rich Dad\'s - Increase Your Financial IQ','Non-Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/9786020333519_RICH-DADS---.jpg','2022-11-16 15:38:50','2022-11-19 00:07:39','Pada tahun 1997, buku Rich Dad Poor Dad karya Robert membuat para pembaca tertegun. Buku itu mengklaim, “Rumah Anda bukanlah aset.'),(25,'Angela Duckworth','Grit: Kekuatan Passion dan Kegigihan (Edisi Revisi)','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/9786020620930_Grit_Kekuatan-Passion-dan-Kegigihan-Edisi-Revisi.jpg','2022-11-16 15:41:46','2022-11-19 00:07:41','Hal terpenting untuk sukses dan bahagia bukanlah bakat'),(26,'Almira Bastari','Home Sweet Loan','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/Home_Sweet_Loan_cov.jpg','2022-11-16 17:25:35','2022-11-19 00:07:43','Empat orang yang berteman sejak SMA bekerja di perusahaan yang sama meski beda nasib. Di usia 31 tahun, mereka berburu rumah idaman yang minimal nyerempet Jakarta.'),(27,'Ratih Kumala','The Potion of Twilight','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/9786020611679_The-Potion-of-Twilight.jpg','2022-11-16 17:26:33','2022-11-19 00:07:46','The Potion of Twilight merupakan kumpulan dari 14 cerita pendek yang ditulis dengan berbagai tema yang akan membuat pembaca terhanyut dan ikut masuk ke dalam cerita.'),(28,'David Epstein','Range','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/9786020637761_Range_C_1_4-1.jpg','2022-11-16 17:31:34','2022-11-19 00:07:48','Range adalah buku yang terbit pada 2019 ditulis oleh David Epstein di mana ia memperluas poin-poin dari bukunya sebelumnya The Sports Gene.'),(29,'Peter Thiel','Zero To One','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/9786020321486_Zero-To-One_GiqDeE9.jpg','2022-11-16 17:32:47','2022-11-19 00:07:50','Apa perusahaan bernilai bisnis tinggi yang belum dibangun oleh siapa pun? Penerus Bill Gates tidak akan membuat sistem operasi. Penerus Larry Page dan Sergey Brin tidak akan membuat mesin pencari.'),(30,'Charles Duhigg','The Power Of Habit','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/img20190902_16534294.jpg','2022-11-16 17:35:56','2022-11-19 00:07:52','Mengapa kita melakukan Apa yang kita lakukan dalam hidup dan bisnis.'),(31,'Pramoedya Ananta Toer','Sekali Peristiwa Di Banten Selatan','Fiction','Lentera Dipantara','https://cdn.gramedia.com/uploads/items/Sekali-Peristiwa-Di-Banten-.jpg','2022-11-16 17:37:50','2022-11-19 00:07:55','Novel ini merupakan hasil `reportase` singkat Pramoedya Ananta Toer DI wilayah Banten Selatan Yang subur tapi rentan dengan penjarahan dan pembunuhan. Tanah yang subur tapi masyarakatnya miskin, kerdil, tidak berdaya, lumpuh daya kerjanya.'),(32,'Sylvia Loehken','Quiet Impact: Tak Masalah Jadi Orang Introver','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/9786020634074_TAK_JADI_MASA.jpg','2022-11-16 22:28:50','2022-11-19 00:07:58','Buku ini mengidentifikasi 10 kekuatan spesifik yang dimiliki kaum introver, seperti kemandirian, ketekunan, dan kemampuan menulis, dan 10 hambatan spesifik yang sering kali harus dihadapi seperti stimulasi berlebih.'),(33,'Daniel Kahneman','Thinking, Fast and Slow','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/9786020637181_THINKING_FAST_AND_SLOW_C_1_4-1.jpg','2022-11-16 22:36:43','2022-11-19 00:08:00','Daniel Kahneman adalah salah satu pemikir paling penting abad ini. Gagasannya berdampak mendalam dan luas di berbagai bidang termasuk ekonomi, pengobatan, dan politik.'),(34,'Simon Sinek','Start With Why','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/9786020628837_start-with-wh.jpg','2022-11-16 22:38:10','2022-11-19 00:08:13','Start with Why menggunakan contoh dunia nyata untuk menguraikan konsep Lingkaran Emas yang merangkum pentingnya mengidentifikasi tujuan untuk keberadaan organisasi sebelum hal lainnya, kemudian mengambil tindakan untuk membuat visi menjadi kenyataan.'),(35,'Gol A Gong','Surat Dari Bapak','Fiction','Puspa','https://cdn.gramedia.com/uploads/items/9786022160281_surat_dari_bapak.jpeg','2022-11-16 22:40:38','2022-11-19 00:08:15','SURAT DARI BAPAK.SEPULANG MENGANTAR IBUNYA BERBELANJA,FARHAN DIKEJUTKAN DENGAN KEBERADAAN DUA BUAH MOBIL BARU YANG DIPARKIR DI DEPAN RUMAHNYA.'),(36,'Ichiro Kishimi','Berani Tidak Disukai','Fiction','Puspa','https://cdn.gramedia.com/uploads/items/9786020633213.jpg','2022-11-16 22:45:17','2022-11-19 00:08:17','Membaca buku ini bisa mengubah hidup anda. jutaan orang sudah menarik manfaat darinya. sekarang giliran anda.'),(37,'Sarah Adams','When in Rome','Fiction','Headline Publishing Group','https://static.periplus.com/gUpRN2h.CXh.jkyoHV2TK.TF_j5fL1eArntjDMVZ19.gmlmnuNtgV8cBEJDBStfoA--','2022-11-18 18:20:06','2022-11-19 00:08:30','Experience in Rome.'),(43,' Brian Tracy ','Psychology Of Selling','Non-Fiction',' Penerbit Bhuana Ilmu Populer','https://cdn.gramedia.com/uploads/items/9786230403705_The_Psychology_of_Selling_Depan.jpg','2022-11-20 13:23:15','2022-11-21 01:50:22','The Psychology of Selling merupakan buku yang wajib dimiliki oleh para penjual.'),(44,'Fredrik Backman','Pria Bernama Ove (A Man Called Ove)','Non-Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/UNDER_THE_KITCHEN_TABLE_1.jpg','2022-11-20 13:24:56','2022-11-21 01:51:35','Penggerutu, kaku, punya rutinitas yang tak bisa diganggu gugat, sumbu pendek pula. Itulah Ove. Orang-orang menyebutnya tetangga pemarah dari neraka.'),(45,'Desy Miladiana','MetroPop: Under the Kitchen Table','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/UNDER_THE_KITCHEN_TABLE_1.jpg','2022-11-21 01:17:09','2022-11-21 01:51:45','Celebrity Chef, Sadewa Hartanto, memergoki istrinya berselingkuh di dapur apartemen mereka. Karena terikat kontrak pekerjaan, dia tidak bisa mengajukan perceraian.'),(46,'Bemandry','Tanpa Dirimu Aku Bahagia','Fiction','Gradien Mediatama','https://cdn.gramedia.com/uploads/items/Tanpa_Dirimu_Aku_Bahagia.jpg','2022-11-21 01:26:40','2022-11-21 01:52:22','Yang terlihat tangguh belum tentu tangguh.\nManusia terlihat lemah belum tentu lemah.\nManusia selalu pandai menyembunyikan\ndirinya yang sebenarnya.'),(47,'Min Jin Lee','Pachinko','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/9786020616452_pachinko_cov.jpg','2022-11-21 01:27:42','2022-11-21 01:53:08','Novel karya Min Jin Lee yang telah diadaptasi ke serial drama ini berlatar pada tahun 1910, menceritakan tentang keluarga Korea yang menjadi cikal bakal generasi Zainichi Korean.'),(48,'Elena Ferrante','Kisah Sebuah Nama Baru (The Story of a New Name)','Fiction','Gramedia Pustaka Utama','https://cdn.gramedia.com/uploads/items/the_story_of_a_new_name_cov.jpg','2022-11-21 01:29:50','2022-11-21 01:55:32','Lila menikah dan mulai melibatkan diri ke dalam bisnis keluarga. Sementara itu, Elena melanjutkan sekolahnya dan menjelajahi dunia di luar lingkungannya yang sering kali membuatnya gerah.'),(49,'Fajar Sulaiman','Ikhlas Paling Serius','Fiction','Media Kita','https://cdn.gramedia.com/uploads/items/9789797946265.jpeg','2022-11-21 01:35:22','2022-11-21 01:56:06','khlas Paling Serius merupakan buku karya Fajar Sulaiman. Buku ini menyuguhkan diksi-diksi yang membuat kita sadar bahwa ikhlas menjadi kunci untuk menerima perjalanan cinta yang harus berakhir.'),(50,'Dee Lestari','Rapijali','Fiction','Bentang Pustaka',NULL,'2022-11-21 01:37:14','2022-11-21 01:37:14','Novel karya Dee Lestari yang diterbitkan pada Februari 2020 ini menceritakan tentang gadis remaja yang bernama Ping yang berasal dari Batu Karas Cijulang. Ping memiliki kemampuan untuk bermain musik, yang diturunkan dari kakeknya.'),(51,'Leigh Bardugo','Six of Crows','Fiction','Kepustakaan Populer Gramedia','https://cdn.gramedia.com/uploads/items/9786024810658.jpg','2022-11-21 01:38:06','2022-11-21 01:47:42','Six of Crows menceritakan perjalanan Kaz Brekker, seorang kriminal, dan krunya yang berusaha untuk melakukan pencurian di Ketterdam.'),(52,'Laode Insan','Serdadu Pantai','Fiction','Gramedia Widiasarana Indonesia','https://cdn.gramedia.com/uploads/items/9786230403705_The_Psychology_of_Selling_Depan.jpg','2022-11-21 01:39:05','2022-11-21 01:50:09','Dayan, Surman, Odi, dan Poci adalah 4 sahabat yang tinggal di Kampung Laopo, Pulau Buton. Empat sekawan ini memiliki visi yang sama yaitu melakukan tradisi turun temurun mereka, menjaga kelestarian laut.'),(53,'Tom Liwafa','Personal Branding Bisa Mengubah Takdir','Non-Fiction','Elex Media Komputindo','https://cdn.gramedia.com/uploads/items/9786020522050.jpg','2022-11-21 01:40:09','2022-11-21 01:46:26','\"Jenang jatuh tidak masalah sebab masih bisa dimakan, tapi kalau jeneng yang jatuh itu sudah pasti tidak bisa dimakan lagi.\" Falsafah jawa di atas selalu menjadi inspirasi saya.'),(54,'Oh Su Hyang','Bicara Itu Ada Seninya','Non-Fiction','Bhuana Ilmu Populer','https://cdn.gramedia.com/uploads/items/9786024553920_BDgfNGw.jpg','2022-11-21 01:41:04','2022-11-21 01:44:02','\"Tahukah Anda bahwa berbicara itu ada seninya?” Ketika komunikasi menjadi hal yang penting untuk bersaing, pakar komunikasi, Oh Su Hyang mengeluarkan buku yang sangat berarti.'),(69,'dff','dff','fsds','fff',NULL,'2022-12-16 10:54:57','2022-12-16 10:54:57','dfdf');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `note` varchar(300) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `BookId` int DEFAULT NULL,
  `UserNIM` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `BookId` (`BookId`),
  KEY `UserNIM` (`UserNIM`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_10` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_11` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_12` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_13` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_14` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_15` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_16` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_17` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_18` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_19` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_20` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_21` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_22` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_3` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_4` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_5` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_6` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_7` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_8` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_9` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_details`
--

DROP TABLE IF EXISTS `loan_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `BookId` int DEFAULT NULL,
  `LoanNoInvoice` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `BookId` (`BookId`),
  KEY `LoanNoInvoice` (`LoanNoInvoice`),
  CONSTRAINT `loan_details_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_10` FOREIGN KEY (`LoanNoInvoice`) REFERENCES `loans` (`no_invoice`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_11` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_12` FOREIGN KEY (`LoanNoInvoice`) REFERENCES `loans` (`no_invoice`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_13` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_14` FOREIGN KEY (`LoanNoInvoice`) REFERENCES `loans` (`no_invoice`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_15` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_16` FOREIGN KEY (`LoanNoInvoice`) REFERENCES `loans` (`no_invoice`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_17` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_18` FOREIGN KEY (`LoanNoInvoice`) REFERENCES `loans` (`no_invoice`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_19` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_2` FOREIGN KEY (`LoanNoInvoice`) REFERENCES `loans` (`no_invoice`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_20` FOREIGN KEY (`LoanNoInvoice`) REFERENCES `loans` (`no_invoice`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_21` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_22` FOREIGN KEY (`LoanNoInvoice`) REFERENCES `loans` (`no_invoice`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_3` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_4` FOREIGN KEY (`LoanNoInvoice`) REFERENCES `loans` (`no_invoice`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_5` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_6` FOREIGN KEY (`LoanNoInvoice`) REFERENCES `loans` (`no_invoice`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_7` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_8` FOREIGN KEY (`LoanNoInvoice`) REFERENCES `loans` (`no_invoice`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_details_ibfk_9` FOREIGN KEY (`BookId`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_details`
--

LOCK TABLES `loan_details` WRITE;
/*!40000 ALTER TABLE `loan_details` DISABLE KEYS */;
INSERT INTO `loan_details` VALUES (1,'2022-11-21 03:09:46','2022-11-21 03:09:46',1,'OL-20221'),(2,'2022-11-21 16:58:07','2022-11-21 16:58:07',1,'OL-20222'),(3,'2022-11-21 16:58:07','2022-11-21 16:58:07',17,'OL-20222'),(4,'2022-11-21 16:58:07','2022-11-21 16:58:07',5,'OL-20222'),(5,'2022-11-21 16:58:07','2022-11-21 16:58:07',20,'OL-20222'),(6,'2022-11-21 16:58:07','2022-11-21 16:58:07',29,'OL-20222'),(7,'2022-11-22 09:14:30','2022-11-22 09:14:30',2,'OL-20223'),(8,'2022-11-22 09:14:30','2022-11-22 09:14:30',4,'OL-20223'),(9,'2022-11-23 03:08:35','2022-11-23 03:08:35',23,'OL-20224'),(10,'2022-11-23 03:08:35','2022-11-23 03:08:35',25,'OL-20224'),(11,'2022-12-16 03:14:47','2022-12-16 03:14:47',34,'OL-20225'),(12,'2022-12-16 03:14:47','2022-12-16 03:14:47',5,'OL-20225'),(13,'2022-12-16 10:52:51','2022-12-16 10:52:51',3,'OL-20226');
/*!40000 ALTER TABLE `loan_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans` (
  `no_invoice` varchar(300) NOT NULL,
  `Borrow_date` date NOT NULL,
  `Return_date` date NOT NULL,
  `transaction_status` enum('Pengajuan','Peminjaman','Selesai','Batal') NOT NULL DEFAULT 'Pengajuan',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserNIM` int DEFAULT NULL,
  PRIMARY KEY (`no_invoice`),
  UNIQUE KEY `no_invoice` (`no_invoice`),
  KEY `UserNIM` (`UserNIM`),
  CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loans_ibfk_10` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loans_ibfk_11` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loans_ibfk_2` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loans_ibfk_3` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loans_ibfk_4` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loans_ibfk_5` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loans_ibfk_6` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loans_ibfk_7` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loans_ibfk_8` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loans_ibfk_9` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES ('OL-20221','2022-11-21','2022-11-25','Batal','2022-11-21 03:09:46','2022-11-21 16:57:50',123456),('OL-20222','2022-11-21','2022-11-24','Batal','2022-11-21 16:58:07','2022-11-22 09:13:53',123456),('OL-20223','2022-11-22','2022-11-29','Selesai','2022-11-22 09:14:30','2022-11-23 03:08:02',123456),('OL-20224','2022-11-23','2022-11-25','Selesai','2022-11-23 03:08:35','2022-11-23 03:08:44',123456),('OL-20225','2022-12-16','2022-12-18','Selesai','2022-12-16 03:14:47','2022-12-16 03:14:55',123456),('OL-20226','2022-12-16','2022-12-19','Selesai','2022-12-16 10:52:51','2022-12-16 10:55:51',123456);
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birthday_date` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `profilePic` varchar(255) DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserNIM` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserNIM` (`UserNIM`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_10` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_11` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_12` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_13` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_14` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_15` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_16` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_17` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_18` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_19` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_2` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_20` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_21` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_22` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_23` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_24` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_25` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_26` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_27` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_28` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_29` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_3` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_30` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_31` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_32` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_33` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_34` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_35` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_36` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_37` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_38` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_39` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_4` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_40` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_41` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_5` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_6` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_7` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_8` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_9` FOREIGN KEY (`UserNIM`) REFERENCES `users` (`NIM`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,NULL,NULL,NULL,'','2022-11-20 10:54:15','2022-11-20 10:54:15',123456);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `NIM` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isVerified` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `code_otp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NIM`),
  UNIQUE KEY `NIM` (`NIM`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (123456,'riza16','fachriza.theblues@gmail.com','$2b$10$TZATEmODqC6TyU0.VI1Ut.u3GeqWSPTEyFg/PT1wSObQiUzZMS3Ay',1,'2022-11-20 10:54:15','2022-11-21 03:09:24','$2b$10$rxa2VgCBrOtywpIKqoe/GumV9GuNPbY2zo1sbSpYPMLGc9LNU9N5q');
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

-- Dump completed on 2022-12-27 12:03:19
