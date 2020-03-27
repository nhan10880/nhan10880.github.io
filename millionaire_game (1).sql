-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 27, 2020 lúc 06:36 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `millionaire_game`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question`
--

CREATE TABLE `question` (
  `ID_questions` int(11) NOT NULL,
  `LV_question` int(11) NOT NULL,
  `Q_question` varchar(200) NOT NULL,
  `A_question` varchar(100) NOT NULL,
  `B_question` varchar(100) NOT NULL,
  `C_question` varchar(100) NOT NULL,
  `D_question` varchar(100) NOT NULL,
  `Answer_question` varchar(1) NOT NULL,
  `Random_question` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `question`
--

INSERT INTO `question` (`ID_questions`, `LV_question`, `Q_question`, `A_question`, `B_question`, `C_question`, `D_question`, `Answer_question`, `Random_question`) VALUES
(1, 1, 'Which is the name of an animal?', 'Glass', 'Cat', 'Table', 'Door', 'B', 1),
(2, 1, 'How many legs does the dog have?', '1', '2', '3', '4', 'D', 2),
(3, 1, 'How many legs the spider has?', '4', '6', '8', '2', 'B', 3),
(4, 1, 'What is the \"thứ 7\" in English?', 'Friday', 'Sunday', 'Thursday', 'Saturday', 'D', 4),
(5, 1, 'What is FPT University mascot?', 'Rabbit', 'Toad', 'Chicken', 'Bird', 'B', 5),
(6, 2, 'People often call what country is the rising sun ?', 'Japan', 'Korea', 'China', 'Thailand', 'A', 1),
(7, 2, 'Which of the following special abilities can cause others to obey you?', 'Laugh', 'Shoot', 'Hypnosis', 'Run', 'C', 2),
(8, 2, 'What is the intersection of the three perpendicular bisectors of the triangle?', 'Inner circle center', 'The circumcircle center', 'Perimeter', 'Acreage', 'B', 3),
(9, 2, 'What is an internal part of the human body?', 'Hair', 'Heart', 'Nails', 'Eyelashes', 'B', 4),
(10, 2, 'The following animal is a flying animal?', 'Dove', 'Rabbit', 'Goat', 'Elephant', 'A', 5),
(11, 3, '<html>Jane was able to hold her breath underwater for a total of 85 seconds.<br> Which of the following times is the same as 85 seconds</html>', '1 minute and 15 seconds', '1 minute and 5 seconds', '1 minute and 25 seconds', '1 minute and 35 seconds', 'C', 1),
(12, 3, '<html> Denise wants to buy candy for her 3 friends. <br> She wants to give 2 pieces of candy to each person. <br> If each piece of candy costs 5 cents, how much will Denise spend on candy </ html>', '12 cents', '60 cents', '30 cents', '45 cents', 'C', 2),
(13, 3, '<html>Central Park has a summer karated program.<br> There are 472 registered children, there are 159 girls.<br> How many boys are enrolled in this program?</html>', '223', '313', '323', '327', 'B', 3),
(14, 3, '<html>My mother gave you ninety five thousand VND to go to the market.<br> You buy a piece of meat for thirty thousand VND and buy candy for five thousand VND. Ask how much money you have?</html>', 'Forty thousands', 'sixty thousand', 'seventy thousand', 'ninety thousand', 'B', 4),
(15, 3, '85*…=510', '4', '5', '6', '7', 'C', 5),
(16, 4, 'What kind of stone is formed from the corpse of animals?', 'Volcanic rock', 'Pebble', 'Limestone', 'Sedimentary rock', 'C', 1),
(17, 4, 'Which parts of the lizard body can grow back?', 'Head', 'Tail', 'Legs', 'Eyes', 'B', 2),
(18, 4, 'How many lungs does the Snake have?', '0', '1', '2', '3', 'B', 3),
(19, 4, 'How many regions does Vietnam have?', '1', '2', '3', '4', 'C', 4),
(20, 4, 'Which animal is the most abundant?', 'Crab', 'Centipede', 'Earwig', 'Shrimp', 'C', 5),
(21, 5, 'Which archipelago of our country is located offshore in the South China Sea?', 'Hoang Sa', 'Tho Chu', 'Truong Sa', 'Answer A + C is correct', 'D', 1),
(22, 5, 'Where is the name of a chemical element ', 'Li ti', 'Ti ti', 'Li te', 'Ti te', 'A', 2),
(23, 5, 'What is the typical artifact for Dong Son culture?', 'Oil paint', 'Gongs', 'Drums', 'Amateur Music', 'C', 3),
(24, 5, 'What was the first steam transport vehicle in 1983?', 'Submarine', 'Paper boat', 'Car', 'Ship', 'D', 4),
(25, 5, 'Which ocean is the smallest in the world?', 'Pacific', 'Atlantic Ocean', 'Indian Ocean', 'Arctic Ocean', 'D', 5),
(26, 6, 'How many countries do the Mekong flow?', '4', '5', '6', '7', 'B', 1),
(27, 6, 'What do people often scan on the surface of lighters?', 'Red phosphorus', 'Calcium', 'Flo', 'Gold', 'A', 2),
(28, 6, 'Which element is the most abundant in the universe?', 'Hidro', 'Heli', 'Nito', 'Oxy', 'A', 3),
(29, 6, 'What is malt candy made from raw materials?', 'Wheat germ', 'Glutinous rice', 'Corn', 'Sugar', 'A', 4),
(30, 6, 'What country is Haiku poem?', 'Japan', 'China', 'India', 'Korea', 'A', 5),
(31, 7, 'How many kilometers is the coastline of our country?', '3260', '3270', '2360', '3460', 'A', 1),
(32, 7, 'Which of the following border gates is located on the Vietnam-China border?', 'Cau Treo', 'Lao Cai', 'Moc Bai', 'Vinh Xuong', 'B', 2),
(33, 7, 'What does the internal water mean?', 'Water is adjacent to the mainland, inside the baseline.', 'Has a width of 12 knots.', '<html>Adjacent to land and territorial borders <br>into the 200 km-wide waters.</html>', 'Water is outside the baseline with a width of 12 nautical miles.', 'D', 3),
(34, 7, 'Who is the mathematician Augustin Louis Cauchy?', 'German', 'English', 'French', 'Spanish', 'C', 4),
(35, 7, 'Which province is Phu Quoc island district?', 'Tra Vinh', 'An Giang', 'Ca Mau', 'Kien Giang', 'D', 5),
(36, 8, 'Which player won the 2006 world gold ball title?', 'Cafu', 'Roberto Carlos', 'Ronaldinho', 'Fabio Canavaro', 'D', 1),
(37, 8, 'Hometown of Carnaval festival?', 'Costa Rica', 'Jamaica', 'Uruquay', 'Brazil', 'D', 2),
(38, 8, 'Where to hold the Vieng fair?', 'Đong Hung - Thai Binh', 'Kim Bang - Ha Nam', 'Vu Ban - Nam Đinh', 'Other answers', 'D', 3),
(39, 8, 'Which planet causes tidal phenomena on Earth?', 'Venus', 'Mercury', 'Moon', 'Sun', 'C', 4),
(40, 8, 'How many are the first 10 natural numbers?', '1098', '2098', '1024', '0', 'D', 5),
(41, 9, '<html>People poured water into a shallow tank in constant proportions, after 8 hours,<br> it was poured 3/5 of the volume of the tank. How long will it take to fill that tank?</html>', '5 hours 30 minutes', '5 hours 20 minutes', '5 hours 10 minutes', '5 hours ', 'A', 1),
(42, 9, 'How many pairs of chromosomes are there in humans?', '13', '23', '11', '21', 'B', 2),
(43, 9, 'Which is the youngest country in Southeast Asia?', 'Laos', 'Brulay', 'Cambodia', 'East Timor', 'D', 3),
(44, 9, 'Which of the following 4 fibers is the most durable if the same section and length?', 'Synthetic', 'Spider silk thread', 'Artificial fibers', 'Silk thread', 'B', 4),
(45, 9, 'What is the traditional festival day for students?', '10/1', '19/1', '9/1', '1/9', 'C', 5),
(46, 10, 'How long is the border between Vietnam and China?', '1400', '2100', '1100', '2300', 'C', 1),
(47, 10, 'Who made the three genetic laws?', 'Albert Einstein', 'Newton', 'Men – Đen', 'Galilei', 'C', 2),
(48, 10, 'Who is considered the ancestor of world law?', 'Ton Tan', 'Gia Cat Luong', 'Ton Vu', 'Tao Thao', 'C', 3),
(49, 10, 'What do people use to reduce the boiling temperature of aluminum ore?', 'Cryolite', 'Mercury', 'Water', 'Sand', 'B', 4),
(50, 10, 'What is the name of the genius musician So-Pan attached to the musical instrument?', 'Violin', 'Piano', 'Guitar', 'Trumpet', 'B', 5),
(51, 11, 'Which element has the most ingredients in seawater?', 'Na', 'Cl', 'H', 'Fe', 'B', 1),
(52, 11, 'What is the nation\'s decimal factor?', 'India', 'Russia', 'America', 'Japan', 'A', 2),
(53, 11, 'What year has the internet started?', '1997', '1979', '1799', '1977', 'B', 3),
(54, 11, 'In what year has our country officially named the Socialist Republic of Vietnam?', '1930', '1946', '1975', '1976', 'D', 4),
(55, 11, 'What color is the national flag of 11 Southeast Asian countries?', 'red', 'yellow', 'while', 'blue', 'A', 5),
(56, 12, 'How is the baobab tree growing mainly in the continent?', 'Asia', 'Europe', 'America', 'Africa', 'D', 1),
(57, 12, 'The computer will not be able to boot without any of the following components?', 'floppy disk', 'Ram', 'hard disk', 'CD', 'B', 2),
(58, 12, 'Where is the largest lake created by meteors?', 'Russia', 'China', 'Canada', 'America', 'C', 3),
(59, 12, 'What continent is the hottest continent in the world?', 'Continental Asia Europe', 'North America Continent', 'Continent Oxtraylia', 'Another answer', 'C', 4),
(60, 12, 'Which ethnic group is the Hoa Ban festival?', 'Ethnic Tay', 'Ethnic thai', 'Ethnic meo', 'Ethnic ho mong', 'B', 5),
(61, 13, 'In which country is the AFC Asian Cup 2011 held?', 'Qatar', 'Korea', 'Japan', 'Iraq', 'A', 1),
(62, 13, 'Which team took the 2011 Asian Cup AFC championship held in Qatar?', 'Japan', 'Australia', 'Korea', 'Uzbekistan', 'A', 2),
(63, 13, 'In which country was the 1940 Olympics held?', 'English', 'Australian', 'American', 'Not organized', 'D', 3),
(64, 13, 'How many eyes are there for bees?', '2', '4', '5', '6', 'C', 4),
(65, 13, 'What type of muscle is attached to the bone?', 'Diaphragm', 'Round muscles', 'Rhombus', 'Heart muscle', 'C', 5),
(66, 14, 'What is the unique hybrid method of Men in studying the rules of genetic phenomena?', 'Crossbred', 'Hybrid body analysis', 'Hybrid analysis', 'Cross the pair of traits', 'B', 1),
(67, 14, 'What color will the \"Ice Fish\" turn into the dark for a long time?', 'Black', 'white', 'red', 'Colorless', 'B', 2),
(68, 14, 'How many Oscars have the movie \"Titanic\" won?', '11', '13', '14', '15', 'A', 3),
(69, 14, 'When did the Oscar Awards take place?', '1931', '1929', '1927', '1923', 'B', 4),
(70, 14, 'Which country in Southeast Asia has a name from a Spanish prince?', 'Brunei', 'Singapore', 'Philippnes', 'Malaysia', 'C', 5),
(71, 15, 'What is the first Grand Slam tournament of the year?', 'Austrlia expanded', 'Wimbledon', 'Roland Garos', 'America expanded', 'A', 1),
(72, 15, 'Electromagnetic waves with wavelength from 100m - 10m is called what wave?', 'Super short wave', 'Short waves', 'Super long wave', 'Long wave', 'B', 2),
(73, 15, 'Who is not one of the four great Chinese beauties?', 'Tay Thi', 'Dieu Thuyen', 'Trieu Co', 'Vuong Chieu Quan', 'C', 3),
(74, 15, 'How many islands are there in Singapore Island?', '55', '60', '65', '70', 'C', 4),
(75, 15, '<html>In Antonio Vivaldi\'s four-season series,<br> of the four concerto, what is the \"spring\" version of the Concerto?</html>', '1', '2', '3', '4', 'A', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `ID_user` bigint(11) NOT NULL,
  `name_user` varchar(100) NOT NULL,
  `point_user` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`ID_user`, `name_user`, `point_user`) VALUES
(1, 'nhan', 1000000),
(44, 'Player1', 1000),
(45, 'Player2', 1000),
(47, 'Player3', 500000),
(64, 'Player4', 200),
(77, 'Khanh', 1000000),
(78, 'da', 1000000),
(79, 'Player', 100),
(80, 'Player', 0),
(81, 'Player', 0),
(82, 'toan', 500000),
(83, 'Thong', 300),
(84, 'Player', 0),
(85, 'Player', 300),
(86, 'nhan', 0),
(87, 'toan', 100),
(88, 'sang', 500),
(89, 'Thong', 500000),
(90, 'Vinh', 0),
(91, 'Kha', 200),
(92, 'Player', 0),
(93, 'Player', 0),
(94, 'Player', 0),
(95, 'Player', 0),
(96, 'Player', 100),
(97, 'Player', 100),
(98, 'Player', 0),
(99, 'Player', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ID_questions`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `question`
--
ALTER TABLE `question`
  MODIFY `ID_questions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `ID_user` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
