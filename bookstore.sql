-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 08:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'bookstore');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('280-1123', 'The Emperor\'s Candlesticks', 'Baroness Orczy', '220px-Emperorscandlesticks1899.jpg', 'The Emperor\'s Candlesticks is an 1899 historical novel by Baroness Orczy. Written soon after the birth of her son John, it is her first book as an author rather than translator and was a commercial failure. As in the Scarlet Pimpernel, the theme is international intrigue, but this time the setting is pre-World War I Europe and Russia rather than Revolutionary France.', '199.00', 4),
('280-1213', 'Demon Slayer: Kimetsu no Yaiba, Vol 1', 'Koyoharu Gotouge', 'manga.jpg', 'Tanjiro sets out on the path of the Demon Slayer to save his sister and avenge his family!\r\n\r\nIn Taisho-era Japan, kindhearted Tanjiro Kamado makes a living selling charcoal. But his peaceful life is shattered when a demon slaughters his entire family. His little sister Nezuko is the only survivor, but she has been transformed into a demon herself! Tanjiro sets out on a dangerous journey to find a way to return his sister to normal and destroy the demon who ruined his life.\r\n\r\nLearning to destroy demons won’t be easy, and Tanjiro barely knows where to start. The surprise appearance of another boy named Giyu, who seems to know what’s going on, might provide some answers—but only if Tanjiro can stop Giyu from killing his sister first!', '300.00', 1),
('280-1223', 'For One More Day', 'Mitch Albom', 'Albom_-_For_One_More_Day_book_cover.jpg', 'The book tells the story of Charles \"Chick\" Benetto, a former baseball player who encounters a myriad of problems with his career, finances, family and alcohol abuse. This leads him to become suicidal. Charles goes on a drunken rampage and decides he is going to end his life in his old home town, but when he misses the exit, he turns around driving down the wrong side of the highway causing an accident, Benetto flees to his old home – his suicide attempt an apparent failure – to see his mother, who had died ten years prior.\r\n\r\nBenetto returns to his old family home, and spends one more day with his mother, where in a number of previously unknown factors related to his difficult childhood and troubled relationship with his father are revealed to him. His mother assists him in resolving his issues and getting his life back on track. The day ends when Benetto regains consciousness at the scene of the accident in a police officer\'s arms.\r\n\r\nThe book\'s epilogue describes how Benetto was inspired by his experience to quit drinking and reconcile with family, including his daughter, Maria, before his death five years later. At the end, Maria is revealed to have been the narrator of the story.', '199.00', 3),
('280-1245', 'Invisible Man', 'H. G. Wells', 'novel.jpg', 'The Invisible Man, science-fiction novel by H.G. Wells, published in 1897. The story concerns the life and death of a scientist named Griffin who has gone mad. Having learned how to make himself invisible, Griffin begins to use his invisibility for nefarious purposes, including murder. When he is finally killed, his body becomes visible again.', '149.00', 4),
('280-1267', 'One Piece', 'Eiichiro Oda', 'one piece.jpg', 'One Piece is a Japanese manga series written and illustrated by Eiichiro Oda. It has been serialized in Shueisha\'s sh?nen manga magazine Weekly Sh?nen Jump since July 1997, with its individual chapters compiled into 104 tank?bon volumes as of November 2022. The story follows the adventures of Monkey D. Luffy, a boy whose body gained the properties of rubber after unintentionally eating a Devil Fruit. With his pirate crew, the Straw Hat Pirates, Luffy explores the Grand Line in search of the deceased King of the Pirates Gol D. Roger\'s ultimate treasure known as the \"One Piece\" in order to become the next King of the Pirates.', '300.00', 1),
('280-1423', 'Miss Betty', 'Bram Stoker', '71DMdxTZy6L.jpg', 'Excerpt from Miss. Betty Abigail, she coming right into the back sitting room after supper, when the dusk was begin ning to fall through the trees in the garden of the King\'s House in Chelsea. Abigail\'s manner was at all times a pronounced one, for all her kindness of heart but she was not feared so much by the children, who knew the softness as well as the weight of her hand, as by the two men whom she controlled in the despotic manner which purely domestic women assume to lonely \\men - men who have not wives to protect them. Abigail had in the motherless household the honour and privi leges of one whom the mother had trusted, and who by faithful service had earned the trust. As a rule she was a just woman, but on this occasion the violence Of her demeanour almost implied to those who knew her that she was herself not quite blameless in the matter. They all knew that she would not wilfully and deliberately lie, but they felt that the occasion was a grave one, and one in which no one would willingly be under the imputation of guilt if it could be avoided. Some of them, face to face with the charge, would have held it justifiable to have de?ected the current of public thought if they could not on such an occasion have stemmed it. The young people.', '150.00', 4),
('280-1523', 'Harry Potter and the Philosopher\'s Stone', 'J. K. Rowling', 'download (3).jpeg', 'Harry Potter and the Philosopher\'s Stone is a 1997 fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', '499.00', 6),
('280-1543', 'Outliers', 'Malcolm Gladwell', 'Outliers_(book_cover).png', 'Outliers: The Story of Success is the non-fiction book written by Malcolm Gladwell and published by Little, Brown and Company on November 18, 2008. In Outliers, Gladwell examines the factors that contribute to high levels of success. To support his thesis, he examines why the majority of Canadian ice hockey players are born in the first few months of the calendar year, how Microsoft co-founder Bill Gates achieved his extreme wealth, how the Beatles became one of the most successful musical acts in human history, how two people with exceptional intelligence—Christopher Langan and J. Robert Oppenheimer—end up with such vastly different fortunes, how Joseph Flom built Skadden, Arps, Slate, Meagher & Flom into one of the most successful law firms in the world, and how cultural differences play a large part in perceived intelligence and rational decision making. Throughout the publication, Gladwell repeatedly mentions the \"10,000-Hour Rule\", claiming that the key to achieving world-class expertise in any skill, is, to a large extent, a matter of practicing the correct way, for a total of around 10,000 hours, though the authors of the original study have disputed Gladwell\'s usage.', '150.00', 3),
('280-2341', 'An American Story', 'Kwame Alexander', 'download.jpeg', '#1 New York Times Bestselling and award-winning author of The Undefeated, Kwame Alexander, pens a powerful picture book that tells the story of American slavery through the voice of a teacher struggling to help her students understand its harrowing history.\r\nFrom the fireside tales in an African village, through the unspeakable passage across the Atlantic, to the backbreaking work in the fields of the South, this is a story of a people’s struggle and strength, horror and hope. This is the story of American slavery, a story that needs to be told and understood by all of us. A testament to the resilience of the African American community, this book honors what has been and envisions what is to be.\r\nWith stunning mixed-media illustrations by newcomer Dare Coulter, this is a potent book for those who want to speak the truth. Perfect for family sharing, the classroom, and homeschooling.', '1999.00', 3),
('280-3424', 'The Alchemist', 'Paulo Coelho', 'download (1).jpeg', 'The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho which was first published in 1988. Originally written in Portuguese, it became a widely translated international bestseller. An allegorical novel, The Alchemist follows a young Andalusian shepherd in his journey to the pyramids of Egypt, after having a recurring dream of finding a treasure there.', '300.00', 2),
('280-5232', 'ChainsawMan', 'Tatsuki Fujimoto', '220px-Chainsawman.jpg', 'Chainsaw Man is a Japanese manga series written and illustrated by Tatsuki Fujimoto. Its first arc was serialized in Shueisha\'s sh?nen manga magazine Weekly Sh?nen Jump from December 2018 to December 2020; its second arc began serialization in Shueisha\'s Sh?nen Jump+ online magazine in July 2022. Its chapters have been collected in 13 tank?bon volumes as of January 2023.\r\nChainsaw Man follows the story of Denji, an impoverished young man who makes a contract that fuses his body with that of a dog-like devil named Pochita, granting him the ability to transform parts of his body into chainsaws. Denji eventually joins the Public Safety Devil Hunters, a government agency focused on fighting against devils whenever they become a threat to Japan. The second arc of the story focuses on Asa Mitaka, a high school student who enters into a contract with Yoru the War Devil, who forces her to hunt down Chainsaw Man in order to reclaim the devils stolen from her.', '499.00', 1),
('280-6233', 'Pride and Prejudice', 'Jane Austen', 'download (2).jpeg', 'Pride and Prejudice is an 1813 novel of manners by Jane Austen. The novel follows the character development of Elizabeth Bennet, the dynamic protagonist of the book who learns about the repercussions of hasty judgments and comes to appreciate the difference between superficial goodness and actual goodness.\r\n\r\nMr. Bennet, owner of the Longbourn estate in Hertfordshire, has five daughters, but his property is entailed and can only be passed to a male heir. His wife also lacks an inheritance, so his family faces becoming poor upon his death. Thus, it is imperative that at least one of the daughters marries well to support the others, which is a motivation that drives the plot.\r\nPride and Prejudice has consistently appeared near the top of lists of \"most-loved books\" among literary scholars and the reading public. It has become one of the most popular novels in English literature, with over 20 million copies sold, and has inspired many derivatives in modern literature. For more than a century, dramatic adaptations, reprints, unofficial sequels, films, and TV versions of Pride and Prejudice have portrayed the memorable characters and themes of the novel, reaching mass audiences.', '599.00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'janobe sourcecode', 'kab', 'kabankalan', '61211', 'Philippines'),
(5, 'test', 'addd', 'test', '1234', 'india'),
(6, 'sayoni', 'siliguri', 'Siliguri', '734009', 'India'),
(7, 'aa', 'sda', 'asda', '12312', 'India'),
(8, 'Aman', 'gds', 'Siliguri', '734009', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, '60.00', '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, '60.00', '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, '20.00', '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, '20.00', '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a'),
(5, 4, '80.00', '2020-10-23 00:28:15', 'janobe sourcecode', 'kab', 'kabankalan', '61211', 'Philippines'),
(6, 4, '20.00', '2020-10-24 11:01:03', 'janobe sourcecode', 'kab', 'kabankalan', '61211', 'Philippines'),
(7, 5, '199.00', '2023-02-09 00:23:27', 'test', 'addd', 'test', '1234', 'india'),
(8, 5, '199.00', '2023-02-09 00:28:09', 'test', 'addd', 'test', '1234', 'india'),
(9, 6, '300.00', '2023-02-09 01:52:29', 'sayoni', 'siliguri', 'Siliguri', '734009', 'India'),
(10, 7, '199.00', '2023-02-09 02:03:11', 'aa', 'sda', 'asda', '12312', 'India'),
(11, 8, '599.00', '2023-02-09 02:40:12', 'Aman', 'gds', 'Siliguri', '734009', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-484217-26-9', '20.00', 4),
(5, '978-1-118-94924-5', '20.00', 1),
(7, '280-1223', '199.00', 1),
(7, '280-1223', '199.00', 1),
(9, '280-1213', '300.00', 1),
(10, '280-1123', '199.00', 1),
(11, '280-6233', '599.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Shueisha'),
(2, 'HarperTorch '),
(3, 'Little Brown'),
(4, 'C. Arthur Pearson '),
(5, 'T. Egerton'),
(6, 'Bloomsbury');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
