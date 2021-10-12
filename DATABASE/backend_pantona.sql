-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2021 at 11:45 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_pantona`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `createdAt`, `updatedAt`) VALUES
(1, 'Baju', '2021-10-11 15:03:39', '2021-10-12 06:23:35'),
(2, 'Celana', '2021-10-11 15:03:39', '2021-10-11 15:03:39'),
(3, 'Sepatu', '2021-10-12 01:56:02', '2021-10-12 08:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `kategoriId` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `name`, `picture`, `kategoriId`, `desc`, `price`, `stock`, `gender`, `createdAt`, `updatedAt`) VALUES
(14, 'MEN T-Shirt Supima Cotton Crew Neck', '/uploads/1634004184675.png', 1, 'T-shirt pria dari bahan 100% Supima® cotton yang halus dan berkilau.', 149000, 'M,L,XL', 'Pria', '2021-10-12 02:03:04', '2021-10-12 02:03:04'),
(15, 'T-Shirt Waffle Crew Neck Lengan Panjang', '/uploads/1634004267579.png', 1, 'T-shirt pria dan wanita yang terlihat natural dan terasa ringan. Mudah dipadupadankan.', 249000, 'M,L,XL', 'Unisex', '2021-10-12 02:04:27', '2021-10-12 02:04:27'),
(16, 'MEN T-Shirt Supima Cotton Crew Neck', '/uploads/1634004336088.png', 1, 'T-shirt pria dari 100% Supima® cotton yang lembut. Desain crew neck yang mudah dipadupadankan.', 149000, 'S,M,L,XL', 'Pria', '2021-10-12 02:05:36', '2021-10-12 02:05:36'),
(17, 'MEN AIRism Katun T-Shirt Oversized Crew Neck', '/uploads/1634004399606.png', 1, 'T-shirt pria dari bahan AIRism yang sejuk, halus, dan nyaman, dengan tampilan katun. Siluet oversized yang stylish', 199000, 'S,M,L,XL', 'Pria', '2021-10-12 02:06:39', '2021-10-12 02:06:39'),
(18, 'MEN T-Shirt Crew Neck Lengan Pendek', '/uploads/1634004435281.png', 1, 'T-shirt pria dengan gaya simpel yang menjadi favorit semua orang. Gaya modern yang didesain dengan cermat', 199000, 'S,M,L,XL', 'Pria', '2021-10-12 02:07:15', '2021-10-12 02:07:15'),
(19, 'T-Shirt Crew Neck Lengan Panjang', '/uploads/1634004473639.png', 1, 'T-shirt pria dan wanita dari bahan, siluet, dan desain yang sempurna. T-shirt statement yang stylish.', 299000, 'S,M,L,XL', 'Pria', '2021-10-12 02:07:53', '2021-10-12 02:07:53'),
(20, 'MEN T-Shirt Soft Touch Mock Neck', '/uploads/1634004510704.png', 1, 'T-shirt pria dengan tekstur brushed yang lembut. Desain mock neck yang cocok untuk layering.', 149000, 'S,M,L,XL', 'Pria', '2021-10-12 02:08:30', '2021-10-12 02:08:30'),
(21, 'MEN T-Shirt Garis Lengan Pendek', '/uploads/1634004540138.png', 1, 'T-shirt pria dengan siluet basic sehingga cocok dikenakan setiap hari.', 199000, 'S,M,L,XL', 'Pria', '2021-10-12 02:09:00', '2021-10-12 02:09:00'),
(22, 'MEN Celana Ultra Light', '/uploads/1634004738782.png', 2, 'Celana panjang performa tinggi yang nyaman dipakai untuk pria. Dari bahan seperti wool yang elegan, cocok untuk bekerja.', 599000, 'S,M,L,XL', 'Pria', '2021-10-12 02:12:18', '2021-10-12 02:12:18'),
(23, 'MEN Celana Sweat Lapis Bulu', '/uploads/1634004794903.png', 2, 'Celana training pria dengan lapisan fleece yang lembut dan hangat. Dengan siluet yang memberi tampilan slim.', 399000, 'S,M,L,XL', 'Pria', '2021-10-12 02:13:14', '2021-10-12 02:13:14'),
(24, 'WOMEN Celana Sweat Lapis Bulu', '/uploads/1634004980242.png', 2, 'Celana training wanita dengan lapisan boa yang lembut dan hangat. Dengan siluet stylish, sehingga cocok dikenakan untuk ke luar.', 399000, 'S,M,L,XL', 'Wanita', '2021-10-12 02:16:20', '2021-10-12 02:16:20'),
(25, 'WOMEN HEATTECH Celana Warm Lined', '/uploads/1634005033366.png', 2, 'Celana panjang wanita dengan lapisan HEATTECH yang hangat. Dengan desain stylish streamlined.', 499000, 'S,M,L,XL', 'Wanita', '2021-10-12 02:17:13', '2021-10-12 02:17:13'),
(26, 'WOMEN Celana Flannel', '/uploads/1634005342739.png', 2, 'Celana relax wanita dengan siluet straight yang sempurna untuk bersantai atau bepergian.', 299000, 'S,M,L,XL', 'Wanita', '2021-10-12 02:22:22', '2021-10-12 02:22:22'),
(27, 'WOMEN Celana Sweat', '/uploads/1634005401039.png', 2, 'Celana training wanita yang terbuat dari bahan sweat yang lebih lembut. Perpaduan terbaik detail tradisional dan trend terkini.', 299000, 'S,M,L,XL', 'Wanita', '2021-10-12 02:23:21', '2021-10-12 02:23:21'),
(28, 'WOMEN Celana Wide Straight', '/uploads/1634005755980.png', 2, 'Celana panjang wanita dengan siluet lebar yang menampilkan aksen drape dari bahan.', 299000, 'S,M,L,XL', 'Wanita', '2021-10-12 02:29:15', '2021-10-12 02:29:15'),
(29, 'WOMEN Celana Tweed', '/uploads/1634005818497.png', 2, 'Celana panjang wanita dengan siluet straight dari bahan wool-blend tweed yang elegan.', 699000, 'S,M,L,XL', 'Wanita', '2021-10-12 02:30:18', '2021-10-12 02:30:18'),
(30, 'SEPATU SUPERSTAR', '/uploads/1634005995147.png', 3, 'Didesain dalam kolaborasi bersama butik atmos yang berbasis di Tokyo, Sepatu adidas Superstar ini merayakan kisah anjing Akita yang masih setia pada sahabat karib dan pemiliknya bahkan setelah dia meninggal. Sebagai penghormatan pada Akita, sang anjing be', 2300000, '9.5,10,10.5,11', 'Unisex', '2021-10-12 02:33:15', '2021-10-12 02:33:15'),
(31, 'DAME 7 EXTPLY SHOES', '/uploads/1634006053038.png', 3, 'It\'s not easy to be at the top of your game in basketball and hip hop. The Dame 7 EXTPLY shoes from adidas Basketball mixes the love for both of Damian Lillard\'s passions. Each \"track\" of these basketball shoes is studio inspired.', 1900000, '9.5,10,10.5,11', 'Pria', '2021-10-12 02:34:13', '2021-10-12 02:34:13'),
(32, 'SEPATU GOLF ZG21 MOTION BOA MID-CUT PRIMEGREEN', '/uploads/1634006102946.png', 3, 'Kepercayaan diri dalam ayunanmu menghasilkan kesuksesan di setiap hole. Sepatu golf adidas Primeknit mid-cut ini memberikan fondasi yang solid untuk permainanmu.', 3600000, '9.5,10,10.5,11', 'Pria', '2021-10-12 02:35:02', '2021-10-12 02:35:02'),
(33, 'SEPATU OZWEEGO CELOX', '/uploads/1634006142912.png', 3, 'Bukan berarti kamu membutuhkan izin, tetapi izinkan kami untuk maju dengan tepuk tangan dan mengangguk saat kamu melangkah lebih jauh. Sepatu adidas OZWEEGO Celox ini membuatmu tampil lebih stylish dengan desain minimalis yang modern.', 1800000, '9.5,10,10.5,11', 'Pria', '2021-10-12 02:35:42', '2021-10-12 02:35:42'),
(34, 'SEPATU ADIDAS 4DFWD PULSE', '/uploads/1634006289140.png', 3, 'Manfaatkan kekuatan adidas 4D untuk lari yang lebih baik setiap kali menyentuh jalan. Sepatu adidas 4DFWD Pulse ini memiliki heel cradle cetak 3D di bagian tumit yang ditempatkan dengan presisi agar kamu dapat mengarahkan setiap langkah ke depan dan menye', 2800000, '3.5,4,5.5.6,7', 'Wanita', '2021-10-12 02:38:09', '2021-10-12 02:38:09'),
(35, 'SEPATU ADIZERO BOSTON 10', '/uploads/1634006385327.png', 3, 'adizero Boston 10 adalah sepatu running serbaguna yang didesain untuk memaksimalkan sesi latihan lari panjangmu sehari-hari. Dibangun melalui warisan dan evolusi desain adizero, adizero Boston 10 menawarkan teknologi canggih bagi pelari', 2200000, '3.5,4,5.5.6,7', 'Wanita', '2021-10-12 02:39:45', '2021-10-12 02:39:45'),
(36, 'SEPATU KARLIE KLOSS TRAINER XX92', '/uploads/1634006423507.png', 3, 'Setiap hari menghadirkan hal yang baru. Sambut setiap perubahan dengan sepatu adidas x Karlie Kloss ini. Desain multifungsi membuatmu dapat beraktivitas dari gym hingga menghabiskan waktu bersama teman', 1500000, '3.5,4,5.5.6,7', 'Wanita', '2021-10-12 02:40:23', '2021-10-12 02:40:23'),
(37, 'SEPATU ZENTIC', '/uploads/1634006474396.png', 3, 'Dalam hidup, selalu ada pilihan. Terkadang, begitu banyak hingga terseret ke pusaran internet, muncul kembali berjam-jam semakin bingung. Sepatu adidas Zentic menjadikan pilihan jadi mudah. Cukup berbeda untuk tampil mencolok, cukup monokrom cocok dipadu-', 1700000, '3.5,4,5.5.6,7', 'Wanita', '2021-10-12 02:41:14', '2021-10-12 02:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'General',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `picture`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'admin@admin.com', '$2b$10$oOkE7MUsmESBFsgfW.5TBOHr9zBZzMn.l1ve4/1u0ttuo5EXWjsT.', 'admin', NULL, 'Admin', '2021-10-11 15:05:09', '2021-10-11 15:05:09'),
(2, 'reza@email.com', '$2b$10$vri2S3E3nRUpKzTW5ldY4.xHySNPY.dwgADJhKj1RQmnyeLO3.FLi', 'reza', NULL, 'General', '2021-10-12 02:44:57', '2021-10-12 02:44:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
