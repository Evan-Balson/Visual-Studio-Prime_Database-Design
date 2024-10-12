-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 03:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

CREATE DATABASE visual_studio_prime;
USE visual_studio_prime;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visual_studio_prime`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Genre_Number` int(5) NOT NULL,
  `Genre_Name` varchar(15) DEFAULT NULL,
  `Description` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Genre_Number`, `Genre_Name`, `Description`) VALUES
(1, 'Action', 'Fast-paced action, thrilling sequence of physical conflict.'),
(2, 'Adventure', 'Featuring exciting and dangerous journeys, set in exotic locations.'),
(3, 'Comedy', 'Make audience laugh, feature humor, satire, and light-hearted storytel'),
(4, 'Crime', 'Criminal activities and investigations, featuring of suspense and intr'),
(5, 'Musical', 'Featuring characters who express themselves thtough song and dance.'),
(6, 'Drama', 'Focused on realistic characters and emotional storylines.'),
(7, 'Horror', 'Intended to scare or unsettle the audience, featuring gore, supernatur'),
(8, 'Science Fiction', 'Explore speculative or futuristic concepts, often involving advance te'),
(9, 'Documentary', 'Non-fiction movies intend to inform, educate, or real-life events.'),
(10, 'Animation', 'Animation techniques, including hand-drwn animation, computer-generate'),
(11, 'Romance', 'Romantic relationships, love, and emotional connections between charac');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(15) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Telephone` varchar(40) DEFAULT NULL,
  `Email` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Name`, `Telephone`, `Email`) VALUES
(12345670, 'Jennifer Thomas', '+442022334455', 'jennifer@gmail.com'),
(12345678, 'John Doe', '+442012345678', 'john@gmail.com'),
(23456701, 'William Jackson', '+442044556677', 'william@hotmail.com'),
(23456789, 'Jane Smith', '+442087654321', 'jane@hotmail.com'),
(34567012, 'Amanda White', '+442066778899', 'amanda@outlook.com'),
(34567890, 'Michael Johnson', '+442011223344', 'michael@outlook.com'),
(45670123, 'Daniel Harris', '+442088990011', 'daniel@gmail.com'),
(45678901, 'Emily Davis', '+442055443322', 'emily@gmail.com'),
(56701234, 'Megan Thompson', '+442022334455', 'megan@hotmail.com'),
(56789012, 'David Brown', '+442099887766', 'david@hotmail.com'),
(67012345, 'Christopher Lee', '+442099001122', 'christopher@outlook.com'),
(67890123, 'Sarah Wilson', '+442066778899', 'sarah@outlook.com'),
(78901234, 'James Taylor', '+442033445566', 'james@gmail.com'),
(89012345, 'Jessica Martinez', '+442077889900', 'jessica@hotmail.com'),
(90123456, 'Robert Anderson', '+442011001100', 'robert@outlook.com');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_Number` int(10) NOT NULL,
  `Department_Name` varchar(40) DEFAULT NULL,
  `Location` varchar(70) DEFAULT NULL,
  `Contact_Number` varchar(40) DEFAULT NULL,
  `Employee_Number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_Number`, `Department_Name`, `Location`, `Contact_Number`, `Employee_Number`) VALUES
(1001, 'Box Office', 'Main Lobby', '+441234567890', 'AM9876789'),
(1002, 'Concessions', 'Concession Stand Area', '+441234567891', 'AJ1234567'),
(1003, 'Projection', 'Projection Booth', '+441234567892', 'DS9876543'),
(1004, 'Guest Services', 'Customer Service Desk', '+441234567893', 'LR2345654'),
(1005, 'Marketing', 'Marketing Office', '+441234567894', 'EW5678987'),
(1006, 'Facilities Management', 'Facilities Office', '+441234567895', 'OT8765432'),
(1007, 'Safety and Security', 'Security Office', '+441234567896', 'EB2345678'),
(1008, 'Technical Services', 'Technical Office', '+441234567897', 'AA9898767'),
(1009, 'Programming', 'Programming Office', '+441234567898', 'ZB2347657'),
(1010, 'Training and Development', 'Training Room', '+441234567899', 'JS9876734'),
(1011, 'VIP Services', 'VIP Lounge', '+441234567810', 'SL5637480'),
(1012, 'Special Events', 'Events Office', '+441234567811', 'MT9876543'),
(1013, 'Finance and Accounting', 'Accounting Office', '+441234567812', 'EG9803456'),
(1014, 'Legal and Compliance', 'Legal Office', '+441234567813', 'MS7879098'),
(1015, 'Customer Experience', 'Experience Desk', '+441234567814', 'GA3234567');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` varchar(10) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Position` varchar(20) DEFAULT NULL,
  `Telephone` varchar(40) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(70) DEFAULT NULL,
  `Salary` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `Name`, `Position`, `Telephone`, `Email`, `Address`, `Salary`) VALUES
('AA9898767', 'Aiden Adams', 'Technical Manager', '+447898030045', 'aiden.adams@odeon.com', '321 Unicorn Street, London, UK', 66000.00),
('AJ1234567', 'Alice Johnson', 'Manger', '+441234567890', 'alice.johnson@odeon.com', '123 Cinema Street, London, UK', 55000.00),
('AM6789012', 'Ava Martin', 'Cleaning Crew Superv', '+443459872345', 'ava.martin@odeon.com', '334 Sweeper Street, Leeds, UK', 26000.00),
('AM9876789', 'Avery Miller', 'Manager', '+447893454876', 'avery.miller@odeon.com', '198 Archive Street, Cambridge, UK', 46000.00),
('AS2034567', 'Aria Stark', 'Event Planner', '+443334543406', 'aria.stark@odeon.com', '548 Movie High Road, Cardiff, UK', 31000.00),
('CM9876545', 'Chloe Martinez', 'Ticket Checker', '+449870984504', 'chloe.martinez@odeon.com', '108 Admission Avenue, Brighton, UK', 23000.00),
('DS9876543', 'David Smith', 'Assistant Manager', '+449876543210', 'david.smith@odeon.com', '465 Film Avenue, Manchester, UK', 40000.00),
('DW7890123', 'Daniel White', 'Concession Stand Sup', '+447890123456', 'daniel.white@odeon.com', '213 Snack Street, London, UK', 28000.00),
('EB2345678', 'Emily Brown', 'Security Manager', '+442345678876', 'emily.brown@odeon.com', '234 Ticket Lane, Birmingham, UK', 55000.00),
('EG9803456', 'Ethan Garcia', 'Accounting Manager', '+449876543210', 'ethan.garcia@odeon.com', '34 London High Street, UK', 50000.00),
('EH9803456', 'Ethan Hall', 'Film Programmer', '+442052356769', 'ethan.hall@odeon.com', '70 Screen Lane, London, UK', 42000.00),
('EW5678987', 'Ella Wright', 'Marketing Manager', '+443234567876', 'ella.wright@odeon.com', '287 Promo Street, Liverpool, UK', 37000.00),
('GA3234567', 'Grace Adams', 'Customer Service Man', '+443456549834', 'grace.adams@odeon.com', '342 Ticket Counter Road, Cambridge, UK', 24000.00),
('GH2345654', 'Gabriel Harris', 'Projection Room Supe', '+443349870987', 'gabriel.harris@odeon.com', '38 Film Reel Avenue, Oxford, UK', 28000.00),
('HA9098765', 'Henry Adams', 'Film Inventory Manag', '+442345678987', 'henry.adams@odeon.com', '23 Archive Lane, Sheffield, UK', 34000.00),
('IT2345789', 'Isabella Turner', 'Marketing Coordinato', '+444323456765', 'isabella.turner@odeon.com', '453 Promo Street, Bristol, UK', 38000.00),
('JL3456789', 'James Lee', 'Projectionist', '+443456778023', 'james.lee@odeon.com', '101 Film Reel Road, Glasgow, UK', 30000.00),
('JS9876734', 'John Smith', 'Training Manager', '+448775589345', 'john.smith@odeon.com', '23 High Road, London, UK', 50000.00),
('JT1023456', 'Jackson Turner', 'Film Technician', '+449870456873', 'jackson.turner@odeon.com', '53 London Road, Brighton, UK', 29000.00),
('LR2345654', 'Luna Rodriguez', 'Guest Services Manag', '+443458765434', 'luna.rodriguez@odeon.com', '54 Cinema Plaza, Birmingham, UK', 54000.00),
('LR3456789', 'Liam Rodriguez', 'Film Librarian', '+443453456786', 'liam.rodriguez@odeon.com', '345 Archive Road, Newcastle, UK', 35000.00),
('MP9802340', 'Max Parker', 'Projection Room Tech', '+445678901234', 'max.parker@odeon.com', '12 Century Avenue, London, UK', 27500.00),
('MS7879098', 'Maxwell Smith', 'Manager', '+441234567890', 'maxwell.smith@odeon.com', '200 Popcorn Avenue, UK', 45000.00),
('MT9876543', 'Mia Turner', 'Event Manager', '+442345987656', 'mia.turner@odeon.com', '10 Roehampton Lane, London, UK', 47000.00),
('NS4321098', 'Noah Scott', 'Project Booth Operat', '+445434567987', 'noah.scott@odeon.com', '98 Film Lane, Southampton, UK', 27000.00),
('OT8765432', 'Owen Turner', 'Facility Manager', '+443456787654', 'owen.turner@odeon.com', '564 Film Vault Lane, Glasgow, UK', 43000.00),
('OT9012345', 'Olivia Turner', 'Ticket Sales Represe', '+449012345678', 'olivia.turner@odeon.com', '109 Cinema Lane, Cardiff, UK', 22000.00),
('SC5678901', 'Sophia Clark', 'Usher', '+445679801234', 'sophia.clark@odeon.com', '222 Popcorn Lane, Liverpool, UK', 20000.00),
('SL5637480', 'Sarah Loyds', 'VIP Service Manager', '+448765432134', 'sarah.loyds@odeon.com', '109 Film Rosd, Kingston, UK', 49000.00),
('SL8765434', 'Samuel Lee', 'Film Festival Coordi', '+445654323456', 'samuel.lee@odeon.com', '45 Premiere Road, Manchester, UK', 37000.00),
('WH3456789', 'William Harris', 'Film Projection Tech', '+443454356787', 'william.harris@odeon.com', '345 Reel Avenue, Belfast, UK', 32000.00),
('ZB2347657', 'Zoe Blake', 'Program Manager', '+447798709870', 'zoe.blake@odeon.com', '1 Screening High Street, Edinburgh, UK', 40000.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee_transaction`
--

CREATE TABLE `employee_transaction` (
  `Employee_ID` varchar(10) NOT NULL,
  `Transaction_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_transaction`
--

INSERT INTO `employee_transaction` (`Employee_ID`, `Transaction_ID`) VALUES
('AJ1234567', 12),
('AS2034567', 16),
('DS9876543', 14),
('EB2345678', 13),
('GA3234567', 17),
('GH2345654', 18),
('JS9876734', 21),
('JT1023456', 19),
('LR2345654', 15),
('LR3456789', 20),
('MS7879098', 22);

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `Film_ID` varchar(20) NOT NULL,
  `Film_Name` varchar(70) DEFAULT NULL,
  `Director` varchar(40) DEFAULT NULL,
  `Actor` varchar(70) DEFAULT NULL,
  `Reatriction` varchar(15) DEFAULT NULL,
  `Year_Released` int(4) DEFAULT NULL,
  `Running_time` varchar(30) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`Film_ID`, `Film_Name`, `Director`, `Actor`, `Reatriction`, `Year_Released`, `Running_time`, `Description`) VALUES
('AB011', 'Abigail', 'Matt Bettinlli-Olpin', 'Kathryn Newton, Giancarlo Esposito', 'R', 2024, '109 Minutes', 'After a group of would-be criminals kidnap the 12-year-old ballerina daughter of a powerful underwor'),
('BB012', 'Back to Black', 'Sam Taylor-Johanson', 'Maria Abela, Eddie Marsan', '15', 2024, '122 Minutes', 'A celebration of the most iconic – and much missed – homegrown star of the 21st century, BACK TO BLA'),
('BW003', 'Black Widow', 'Cate Shortland', 'Scarlett Johansson, Florence Pugh', 'PG-13', 2021, '134 Minutes', 'Natasha Romanoff, also known as Black Widow, confronts the darker parts of the darker parts of her l'),
('CW013', 'Civil War', 'Alex Garland', 'Kirsten Dunst, Cailee Spaeny', '15', 2024, '109 Minutes', 'In the near future, a team of journalists travel across the United States during a rapidly escalatin'),
('DN005', 'The Dark Night', 'Christopher Nolan', 'Christian Bale, Heath Ledger', 'PG-13', 2008, '152 Minutes', 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on th'),
('DU002', 'Dune', 'Denis Villeneuve', 'Timothee Chalamet, Rebecca Ferguson', 'PG-13', 2021, '155 Minutes', 'Paul Atreides a brilliant and gifted young man born into a great destiny beyond his understanding, m'),
('DU016', 'Dune: Part Two', 'Denis Villeneuve', 'Timothee Chalamet, Zendaya', '12A', 2024, '167 Minutes', 'Paul Atreides unites with Chani and the Fremen while on a warpath of revenge against the conspirator'),
('FC009', 'Fight Club', 'David Fincher', 'Brad Pitt, Edward Norton', 'R', 1999, '139 Minutes', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolve'),
('FG006', 'Forrest Gump', 'Rober Zemeckis', 'Tom Hanks, Robin Wright', 'PG-13', 1994, '142 Minutes', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical event'),
('FO019', 'The First Omen', 'Arkasha Stevenson', 'Tawfeek Barhom, Sonia Braga', '15', 2024, '119 Minutes', 'When a young American woman is sent to Rome to begin a life of service to the church, she encounters'),
('GF017', 'Ghostbusters: Frozen Empire', 'Gil Kenan', 'Paul Rudd, McKenna Grace', '12A', 2024, '115 Minutes', 'In Ghostbusters: Frozen Empire, the Spengler family returns to where it all started – the iconic New'),
('GK015', 'Godzilla X Kong: The New Empire', 'Adam Wingard', 'Rebecca Hall, Brian Tyree Henry', '12A', 2024, '115 Minutes', 'The epic battle continues! Legendary Pictures’ cinematic Monsterverse follows up the explosive showd'),
('GL010', 'Gladiator', 'Ridley Scott', 'Russell Crowe, Joaquin Phoenix', 'R', 2000, '155 Minutes', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his fami'),
('KF014', 'Kung Fu Panda 4', 'Mike Mitchell', 'Jack Black, Viola Davis', 'PG', 2024, '94 Minutes', 'This spring, for the first time in almost a decade, comedy icon Jack Black returns to his role as Po'),
('MI020', 'Mothers\' Instinct', 'Benoit Delhomme', 'Jessica Chastain, Anne Hathaway', '15', 2024, '94 Minutes', 'Starring Academy Award winners Jessica Chastain and Anne Hathaway, Mothers’ Instinct is an unnerving'),
('SL008', 'The Silence of the Lambs', 'Jonathan Demme', 'Jodie Foster, Anthony Hopkins', 'R', 1991, '118 Minutes', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to he'),
('TD001', 'No Time to Die', 'Cary Joji Fukunaga', 'Daniel Craig, Ana de Armas', 'PG-13', 2021, '163 Minutes', 'James Bond has left active service. His peace is short lived when Felix Leiter, an old friend from t'),
('TG004', 'The Godfather', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino', 'R', 1972, '175 Minutes', 'The aging patriarch of an orgnized crime dynasty transfers control of his clandestine empire to his '),
('TM007', 'The Matrix', 'Lana Wachowski', 'Keanu Reeves, Laurence Fishburne', 'R', 1999, '136 Minutes', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in'),
('WL018', 'Wicked Little Letters', 'Thea Sharrock', 'Olivia Colman, Jessie Buckley', '15', 2024, '100 Minutes', 'A 1920s English seaside town bears witness to a dark and absurd scandal in this riotous mystery come');

-- --------------------------------------------------------

--
-- Table structure for table `film_category`
--

CREATE TABLE `film_category` (
  `Film_ID` varchar(20) NOT NULL,
  `Genre_Number` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `film_category`
--

INSERT INTO `film_category` (`Film_ID`, `Genre_Number`) VALUES
('AB011', 2),
('BB012', 6),
('BW003', 1),
('CW013', 6),
('DN005', 4),
('DU002', 8),
('DU016', 8),
('FC009', 6),
('FG006', 11),
('FO019', 7),
('GF017', 3),
('GK015', 8),
('GL010', 6),
('KF014', 2),
('MI020', 6),
('SL008', 4),
('TD001', 2),
('TG004', 4),
('TM007', 8),
('WL018', 6);

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `Secret_Key` varchar(20) NOT NULL,
  `API` varchar(20) DEFAULT NULL,
  `Authorization_Date` date DEFAULT NULL,
  `Expiry_Date` date DEFAULT NULL,
  `Supplier_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `license`
--

INSERT INTO `license` (`Secret_Key`, `API`, `Authorization_Date`, `Expiry_Date`, `Supplier_ID`) VALUES
('1234cderWA0', 'H-32-Licese', '2024-02-28', '2024-08-27', 910000),
('12cfdPOA34w', 'C-13-Licese', '2023-11-28', '2024-05-27', 990000),
('23dFgF45Apo', 'X-16-Licese', '2023-11-11', '2024-05-11', 960000),
('34dGWu568ee', 'F-17-Licese', '2024-03-05', '2024-09-03', 980000),
('AbCd432F67a', 'D-15-Licese', '2023-12-20', '2024-06-18', 990000),
('AbCf342Ln67', 'C-12-Licese', '2024-01-03', '2024-06-02', 100000),
('Cvui09dW3se', 'R-12-Licese', '2023-12-10', '2024-05-09', 100000),
('DAwn345jO0q', 'C-90-Licese', '2024-03-21', '2024-08-20', 990000),
('DF234FGTwer', 'L-62-Licese', '2024-01-05', '2024-06-03', 970000),
('dFG234edsFf', 'S-10-Licese', '2024-03-12', '2024-09-11', 970000),
('DFRe34dfde3', 'P-39-Licese', '2024-01-20', '2024-07-19', 920000),
('DRF34rfdf23', 'C-80-Licese', '2024-03-23', '2024-09-20', 920000),
('ert234rdfER', 'K-19-Licese', '2024-02-12', '2024-08-14', 930000),
('FDE45asgh56', 'A-37-Licese', '2024-01-10', '2024-06-09', 950000),
('Ho452WTfP83', 'A-12-Licese', '2024-04-09', '2024-10-08', 930000),
('sD45DRFTdrf', 'E-12-Licese', '2024-03-17', '2024-09-16', 940000),
('SDF34dfGTRf', 'C-40-Licese', '2024-04-01', '2024-09-29', 960000),
('SDF563dwoP8', 'W-12-Licese', '2023-12-28', '2024-05-28', 940000),
('wEr2345sdfS', 'G-32-Licese', '2024-02-24', '2024-05-23', 980000),
('WYQ998BVCj4', 'B-72-Licese', '2024-04-12', '2024-07-10', 950000);

-- --------------------------------------------------------

--
-- Table structure for table `license_cinema_department`
--

CREATE TABLE `license_cinema_department` (
  `Secret_Key` varchar(20) NOT NULL,
  `Branch_Number` int(10) NOT NULL,
  `Department_Number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `license_cinema_department`
--

INSERT INTO `license_cinema_department` (`Secret_Key`, `Branch_Number`, `Department_Number`) VALUES
('1234cderWA0', 1, 1001),
('12cfdPOA34w', 2, 1002),
('23dFgF45Apo', 3, 1003),
('34dGWu568ee', 4, 1004),
('AbCd432F67a', 5, 1005),
('AbCf342Ln67', 6, 1007),
('Cvui09dW3se', 7, 1008),
('DAwn345jO0q', 8, 1009),
('DF234FGTwer', 9, 1010),
('dFG234edsFf', 10, 1011),
('DFRe34dfde3', 11, 1012),
('DRF34rfdf23', 12, 1013),
('ert234rdfER', 13, 1014),
('FDE45asgh56', 14, 1015),
('Ho452WTfP83', 15, 1006),
('sD45DRFTdrf', 1, 1001),
('SDF34dfGTRf', 2, 1002),
('SDF563dwoP8', 3, 1003),
('wEr2345sdfS', 4, 1004),
('WYQ998BVCj4', 5, 1005);

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `Membership_ID` int(15) NOT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Renewal_Status` varchar(50) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Benefits` varchar(70) DEFAULT NULL,
  `Customer_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`Membership_ID`, `Type`, `Renewal_Status`, `Start_Date`, `End_Date`, `Benefits`, `Customer_ID`) VALUES
(1, 'Gold', 'Active', '2024-04-20', '2025-04-20', 'VIP access, discounts on tickets and concessions', 12345670),
(2, 'Silver', 'Active', '2024-04-20', '2024-10-20', 'Discounts on tickets', 23456701),
(3, 'Bronze', 'Inactive', '2024-01-01', '2024-12-31', 'Regular updates on upcoming movies', 34567890),
(4, 'Gold', 'Active', '2024-03-15', '2025-03-15', 'VIP access, discounts on tickets and concessions', 56701234),
(5, 'Silver', 'Active', '2024-02-10', '2024-08-10', 'Discounts on tickets', 67890123),
(6, 'Bronze', 'Inactive', '2024-01-01', '2024-12-31', 'Regular updates on upcoming movies', 78901234),
(7, 'Gold', 'Active', '2024-04-01', '2025-04-01', 'VIP access, discounts on tickets and concessions', 89012345),
(8, 'Silver', 'Active', '2024-05-20', '2024-11-20', 'Discounts on tickets', 90123456);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `Offer_ID` int(15) NOT NULL,
  `Validity_Period` varchar(50) DEFAULT NULL,
  `Offer_Type` varchar(100) DEFAULT NULL,
  `Terms_Conditions` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`Offer_ID`, `Validity_Period`, `Offer_Type`, `Terms_Conditions`) VALUES
(1, '30 days', 'Buy One Get One Free', 'Valid for standard movie tickets only. Not applicable for special screenings or events.'),
(2, '15 days', '50% off on Concessions', 'Applicable for popcorn, drinks, and snacks. Not valid on combo offers.'),
(3, '60 days', 'Family Package Discount', '10% off on tickets for a family of four or more. Valid only for regular screenings.'),
(4, '30 days', 'Student Discount', '20% off on tickets upon showing a valid student ID. Valid only on weekdays.'),
(5, '45 days', 'Senior Citizen Discount', '30% off on tickets for senior citizens aged 60 and above. Valid for all screenings.'),
(6, '30 days', 'Combo Deal', 'Free medium popcorn with the purchase of any large drink. Valid only on weekends.'),
(7, '20 days', 'Early Bird Offer', 'Book tickets one week in advance and get 15% off. Valid for online bookings only.'),
(8, '30 days', 'Group Discount', '25% off on tickets for groups of 10 or more. Valid only for evening shows.'),
(9, '30 days', 'Birthday Special', 'Free ticket on your birthday. Valid for any movie.'),
(10, '30 days', 'Weekend Special', 'Buy two tickets and get one free. Valid only on Saturdays and Sundays.');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `Payment_ID` int(10) NOT NULL,
  `Payment_Type` varchar(20) DEFAULT NULL,
  `Transaction_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`Payment_ID`, `Payment_Type`, `Transaction_ID`) VALUES
(12, 'Credit Card', 12),
(13, 'Debit Card', 13),
(14, 'Cash', 14),
(15, 'Credit Card', 15),
(16, 'Debit Card', 16),
(17, 'Credit Card', 17),
(18, 'Debit Card', 18),
(19, 'Cash', 19),
(20, 'Credit Card', 20),
(21, 'Cash', 21),
(22, 'Credit Card', 22);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `Supplier_ID` int(10) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Supplier_Type` varchar(15) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `Telephone` varchar(40) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`Supplier_ID`, `Name`, `Supplier_Type`, `Address`, `Telephone`, `Email`) VALUES
(100000, 'Warner Bros. Picture', 'Film Production', 'Warner Drive, Leavesden, WD25 7LR. UK', '+442034277770', 'sales@wbls.com'),
(910000, 'A24', 'Film Production', '31 W 27th St, New York, NY 10001. USA', '+16465686015', 'sales@a24.com'),
(920000, 'Focus Features', 'Film Production', '100 Universal City Plaza, Universal City, CA 91608. USA', '+18187771000', 'sales@focusfeatures.com'),
(930000, 'DreamWorks Pictures', 'Film Production', '100 Universal City Plaza, Universal City, CA 91608. USA', '+18187339300', 'sales@dreamworkspictures.com'),
(940000, 'Lionsgate Films', 'Film Production', '2700 Colorado Ave, Santa Monica, CA 90404. USA', '+13104499200', 'sales@lionsgatefilms.com'),
(950000, 'Walt Disney Studio Motion Pictures', 'Film Production', '500 S Buena Vista St, Burbank, CA 91521. USA', '+18185601000', 'sales@waltdisneystudiomotionpictures.com'),
(960000, 'Sony Pictures Entertainment', 'Film Production', '10202, W Washington Blvd, Culver City, CA 90232. USA', '+13102444000', 'sales@sonypicturesentertainment.com'),
(970000, '20th Century Studios', 'Film Production', '10201, W Pico Blvd, Los Angeles, CA 90064. USA', '+13103691000', 'sales@20thcenturystudios.com'),
(980000, 'Paramount Pictures', 'Film Production', '5555 Melrose Ave, Los Angeles, CA 90038. USA', '+13239565000', 'sales@paramountpictures.com'),
(990000, 'Universal Pictures', 'Film Production', '100 Universal City Plaza, Universal City, CA 91608. USA', '+18008648377', 'sales@universalpictures.com');

-- --------------------------------------------------------

--
-- Table structure for table `theme_stores`
--

CREATE TABLE `theme_stores` (
  `Store_Number` int(5) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Phone_Number` varchar(40) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theme_stores`
--

INSERT INTO `theme_stores` (`Store_Number`, `Name`, `Address`, `City`, `Country`, `Phone_Number`, `Email`) VALUES
(1, 'Movie Magic', 'Osprey Drive, NE28 9NP, Wallsend, United Kingdom', 'Wallsend', 'United Kingdom', '+448001383315', 'info@moviemagic.com'),
(2, 'Fantasy Films', 'Leicester Square, WC2H 7JY, London, United Kingdom', 'London', 'United Kingdom', '+446321383315', 'contact@fantasyfilms.com'),
(3, 'Hollywood Heaven', 'Western Avenue, Royale Leisure Park, W3 0PA, London, United Kingdom', 'London', 'United Kingdom', '+443330151208', 'hello@hollywoodheaven.com'),
(4, 'Cinephile Central', '14 The Parkway, Camden, NW1 7AA, London, United Kingdom', 'London', 'United Kingdom', '+443330151208', 'info@cinephilecentral.com'),
(5, 'Blockbuster Boutique', 'Rugsby Way, SE10 0QJ, London, United Kingdom', 'London', 'United Kingdom', '+443330144501', 'contact@blockbusterboutique.com'),
(6, 'Silver Screen Emporium', 'Clarence Street, Kingston, KT1 1OP, London, United Kingdom', 'London', 'United Kingdom', '+443330144501', 'hello@silverscreenemporium.com'),
(7, 'Movie Mania', 'Picketts Lock Lane, Edmonton, N9 0AS, London, United Kingdom', 'London', 'United Kingdom', '+443330151208', 'info@moviemania.com'),
(8, 'Cinema Sanctuary', '72 Hill Street, Richmond, London, United Kingdom', 'London', 'United Kingdom', '+442034320550', 'contact@cinemasanctuary.com'),
(9, 'Film Fanatic', '26 Putney High Street, London, United Kingdom', 'London', 'United Kingdom', '+448712244007', 'filmfanatic@filmfanatic.com'),
(10, 'Silver Screen Oasis', '220 Ladywood, Middleway, B16 8LP, Birmingham, United Kingdom', 'Birmingham', 'United Kingdom', '+443330067777', 'hello@silverscreenoasis.com'),
(11, 'Cinephile Central', 'Kingswest, BN1 2RE, Brighton, United Kingdom', 'Brighton', 'United Kingdom', '+448001383315', 'cinephilecentral@cinephilecentral.com'),
(12, 'Fantasy Films', 'Union Street, BS1 2DS, Bristol, United Kingdom', 'Bristol', 'United Kingdom', '+448001383315', 'fantasyfilms@fantasyfilms.com'),
(13, 'Hollywood Heaven', 'Unit 14, The Springs, Thrope Park View, LS15 8GH, Leeds, United Kingdom', 'Leeds', 'United Kingdom', '+448001383315', 'hollywoodheaven@hollywoodheaven.com'),
(14, 'Blockbuster Boutique', 'Dunnings Bridge Road, L30 6TQ, Liverpool, United Kingdom', 'Liverpool', 'United Kingdom', '+443330144501', 'blockbusterboutique@blockbusterboutique.com'),
(15, 'Movie Mania', '235 Deansgate, M3 4EN, Manchester, United Kingdom', 'Manchester', 'United Kingdom', '+443330151208', 'moviemania@moviemania.com');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `Ticket_ID` int(15) NOT NULL,
  `Ticket_Status` varchar(15) DEFAULT NULL,
  `Price` decimal(7,2) DEFAULT NULL,
  `Seats` varchar(10) DEFAULT NULL,
  `Transaction_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`Ticket_ID`, `Ticket_Status`, `Price`, `Seats`, `Transaction_ID`) VALUES
(12, 'Booked', 12.50, 'A12, A13', 12),
(13, 'Booked', 20.00, 'B5, B6', 13),
(14, 'Booked', 15.00, 'C8', 14),
(15, 'Booked', 12.50, 'D15, D16', 15),
(16, 'Booked', 20.00, 'E10, E11', 16),
(17, 'Booked', 15.00, 'F3', 17),
(18, 'Booked', 12.50, 'G7, G8', 18),
(19, 'Booked', 20.00, 'H2, H3', 19),
(20, 'Booked', 15.00, 'I5', 20),
(21, 'Booked', 12.50, 'J11, J12', 21),
(22, 'Booked', 20.00, 'K3, K4', 22);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Transaction_ID` int(15) NOT NULL,
  `Item_Purchased` varchar(70) DEFAULT NULL,
  `Purchase_Date` date DEFAULT NULL,
  `Total_Paid` decimal(7,2) DEFAULT NULL,
  `Customer_ID` int(15) NOT NULL,
  `Offer_ID` int(15) NOT NULL,
  `Film_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Transaction_ID`, `Item_Purchased`, `Purchase_Date`, `Total_Paid`, `Customer_ID`, `Offer_ID`, `Film_ID`) VALUES
(12, '2 movie tickets (Black Widow)', '2024-04-26', 25.00, 12345670, 4, 'BW003'),
(13, '3 movie tickets (Dune)', '2024-04-26', 36.00, 23456701, 5, 'DU002'),
(14, '1 movie ticket (Fight Club)', '2024-04-27', 12.50, 34567890, 2, 'FC009'),
(15, '2 movie tickets (Ghostbusters: Frozen Empire)', '2024-04-27', 20.00, 45670123, 6, 'GF017'),
(16, '1 movie ticket (The Silence of the Lambs)', '2024-04-28', 15.00, 56789012, 3, 'SL008'),
(17, '2 movie tickets (Abigail)', '2024-04-28', 25.00, 67890123, 7, 'AB011'),
(18, '3 movie tickets (Back to Black)', '2024-04-29', 36.00, 78901234, 10, 'BB012'),
(19, '1 movie ticket (Kung Fu Panda 4)', '2024-04-29', 12.50, 89012345, 8, 'KF014'),
(20, '2 movie tickets (Forrest Gump)', '2024-04-30', 20.00, 90123456, 1, 'FG006'),
(21, '1 movie ticket (The Godfather)', '2024-04-30', 15.00, 90123456, 9, 'TG004'),
(22, '3 movie tickets (The Matrix)', '2024-05-01', 36.00, 78901234, 10, 'TM007');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_theme_store`
--

CREATE TABLE `transaction_theme_store` (
  `Transaction_ID` int(15) NOT NULL,
  `Store_Number` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_theme_store`
--

INSERT INTO `transaction_theme_store` (`Transaction_ID`, `Store_Number`) VALUES
(12, 5),
(13, 10),
(14, 7),
(15, 14),
(16, 8),
(17, 3),
(18, 12),
(19, 6),
(20, 15),
(21, 4),
(22, 11);

-- --------------------------------------------------------

--
-- Table structure for table `vs_cinema_branches`
--

CREATE TABLE `vs_cinema_branches` (
  `Branch_Number` int(10) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Capacity` int(10) DEFAULT NULL,
  `Address` varchar(80) DEFAULT NULL,
  `Phone_Number` bigint(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Facilities` varchar(50) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vs_cinema_branches`
--

INSERT INTO `vs_cinema_branches` (`Branch_Number`, `Name`, `Capacity`, `Address`, `Phone_Number`, `Email`, `Facilities`, `City`, `Country`) VALUES
(1, 'ODEON Silverlink', 1302, 'Osprey Drive, NE28 9NP', 8001383315, NULL, 'Luxe Fully Reclining seats, Oscar\'s bars, VIP hosp', 'Wallsend', 'United Kingdom'),
(2, 'ODEON Luxe Leicester Square', 950, 'Leicester Square, WC2H 7JY', NULL, NULL, 'Luxury recliners, Cocktail bar, original Compton o', 'London', 'United Kingdom'),
(3, 'ODEON Luxe', 808, 'Western Avenue, Royale Leisure Park, W3 0PA', 3330151208, NULL, '9 Luxury Screens, iSense, Wheelchair Spaces', 'London', 'United Kingdom'),
(4, 'ODEON Camden', 730, '14 The Parkway, Camden, NW1 7AA', 3330151208, NULL, 'Premier Seats, Wheelchair spaces', 'London', 'United Kingdom'),
(5, 'ODEON Greenwich', 2484, 'Rugsby Way, SE10 0QJ', 3330144501, NULL, 'Classic cinema food, cafef culture, Wheelchair Spa', 'London', 'United Kingdom'),
(6, 'ODEON Kingston', 2692, 'Clarence Street, Kingston, KT1 1OP', 3330144501, NULL, 'RealD 3D screens, Premier seats, Club seats, Recli', 'London', 'United Kingdom'),
(7, 'ODEON Luxe Lee Valley', 977, 'Picketts Lock Lane, Edmonton, N9 0AS', 3330151208, NULL, 'iSense, Oscar\'s bar, Wheelchair Spaces', 'London', 'United Kingdom'),
(8, 'ODEON', 1165, '72 Hill Street, Richmond', 2034320550, NULL, 'Premier seats, Cafe Culture, Wheelchair Spaces', 'London', 'United Kingdom'),
(9, 'ODEON Luxe', 335, '26 Putney High Street', 8712244007, NULL, 'Wheelchair Space, Latest Audio Technology', 'London', 'United Kingdom'),
(10, 'ODEON Luxe', 1316, '220 Ladywood, Middleway, B16 8LP', 3330067777, NULL, 'iSense, Dolby Screen, Recliner Seats, Wheelchair S', 'Birmingham', 'United Kingdom'),
(11, 'ODEON', 2093, 'Kingswest, BN1 2RE', 8001383315, NULL, 'Premier seats, Cafe Culture, Wheelchair Spaces', 'Brighton', 'United Kingdom'),
(12, 'ODEON', 887, 'Union Street, BS1 2DS', 8001383315, NULL, 'Premier seats', 'Bristol', 'United Kingdom'),
(13, 'ODEON Luxe', 975, 'Unit 14, The Springs, Thrope Park View, LS15 8GH', 8001383315, NULL, 'iSense, Dolby Cinema, Wheelchair Spaces, Recliner ', 'Leeds', 'United Kingdom'),
(14, 'ODEON Luxe', 847, 'Dunnings Bridge Road, L30 6TQ', 3330144501, NULL, 'Recliner seats, VIP Beds, Wheelchair Spaces', 'Liverpool', 'United Kingdom'),
(15, 'ODEON', 3289, '235 Deansgate, M3 4EN', 3330151208, NULL, 'Parking, Wheelchair Spaces', 'Manchester', 'United Kingdom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Genre_Number`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_Number`),
  ADD KEY `Employee_Number` (`Employee_Number`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `employee_transaction`
--
ALTER TABLE `employee_transaction`
  ADD PRIMARY KEY (`Employee_ID`,`Transaction_ID`),
  ADD KEY `Transaction_ID` (`Transaction_ID`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`Film_ID`);

--
-- Indexes for table `film_category`
--
ALTER TABLE `film_category`
  ADD PRIMARY KEY (`Film_ID`,`Genre_Number`),
  ADD KEY `Genre_Number` (`Genre_Number`);

--
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`Secret_Key`),
  ADD KEY `Supplier_ID` (`Supplier_ID`);

--
-- Indexes for table `license_cinema_department`
--
ALTER TABLE `license_cinema_department`
  ADD PRIMARY KEY (`Secret_Key`,`Branch_Number`,`Department_Number`),
  ADD KEY `Branch_Number` (`Branch_Number`),
  ADD KEY `Department_Number` (`Department_Number`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`Membership_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`Offer_ID`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `Transaction_ID` (`Transaction_ID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- Indexes for table `theme_stores`
--
ALTER TABLE `theme_stores`
  ADD PRIMARY KEY (`Store_Number`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`Ticket_ID`),
  ADD KEY `Transaction_ID` (`Transaction_ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Transaction_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Offer_ID` (`Offer_ID`),
  ADD KEY `Film_ID` (`Film_ID`);

--
-- Indexes for table `transaction_theme_store`
--
ALTER TABLE `transaction_theme_store`
  ADD PRIMARY KEY (`Transaction_ID`,`Store_Number`),
  ADD KEY `Store_Number` (`Store_Number`);

--
-- Indexes for table `vs_cinema_branches`
--
ALTER TABLE `vs_cinema_branches`
  ADD PRIMARY KEY (`Branch_Number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`Employee_Number`) REFERENCES `employee` (`Employee_ID`);

--
-- Constraints for table `employee_transaction`
--
ALTER TABLE `employee_transaction`
  ADD CONSTRAINT `employee_transaction_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`),
  ADD CONSTRAINT `employee_transaction_ibfk_2` FOREIGN KEY (`Transaction_ID`) REFERENCES `transactions` (`Transaction_ID`);

--
-- Constraints for table `film_category`
--
ALTER TABLE `film_category`
  ADD CONSTRAINT `film_category_ibfk_1` FOREIGN KEY (`Film_ID`) REFERENCES `films` (`Film_ID`),
  ADD CONSTRAINT `film_category_ibfk_2` FOREIGN KEY (`Genre_Number`) REFERENCES `categories` (`Genre_Number`);

--
-- Constraints for table `license`
--
ALTER TABLE `license`
  ADD CONSTRAINT `license_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `suppliers` (`Supplier_ID`);

--
-- Constraints for table `license_cinema_department`
--
ALTER TABLE `license_cinema_department`
  ADD CONSTRAINT `license_cinema_department_ibfk_1` FOREIGN KEY (`Secret_Key`) REFERENCES `license` (`Secret_Key`),
  ADD CONSTRAINT `license_cinema_department_ibfk_2` FOREIGN KEY (`Branch_Number`) REFERENCES `vs_cinema_branches` (`Branch_Number`),
  ADD CONSTRAINT `license_cinema_department_ibfk_3` FOREIGN KEY (`Department_Number`) REFERENCES `department` (`Department_Number`);

--
-- Constraints for table `membership`
--
ALTER TABLE `membership`
  ADD CONSTRAINT `membership_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);

--
-- Constraints for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD CONSTRAINT `payment_method_ibfk_1` FOREIGN KEY (`Transaction_ID`) REFERENCES `transactions` (`Transaction_ID`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`Transaction_ID`) REFERENCES `transactions` (`Transaction_ID`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`Offer_ID`) REFERENCES `offers` (`Offer_ID`),
  ADD CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`Film_ID`) REFERENCES `films` (`Film_ID`);

--
-- Constraints for table `transaction_theme_store`
--
ALTER TABLE `transaction_theme_store`
  ADD CONSTRAINT `transaction_theme_store_ibfk_1` FOREIGN KEY (`Transaction_ID`) REFERENCES `transactions` (`Transaction_ID`),
  ADD CONSTRAINT `transaction_theme_store_ibfk_2` FOREIGN KEY (`Store_Number`) REFERENCES `theme_stores` (`Store_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
