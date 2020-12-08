-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 07, 2020 at 08:16 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_items`
--

CREATE TABLE `about_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `image_1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about_items`
--

INSERT INTO `about_items` (`id`, `title`, `image_1`) VALUES
(1, 'Hero About ', 'hero_about.svg'),
(2, 'Natasha Image', 'about_img.svg'),
(3, 'Instagram ', 'instagram.png'),
(4, 'Email', 'email.png'),
(5, 'Phone', 'phone.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_items`
--

CREATE TABLE `contact_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `image_1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_items`
--

INSERT INTO `contact_items` (`id`, `title`, `image_1`) VALUES
(1, 'Hero Image Contact', 'hero_contact.svg'),
(2, 'Contact Page Image', 'img_contact.svg');

-- --------------------------------------------------------

--
-- Table structure for table `home_items`
--

CREATE TABLE `home_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `image_1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_items`
--

INSERT INTO `home_items` (`id`, `title`, `image_1`) VALUES
(1, 'A Monster’s Inc  |  Practice Animation Series ', 'monster_home.svg'),
(2, 'Leo  |  Client Project', 'leo_home.svg'),
(3, 'Fragile Like a Flower | Practice Animation Series', 'flower_home.svg'),
(4, 'Instagram Image', 'home_img.svg'),
(5, 'About Image Home', 'home_about_img.svg');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_items`
--

CREATE TABLE `portfolio_items` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image1` text NOT NULL,
  `image2` text NOT NULL,
  `image3` text NOT NULL,
  `image4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portfolio_items`
--

INSERT INTO `portfolio_items` (`id`, `title`, `description`, `image1`, `image2`, `image3`, `image4`) VALUES
(3, 'A Monster’s Inc  |  Practice Animation Series', 'This animation was created for the purpose of my semester two final. It’s inspired by Monster Inc. It plays with the idea of teeth being pointy yet harmless, where at first it may look like you’re heading into a mouth of sorts there is actually an eye at the end, playing with you mind. The colours make it fun rather than scary, it’s meant to make you smile.  It’s a rather curious monster.', 'monster_1.svg', 'monster_2.svg', 'monster_3.svg', 'monster_4.svg'),
(4, 'Leo  |  Client Project', 'Leo represents the people, their personal expression and confidence. It is the spirited fire sign of the Kings and Queens of the celestrial Jungle. Leo represents strength, passion, power, confidence, creativity and above all a good heart. “Kings and Queens” represents anyone and everyone. Leo is clothing for ALL people who are ready to discover their expression through apparel and clothing.', 'leo_1.svg', 'leo_2.svg', 'leo_3.svg', 'leo_4.svg'),
(5, 'Fragile Like a Flower  |  Practice Animation Series', 'A flower is delicate, add glass and it makes it fragile. This project was a play with cinema, to learn new skills such as the vertex map, the tension tag, and the random effector. Bright pink is used to add to the delicacy as well as maintain a pop to the portrait. It reminds me of a bath bomb exploding with goodness.', 'flower_1.svg', 'flower_2.svg', 'flower_3.svg', 'flower_4.svg'),
(6, 'Sangwa  |  Illustration Client Project', 'Sangwa was a project I worked on over the summer of 2020. It contains 4 illustrations one for analytics, one for automation and one for full stack. The fourth one is a combination of all of them three of those. ', 'sangwa_1.svg', 'sangwa_2.svg', '', ''),
(7, 'Manitoba Wildfire Design  |  Client Project', 'Manitoba Wildfire program was looking for a new design this summer, 2020. They were looking for a new innovative design that represented Canada, Manitoba, and did not have a generic design. The File Leaf represents Canada, the tree silhouette representing the nature behind the devastation of fire and the ox a symbol fo their crew.', 'manitoba_1.svg', 'manitoba_2.svg', 'manitoba_3.svg', 'manitoba_4.svg'),
(8, 'Leo  |  Logo', '', 'leo_logo1.svg', '', '', ''),
(9, 'Leo |  Symbol', '', 'leo_logo2.svg', '', '', ''),
(10, 'Leo |  Business Card', '', 'leo_business.svg', '', '', ''),
(11, 'Leo  |  Style Guide', '', 'leo_brand.svg', '', '', ''),
(12, 'Folding Rose |  Cinema Series', '', 'rose_1.svg', '', '', ''),
(13, 'Folding Rose |  Cinema Series', '', 'rose_2.svg', '', '', ''),
(14, 'Folding Rose |  Cinema Series', '', 'rose_3.svg', '', '', ''),
(15, 'Folding Rose |  Cinema Series', '', 'rose_4.svg', '', '', ''),
(16, 'Ceci  |  Makeup Brand Packaging', '', 'ceci_1.svg', '', '', ''),
(17, 'Ceci  |  Logo', '', 'ceci_2.svg', '', '', ''),
(18, 'A1 Studios |  Mixedbyoso Logo', '', 'mixedbyoso_1.svg', '', '', ''),
(19, 'Mixedbyoso  |  Logo', '', 'mixedbyoso_2.svg', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_items`
--
ALTER TABLE `about_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_items`
--
ALTER TABLE `contact_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_items`
--
ALTER TABLE `home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_items`
--
ALTER TABLE `about_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_items`
--
ALTER TABLE `contact_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_items`
--
ALTER TABLE `home_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `portfolio_items`
--
ALTER TABLE `portfolio_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
