-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2020 at 10:09 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(150) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(0, 'luongnguy', 'luongnguy@gmail.com', 'luongadmin', '437e839e68cd4870ee211e412d8b0a8b', 0),
(1, 'Luong', 'luongnguy2000@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(4, 'Dell'),
(5, 'HP'),
(6, 'MSI'),
(7, 'Acer'),
(8, 'Asus'),
(9, 'Lenovo'),
(10, 'PC Gaming Midrange'),
(11, 'PC Gaming Highgrade'),
(12, 'PC Gaming Super High-end'),
(13, 'WorkStation'),
(14, 'Office'),
(15, 'LG'),
(16, 'Samsung'),
(17, 'ViewSonic'),
(18, 'Logitech'),
(20, 'Fuhlen'),
(21, 'Razer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(29, 7, 'cfa7ou79c3kgt724a44pst6ut6', 'Laptop Acer Gaming Predator Triton 500 PT515-52-72U2', '3428', 1, '28c77b3687.jpg'),
(30, 5, 'cfa7ou79c3kgt724a44pst6ut6', 'Laptop MSI GE66 Raider 10SF-044VN', '2225', 1, '0405abe6fe.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(21, 'Laptop'),
(22, 'PC Gaming'),
(23, 'PC - Workstation'),
(24, 'PC Office'),
(25, 'Mornitor'),
(26, 'Gaming Gear');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(5, 'Laptop MSI GE66 Raider 10SF-044VN', 21, 6, '<ul>\r\n<li>CPU: Intel Core&nbsp;i7-10750H 2.6GHz up to 5.0GHz 12MB</li>\r\n<li>Mornitor: 15.6&Prime; FHD (1920 x 1080) IPS-Level, 240Hz, Thin Bezel, 100% sRGB</li>\r\n<li>RAM: 16GB (8GB x2) DDR4 2666MHz (2x SO-DIMM socket, up to 32GB SDRAM)</li>\r\n<li>VGA: NVIDIA GeForce RTX 2070 8GB GDDR6</li>\r\n<li>Hard Drive: 1TB SSD PCIe G3X4</li>\r\n<li>Operating sysytem: Windows 10 Home</li>\r\n<li>Battery: 4 Cell 99.9WHrs</li>\r\n</ul>', 0, 2225, '0405abe6fe.jpg'),
(6, 'Laptop Asus TUF Gaming A15 FA506IV-HN202T', 21, 8, '<ul>\r\n<li>CPU: AMD Ryzen 7 4800H 2.9GHz up to 4.2GHz 8MB</li>\r\n<li>Mornitor: 15.6&Prime; FHD (1920 x 1080) IPS, 144Hz,&nbsp;Non-Glare, Wide View, Narrow Bezel</li>\r\n<li>RAM: 16GB (8GBx2) DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)</li>\r\n<li>VGA: NVIDIA GeForce RTX 2060 6GB GDDR6</li>\r\n<li>Hard Drive: 1024GB (1TB) SSD M.2 PCIE G3X2 (2 slots)</li>\r\n<li>Operating system: Windows 10 Home</li>\r\n<li>Battery: 4-Cells 90 Whrs</li>\r\n</ul>', 0, 1376, 'a65f583813.jpg'),
(7, 'Laptop Acer Gaming Predator Triton 500 PT515-52-72U2', 21, 7, '<p><span>- CPU: Intel Core I7-10875H 8C16T 2.3GHz up to 5.1GHz.</span></p>\r\n<p>- RAM: 32GB (16GB x2) DDR4 2933MHz</p>\r\n<p>- SSD: 1TB NVME</p>\r\n<p>- VGA: NVIDIA GeForce RTX 2080 8GB</p>\r\n<p>- Mornitor: 15.6\" FHD (1920 x 1080) IPS , 300Hz, G-sync</p>\r\n<p>- Operating system: Windows 10 Home</p>\r\n<p><span><br /></span></p>', 1, 3428, '28c77b3687.jpg'),
(8, 'Laptop ASUS ROG Zephyrus Duo 15 GX550LWS-HF102T', 21, 8, '<p>- CPU: Intel Core i7-10875H 2.3GHz up to 5.1GHz 16MB</p>\r\n<p>- RAM: 16GB DDR4 3200MHz Onboard (1x SO-DIMM socket, up to 32GB SDRAM)</p>\r\n<p>- Hard Drive: 1TB SSD PCIE G3X4&nbsp;</p>\r\n<p>- VGA: NVIDIA GeForce RTX 2070 Super&trade; 8GB GDDR6 with Max-Q Design</p>\r\n<p>- Mornitor: 15.6\" FHD (1920 x 1080) IPS, 100% sRGB, 300Hz G-Sync</p>\r\n<p>- ScreenPad&trade; Plus: 14&rdquo; 4K (3840 x 1100) Touch display</p>\r\n<p>- Operating system: Windows 10 Home<br /> - Trọng lượng: 2.48 k</p>', 0, 3321, '62842c6f1c.jpg'),
(11, 'Venus S', 22, 10, '<p>The target audience of this GVN series is the students / students with the need to play mainly online games (LoL, Dota 2, CSGO, ...) max setting. Smoothly play offline games (GTA V, Crysis 3, ...) at medium-high. In addition, it is still possible to battle well the current hot game PUBG at very low - medium setting.<br />With the criterion of optimizing performance when playing games and common tasks, GVN series machines recommend 120G SSD instead of 1TB HDD if the storage needs are not too much.<br />Details of Venus S gaming PC:<br />MSI MAG B550M MORTAR<br />AMD Ryzen 5 3600 / 36MB /3.6GHz / 6 core 12 threads<br />ADATA SPECTRIX D41 TUF Gaming RGB 2x8 BUS 3000<br />MSI GeForce&reg; GTX 1660 SUPER Ventus XS OC 6GB GDDR6<br />PNY SSD CS900 240G 2.5 \"Sata 3</p>', 0, 832, 'b4fe58e03b.png'),
(12, 'GVN Tinker M', 22, 10, '<p>Asus TUF B365M-Plus Gaming LGA 1151v2<br />TUF B365M-PLUS GAMING is the Asus motherboard model under the socket 1151-v2 standard that supports the popular 8th and 9th generation Intel processors on the mid-range PC configuration. The m-ATX standard size allows TUF B365M-PLUS GAMING to be able to upgrade the hardware quite well. Fully equipped with popular PCI, M.2 slots and high-speed USB 3rd generation connection.INTEL Core i5 9400F 6C6T 9M 2.9GHz<br />The Core i5 9400F CPU belongs to the Coffee Lake Refresh line and is manufactured by Intel on a 14nm process. i5 9400F is suitable for mid-range PC Gaming models and comes equipped with discrete graphics. In addition, the above performance also supports good handling of basic tasks. The CPU operates at a maximum frequency of 2.9 and up to 4.1 GHz with 9 MB cache - cache. 6 core processor and stable performance on motherboards based on 300 series chipset from Intel. Kingston HyperX Fury 8GB 2666MHz DDR4<br />Along with MSI MAG B365M Mortar motherboard, you can definitely not ignore the Kingston HyperX Fury DDR4 RAM clocked at 2666Mhz with Plug-Play automatic overclocking feature without the need for you to go through the software. The DDR4 ram also gives you more power savings than its predecessor.ASUS TUF Gaming GeForce&reg; GTX 1660 SUPER &trade; OC edition 6GB GDDR6<br />The ASUS TUF Gaming GeForce&reg; GTX 1660 SUPER &trade; OC edition graphics card with military-grade durability is definitely not to go for long-term performance. The dual dust-proof cooling system helps to keep components clean and preserve better. PNY SSD CS900 120G 2.5 \"Sata 3<br />To have better data access speed, GEARVN equips Tinker M with a PNY SSD CS900 Sata 3 SSD with a capacity of 120GB standard Sata 3 to support data storage. Start-up speed and application will be greatly improved. In addition, you can also equip an additional HDD depending on your needs.<br />SilverStone ST65F-ES230 80 Plus PC Source<br />To support future machine upgrades, equip Tinker M with a 650W power supply from SilverStone with proven 80Plus quality standards.</p>', 0, 621, '0b6afba6f6.png'),
(13, 'HERA S', 22, 11, '<p>Top-notch performance<br />As its name suggests, HERA S gives you the power to sweep today\'s gaming world with the destructive power of the RTX 2070 Super and Ryzen 7 3700X duo.<br />HERA S\'s respectable gaming performance comes from the high-end RTX 2070 Super graphics card. You can comfortably enable Ray-Tracing with all today\'s supported games with the highest setting on Full HD resolution without worrying about the number of frames. When you turn off Ray-Tracing, its simple performance is also very good, enough for you to play smoothly 60FPS of every game today on 2K resolution. Generally, once you have this graphics card in hand, you\'ll have yourself playing games without looking at configuration for at least the next few years.<br />The CPU model used in this configuration will definitely be loved by fans of the red team, which is the Ryzen 7 3700X. This is a powerful CPU model with 8 cores 16 threads, clocked up to 4.4GHz and allows comfortable overclocking (X series). With its performance threshold, the Ryzen 7 3700X not only weighs the RTX 2070 Super well, but it also offers great multitasking for you to do more. Whether you are playing games or working, this CPU model is ideal.<br />The RAM level selected here is 2 8GB for a total capacity of 16GB. The first is to help the machine run Dual-Channel mode with 2 RAM sticks connected to 2 parallel channels, followed by you will have the recommended RAM level for all games at the moment (and at least have to go through more. a few years). The X570 motherboard supports the latest PCIe 4.0 connectivity standard to help you take full advantage of the latest, fastest NVMe 4.0 SSDs today.<br />Combo RTX 2070 Super, Ryzen 7 3700X and 16GB of RAM are sure to keep you pocket-sized without missing a single game on the market right now!<br />Optimized heat dissipation<br />The case used is XIGMATEK VENOM. It has all the things a gamer could need, such as 2 tempered glass panels to show the internal components and front fan system, an air filter for you less effort to clean and an LED strip. Nice RGB right in front of the case. In terms of supporting heat dissipation, the case has 3 front fans, 2 roof fans and 1 rear fan to help you optimize the case\'s air exchange flow, thereby helping the system to stay cool and have the operating environment. most productive. Even if you want, you can also attach a front-facing 240mm radiator radiator.<br />Perfect compatibility<br />In order to produce a mass assembly configuration, GearVN\'s technical team has to test it many times to ensure that the components in the system must operate stably, maximizing each other\'s strengths. So you will no longer have to worry about big issues like AMD CPUs choking RAM or bottlenecks to small, sophisticated things. Just buy it and plug it in and enjoy it.<br />Easy to upgrade later<br />Mainboard X570 AORUS ULTRA has 4 RAM slots but only uses 2 slots to slot 2 GSKILL TRIDENT Z RGB RAM sticks, if you need to buy up to 16GB, you only need to buy one more identical bar. The Cooler Master MWE 750 BRONZE - V2 power supply offers up to 750W, which is quite abundant for the current configuration, creating a space for you to comfortably upgrade if needs change later. In addition, if you need to add SSD, HDD or change any components in the PC system, it will also be supported by a team of skilled, experienced and dedicated technicians.</p>', 0, 1595, '2e352df984.png'),
(14, 'Invoker S', 22, 11, '<p>Asus TUF B365M-Plus Gaming LGA 1151v2<br />TUF B365M-PLUS GAMING is the Asus motherboard model under the socket 1151-v2 standard that supports the popular 8th and 9th generation Intel processors on the mid-range PC configuration. The m-ATX standard size allows TUF B365M-PLUS GAMING to be able to upgrade the hardware quite well. Fully equipped with popular PCI, M.2 slots, and high-speed USB 3rd generation connectivity.<br />INTEL Core i5 9400F 6C6T 9M 2.9GHz<br />The Core i5 9400F CPU belongs to the Coffee Lake Refresh line and is manufactured by Intel on a 14nm process. I5 9400F is suitable for mid-range PC Gaming models and equipped with discrete graphics. In addition, the above performance also supports good handling of basic tasks. The CPU operates at a maximum frequency of 2.9 and up to 4.1 GHz with 9 MB cache - cache. 6-core processor and stable performance on 300 series chipset based motherboards from Intel Geil SUPER LUCE RGB TUF GAMING 2x8Gb 2666MHz DDR4<br />With a 2666MHz DDR4 clock speed, Geil SUPER LUCE RGB TUF GAMING is perfect for gaming, video &amp; photo editing and other professional applications. The heatsink kit delivers outstanding heat dissipation with incredible performance. The mainboard\'s synchronization with Asus AURA Sync allows users to personalize their gaming PC in the fastest way. ROG Strix GeForce&reg; RTX 2060 SUPER ADVANCED EDITION 8GB GDDR6<br />GVN Invorker S is equipped with ROG Strix GeForce&reg; RTX 2060 SUPER ADVANCED EDITION 8GB GDDR6 - the ASUS low-end graphics card model, supporting many of the latest technologies such as DLSS, Ray tracing, VRS, ... can bring a large resolution gaming experience up to 4K. Lexar NS100 RB 2.5 SATA III 128GB<br />To have better data access speed, GEARVN equips Invorker S with a Lexar NS100 SSD with 128GB capacity to support data storage. Start-up speed and application will be greatly improved. In addition, you can also equip an additional HDD depending on your needs. SilverStone ST65F-ES230 80 Plus PC Source<br />To support future upgrade needs, equip GVN Invoker S with 650W power supply from SilverStone with proven 80Plus quality standard.Case XIGMATEK VENOM<br />All of the above components are housed in Case that supports up to 6 cooling fans. The computer case is made of black-coated SECC, ABS plastic and transparent plastic with medium size (442 x 210 x 455 mm) to not take up too much entertainment space.</p>', 1, 1013, '64811d372d.png'),
(15, 'G-Station K501', 23, 13, '<p>- Mainboard : ASUS WS C422 PRO/SE LGA2066</p>\r\n<p>- CPU: Intel Xeon W-2195 24MB 18C36T 2.3GHz</p>\r\n<p>- RAM: DDR4 RAM Kingston ECC 2x16GB 2400</p>\r\n<p>- VGA: &nbsp;ASUS TUF GTX 1660 SUPER OC&nbsp;6GB GDDR6</p>\r\n<p>- HDD: SEAGATE Barracuda 1TB</p>\r\n<p>- SSD: LEXAR NM610 250GB Gen3x4 NVMe</p>\r\n<p>- PSU: CORSAIR RM750 80 Plus GOLD</p>\r\n<p>- Case: Cooler Master CASE 590 III</p>\r\n<p>- Cooling: DEEPCOOL Ice Blade Pro V2.0</p>', 0, 4010, '9d2eecf3d7.png'),
(16, 'G-Creator C702', 23, 13, '<p>- Mainboard : &nbsp;GIGABYTE X299X AORUS MASTER</p>\r\n<p>- CPU: Intel Core i9 10940X 19.25M 14C28T 3.3GHz</p>\r\n<p>- RAM: &nbsp;GSKILL Trident Z RGB 2x16GB 3000</p>\r\n<p>- VGA: &nbsp;GIGABYTE&nbsp;GTX 1660 SUPER&trade; OC 6GB GDDR6</p>\r\n<p>- HDD: SEAGATE Barracuda 1TB</p>\r\n<p>- SSD: KINGSTON A2000 250GB M.2 NVMe</p>\r\n<p>- PSU: CORSAIR&nbsp;RM750 80 Plus GOLD</p>\r\n<p>- Case: &nbsp;INWIN C200 - Mid Tower</p>\r\n<p>- Cooling: &nbsp;COOLER MASTER MASTERAIR MA620P</p>', 0, 2221, '74dc5f30f4.png'),
(17, 'G-Station K303', 23, 13, '<p>- Mainboard : &nbsp;&nbsp;ASUS WS C246 PRO LGA1151</p>\r\n<p>- CPU: Intel Xeon E-2278G 16MB 8C16T 3.4GHz</p>\r\n<p>- RAM: &nbsp;TRANSCEND DDR4 RAM ECC 2x16GB 2666</p>\r\n<p>- VGA: &nbsp;GIGABYTE GeForce GTX&trade; 1660 OC 6G</p>\r\n<p>- HDD: SEAGATE Barracuda 1TB</p>\r\n<p>- SSD: LEXAR NM610 250GB Gen3x4 NVMe</p>\r\n<p>- PSU: COOLER MASTER MWE 700 BRONZE - V2</p>\r\n<p>- Case: XIGMATEK Mercury (Mid-town)</p>\r\n<p>- Cooling: &nbsp;DEEPCOOL Ice Blade Pro V2.0</p>', 1, 1514, 'b861a8c10d.png'),
(18, 'Prime', 24, 14, '<p>- Mainboard : &nbsp;&nbsp;Asus PRIME A320M-K&nbsp;(socket AM4)</p>\r\n<p>- CPU: AMD Ryzen 5 3400G /6MB /3.7GHz /4T8C</p>\r\n<p>- RAM: &nbsp;Kingston HyperX Fury Black 1x8 BUS 2666</p>\r\n<p>- SSD: PNY SSD CS900 120G 2.5\" Sata 3</p>\r\n<p>- PSU: Cooler Master MWE 400 White V2 80 PLUS</p>\r\n<p>- Case: Xigmatek NYX 3F RGB ( Mini Tower )</p>', 1, 332, 'a8d7388fa8.png'),
(19, 'Logitech G102 Lightsync RGB White', 26, 18, '<p>Design: Ambidextrous</p>\r\n<p>Sensor: Mercury Sensor</p>\r\n<p>&nbsp;DPI: 8000</p>\r\n<p>IPS 200</p>\r\n<p>Acceleration 30g</p>\r\n<p>Frequency response 1000Hz</p>\r\n<p>Material ABS plastic shell</p>\r\n<p>Switch Omron</p>\r\n<p>LED RGB Lightsync</p>\r\n<p>Dimensions (mm) Length 116.6 x Width 62.15 x Height 38.2</p>\r\n<p>Weight (gr) 85g (without cable)</p>', 0, 21, '1607fb014b.jpg'),
(20, 'Logitech G502 Hero Lightspeed Wireless', 26, 18, '<p>Sensor: HERO 16K</p>\r\n<p>&nbsp;DPI: 16000</p>\r\n<p>IPS 400</p>\r\n<p>Acceleration 30g</p>\r\n<p>Frequency response 1000Hz</p>\r\n<p>LED RGB 16.7 million colors</p>\r\n<p>Dimensions Height: 132mm (5.2 in) Width: 75 mm (2.95 in) Depth: 40 mm</p>\r\n<p>Weight (gr) 114g</p>', 0, 151, 'b13d99cbb8.png'),
(21, 'MSI Vigor GK60', 26, 6, '<ul>\r\n<li>Excellent choice for both gaming and regular use</li>\r\n<li>N-Key rollover and Windows key lock for smooth gaming experience</li>\r\n<li>Cherry MX Red switches backed with aluminum construction</li>\r\n<li>Fine-tune detailed settings with Gaming Center</li>\r\n<li>Exclusive Gaming Base provides incredible feedback and anti-slip performance</li>\r\n<li>Clever cable management design</li>\r\n</ul>', 0, 86, 'ddead78177.png'),
(22, 'MSI GC30', 26, 6, '<table border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td>Communication</td>\r\n<td><span>USB 2.0</span></td>\r\n</tr>\r\n<tr>\r\n<td>Dimensions Height</td>\r\n<td><span>156 x 105 x 62.5 mm</span></td>\r\n</tr>\r\n<tr>\r\n<td>Battery</td>\r\n<td><span>600 mAh lithium ~8 tiếng</span></td>\r\n</tr>\r\n<tr>\r\n<td>Accessories included</td>\r\n<td><span>D-PAD Cover&nbsp;</span><br /><span>Wireless dongle</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Cable</span></td>\r\n<td><span>2m USB&nbsp;</span><br /><span>30cm OTG</span></td>\r\n</tr>\r\n<tr>\r\n<td>Weight&nbsp;</td>\r\n<td><span>280g/ 383g (with package)</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, 43, '9369b82b55.jpg'),
(23, 'MSI OPTIX MAG271CR 27\" 144Hz Curved', 25, 6, '<p>Curved Gaming Monitor (1800R) - Immerse yourself in the game.<br />Mystic Light - The ultimate game ending.<br />WQHD Large Resolution - Games will look better, show more details thanks to WQHD resolution.<br />144Hz refresh rate - Real smooth gameplay.<br />1ms response rate - eliminates screen tearing and frame flicker.<br />Gaming OSD App - Creates ultimate settings for your game.<br />True color - DCI-P3 90% &amp; sRGB 115%.<br />AMD FreeSync - prevent screen tearing.&nbsp;<br />Anti-flicker and reduced blue light - game longer and prevent eye strain and fatigue<br />Borderless Design - Ultimate gaming experience<br />178 &deg; wide viewing angle.</p>', 0, 376, '3d025a1fe6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`) USING BTREE;

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
