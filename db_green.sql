-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 04:51 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_green`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `color`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(1, 'Thắt lưng', 'that-lung', 3, 0, '1', '#ff9800', '2022-03-08 23:04:22', '2', '2022-05-16 15:09:39', '2', 1, 1, 1, '', ''),
(2, 'Mũ xinh', 'mu-xinh', 1, 0, '0', '#8ac400', '2022-03-08 23:04:37', '2', '2022-05-20 13:01:34', '2', 1, 1, 1, '', ''),
(3, 'Kẹp tóc, buộc tóc', 'kep-toc-buoc-toc', 3, 0, '2', '#3c8dbc', '2022-03-08 23:04:48', '2', '2022-05-16 15:09:27', '2', 1, 1, 1, '', ''),
(5, 'Khăn quàng', 'khan-quang', 6, 0, '4', '#00a65a', '2022-03-08 23:05:18', '2', '2022-05-16 15:09:16', '2', 1, 1, 1, '', ''),
(6, 'Kính mắt', 'kinh-mat', 4, 0, '3', '#f39c12', '2022-03-08 23:07:11', '2', '2022-05-16 15:09:11', '2', 1, 1, 1, '', ''),
(7, 'Lens', 'lens', 4, 0, '4', '#8ac400', '2022-03-08 23:07:48', '2', '2022-05-16 15:09:02', '2', 1, 1, 1, '', ''),
(8, 'Các sản phẩm khác', 'cac-san-pham-khac', 6, 8, '0', '', '2022-03-08 23:08:14', '2', '2022-05-16 15:10:14', '2', 1, 1, 1, '', ''),
(54, 'Đồng hồ', 'dong-ho', 0, 0, '5', '', '2022-05-20 11:27:32', '2', '2022-05-20 11:27:32', '2', 1, 1, 1, '', ''),
(55, 'Sản phẩm làm móng', 'san-pham-lam-mong', 0, 0, '6', '', '2022-06-03 13:07:42', '45', '2022-06-03 13:07:42', '45', 1, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(64) NOT NULL,
  `mail_port` smallint(6) NOT NULL,
  `mail_info` varchar(64) NOT NULL,
  `mail_noreply` varchar(64) NOT NULL,
  `mail_password` varchar(64) NOT NULL,
  `priceShip` mediumtext NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keyword` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_port`, `mail_info`, `mail_noreply`, `mail_password`, `priceShip`, `title`, `description`, `keyword`) VALUES
(1, '', 29, 'hodienloi', 'hodienloi@', '', '30000', 'Beauty Shop-Phụ kiện đẹp cho các nàng', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `view` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `view`, `status`, `trash`, `fullname`) VALUES
(1, 'góp ý cho chủ shop', '01234567891', 'lenhsangcntt1508@gmail.com', 'test lần 1', '0000-00-00 00:00:00', 1, 1, 1, 'lenhsang'),
(2, 'hỏi shop', '0923456', 'vuongthuynguyen0@gmail.com', 'test lần 2', '2021-10-06 16:49:11', 1, 1, 1, 'nguyên'),
(3, 'góp ý', '0639274132', 'ChuvanHY@gmail.com', 'Sản phẩm vẫn chưa phong phú', '0000-00-00 00:00:00', 1, 1, 1, 'Chu Thị Vân');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'Super Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT 'Super Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(3, 'Dùng thử kẹp phồng chân tóc \"hot hit\": Sử dụng đơn giản, quảng cáo giúp thăng hạng nhan sắc nhưng liệu có nên sắm?', 'dung-thu-kep-phong-chan-toc-hot-hit-su-dung-don-gian-quang-cao-giup-thang-hang-nhan-sac-nhung-lieu-co-nen-sam', '', '<p>Nếu l&agrave; phụ nữ, chắc hẳn ai cũng từng một lần ghen tị với những ng&ocirc;i sao nổi tiếng bởi họ sở hữu m&aacute;i t&oacute;c bồng bềnh, phần ngọn được l&agrave;m phồng một c&aacute;ch nhẹ nh&agrave;ng, tự nhi&ecirc;n v&agrave; ưng mắt. Mỗi lần l&ecirc;n ảnh với m&aacute;i t&oacute;c n&agrave;y th&igrave; lại khiến con d&acirc;n được phen ồn &agrave;o thở d&agrave;i v&igrave; ghen tị.</p>\r\n\r\n<p>Đặc biệt, những c&ocirc; n&agrave;ng sở hữu m&aacute;i t&oacute;c mỏng th&igrave; việc chăm s&oacute;c t&oacute;c, tạo kiểu như thế n&agrave;o để lu&ocirc;n phồng đẹp l&agrave; điều kh&ocirc;ng &iacute;t người thắc mắc, muốn học hỏi.&nbsp;Lướt ngay c&aacute;c trang b&aacute;n h&agrave;ng online, s&agrave;n thương mại điện tử bạn sẽ nhanh ch&oacute;ng ph&aacute;t hiện ra một sản phẩm đơn giản c&oacute; t&ecirc;n gọi kẹp phồng ch&acirc;n t&oacute;c được ra sức lăng x&ecirc;.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/3/27/photo-1-16168167665561680823609.jpg\" target=\"_blank\"><img alt=\"Dùng thử kẹp phồng chân tóc hot hit: Sử dụng đơn giản, quảng cáo giúp thăng hạng nhan sắc nhưng liệu có nên sắm? - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2021/3/27/photo-1-16168167665561680823609.jpg\" /></a></p>\r\n\r\n<p>Ảnh minh họa</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/3/27/photo-2-16168167675971752570537.jpeg\" target=\"_blank\"><img alt=\"Dùng thử kẹp phồng chân tóc hot hit: Sử dụng đơn giản, quảng cáo giúp thăng hạng nhan sắc nhưng liệu có nên sắm? - Ảnh 2.\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2021/3/27/photo-2-16168167675971752570537.jpeg\" /></a></p>\r\n\r\n<p>Combo 8 sản phẩm kẹp phồng ch&acirc;n t&oacute;c đang nổi c&oacute; gi&aacute; b&aacute;n l&agrave; 50.000 đồng</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/3/27/photo-3-1616816767085844604313.jpeg\" target=\"_blank\"><img alt=\"Dùng thử kẹp phồng chân tóc hot hit: Sử dụng đơn giản, quảng cáo giúp thăng hạng nhan sắc nhưng liệu có nên sắm? - Ảnh 3.\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2021/3/27/photo-3-1616816767085844604313.jpeg\" /></a></p>\r\n\r\n<p>T&iacute;nh ra mỗi sản phẩm c&oacute; gi&aacute; khoảng 6.000 đồng m&agrave; th&ocirc;i</p>\r\n\r\n<p>Sản phẩm được quảng c&aacute;o l&agrave; d&ugrave; vụng về đến mấy cũng c&oacute; thể l&agrave;m được, kết quả mỹ m&atilde;n v&agrave; kh&ocirc;ng cần tới c&aacute;c loại m&aacute;y m&oacute;c tạo kiểu kh&aacute;c đắt đỏ.</p>\r\n\r\n<p>Những ưu điểm nghe &quot;tr&ocirc;i tuồn tuột&quot; n&agrave;y c&ograve;n được bonus th&ecirc;m phần gi&aacute; si&ecirc;u rẻ chỉ 6K/sản phẩm khiến ch&uacute;ng t&ocirc;i h&agrave;o hứng muốn mua v&agrave; d&ugrave;ng thử ngay sản phẩm n&agrave;y.</p>\r\n\r\n<p>Để xem kh&ocirc;ng mất tiền ra qu&aacute;n l&agrave;m t&oacute;c v&agrave; c&aacute;c sản phẩm tạo kiểu đắt đỏ v&agrave; thực tế sử dụng sản phẩm gi&aacute; rẻ n&agrave;y sẽ như thế n&agrave;o. H&atilde;y c&ugrave;ng ch&uacute;ng t&ocirc;i kiểm tra nh&eacute;!</p>\r\n', 'tin5.jpg', '2022-05-13 12:39:36', '2', '2022-05-13 12:39:36', '2', 1, 1, 1, '', ''),
(4, 'Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1', 'trend-moi-bat-ngay-day-deo-khau-trang-dien-len-sang-chanh-ca-con-nguoi-lai-cong-dung-4-trong-1', '', '<p>&nbsp;</p>\r\n\r\n<p>Trong thế giới phụ kiện của hội th&iacute;ch l&agrave;m đẹp, c&oacute; v&ocirc; v&agrave;n những thứ được s&aacute;ng tạo ra với c&ocirc;ng dụng m&agrave; &iacute;t ai nghĩ đến. Điều n&agrave;y ứng với c&acirc;u nh&igrave;n vậy m&agrave; kh&ocirc;ng phải vậy. Hẳn bạn đ&atilde; từng ồ l&ecirc;n &iacute;t nhất một lần trong đời khi kh&aacute;m ph&aacute; ra c&ocirc;ng dụng của một loại phụ kiện m&agrave; m&igrave;nh chẳng ngờ tới.&nbsp;Tỉ dụ như trường hợp dưới đ&acirc;y của loại d&acirc;y chuy&ecirc;n d&ugrave;ng để đeo khẩu trang hay người ta c&ograve;n gọi l&agrave; d&acirc;y chống rơi.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/modleaf-1600401317914815094280.jpg\" target=\"_blank\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/620/2020/9/18/modleaf-1600401317914815094280.jpg\" /></a></p>\r\n\r\n<p>Ảnh: @modleaf</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/118346202359432525074814203023377831275848n-16004039439881673033539.jpg\" target=\"_blank\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 2.\" src=\"https://kenh14cdn.com/thumb_w/620/2020/9/18/118346202359432525074814203023377831275848n-16004039439881673033539.jpg\" /></a></p>\r\n\r\n<p>Ảnh: @modleaf</p>\r\n\r\n<p>Đ&acirc;y l&agrave; dạng d&acirc;y d&agrave;i, theo những người thiết kế v&agrave; b&aacute;n ch&uacute;ng th&igrave; c&ocirc;ng dụng ch&iacute;nh l&agrave; để khi th&aacute;o khẩu trang ra, bạn sẽ kh&ocirc;ng sợ bị rơi mất hay lo khẩu trang bị đặt xuống những bề mặt c&oacute; thể c&oacute; vi khuẩn. Thực tế, ch&uacute;ng ch&iacute;nh l&agrave; những chiếc d&acirc;y đeo k&iacute;nh m&agrave; ch&uacute;ng ta vẫn biết, chỉ l&agrave; thay v&igrave; m&oacute;c v&agrave;o k&iacute;nh th&igrave; n&oacute; sẽ d&ugrave;ng để m&oacute;c v&agrave;o khẩu trang m&agrave; th&ocirc;i.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/gemmaalus-160040134492243312221.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 3.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/gemmaalus-160040134492243312221.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/hmdiyartandcraft-16004013449191830649889.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 3.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/hmdiyartandcraft-16004013449191830649889.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/modleaf-2-16004013449331779269751.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 3.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/modleaf-2-16004013449331779269751.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/modleaf-3-1600401344927799516691.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 3.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/modleaf-3-1600401344927799516691.jpg\" /></a></p>\r\n\r\n<p>Ảnh: @gemmaalus, @hmdiy_artandcraft, @modleaf</p>\r\n\r\n<p>Xu hướng n&agrave;y hiện đang rất thịnh h&agrave;nh ở H&agrave;n Quốc. Người ta l&agrave;m ra những d&acirc;y đeo với đủ c&aacute;c chất liệu, kiểu d&aacute;ng, độ d&agrave;i v&agrave; m&agrave;u sắc kh&aacute;c nhau. Ngay từ khi được d&ugrave;ng với một c&ocirc;ng dụng chẳng ai ngờ tới, d&acirc;y đeo khẩu trang n&agrave;y đ&atilde; g&acirc;y sốt v&agrave; dần trở n&ecirc;n phổ biến nhờ tốc độ bắt trend nhanh như tốc độ &aacute;nh s&aacute;ng của người d&acirc;n xứ sở kim chi. Ngo&agrave;i dạng m&oacute;c kim loại c&ograve;n c&oacute; cả loại c&uacute;c bấm.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/17/60018518l1-16003571048581839208734.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 4.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/17/60018518l1-16003571048581839208734.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/17/c1197cfb-540f-4e3a-8e65-0632efec2e17-1600357056398794255138.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 4.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/17/c1197cfb-540f-4e3a-8e65-0632efec2e17-1600357056398794255138.jpg\" /></a></p>\r\n\r\n<p>Ảnh: Gsshop</p>\r\n\r\n<p>Với t&igrave;nh h&igrave;nh dịch bệnh vẫn c&ograve;n diễn biến phức tạp, việc đeo khẩu trang, giữ cho khẩu trang sạch sẽ, kh&ocirc;ng bị rơi cũng như tr&aacute;nh tiếp x&uacute;c với những bề mặt tiềm t&agrave;ng những loại vi khuẩn, virus c&oacute; khả năng l&acirc;y nhiễm l&agrave; điều v&ocirc; c&ugrave;ng quan trọng. Ch&iacute;nh v&igrave; thế m&agrave; &yacute; tưởng độc đ&aacute;o n&agrave;y đ&atilde; xuất hiện v&agrave; nhận được sự hưởng ứng hết sức nhiệt t&igrave;nh.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/ala0122-16004013679592085841089.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 5.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/ala0122-16004013679592085841089.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/haeyeongjo-16004013679561641203767.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 5.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/haeyeongjo-16004013679561641203767.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/1196328077112338661354417152894051681895682n-1600401474324437621685.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 5.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/1196328077112338661354417152894051681895682n-1600401474324437621685.jpg\" /></a></p>\r\n\r\n<p>Ảnh: @ala_0122, @haeyeong_jo, @debohbydeborah</p>\r\n\r\n<p>Tuy nhi&ecirc;n, cũng c&oacute; v&agrave;i người cho rằng việc m&oacute;c th&ecirc;m chiếc d&acirc;y đeo v&agrave;o khẩu trang chỉ l&agrave; một c&aacute;ch l&agrave;m m&agrave;u v&agrave; n&oacute; qu&aacute; rườm r&agrave;. Thế nhưng với số kh&aacute;c, nhất l&agrave; đối với những t&iacute;n đồ thời trang v&agrave; đam m&ecirc; phụ kiện th&igrave; đ&acirc;y lại l&agrave; một &yacute; tưởng kh&aacute; hay ho. N&oacute;i vui vui th&igrave; người ta gọi l&agrave; &quot;vượt l&ecirc;n ho&agrave;n cảnh&quot;, dẫu ra sao cũng c&oacute; thể l&agrave;m đẹp mọi l&uacute;c, mọi nơi. Nh&igrave;n nhận một c&aacute;ch kh&aacute;ch quan th&igrave; đ&acirc;y cũng l&agrave; một s&aacute;ng tạo hữu &iacute;ch, đặc biệt d&agrave;nh cho hội n&atilde;o c&aacute; v&agrave;ng hay qu&ecirc;n đồ, vừa rảnh tay lại kh&ocirc;ng lo mải loay hoay m&agrave; khẩu trang bay mất.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/1182894901625871387549673753022493254689615n-16004024244131762656074.jpg\" target=\"_blank\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 6.\" src=\"https://kenh14cdn.com/thumb_w/620/2020/9/18/1182894901625871387549673753022493254689615n-16004024244131762656074.jpg\" /></a></p>\r\n\r\n<p>Ảnh: @modleaf</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, bạn vẫn c&oacute; thể d&ugrave;ng n&oacute; để đeo k&iacute;nh v&agrave; thậm ch&iacute; l&agrave; biến n&oacute; th&agrave;nh v&ograve;ng cổ, v&ograve;ng tay nữa đấy. C&ocirc;ng dụng 4 trong 1 thế n&agrave;y đ&atilde; đủ thuyết phục để bạn đầu tư một chiếc chưa?</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/tuwenn-16004020837211763842605.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 7.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/tuwenn-16004020837211763842605.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/lembayungsenjaid-1600402083747376277231.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 7.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/lembayungsenjaid-1600402083747376277231.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/claireandclara-16004020836471740905867.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 7.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/claireandclara-16004020836471740905867.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/11950023832746521525881396289684395637773716n-160040208366869127852.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 7.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/11950023832746521525881396289684395637773716n-160040208366869127852.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2020/9/18/1193947442671444209337407215344122217250121n-1-1600402083657594384473.jpg\"><img alt=\"Trend mới bắt ngay: Dây đeo khẩu trang diện lên sang chảnh cả con người, lại công dụng 4 trong 1 - Ảnh 7.\" src=\"https://kenh14cdn.com/thumb_w/660/2020/9/18/1193947442671444209337407215344122217250121n-1-1600402083657594384473.jpg\" /></a></p>\r\n\r\n<p>Ảnh: @tuwenn, @lembayungsenja.id, @claireandclara, @modleaf</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; một số địa chỉ sắm loại d&acirc;y đeo đa năng n&agrave;y cho bạn tham khảo nha.</p>\r\n', 'tin4.jpg', '2022-05-13 12:41:08', '2', '2022-05-13 12:41:08', '2', 1, 1, 1, '', ''),
(5, 'Phụ kiện ngọc trai cá tính là item thời trang chiếm ngôi trong mùa hè này', 'phu-kien-ngoc-trai-ca-tinh-la-item-thoi-trang-chiem-ngoi-trong-mua-he-nay', '', '<p>Phụ kiện ngọc trai trước giờ vẫn được coi l&agrave; m&oacute;n đồ k&eacute;n người, chỉ cần thiếu ch&uacute;t tinh tế l&agrave; ngay lập tức c&oacute; thể khiến set đồ của c&aacute;c qu&yacute; c&ocirc; trở n&ecirc;n gi&agrave; v&agrave; sến. Tuy nhi&ecirc;n, phụ kiện ngọc trai đ&atilde; c&oacute; một cuộc hồi sinh ngoạn mục với những biến tấu vừa mang n&eacute;t cổ điển lại tr&agrave;n ngập hơi thở hiện đại. Quan trọng hơn, những đ&ocirc;i khuy&ecirc;n tai, v&ograve;ng cổ, v&ograve;ng tay&hellip; mang họa tiết kinh điển n&agrave;y đ&atilde; trở n&ecirc;n dễ d&agrave;ng kết hợp v&agrave; l&agrave; điểm nhấn đầy tinh tế, thời thượng cho những set đồ với nhiều phong c&aacute;ch kh&aacute;c nhau.</p>\r\n\r\n<p>D&acirc;y chuyền thanh lịch v&agrave; v&ograve;ng cổ điển đ&atilde; thống trị thế giới phụ kiện trong một thời gian kh&aacute; d&agrave;i. Nhưng m&ugrave;a xu&acirc;n n&agrave;y, đ&atilde; đến l&uacute;c vui chơi với đồ trang sức của bạn với những m&oacute;n nữ trang thực sự &quot;chặt ch&eacute;m&quot;. Từ những tinh thể lấp l&aacute;nh cho đến những tr&aacute;i tim v&agrave; vỏ s&ograve; của thập ni&ecirc;n 80, xu hướng trang sức hot nhất m&ugrave;a n&agrave;y rất vui tươi v&agrave; t&aacute;o bạo. H&atilde;y th&ecirc;m v&agrave;o tủ quần &aacute;o của bạn những m&oacute;n đồ nổi bật n&agrave;y nh&eacute;:</p>\r\n\r\n<p>1. Hoa tai h&igrave;nh tr&aacute;i tim</p>\r\n\r\n<p>H&igrave;nh tr&aacute;i tim nhỏ xinh tr&ecirc;n tai giờ chưa hẳn đ&atilde; mốt. Giờ đ&acirc;y t&iacute;n đồ thời trang thể hiện t&igrave;nh y&ecirc;u ở dạng b&ocirc;ng tai tr&aacute;i tim chunky, h&igrave;nh d&aacute;ng qu&aacute; khổ. Từ c&aacute;c s&agrave;n diễn cho đến c&aacute;c trang c&aacute; nh&acirc;n của c&aacute;c t&iacute;n đồ thời trang, xu hướng lấy cảm hứng từ thập ni&ecirc;n 80 đ&atilde; chứng tỏ l&agrave; một trong những niềm vui th&uacute; nhất của m&ugrave;a đ&oacute; l&agrave; chơi với b&ocirc;ng tai tr&aacute;i tim bản lớn.</p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.phunutoday.vn/files/content/2019/05/21/hbz-jewelry-trends-heart-1549473338-1558407320-width980height1470-2057.jpg\" style=\"height:1350px; width:900px\" /></p>\r\n\r\n<p>Khuy&ecirc;n tai tr&aacute;i tim tr&agrave;n đầy cảm hứng y&ecirc;u đương l&atilde;ng mạn cho m&ugrave;a mới.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. Bản t&igrave;nh ca với ngọc trai</p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.phunutoday.vn/files/content/2019/05/21/hbz-jewelry-trends-pearls-1549473339-1558407320-width980height1470-2057.jpg\" style=\"height:1350px; width:900px\" /></p>\r\n\r\n<p>Ngọc trai đ&atilde; trở lại, nhưng m&ugrave;a n&agrave;y kh&ocirc;ng giống những chuỗi ngọc trai cổ lỗ của b&agrave; bạn. Từ v&ograve;ng ngọc trai tinh tế đến c&ograve;ng tai v&agrave; v&ograve;ng đeo tay đi&ecirc;u khắc, t&aacute;c phẩm cổ điển đang nhận được sự bản cập nhật hiện đại, được m&ocirc; phỏng lại cho m&ugrave;a xu&acirc;n.</p>\r\n\r\n<p>3. Nữ trang lấp l&aacute;nh &aacute;nh sao</p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.phunutoday.vn/files/content/2019/05/21/hbz-jewelry-trends-rhinestones2-1549473339-1558407320-width980height1470-2057.jpg\" style=\"height:1350px; width:900px\" /></p>\r\n\r\n<p>Trang sức pha l&ecirc; với những hạt rơi như nhỏ giọt lần đầu ti&ecirc;n xuất hiện tr&ecirc;n đường băng m&ugrave;a xu&acirc;n 2019 v&agrave; nhanh ch&oacute;ng chiếm lĩnh Instagram..Từ hoa tai sẵn s&agrave;ng cho đến v&ograve;ng tay v&agrave; v&ograve;ng cổ, xu hướng ho&agrave;i cổ n&agrave;y l&agrave; tất cả những g&igrave; bạn cần c&oacute; trong tiệc đ&ecirc;m.</p>\r\n\r\n<p>4. C&ocirc; g&aacute;i đại dương</p>\r\n\r\n<p>Cơn sốt trang sức vỏ s&ograve; kh&ocirc;ng bao giờ lỗi mốt trong m&ugrave;a h&egrave;, tuy nhi&ecirc;n n&oacute; lại bị nhiều người cho rằng đ&oacute; chỉ l&agrave; đồ thủ c&ocirc;ng rẻ tiền. Từ c&aacute;c đường băng tại Altuzarra v&agrave; Anna Sui đ&atilde; chứng minh trang sức vỏ s&ograve; cũng c&oacute; thể rất s&agrave;nh điệu v&agrave; xịn, xu hướng trang sức ho&agrave;i cổ n&agrave;y qu&aacute; ph&ugrave; hợp với thời tiết ấm &aacute;p, nắng v&agrave;ng, biển xanh.</p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.phunutoday.vn/files/content/2019/05/21/hbz-jewelry-trends-seashells-1549473338-1558407320-width980height1470-2057.jpg\" style=\"height:1350px; width:900px\" /></p>\r\n\r\n<p>Trang sức vỏ s&ograve; đẹp v&agrave; gần gũi với tự nhi&ecirc;n.</p>\r\n', 'tin1.jpg', '2022-05-13 12:44:06', '2', '2022-05-18 12:57:40', '2', 1, 1, 1, '', ''),
(6, 'Những món phụ kiện thời trang giúp nàng xinh đẹp, tự tin đón xuân', 'nhung-mon-phu-kien-thoi-trang-giup-nang-xinh-dep-tu-tin-don-xuan', '', '<p><strong>&uacute;i x&aacute;ch</strong><br />\r\nĐ&acirc;y l&agrave; vật bất ly th&acirc;n của ph&aacute;i đẹp. Ngo&agrave;i chức năng đựng đồ, m&oacute;n phụ kiện thời trang n&agrave;y c&ograve;n l&agrave;m nổi bật phong c&aacute;ch v&agrave; gu thẩm mỹ của c&aacute;c c&ocirc; g&aacute;i. Phụ nữ thường chọn t&uacute;i dựa tr&ecirc;n ti&ecirc;u chuẩn dễ phối đồ v&agrave; sử dụng nhiều lần, nhưng cũng c&oacute; người ưu ti&ecirc;n kiểu d&aacute;ng đẹp, tinh tế.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2021/05/17093904/nhung-mon-phu-kien-thoi-trang-giup-nang-xinh-dep-tu-tin.1.jpg\" style=\"height:1050px; width:700px\" /></p>\r\n\r\n<p><strong>V&ograve;ng cổ, v&ograve;ng tay</strong><br />\r\nNếu bạn muốn vẻ ngo&agrave;i ấn tượng hơn th&igrave; một chiếc v&ograve;ng cổ hoặc v&ograve;ng tay l&agrave; điều cần thiết. Với trang phục nhẹ nh&agrave;ng, thanh lịch, bạn c&oacute; thể phối th&ecirc;m v&ograve;ng cổ hoặc v&ograve;ng tay để vẻ ngo&agrave;i th&ecirc;m ấn tượng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2021/05/17093857/nhung-mon-phu-kien-thoi-trang-giup-nang-xinh-dep-tu-tin.2.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><strong>Khăn mỏng</strong><br />\r\nVới những c&ocirc; n&agrave;ng th&iacute;ch vẻ ngo&agrave;i nhẹ nh&agrave;ng, thanh tho&aacute;t th&igrave; những chiếc khăn qu&agrave;ng cổ mỏng lu&ocirc;n l&agrave; vật bất ly th&acirc;n gi&uacute;p c&aacute;c n&agrave;ng tr&ocirc;ng &ldquo;chất lừ&rdquo; hơn. Những chiếc khăn mỏng kh&ocirc;ng phải l&agrave; m&oacute;n đồ trang tr&iacute; qu&aacute; mới mẻ nhưng sẽ khiến bạn c&agrave;ng th&iacute;ch hơn. Đồng thời, ch&uacute;ng cũng rất ph&ugrave; hợp với những c&ocirc; n&agrave;ng c&oacute; phong c&aacute;ch năng động, c&aacute; t&iacute;nh, h&atilde;y buộc v&agrave;o tay, hoặc c&agrave;i t&oacute;c điệu đ&agrave; khi ấn tượng. Bạn c&oacute; thể thay đổi nhiều phong c&aacute;ch v&agrave; thỏa sức s&aacute;ng tạo chỉ với một chiếc khăn qu&agrave;ng cổ xinh xắn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2021/05/17093843/nhung-mon-phu-kien-thoi-trang-giup-nang-xinh-dep-tu-tin.3.jpg\" style=\"height:685px; width:700px\" /></p>\r\n\r\n<p><strong>Cặp t&oacute;c ngọc trai</strong><br />\r\nNhững c&ocirc; n&agrave;ng y&ecirc;u thời trang chắc hẳn đ&atilde; cập nhật phụ kiện ngọc trai năm nay, l&agrave; một trong những xu hướng hot nhất m&ugrave;a xu&acirc;n năm nay, tại sao kh&ocirc;ng tận dụng xu hướng hot n&agrave;y trong dịp h&egrave; sắp tới. Kẹp t&oacute;c ngọc trai kh&ocirc;ng dễ đeo nhưng lại rất dễ mix đồ, bất cứ ai để t&oacute;c ngắn hay d&agrave;i đều đẹp, dễ thương v&agrave; to&aacute;t l&ecirc;n vẻ sang trọng, qu&yacute; ph&aacute;i.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2021/05/17093835/nhung-mon-phu-kien-thoi-trang-giup-nang-xinh-dep-tu-tin.4.jpg\" style=\"height:688px; width:700px\" /></p>\r\n\r\n<p><strong>Khuy&ecirc;n tai xinh xắn</strong><br />\r\nD&ugrave; kh&ocirc;ng trang điểm đậm v&agrave; kh&ocirc;ng trang điểm qu&aacute; cầu kỳ, bạn vẫn c&oacute; thể trang điểm lộng lẫy hơn chỉ với một đ&ocirc;i hoa tai bắt mắt. H&egrave; đến l&agrave; dịp bạn đeo b&ocirc;ng tai &ldquo;Sương sa hạt lựu&rdquo;. Theo b&aacute;o c&aacute;o, những đ&ocirc;i hoa tai to bản cũng khiến khu&ocirc;n mặt tr&ocirc;ng nhỏ hơn rất nhiều.</p>\r\n\r\n<p><strong>Mũ nồi</strong><br />\r\nMũ nồi giờ đ&acirc;y đ&atilde; trở th&agrave;nh phụ kiện &ldquo;ruột&rdquo; của nhiều c&ocirc; g&aacute;i, hễ muốn ăn mặc đẹp hơn, kh&aacute;ch h&agrave;ng sẽ y&ecirc;u cầu họ l&agrave;m như vậy. Ng&agrave;y Tết trời thường lạnh lắm, diện cả c&acirc;y đẹp rồi đội th&ecirc;m mũ nồi th&igrave; c&ograve;n g&igrave; bằng. Nếu những năm trước, bạn đ&atilde; ch&aacute;n diện những chiếc mũ nồi m&agrave;u be, trắng th&igrave; sang năm mới n&agrave;y, h&atilde;y thay những chiếc mũ nồi sặc sỡ hay họa tiết da b&aacute;o, thay những chiếc &aacute;o kẻ sọc &hellip; bằng một thứ g&igrave; đ&oacute; mới mẻ hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2021/05/17093827/nhung-mon-phu-kien-thoi-trang-giup-nang-xinh-dep-tu-tin.5.jpg\" style=\"height:768px; width:700px\" /></p>\r\n\r\n<p><strong>Mũ newsboy</strong><br />\r\nNếu bạn đ&atilde; mặc quần &aacute;o, bạn c&oacute; thể cần một chiếc &ldquo;mũ b&aacute;n b&aacute;o&rdquo;. Chiếc mũ n&agrave;y tuy kh&ocirc;ng qu&aacute; l&ograve;e loẹt nhưng d&ugrave; bạn theo phong c&aacute;ch &ldquo;b&aacute;nh b&egrave;o&rdquo; hay trẻ trung, ph&oacute;ng kho&aacute;ng th&igrave; đều t&ocirc;n l&ecirc;n n&eacute;t c&aacute; t&iacute;nh, vui nhộn cho trang phục của bạn.</p>\r\n\r\n<p>Nếu bạn c&oacute; nhu cầu mua sắm phụ kiện nữ&nbsp;<a href=\"https://elly.vn/\">thời trang cao cấp</a>&nbsp;nhưng kh&ocirc;ng biết mua h&agrave;ng ở đ&acirc;u uy t&iacute;n th&igrave; kh&ocirc;ng n&ecirc;n bỏ qua ELLY &ndash; chuỗi thương hiệu phụ kiện h&agrave;ng đầu Việt Nam. Tất cả c&aacute;c mẫu phụ kiện thời trang của ELLY đều được thiết kế cẩn thận theo ti&ecirc;u chuẩn chất lượng, chế độ bảo h&agrave;nh uy t&iacute;n, hậu m&atilde;i hấp dẫn. Ngo&agrave;i việc c&oacute; những sản phẩm ho&agrave;n hảo về mẫu m&atilde;, chất lượng th&igrave; ELLY lu&ocirc;n đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu n&ecirc;n bạn c&oacute; thể y&ecirc;n t&acirc;m mua c&aacute;c sản phẩm phụ kiện&nbsp;<a href=\"https://elly.vn/\">thời trang c&ocirc;ng sở nữ</a>&nbsp;như&nbsp;<a href=\"https://elly.vn/giay-dep-nu/\">guốc nữ</a>, t&uacute;i x&aacute;ch, v&iacute; da, &hellip; tại ELLY.</p>\r\n', 'tin3.jpg', '2022-05-13 12:47:27', '2', '2022-05-18 12:53:44', '2', 1, 1, 1, '', ''),
(7, '4 món trang sức tuyệt đẹp cho các nàng sành điệu tỏa sáng mọi lúc mọi nơi', '4-mon-trang-suc-tuyet-dep-cho-cac-nang-sanh-dieu-toa-sang-moi-luc-moi-noi', '', '<p>Khuy&ecirc;n tai to bản</p>\r\n\r\n<p><img alt=\"1 cong so n\" src=\"https://media.phunutoday.vn/files/luonghoa/2018/07/20/1-cong-so-n-0926.jpg\" style=\"height:330px; width:590px\" /></p>\r\n\r\n<p>Bạn c&oacute; thể chọn khuy&ecirc;n tai đ&iacute;nh đ&aacute;, khuy&ecirc;n tai họa tiết h&igrave;nh học&hellip; miễn l&agrave; k&iacute;ch cỡ thật lớn v&agrave; tr&ocirc;ng thật bắt mắt. Chỉ cần diện những đ&ocirc;i khuy&ecirc;n tai to bản, đầy bắt mắt cho d&ugrave; l&agrave; bộ trang phục đơn giản cũng c&oacute; thể khiến bạn nổi bật v&agrave; tỏa s&aacute;ng.</p>\r\n\r\n<p><img alt=\"1 cong so\" src=\"https://media.phunutoday.vn/files/luonghoa/2018/07/20/1-cong-so-0927.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p>Cu&ocirc;̣c dạo chơi với m&agrave;u sắc</p>\r\n\r\n<p><img alt=\"1 dam bo sat\" src=\"https://media.phunutoday.vn/files/luonghoa/2018/07/20/1-dam-bo-sat-0927.jpg\" style=\"height:380px; width:660px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đ&atilde; đến l&uacute;c F5 cho tủ đồ của bạn bằng những m&agrave;u sắc nổi bật, họa tiết v&agrave; sự s&aacute;ng tạo với xu hướng m&agrave;u sắc rực rỡ, ấm &aacute;p v&agrave; tr&agrave;n đầy năng lượng đang chiếm lĩnh năm 2018 n&agrave;y. Kh&ocirc;ng cần qu&aacute; phức tạp, điểm th&ecirc;m một v&agrave;i m&oacute;n phụ kiện m&agrave;u nổi v&agrave; rực rỡ l&agrave; bộ trang phục của bạn đ&atilde; trở n&ecirc;n th&uacute; vị v&agrave; c&aacute; t&iacute;nh hơn rất nhiều!</p>\r\n\r\n<p><img alt=\"1 giam mo bung n\" src=\"https://media.phunutoday.vn/files/luonghoa/2018/07/20/1-giam-mo-bung-n-0929.jpg\" style=\"height:516px; width:400px\" /></p>\r\n\r\n<p>Khuy&ecirc;n tai tr&ograve;n</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.phunutoday.vn/files/luonghoa/2018/07/20/1-giam-mo-bung-0930.jpg\" style=\"height:1000px; width:800px\" /></p>\r\n\r\n<p>Khuy&ecirc;n tai tr&ograve;n l&agrave; một item &ldquo;kinh điển&rdquo; của bất cứ c&ocirc; n&agrave;ng fashionista n&agrave;o cũng phải c&oacute;, từ Gigi, Bella Hadid, Kylie v&agrave; Kendall Jenner, Rihanna,&hellip; bởi đ&acirc;y l&agrave; m&oacute;n phụ kiện v&ocirc; c&ugrave;ng dễ kết hợp với tất cả c&aacute;c trang phục nhưng lại v&ocirc; c&ugrave;ng hiệu quả trong việc tạo ra vẻ ngo&agrave;i ấn tượng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.phunutoday.vn/files/luonghoa/2018/07/20/1-hoang-tu-hary-0931.jpg\" style=\"height:1120px; width:800px\" /></p>\r\n\r\n<p>D&acirc;y chuyền mảnh kiểu layer</p>\r\n\r\n<p><img alt=\"1 ao phong\" src=\"https://media.phunutoday.vn/files/luonghoa/2018/07/20/1-ao-phong-0924.jpg\" style=\"height:1005px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://media.phunutoday.vn/files/luonghoa/2018/07/20/1-beo-map-0924.jpg\" style=\"height:955px; width:800px\" /></p>\r\n\r\n<p>D&acirc;y chuyền mảnh được phối layer tạo sự nhấn nh&aacute;, độ d&agrave;i ngắn kh&aacute;c nhau l&agrave; item kh&ocirc;ng thể thiếu cho những bộ bikini v&agrave; trang phục m&aacute;t mẻ m&ugrave;a h&egrave;.&nbsp;Có th&ecirc;̉ nói, item này được&nbsp;được biến tấu đa dạng từ tối giản cho đến cầu kỳ, đ&ocirc;i khi lấy cảm hứng từ &ldquo;body chain&rdquo; v&agrave; &ldquo;choker&rdquo; v&ocirc; c&ugrave;ng thu h&uacute;t v&agrave; gợi cảm.</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.phunutoday.vn/files/luonghoa/2018/07/20/1-cac-kieu-giay-0925.jpg\" style=\"height:794px; width:800px\" /></p>\r\n', 'tin4.jpg', '2022-05-13 12:49:02', '2', '2022-05-18 12:50:38', '2', 1, 1, 1, '', ''),
(8, 'Những loại phụ kiện đang được các cô nàng “truy lùng” 2022, đảm bảo cực hot', 'nhung-loai-phu-kien-dang-duoc-cac-co-nang-truy-lung-2022-dam-bao-cuc-hot', '', '<p>Những năm gần đ&acirc;y, khi xu hướng phụ kiện thời trang đang được nổi l&ecirc;n, n&oacute; gi&uacute;p cho những bộ trang phục của bạn trở n&ecirc;n ho&agrave;n hảo hơn rất nhiều. Tr&ecirc;n thị trường c&oacute; rất nhiều loại phụ kiện kh&aacute;c nhua nhưng 5 m&oacute;n phụ kiện đang được c&aacute;c c&ocirc; n&agrave;ng săn l&ugrave;ng 2019 n&agrave;y l&agrave; c&aacute;c m&oacute;n hết sức đơn giản bạn phải c&oacute; ngay trong tủ đồ của m&igrave;nh nh&eacute;.</p>\r\n\r\n<p>B&iacute; quyết l&agrave;m n&ecirc;n một set đồ ho&agrave;n hảo cho ph&aacute;i đẹp l&agrave; sự phối hợp tinh tế giữa bộ trang phục v&agrave; phụ kiện thời trang đi k&egrave;m. Cho d&ugrave; bạn c&oacute; đang mặc một bộ trang phục đơn giản th&igrave; chỉ cần một chiếc k&iacute;nh r&acirc;m hoặc đ&ocirc;i hoa tai nhỏ lấp l&aacute;nh th&ocirc;i cũng đủ để khiến bạn tr&ocirc;ng thật thời trang v&agrave; phong c&aacute;ch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>V&agrave; nếu c&aacute;c n&agrave;ng c&ograve;n đang đắn đo n&ecirc;n lựa chọn loại phụ kiện thời trang n&agrave;o đẹp? kiểu d&aacute;ng n&agrave;o th&igrave; ph&ugrave; hợp với xu hướng? H&atilde;y c&ugrave;ng t&igrave;m hiểu b&agrave;i viết dưới đ&acirc;y với đủ c&aacute;c loại phụ kiện tinh tế, ph&ugrave; hợp với xu hướng thời trang s&agrave;nh điệu nhất trong năm 2019, chắc chắn c&aacute;c n&agrave;ng sẽ chọn cho m&igrave;nh được m&oacute;n phụ kiện hợp với set đồ v&agrave; với c&aacute; t&iacute;nh của m&igrave;nh.</p>\r\n\r\n<p>T&uacute;i l&agrave;m từ chất liệu thi&ecirc;n nhi&ecirc;n</p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.phunutoday.vn/files/content/2019/04/04/phukien-0947.jpg\" style=\"height:470px; width:470px\" /></p>\r\n\r\n<p>&nbsp;T&uacute;i l&agrave;m từ chất liệu thi&ecirc;n nhi&ecirc;n như sợi cọ sợi v&agrave; rơm, c&oacute;i được c&aacute;c t&iacute;n đồ thời trang y&ecirc;u th&iacute;ch trong m&ugrave;a xu&acirc;n năm nay. Những chiếc t&uacute;i n&agrave;y mộc mạc, giản dị nhưng lại rất ngọt ng&agrave;o sẽ l&agrave; phụ kiện t&ocirc; điểm set đồ xu&acirc;n cho chị em.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sandal tối giản</p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.phunutoday.vn/files/content/2019/04/04/phukien1-0947.jpg\" style=\"height:470px; width:470px\" /></p>\r\n\r\n<p>&nbsp;M&ugrave;a xu&acirc;n n&agrave;y l&agrave; sự trở lại của những đ&ocirc;i sandal tối giản mang phong c&aacute;ch những năm 1990 v&agrave; đầu những năm 2000. Sandal quai mảnh v&agrave; m&agrave;u sắc đơn giản, trung t&iacute;nh t&ocirc;n vinh n&eacute;t đẹp của đ&ocirc;i ch&acirc;n chị em.</p>\r\n\r\n<p>Phụ kiện trong suốt</p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.phunutoday.vn/files/content/2019/04/04/phukien2-0947.jpg\" style=\"height:470px; width:470px\" /></p>\r\n\r\n<p>&nbsp;Phụ kiện l&agrave;m từ nhựa PVC trong suốt đang được c&aacute;c fashionista thế giới ưa chuộng. Phụ kiện n&agrave;y c&oacute; thể ph&ugrave; hợp với nhiều phong c&aacute;ch từ điệu đ&agrave;, thanh lịch đến c&aacute; t&iacute;nh, nổi loạn.</p>\r\n\r\n<p>T&uacute;i đeo thắt lưng</p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.phunutoday.vn/files/content/2019/04/04/phukien3-0946.jpg\" style=\"height:470px; width:470px\" /></p>\r\n\r\n<p>T&uacute;i đeo thắt lưng chưa hề giảm nhiệt. Chiếc t&uacute;i &quot;nhỏ nhưng c&oacute; v&otilde;&quot; kh&ocirc;ng chỉ gi&uacute;p bạn được thảnh thơi khi dạo phố m&agrave; c&ograve;n đựng được những vật dụng cần thiết h&agrave;ng ng&agrave;y. Bạn c&oacute; thể chọn t&uacute;i m&agrave;u sắc rực rỡ để t&ocirc; điểm cho bộ đồ m&agrave;u trung t&iacute;nh hoặc t&uacute;i c&oacute; thiết kế ấn tượng để tạo phong c&aacute;ch cho trang phục thiết kế đơn giản.</p>\r\n\r\n<p>Phụ kiện nghệ thuật v&agrave; thủ c&ocirc;ng</p>\r\n\r\n<p><img alt=\"Empty\" src=\"https://media.phunutoday.vn/files/content/2019/04/04/phukien4-0946.jpg\" style=\"height:470px; width:470px\" /></p>\r\n\r\n<p>Đ&acirc;y l&agrave; một trong những xu hướng phụ kiện phổ biến nhất trong m&ugrave;a n&agrave;y. Phụ kiện thủ c&ocirc;ng v&agrave; mang t&iacute;nh nghệ thuật từ t&uacute;i x&aacute;ch đến khuy&ecirc;n tai đ&atilde; xuất hiện ở khắp mọi nơi.</p>\r\n', 'tin2.jpg', '2022-05-18 13:01:33', '2', '2022-05-18 13:01:33', '2', 1, 1, 1, '', ''),
(9, 'Dùng kẹp càng cua sang chảnh như gái Hàn: Mỗi kiểu kẹp lại đi cùng một style váy áo khác nhau', 'dung-kep-cang-cua-sang-chanh-nhu-gai-han-moi-kieu-kep-lai-di-cung-mot-style-vay-ao-khac-nhau', '', '<p>M&oacute;n&nbsp;phụ kiện&nbsp;sang chảnh nhất năm qua kh&ocirc;ng g&igrave; kh&aacute;c ngo&agrave;i kẹp c&agrave;ng cua. Chỉ cần chiếc kẹp nhỏ xinh l&agrave; c&aacute;c n&agrave;ng c&oacute; thể &quot;ph&ugrave; ph&eacute;p&quot; cho m&aacute;i t&oacute;c v&agrave; nhan sắc sang chảnh ng&uacute;t trời. Chưa kể chiếc kẹp c&ograve;n l&agrave; cứu c&aacute;nh cho những m&aacute;i t&oacute;c bết chưa kịp gội, hay l&agrave; m&oacute;n phụ kiện để những n&agrave;ng kh&ocirc;ng mấy tự tin về m&aacute;i t&oacute;c vẫn c&oacute; thể sang chảnh, điệu đ&agrave; mọi ho&agrave;n cảnh.</p>\r\n\r\n<p>Ch&iacute;nh nhờ khả năng &quot;vi diệu&quot; n&agrave;y m&agrave; từ ng&agrave;y trở th&agrave;nh hot trend, c&oacute; hằng h&agrave; sa số những kiểu kẹp t&oacute;c xinh xắn, c&aacute; t&iacute;nh để c&aacute;c n&agrave;ng tha hồ l&agrave;m điệu cho m&aacute;i t&oacute;c. Nếu để &yacute; sẽ thấy c&aacute;c c&ocirc; n&agrave;ng xứ H&agrave;n rất m&ecirc; kẹp c&agrave;ng cua, thậm ch&iacute; họ c&ograve;n chọn kẹp t&oacute;c ph&ugrave; hợp với từng bộ v&aacute;y &aacute;o sẽ mặc.</p>\r\n\r\n<p><strong>1. Kẹp b&ocirc;ng, kẹp đ&iacute;nh ngọc trai</strong></p>\r\n\r\n<p>Kiểu cặp d&agrave;nh ri&ecirc;ng cho c&aacute;c n&agrave;ng điệu đ&agrave; n&ecirc;n v&aacute;y &aacute;o đi c&ugrave;ng cũng phải hợp gu mới được. Kẹp b&ocirc;ng ấm &aacute;p xinh xắn hay kẹp ngọc trai sang chảnh ki&ecirc;u kỳ đều h&ocirc; biến kiểu t&oacute;c của c&aacute;c n&agrave;ng th&ecirc;m phần nữ t&iacute;nh.</p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/2/2/1-16122601278311134828254.jpg\" target=\"_blank\"><img alt=\"\" src=\"https://afamilycdn.com/150157425591193600/2021/2/2/1-16122601278311134828254.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/2/2/4c9357210a9d7bf0fa4526f43ec6a62c-16122601280032011852601.jpeg\" target=\"_blank\"><img alt=\"\" src=\"https://afamilycdn.com/150157425591193600/2021/2/2/4c9357210a9d7bf0fa4526f43ec6a62c-16122601280032011852601.jpeg\" /></a></p>\r\n\r\n<p>Diện c&ugrave;ng kiểu kẹp điệu đ&agrave; n&agrave;y, c&aacute;c n&agrave;ng chỉ cần diện những thiết kế v&aacute;y &aacute;o m&agrave;u nhạt nhẹ nh&agrave;ng, nếu xuyệt t&ocirc;ng nữa th&igrave; l&agrave; nhất, c&ograve;n kh&ocirc;ng c&agrave;ng l&agrave; thiết kế nữ t&iacute;nh lại c&agrave;ng hợp gu. Kẹp b&ocirc;ng mềm mại sẽ hợp với c&aacute;c kiểu &aacute;o kho&aacute;c b&ocirc;ng, &aacute;o len... trong khi kẹp ngọc trai hợp nhất với v&aacute;y &aacute;o m&agrave;u trắng, m&agrave;u be dịu d&agrave;ng.</p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/2/2/1-2-1612260171240535810689.jpg\" target=\"_blank\"><img alt=\"Diện kẹp càng cua sang chảnh như gái Hàn: Mỗi kiểu kẹp lại đi cùng một style váy áo khác nhau - Ảnh 2.\" src=\"https://afamilycdn.com/150157425591193600/2021/2/2/1-2-1612260171240535810689.jpg\" /></a></p>\r\n\r\n<p><strong>2. Kẹp t&oacute;c d&aacute;ng cong mềm mại</strong></p>\r\n\r\n<p>Chiếc kẹp với đường cong uyển chuyển gi&uacute;p c&aacute;c n&agrave;ng ph&ocirc; diễn được những n&eacute;t đẹp điệu đ&agrave; mềm mại của m&igrave;nh. Kiểu d&aacute;ng mảnh mai của kẹp sẽ hợp với những thiết kế nhẹ nh&agrave;ng, mềm mại như &aacute;o len mỏng cổ tr&ograve;n, cổ V, v&aacute;y &aacute;o cổ hơi rộng để khoe được phần cổ cao thanh mảnh.</p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/2/2/2-16122603749481430363721.jpg\" target=\"_blank\"><img alt=\"\" src=\"https://afamilycdn.com/150157425591193600/2021/2/2/2-16122603749481430363721.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/2/2/modleaf1041830351927515520474964786192751919003401n-1594211612543385006838-16122603756261621201712.jpg\" target=\"_blank\"><img alt=\"\" src=\"https://afamilycdn.com/150157425591193600/2021/2/2/modleaf1041830351927515520474964786192751919003401n-1594211612543385006838-16122603756261621201712.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>D&aacute;ng kẹp kh&aacute; điệu v&agrave; cầu kỳ n&ecirc;n c&agrave;ng l&agrave; những trang phục c&oacute; kiểu d&aacute;ng tối giản lại c&agrave;ng đẹp. Đ&ocirc;i khi chỉ cần quần jeans v&agrave; &aacute;o len/ &aacute;o blouse... l&agrave; bạn đ&atilde; xinh ng&uacute;t ng&agrave;n rồi. Với kiểu kẹp n&agrave;y đa phần c&aacute;c c&ocirc; n&agrave;ng xứ H&agrave;n sẽ b&uacute;i&nbsp;gọn g&agrave;ng chứ kh&ocirc;ng kẹp nửa đầu như c&aacute;c kiểu kh&aacute;c.</p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/2/2/2a211866-fd44-4d11-a77f-2a81e38f09c6-16122604295271673777536.jpg\" target=\"_blank\"><img alt=\"Diện kẹp càng cua sang chảnh như gái Hàn: Mỗi kiểu kẹp lại đi cùng một style váy áo khác nhau - Ảnh 4.\" src=\"https://afamilycdn.com/150157425591193600/2021/2/2/2a211866-fd44-4d11-a77f-2a81e38f09c6-16122604295271673777536.jpg\" /></a></p>\r\n\r\n<p><strong>3. Kẹp t&oacute;c vu&ocirc;ng vắn</strong></p>\r\n\r\n<p>D&ugrave; l&agrave; kẹp nhựa trơn/hoạ tiết hay kẹp kim loại th&igrave; d&aacute;ng kẹp vu&ocirc;ng cũng mang đến cho bạn n&eacute;t c&aacute; t&iacute;nh, mạnh mẽ, một sự ổn định v&agrave; độc lập trong phong c&aacute;ch cũng như t&iacute;nh c&aacute;ch của bản th&acirc;n.</p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/2/2/869b3d3c2981655725044860d20c656b-1612260548834286654436.jpeg\" target=\"_blank\"><img alt=\"\" src=\"https://afamilycdn.com/150157425591193600/2021/2/2/869b3d3c2981655725044860d20c656b-1612260548834286654436.jpeg\" /></a></p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/2/2/3-16122605954222060155425.jpg\" target=\"_blank\"><img alt=\"\" src=\"https://afamilycdn.com/150157425591193600/2021/2/2/3-16122605954222060155425.jpg\" /></a></p>\r\n\r\n<p>Vậy n&ecirc;n những kiểu d&aacute;ng trang phục tối giản sẽ rất hợp với d&aacute;ng kẹp n&agrave;y. Sự ổn định c&aacute; t&iacute;nh của sơ mi, &aacute;o ph&ocirc;ng, &aacute;o len trơn tối giản... h&ograve;a quyện c&ugrave;ng n&eacute;t chững chạc của chiếc kẹp c&aacute; t&iacute;nh n&agrave;y tạo n&ecirc;n một tổng thể ho&agrave;n hảo. Th&ecirc;m một kiểu t&uacute;i x&aacute;ch d&aacute;ng hộp vu&ocirc;ng vắn l&agrave; bạn đ&atilde; c&oacute; một vẻ ngo&agrave;i giản dị, gần gũi nhưng cực kỳ sang chảnh v&agrave; c&oacute; kh&iacute; chất rồi.</p>\r\n\r\n<p><a href=\"https://afamilycdn.com/150157425591193600/2021/2/2/dede952e-1d4b-4f4d-b474-41eae2a38997-16122606338981869010497.jpg\" target=\"_blank\"><img alt=\"Diện kẹp càng cua sang chảnh như gái Hàn: Mỗi kiểu kẹp lại đi cùng một style váy áo khác nhau - Ảnh 6.\" src=\"https://afamilycdn.com/150157425591193600/2021/2/2/dede952e-1d4b-4f4d-b474-41eae2a38997-16122606338981869010497.jpg\" /></a></p>\r\n', 'tin61.jpg', '2022-05-20 12:45:40', '2', '2022-06-03 12:31:37', '', 1, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthday` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `gender`, `birthday`, `address`, `phone`, `email`, `created`, `trash`, `access`, `status`) VALUES
(1, 'Mai Thị Hiên', 'hien', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', 'ninh bình', '01654292459', 'maihien@gmail.com', '2017-04-19 23:34:03', 1, 1, 1),
(2, 'Phạm Thị Hoa', 'hoapham', '', NULL, '0000-00-00', 'Thanh hóa', '0965238457', 'hoaphamthanhhoa@gmail.com', '2017-04-25 23:28:14', 1, 1, 1),
(3, 'Nguyễn Thị Kim Dung', 'Dung', '', NULL, '0000-00-00', 'Nam định', '0549251484', 'nguyenkimdungnd@gmail.com', '2017-04-27 03:26:32', 1, 1, 1),
(4, 'Nguyễn Thị Mai Hoa', 'MaiHoa', '', NULL, '0000-00-00', 'hà Đông', '045291854', 'maihoa@gmail.com', '2017-04-22 10:15:10', 1, 1, 1),
(5, 'Đặng Đình Khánh', 'Khanh247', '', NULL, '0000-00-00', 'Dương Nội', '0946281659', 'khanh247@gmail.com', '2017-04-22 10:33:51', 1, 1, 1),
(6, 'Vương Đại Dương', 'DaiDuong', '', NULL, '0000-00-00', 'Quảng Ninh', '0357921546', 'vuongdaiduongqn@gmail.com', '2017-04-22 10:53:23', 1, 1, 1),
(7, 'Nguyễn Văn Tĩnh', 'NguyenTinh', '', NULL, '0000-00-00', 'Hà Nội', '0663541975', 'tinh@gmail.com', '2017-04-25 21:44:05', 1, 1, 1),
(8, 'Vũ Hồng Ngọc', 'RubyVu', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', 'Hà Nội', '01654292454', 'vuhongngoc123@gmail.com', '2017-04-26 00:18:47', 1, 1, 1),
(9, 'Dương Thị Tuyết Nhung', 'Nhung', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', 'Hưng Yên', '01654292453', 'nhung1@gmail.com', '2017-04-26 00:17:43', 1, 1, 1),
(10, 'Lê Thị Hường', 'HuongLe', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', 'Hà Nội', '01654292451', 'lethihuong@gmail.com', '2017-04-26 00:04:27', 1, 1, 1),
(11, 'Vương Văn Tùng', 'VTTung', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', 'Hưng Yên', '09876543299', 'vvtung@gmail.com', '2017-04-26 00:26:07', 1, 1, 1),
(45, 'Vương Nguyên', 'nguyen', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', 'Thanh Xuân', '0966509284', 'vuongthuynguyen0@gmail.com', '2022-05-13 11:48:44', 1, 1, 1),
(46, 'Vương Thị Hương Mai', 'huongmai', '', NULL, '0000-00-00', 'Hưng Yên', '04798216537', 'mai@gmail.com', '2022-05-16 15:53:51', 1, 1, 1),
(47, 'Lại Thị Mai', 'LaiMai', '', NULL, '0000-00-00', 'Thái Bình', '08648912462', 'mai@gmail.com', '2022-05-16 15:54:01', 1, 1, 1),
(48, 'Phạm Huyền Linh', 'LinhPham', '', NULL, '0000-00-00', 'Nam Định', '09280418560', 'linh1@gmail.com', '2022-06-03 12:23:41', 1, 1, 1),
(49, '', '', '', NULL, '0000-00-00', '', '', 'linh@gmail.com', '2022-06-03 14:51:03', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(6) NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `money` int(12) NOT NULL,
  `province` int(10) NOT NULL,
  `district` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `province`, `district`, `address`, `trash`, `status`) VALUES
(36, 'ANK7Xp', 42, '2022-04-02 22:59:44', 'Linh nguyễn', '04578231976', 38310000, 52, 546, 'nhà 15, ngõ 42, phố triều khúc, thanh xuân, hà nội', 1, 1),
(37, 'bazyGU', 45, '2022-05-13 11:50:54', 'Vương Nguyên', '0966509284', 170420000, 33, 331, 'xã thọ vinh, huyện kim động, tỉnh hưng yên', 1, 1),
(38, 'PEmnXV', 47, '2022-05-16 15:55:51', 'Lại Thị Mai', '05639823612', 4870000, 34, 340, 'xóm 1', 1, 0),
(39, 'VrLavJ', 45, '2022-06-03 12:09:25', 'Vương Nguyên', '0316805693', 3730000, 27, 262, 'nhà số 15, đường số 1', 1, 0),
(40, 'VMYvQ8', 48, '2022-06-03 12:24:19', 'Phạm Linh', '0346179346', 830000, 48, 491, 'Phường Nam', 1, 4),
(41, 'hVBIXa', 49, '2022-06-03 14:51:51', 'Linh phạm', '1234567890', 630000, 83, 832, 'nhà số 1', 1, 0),
(42, 'i8VPUG', 49, '2022-06-03 14:52:04', 'Linh phạm', '1234567890', 630000, 83, 832, 'nhà số 1', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(52, 36, 5, 1, 31490000, 1, 1),
(58, 38, 1, 1, 150000, 1, 1),
(57, 38, 3, 2, 200000, 1, 1),
(56, 38, 25, 1, 4290000, 1, 1),
(55, 37, 12, 1, 154900000, 1, 1),
(54, 37, 11, 1, 15490000, 1, 1),
(53, 36, 20, 1, 6790000, 1, 1),
(59, 39, 13, 2, 300000, 1, 1),
(60, 39, 40, 1, 3100000, 1, 1),
(61, 40, 11, 1, 290000, 1, 1),
(62, 40, 19, 2, 140000, 1, 1),
(63, 40, 65, 1, 230000, 1, 1),
(64, 41, 71, 3, 200000, 1, 1),
(65, 42, 71, 3, 200000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'Floralpunk', 'APPLE', 'keptoc,kinhmat,mu', '2017-04-10 22:18:45', 4, '2022-05-16 14:17:41', 2, 1, 1),
(2, 'Angeleyes', 'SAMSUNG', 'lens', '2017-04-10 22:35:02', 4, '2022-05-16 14:20:12', 2, 1, 1),
(3, 'Kelacharms', 'OPPO', 'keptoc', '2017-04-10 22:35:16', 4, '2017-04-11 20:30:27', 6, 1, 1),
(4, 'Aaajeans', 'SONY', 'thatlung', '2017-04-10 22:50:16', 4, '2017-04-10 22:52:45', 4, 1, 1),
(5, 'Maisononli', 'ASUS', 'khanchoang,mu', '2017-04-10 22:50:36', 4, '2017-04-11 20:28:30', 6, 1, 1),
(6, 'DOLL EYES', 'HTC', 'lens', '2017-04-10 22:50:54', 4, '2022-05-16 14:21:07', 2, 1, 1),
(7, 'Shein', 'NOKIA', 'kinhmat,mu', '2017-04-10 22:51:44', 4, '2017-04-10 22:51:44', 4, 1, 1),
(8, 'Puma', 'HUAWEi', 'kinhmat,mu', '2017-04-10 22:52:01', 4, '2017-04-11 20:28:37', 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `sortDesc` text NOT NULL,
  `detail` text NOT NULL,
  `producer` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) NOT NULL DEFAULT 'HDL',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(1, 3, 'Crystal Hair Pin', 'crystal-hair-pin', '2-1.png', '2-1.png#2-2.png', 'PHỤ KIỆN TÓC CHO MỖI NGÀY ĐEM ĐẾN PHONG CÁCH NỮ TÍNH, DỊU DÀNG                               \r\nSMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE', '<ul>\r\n	<li>Bộ hai chiếc kẹp t&oacute;c Crystal Starlet n&agrave;y l&agrave; item must have của m&ugrave;a n&agrave;y. C&oacute; hai ng&ocirc;i sao k&iacute;ch thước nạm bằng thạch chất lượng. Bạn c&oacute; thể chỉ cần sử dụng một hoặc kết hợp với những chiếc kẹp t&oacute;c Lunar</li>\r\n	<li>Ch&acirc;n t&oacute;c cong d&agrave;i 85mm</li>\r\n	<li>Dễ sử dụng</li>\r\n	<li>Th&iacute;ch hợp cho giao diện ban đ&ecirc;m hoặc ban ng&agrave;y ấn tượng</li>\r\n	<li>Trọng lượng nhẹ</li>\r\n	<li>Bộ hai chiếc kẹp t&oacute;c Crystal Starlet của bạn sẽ được đựng trong một hộp qu&agrave; m&agrave;u đen mờ sang trọng với d&acirc;y nhung v&agrave; ruy băng.</li>\r\n	<li>Bộ hai chiếc kẹp t&oacute;c Crystal Starlet n&agrave;y l&agrave; item must have của m&ugrave;a n&agrave;y. C&oacute; hai ng&ocirc;i sao k&iacute;ch thước nạm bằng thạch chất lượng. Bạn c&oacute; thể chỉ cần sử dụng một hoặc kết hợp với những chiếc kẹp t&oacute;c Lunar</li>\r\n	<li>Ch&acirc;n t&oacute;c cong d&agrave;i 85mm</li>\r\n	<li>Dễ sử dụng</li>\r\n	<li>Th&iacute;ch hợp cho giao diện ban đ&ecirc;m hoặc ban ng&agrave;y ấn tượng</li>\r\n	<li>Trọng lượng nhẹ</li>\r\n	<li>Bộ hai chiếc kẹp t&oacute;c Crystal Starlet của bạn sẽ được đựng trong một hộp qu&agrave; m&agrave;u đen mờ sang trọng với d&acirc;y nhung v&agrave; ruy băng.</li>\r\n	<li>Bộ hai chiếc kẹp t&oacute;c Crystal Starlet n&agrave;y l&agrave; item must have của m&ugrave;a n&agrave;y. C&oacute; hai ng&ocirc;i sao k&iacute;ch thước nạm bằng thạch chất lượng. Bạn c&oacute; thể chỉ cần sử dụng một hoặc kết hợp với những chiếc kẹp t&oacute;c Lunar</li>\r\n	<li>Ch&acirc;n t&oacute;c cong d&agrave;i 85mm</li>\r\n	<li>Dễ sử dụng</li>\r\n	<li>Th&iacute;ch hợp cho giao diện ban đ&ecirc;m hoặc ban ng&agrave;y ấn tượng</li>\r\n	<li>Trọng lượng nhẹ</li>\r\n	<li>Bộ hai chiếc kẹp t&oacute;c Crystal Starlet của bạn sẽ được đựng trong một hộp qu&agrave; m&agrave;u đen mờ sang trọng với d&acirc;y nhung v&agrave; ruy băng.</li>\r\n	<li>Bộ hai chiếc kẹp t&oacute;c Crystal Starlet n&agrave;y l&agrave; item must have của m&ugrave;a n&agrave;y. C&oacute; hai ng&ocirc;i sao k&iacute;ch thước nạm bằng thạch chất lượng. Bạn c&oacute; thể chỉ cần sử dụng một hoặc kết hợp với những chiếc kẹp t&oacute;c Lunar</li>\r\n	<li>Ch&acirc;n t&oacute;c cong d&agrave;i 85mm</li>\r\n	<li>Dễ sử dụng</li>\r\n	<li>Th&iacute;ch hợp cho giao diện ban đ&ecirc;m hoặc ban ng&agrave;y ấn tượng</li>\r\n	<li>Trọng lượng nhẹ</li>\r\n	<li>Bộ hai chiếc kẹp t&oacute;c Crystal Starlet của bạn sẽ được đựng trong một hộp qu&agrave; m&agrave;u đen mờ sang trọng với d&acirc;y nhung v&agrave; ruy băng.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '1', 100, 1, 0, 150000, 150000, '2017-05-23 20:32:30', '4', '2022-05-16 15:40:06', '2', 1, 1, 1, '', ''),
(61, 3, 'KẸP TÓC BÁN CẦU THỜI TRANG L11', 'kep-toc-ban-cau-thoi-trang-l11', 'cc909bbdff42da06ab6d231420b1e0d1.jpg', 'b2b4fd39b3fcf747bde51b7f4c967c45.jpg', 'Kẹp nhẹ nhàng ôm lấy mái tóc bạn, không gây đau khi kẹp\r\n\r\nLà phụ kiện không thể thiếu cho các bạn gái và các quý bà, quý cô\r\n\r\nKiểu dáng truyền thống, đơn giản tiện dụng', '<p>Với mỗi c&ocirc; n&agrave;ng,&nbsp;<a href=\"https://amansaigon.com/\">kẹp t&oacute;c</a>&nbsp;l&agrave; phụ kiện kh&ocirc;ng thể thiếu của c&aacute;c n&agrave;ng. Từ kiểu t&oacute;c buộc thấp hay kẹp t&oacute;c cao, từ t&oacute;c b&uacute;i đến t&oacute;c kẹp ngang, chiếc kẹp t&oacute;c nhỏ đều c&oacute; thể giải quyết.</p>\r\n\r\n<p>Lấy cảm hứng từ hot trend của c&aacute;c hot tiktok-er, chiếc kẹp b&aacute;n cầu m&agrave;&nbsp;<a href=\"https://amansaigon.com/\">A Mẫn</a>&nbsp;giới thiệu dưới đ&acirc;y hi vọng sẽ được l&ograve;ng c&aacute;c n&agrave;ng, trở th&agrave;nh một phụ kiện kh&ocirc;ng thể thiếu của c&aacute;c n&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/K%E1%BA%B9p-t%C3%B3c-b%C3%A1n-c%E1%BA%A7u-h%C3%A0n-qu%E1%BB%91c-L11-4.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>Những chiếc&nbsp;<a href=\"https://amansaigon.com/\">kẹp b&aacute;n cầu</a>&nbsp;n&agrave;y c&oacute; m&agrave;u si&ecirc;u si&ecirc;u đ&aacute;ng y&ecirc;u lu&ocirc;n nha mấy n&agrave;ng, chất liệu kim loại cao cấp với tone m&agrave;u cực xinh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/K%E1%BA%B9p-t%C3%B3c-b%C3%A1n-c%E1%BA%A7u-h%C3%A0n-qu%E1%BB%91c-L11-6.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p>Tr&ecirc;n th&acirc;n kẹp được thiết kế tỉ mỉ từng chi tiết.</p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/K%E1%BA%B9p-t%C3%B3c-b%C3%A1n-c%E1%BA%A7u-h%C3%A0n-qu%E1%BB%91c-L11-7.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p>Được l&agrave;m từ chất liệu kim loại, cực k&igrave; bền, kh&ocirc;ng lo g&atilde;y nha.</p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/K%E1%BA%B9p-t%C3%B3c-b%C3%A1n-c%E1%BA%A7u-h%C3%A0n-qu%E1%BB%91c-L11-5.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p>Kẹp nhẹ nh&agrave;ng &ocirc;m lấy m&aacute;i t&oacute;c của bạn, kh&ocirc;ng g&acirc;y đau khi kẹp</p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/K%E1%BA%B9p-t%C3%B3c-b%C3%A1n-c%E1%BA%A7u-h%C3%A0n-qu%E1%BB%91c-L11-3.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/K%E1%BA%B9p-t%C3%B3c-b%C3%A1n-c%E1%BA%A7u-h%C3%A0n-qu%E1%BB%91c-L11-1.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/K%E1%BA%B9p-t%C3%B3c-b%C3%A1n-c%E1%BA%A7u-h%C3%A0n-qu%E1%BB%91c-L11-2.jpg\" style=\"height:720px; width:720px\" /></p>\r\n', '3', 30, 0, 0, 40000, 40000, '2022-05-20 16:20:10', '2', '2022-05-20 16:20:31', '2', 1, 1, 1, '', ''),
(33, 2, 'Mũ cói đi biển cho nữ', 'mu-coi-di-bien-cho-nu', '13-1.jpg', '13-1.jpg', 'Nón cói / mũ cói - phụ kiện cứu vãn mọi \" thần thái \" . Dù trang phục có lộng lẫy tới đâu nhưng thiếu đi nón đi biển bạn trờ nên nhạt vô cùng.', '<p>M&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>N&oacute;n c&oacute;i / mũ c&oacute;i - phụ kiện cứu v&atilde;n mọi &quot; thần th&aacute;i &quot; . D&ugrave; trang phục c&oacute; lộng lẫy tới đ&acirc;u nhưng thiếu đi n&oacute;n đi biển bạn trờ n&ecirc;n nhạt v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>Si&ecirc;u phẩm n&agrave;y rất được l&ograve;ng c&aacute;c c&ocirc; g&aacute;i nh&agrave; m&igrave;nh bởi &quot;độ xinh&quot; kh&ocirc;ng tưởng m&agrave; n&oacute; đem lại. N&oacute;n mềm, nơ ren ở tr&ecirc;n n&oacute;n rất s&agrave;nh điệu, phụ kiện kh&oacute; l&ograve;ng bỏ qua trong h&egrave; n&agrave;y kh&aacute;ch nh&eacute;! N&agrave;ng thu hay n&agrave;ng xu&acirc;n cũng vẫn cứ xinh v&igrave; ẻm chẳng sợ lỗi mốt lại dễ mix đồ nữa. Bạn đ&atilde; c&oacute; chưa?</p>\r\n\r\n<p>2 m&agrave;u: n&acirc;u v&agrave; kem</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>Th&iacute;ch hợp đi chơi, đi dạo phố, đi biển, đi nắng h&agrave;ng ng&agrave;y</p>\r\n\r\n<p>Mũ C&oacute;i rất hợp cạ với những trang phục thi&ecirc;n về sự năng động, thoải m&aacute;i v&agrave; trẻ trung.</p>\r\n\r\n<p>- N&oacute;n c&oacute;i l&agrave; sự lựa chọn gần như đầu ti&ecirc;n của c&aacute;c c&ocirc; n&agrave;ng khi chuẩn bị cho kỳ nghỉ m&aacute;t. Chiếc n&oacute;n dường như đẹp hơn trong khung cảnh biển xanh, c&aacute;t trắng v&agrave; những tia nắng ch&oacute;i chang.-</p>\r\n\r\n<p>- N&oacute;n rộng v&agrave;nh dễ d&agrave;ng kết hợp với những trang phục mang phong c&aacute;ch mềm mại, nữ t&iacute;nh. Những sự kết hợp ho&agrave;n hảo v&agrave; đẹp l&agrave; với những mẫu v&aacute;y d&agrave;i thướt tha đậm chất tiểu thư như mullet hay maxi.</p>\r\n\r\n<p>#N&oacute;n #mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang</p>\r\n\r\n<p>#nonthoitrang</p>\r\n\r\n<p>#mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang #mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<h2><img src=\"https://lzd-img-global.slatic.net/g/p/36533edfbe7b37d07531707eb8343a97.jpg_2200x2200q80.jpg_.webp\" /></h2>\r\n', '5', 3, 0, 12, 150000, 150000, '2017-05-23 19:01:41', '6', '2022-05-19 14:29:37', '2', 1, 1, 1, '', ''),
(3, 3, 'Ilia Hair Pin', 'ilia-hair-pin', '8-1.png', '8-1.png#8-1.jpg', 'KẸP TÓC KIM LOẠI, ĐÍNH ĐÁ HÌNH NGÔI SAO LẤP LÁNH.\r\nPHỤ KIỆN TÓC CHO MỖI NGÀY MANG PHONG CÁCH CÁ TÍNH ĐẦY TINH TẾ\r\n', '<p>KẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤ</p>\r\n\r\n<p>P L&Aacute;NH. PHỤ KIỆN T&Oacute;C CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH TẾ KẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH</p>\r\n\r\n<p>Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤP L&Aacute;NH. PHỤ KIỆN T&Oacute;C CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH TẾKẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤP L&Aacute;NH. PHỤ KIỆN T&Oacute;C</p>\r\n\r\n<p>CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH</p>\r\n\r\n<p>KẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤ</p>\r\n\r\n<p>P L&Aacute;NH. PHỤ KIỆN T&Oacute;C CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH TẾ KẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH</p>\r\n\r\n<p>Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤP L&Aacute;NH. PHỤ KIỆN T&Oacute;C CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH TẾKẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤP L&Aacute;NH. PHỤ KIỆN T&Oacute;C</p>\r\n\r\n<p>CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH</p>\r\n\r\n<p>KẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤ</p>\r\n\r\n<p>P L&Aacute;NH. PHỤ KIỆN T&Oacute;C CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH TẾ KẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH</p>\r\n\r\n<p>Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤP L&Aacute;NH. PHỤ KIỆN T&Oacute;C CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH TẾKẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤP L&Aacute;NH. PHỤ KIỆN T&Oacute;C</p>\r\n\r\n<p>CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH</p>\r\n\r\n<p>KẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤ</p>\r\n\r\n<p>P L&Aacute;NH. PHỤ KIỆN T&Oacute;C CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH TẾ KẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH</p>\r\n\r\n<p>Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤP L&Aacute;NH. PHỤ KIỆN T&Oacute;C CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH TẾKẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤP L&Aacute;NH. PHỤ KIỆN T&Oacute;C</p>\r\n\r\n<p>CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH</p>\r\n\r\n<p>TẾ KẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH Đ&Aacute; H&Igrave;N</p>\r\n\r\n<p>H NG&Ocirc;I SAO LẤP L&Aacute;NH. PHỤ KIỆN T&Oacute;C CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH TẾKẸP T&Oacute;C KIM LOẠI,</p>\r\n\r\n<p>Đ&Iacute;NH Đ&Aacute; H&Igrave;NH NG&Ocirc;I SAO LẤP L&Aacute;NH. PHỤ KIỆN T&Oacute;C CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH TẾ KẸP T&Oacute;C KIM LOẠI, Đ&Iacute;NH Đ&Aacute; H&Igrave;NH NG&Ocirc;I</p>\r\n\r\n<p>SAO LẤP L&Aacute;NH. PHỤ KIỆN T&Oacute;C CHO MỖI NG&Agrave;Y MANG PHONG C&Aacute;CH C&Aacute; T&Iacute;NH ĐẦY TINH TẾ</p>\r\n', '1', 100, 0, 12, 200000, 0, '2017-05-23 20:52:34', '4', '2022-05-16 15:39:47', '2', 1, 1, 1, '', ''),
(39, 3, 'Kẹp tóc bấm nơ ruy băng RYA', 'kep-toc-bam-no-ruy-bang-rya', '38-1.jpg', '38-1.jpg#38-2.jpg', 'Kẹp tóc bấm nơ ruy băng RYA 92083', '<p>Kẹp bấm c&oacute; sống, chất liệu kim loại.</p>\r\n\r\n<p>Trang tr&iacute; nơ ruy băng.</p>\r\n\r\n<p>Sản phẩm d&ugrave;ng kẹp nửa t&oacute;c hoặc d&agrave;nh cho t&oacute;c vừa.</p>\r\n\r\n<p>K&iacute;ch thước nơ: 11x6cm</p>\r\n\r\n<p>K&iacute;ch thước kẹp: 8cm, bản 1cm</p>\r\n\r\n<p>Giữ cho m&aacute;i t&oacute;c bạn th&ecirc;m duy&ecirc;n d&aacute;ng khi đi chơi, đi l&agrave;m hoặc dự tiệc.</p>\r\n\r\n<p>Sản phẩm n&agrave;y l&agrave; m&oacute;n qu&agrave; tặng tuyệt vời cho người th&acirc;n y&ecirc;u trong c&aacute;c dịp đặc biệt.</p>\r\n\r\n<p>Sản phẩm của: Phụ kiện thời trang RY-A</p>\r\n\r\n<p>Địa chỉ: 15/60 Khu&ocirc;ng Việt, P. Ph&uacute; Trung, Q. T&acirc;n Ph&uacute;, TP. Hồ Ch&iacute; Minh</p>\r\n\r\n<p>Xuất xứ: Việt Nam</p>\r\n\r\n<p>Kẹp bấm c&oacute; sống, chất liệu kim loại.</p>\r\n\r\n<p>Trang tr&iacute; nơ ruy băng.</p>\r\n\r\n<p>Sản phẩm d&ugrave;ng kẹp nửa t&oacute;c hoặc d&agrave;nh cho t&oacute;c vừa.</p>\r\n\r\n<p>K&iacute;ch thước nơ: 11x6cm</p>\r\n\r\n<p>K&iacute;ch thước kẹp: 8cm, bản 1cm</p>\r\n\r\n<p>Giữ cho m&aacute;i t&oacute;c bạn th&ecirc;m duy&ecirc;n d&aacute;ng khi đi chơi, đi l&agrave;m hoặc dự tiệc.</p>\r\n\r\n<p>Sản phẩm n&agrave;y l&agrave; m&oacute;n qu&agrave; tặng tuyệt vời cho người th&acirc;n y&ecirc;u trong c&aacute;c dịp đặc biệt.</p>\r\n\r\n<p>Sản phẩm của: Phụ kiện thời trang RY-A</p>\r\n\r\n<p>Địa chỉ: 15/60 Khu&ocirc;ng Việt, P. Ph&uacute; Trung, Q. T&acirc;n Ph&uacute;, TP. Hồ Ch&iacute; Minh</p>\r\n\r\n<p>Xuất xứ: Việt Nam</p>\r\n\r\n<p>Kẹp bấm c&oacute; sống, chất liệu kim loại.</p>\r\n\r\n<p>Trang tr&iacute; nơ ruy băng.</p>\r\n\r\n<p>Sản phẩm d&ugrave;ng kẹp nửa t&oacute;c hoặc d&agrave;nh cho t&oacute;c vừa.</p>\r\n\r\n<p>K&iacute;ch thước nơ: 11x6cm</p>\r\n\r\n<p>K&iacute;ch thước kẹp: 8cm, bản 1cm</p>\r\n\r\n<p>Giữ cho m&aacute;i t&oacute;c bạn th&ecirc;m duy&ecirc;n d&aacute;ng khi đi chơi, đi l&agrave;m hoặc dự tiệc.</p>\r\n\r\n<p>Sản phẩm n&agrave;y l&agrave; m&oacute;n qu&agrave; tặng tuyệt vời cho người th&acirc;n y&ecirc;u trong c&aacute;c dịp đặc biệt.</p>\r\n\r\n<p>Sản phẩm của: Phụ kiện thời trang RY-A</p>\r\n\r\n<p>Địa chỉ: 15/60 Khu&ocirc;ng Việt, P. Ph&uacute; Trung, Q. T&acirc;n Ph&uacute;, TP. Hồ Ch&iacute; Minh</p>\r\n\r\n<p>Xuất xứ: Việt Nam</p>\r\n\r\n<p>Kẹp bấm c&oacute; sống, chất liệu kim loại.</p>\r\n\r\n<p>Trang tr&iacute; nơ ruy băng.</p>\r\n\r\n<p>Sản phẩm d&ugrave;ng kẹp nửa t&oacute;c hoặc d&agrave;nh cho t&oacute;c vừa.</p>\r\n\r\n<p>K&iacute;ch thước nơ: 11x6cm</p>\r\n\r\n<p>K&iacute;ch thước kẹp: 8cm, bản 1cm</p>\r\n\r\n<p>Giữ cho m&aacute;i t&oacute;c bạn th&ecirc;m duy&ecirc;n d&aacute;ng khi đi chơi, đi l&agrave;m hoặc dự tiệc.</p>\r\n\r\n<p>Sản phẩm n&agrave;y l&agrave; m&oacute;n qu&agrave; tặng tuyệt vời cho người th&acirc;n y&ecirc;u trong c&aacute;c dịp đặc biệt.</p>\r\n\r\n<p>Sản phẩm của: Phụ kiện thời trang RY-A</p>\r\n\r\n<p>Địa chỉ: 15/60 Khu&ocirc;ng Việt, P. Ph&uacute; Trung, Q. T&acirc;n Ph&uacute;, TP. Hồ Ch&iacute; Minh</p>\r\n\r\n<p>Xuất xứ: Việt Nam</p>\r\n\r\n<p>Kẹp bấm c&oacute; sống, chất liệu kim loại.</p>\r\n\r\n<p>Trang tr&iacute; nơ ruy băng.</p>\r\n\r\n<p>Sản phẩm d&ugrave;ng kẹp nửa t&oacute;c hoặc d&agrave;nh cho t&oacute;c vừa.</p>\r\n\r\n<p>K&iacute;ch thước nơ: 11x6cm</p>\r\n\r\n<p>K&iacute;ch thước kẹp: 8cm, bản 1cm</p>\r\n\r\n<p>Giữ cho m&aacute;i t&oacute;c bạn th&ecirc;m duy&ecirc;n d&aacute;ng khi đi chơi, đi l&agrave;m hoặc dự tiệc.</p>\r\n\r\n<p>Sản phẩm n&agrave;y l&agrave; m&oacute;n qu&agrave; tặng tuyệt vời cho người th&acirc;n y&ecirc;u trong c&aacute;c dịp đặc biệt.</p>\r\n\r\n<p>Sản phẩm của: Phụ kiện thời trang RY-A</p>\r\n\r\n<p>Địa chỉ: 15/60 Khu&ocirc;ng Việt, P. Ph&uacute; Trung, Q. T&acirc;n Ph&uacute;, TP. Hồ Ch&iacute; Minh</p>\r\n\r\n<p>Xuất xứ: Việt Nam</p>\r\n', '5', 20, 0, 10, 80000, 80000, '2022-05-20 16:29:05', '2', '2022-05-20 16:29:05', '2', 1, 1, 1, '', ''),
(4, 3, 'CÀI TÓC LÔNG CỪU XOẮN HÌNH TAI GẤU SỐ 67', 'cai-toc-long-cuu-xoan-hinh-tai-gau-so-67', '24-1.jpg', '24-1.jpg#24-2.jpg', 'Băng Đô Cài Tóc lông cừu xoắn có thiết kế xinh xắn, đáng yêu, mang lại vẻ xinh xắn cho bạn gái.\r\n\r\nBăng đô có thiết kế đơn giản, phối màu nhẹ nhàng, nữ tính\r\n\r\nPhụ kiện đơn giản phù hợp với các bạn nữ và phù hợp với nhiều trang phục.', '<h1>Từ năm ngo&aacute;i đến giờ, những m&oacute;n phụ kiện t&oacute;c b&aacute;nh b&egrave;o m&agrave; đặc biệt l&agrave; bờm nơ, băng đ&ocirc; vải&hellip; ng&agrave;y c&agrave;ng chứng tỏ sức h&uacute;t m&atilde;nh liệt đối với c&aacute;c t&iacute;n đồ thời trang.</h1>\r\n\r\n<h1>Cho d&ugrave; t&oacute;c x&otilde;a quyến rũ, t&oacute;c thẳng, t&oacute;c tết hay t&oacute;c b&uacute;i th&igrave; băng đ&ocirc; c&agrave;i t&oacute;c turban cũng lu&ocirc;n thể hiện được sự đ&aacute;ng y&ecirc;u v&agrave; phong c&aacute;ch.</h1>\r\n\r\n<h1>Cho d&ugrave; bạn l&agrave; c&ocirc; n&agrave;ng c&aacute; t&iacute;nh hay s&agrave;nh điệu th&igrave; băng đ&ocirc; c&agrave;i t&oacute;c sẽ trở th&agrave;nh điểm nhấn cho bạn trong m&ugrave;a h&egrave; n&agrave;y.</h1>\r\n\r\n<h1>Ngo&agrave;i c&ocirc;ng dụng vừa l&agrave;m đẹp th&igrave; chị em c&ograve;n c&oacute; thể sử dụng băng đ&ocirc; để l&agrave;m gọn g&agrave;ng trong mỗi lần tẩy trang hay trang điểm.</h1>\r\n\r\n<h1>H&ocirc;m nay,&nbsp;<a href=\"https://amansaigon.com/\">A Mẫn</a>&nbsp;xin giới thiệu đến chị em mẫu&nbsp;<a href=\"https://amansaigon.com/\">Băng đ&ocirc; c&agrave;i t&oacute;c</a>&nbsp;l&ocirc;ng cừu xoắn cực k&igrave; xinh xắn đ&aacute;ng y&ecirc;u</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/01/C%C3%A0i-t%C3%B3c-tai-g%E1%BA%A5u-s%E1%BB%91-67-7.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1><strong>ĐẶC ĐIỂM NỔI BẬT</strong></h1>\r\n\r\n<h1>Băng Đ&ocirc;&nbsp;<a href=\"https://amansaigon.com/\">C&agrave;i T&oacute;c</a>&nbsp;l&ocirc;ng cừu xoắn c&oacute; thiết kế xinh xắn, đ&aacute;ng y&ecirc;u, mang lại vẻ xinh xắn cho bạn g&aacute;i.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/01/C%C3%A0i-t%C3%B3c-tai-g%E1%BA%A5u-s%E1%BB%91-67-6.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Băng Đ&ocirc; c&agrave;i t&oacute;c l&ocirc;ng cừu xoắn c&oacute; m&agrave;u nhẹ nh&agrave;ng</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/01/C%C3%A0i-t%C3%B3c-tai-g%E1%BA%A5u-s%E1%BB%91-67-8.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Băng đ&ocirc; c&oacute;&nbsp;<a href=\"https://amansaigon.com/\">thiết kế</a>&nbsp;đơn giản, phối m&agrave;u nhẹ nh&agrave;ng, nữ t&iacute;nh</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/01/C%C3%A0i-t%C3%B3c-tai-g%E1%BA%A5u-s%E1%BB%91-67-4.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Phụ kiện đơn giản ph&ugrave; hợp với c&aacute;c bạn nữ v&agrave; ph&ugrave; hợp với nhiều trang phục.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/01/C%C3%A0i-t%C3%B3c-tai-g%E1%BA%A5u-s%E1%BB%91-67-5.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/01/C%C3%A0i-t%C3%B3c-tai-g%E1%BA%A5u-s%E1%BB%91-67-3.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/01/C%C3%A0i-t%C3%B3c-tai-g%E1%BA%A5u-s%E1%BB%91-67-2.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/01/C%C3%A0i-t%C3%B3c-tai-g%E1%BA%A5u-s%E1%BB%91-67-1.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '4', 100, 1, 5, 40000, 40000, '2017-05-23 21:36:00', '4', '2022-05-19 15:15:47', '2', 1, 1, 1, '', ''),
(5, 2, 'MŨ CÓI CỘT DÂY NƠ REN TIỂU THƯ', 'mu-coi-cot-day-no-ren-tieu-thu', '14-1.jpg', '14-1.jpg#14-2.jpg#14-3.jpg', 'Mũ cói cột dây nơ ren này rất linh hoạt với nhiều dáng mũ được nhấn nhá thêm dây buộc dạng ren cực kỳ điệu đà.', '<p>Mũ c&oacute;i cột d&acirc;y nơ ren n&agrave;y rất linh hoạt với nhiều d&aacute;ng mũ được nhấn nh&aacute; th&ecirc;m d&acirc;y buộc dạng ren cực kỳ điệu đ&agrave;.</p>\r\n\r\n<p>Với mũ c&oacute;i buộc d&acirc;y, bạn thử uốn xoăn nhẹ cho t&oacute;c kết hợp buộc thấp xem, đảm bảo xinh y&ecirc;u v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>Đ&ecirc;̉ t&ocirc;n l&ecirc;n triệt để n&eacute;t tiểu thư, bạn n&ecirc;n kết hợp mũ c&ugrave;ng những chiếc v&aacute;y maxi hay vintage</p>\r\n\r\n<p>Chất liệu chiếc mũ n&agrave;y cực k&igrave; mềm mại, kh&ocirc;ng hề g&acirc;y cấn hay kh&oacute; chịu khi mang nha.</p>\r\n\r\n<p>Điểm tuyệt đối cho sự th&ocirc;ng tho&aacute;ng của em n&agrave;y, em n&agrave;y được c&aacute;c chị em đ&aacute;nh gi&aacute; cao về sự th&ocirc;ng tho&aacute;ng, kh&ocirc;ng hề bị b&iacute; hơi như những chiếc n&oacute;n th&ocirc;ng thường nha!!!</p>\r\n\r\n<p>Mũ c&oacute;i cột d&acirc;y nơ ren n&agrave;y rất linh hoạt với nhiều d&aacute;ng mũ được nhấn nh&aacute; th&ecirc;m d&acirc;y buộc dạng ren cực kỳ điệu đ&agrave;.</p>\r\n\r\n<p>Với mũ c&oacute;i buộc d&acirc;y, bạn thử uốn xoăn nhẹ cho t&oacute;c kết hợp buộc thấp xem, đảm bảo xinh y&ecirc;u v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>Đ&ecirc;̉ t&ocirc;n l&ecirc;n triệt để n&eacute;t tiểu thư, bạn n&ecirc;n kết hợp mũ c&ugrave;ng những chiếc v&aacute;y maxi hay vintage</p>\r\n\r\n<p>Chất liệu chiếc mũ n&agrave;y cực k&igrave; mềm mại, kh&ocirc;ng hề g&acirc;y cấn hay kh&oacute; chịu khi mang nha.</p>\r\n\r\n<p>Điểm tuyệt đối cho sự th&ocirc;ng tho&aacute;ng của em n&agrave;y, em n&agrave;y được c&aacute;c chị em đ&aacute;nh gi&aacute; cao về sự th&ocirc;ng tho&aacute;ng, kh&ocirc;ng hề bị b&iacute; hơi như những chiếc n&oacute;n th&ocirc;ng thường nha!!!</p>\r\n\r\n<p>Mũ c&oacute;i cột d&acirc;y nơ ren n&agrave;y rất linh hoạt với nhiều d&aacute;ng mũ được nhấn nh&aacute; th&ecirc;m d&acirc;y buộc dạng ren cực kỳ điệu đ&agrave;.</p>\r\n\r\n<p>Với mũ c&oacute;i buộc d&acirc;y, bạn thử uốn xoăn nhẹ cho t&oacute;c kết hợp buộc thấp xem, đảm bảo xinh y&ecirc;u v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>Đ&ecirc;̉ t&ocirc;n l&ecirc;n triệt để n&eacute;t tiểu thư, bạn n&ecirc;n kết hợp mũ c&ugrave;ng những chiếc v&aacute;y maxi hay vintage</p>\r\n\r\n<p>Chất liệu chiếc mũ n&agrave;y cực k&igrave; mềm mại, kh&ocirc;ng hề g&acirc;y cấn hay kh&oacute; chịu khi mang nha.</p>\r\n\r\n<p>Điểm tuyệt đối cho sự th&ocirc;ng tho&aacute;ng của em n&agrave;y, em n&agrave;y được c&aacute;c chị em đ&aacute;nh gi&aacute; cao về sự th&ocirc;ng tho&aacute;ng, kh&ocirc;ng hề bị b&iacute; hơi như những chiếc n&oacute;n th&ocirc;ng thường nha!!!</p>\r\n\r\n<p>&nbsp;</p>\r\n', '3', 120, 1, 7, 170000, 170000, '2017-05-23 21:41:31', '4', '2022-05-19 14:38:13', '2', 1, 1, 1, '', ''),
(60, 2, 'NÓN BUCKET XỐP DÚM THỜI TRANG', 'non-bucket-xop-dum-thoi-trang', '7ffd61c59adfca89b4c96c84975ca5e4.jpg', 'b4d82668354e3f1620254e3067043293.jpg#a86afd5ff840a12606fed0f56b3dc41c.jpg', 'Mẫu nón này có thiết kế form đứng, phần viền mềm rũ xuống.\r\n\r\nNét tinh tế nhất trong thiết kế của nón bucket giả lông cừu này chính là sự hòa hợp giữa vẻ cổ điển, và sự hiện đại.\r\n\r\nKhông tạo ra cảm giác cồng kềnh khi đội, chiếc nón này có dạng giả lông cừu, được thiết kế khá gọn nhẹ, nhưng vẫn giữ ấm cho phần đầu của bạn.\r\n\r\nVới nhiều màu sắc đa dạng, bạn có thể thoải mái lựa chọn cho mình những chiếc mũ ưng ý theo sở thích.\r\n\r\nKích thước khoảng 56 ~ 58 cm, đảm bảo thích hợp với mọi người.', '<p>Giữa thời điểm m&ugrave;a đ&ocirc;ng đang cận kề, những chiếc n&oacute;n lưỡi trai tạm thời cất gọn, thay v&agrave;o đ&oacute; l&agrave; những chiếc mũ l&ocirc;ng với nhiều kiểu d&aacute;ng kh&aacute;c nhau, vừa gi&uacute;p bạn ấm &aacute;p, lại vừa thời thượng khi bắt kịp trend thời trang trong những thời khắc giao m&ugrave;a cuối năm.&nbsp;</p>\r\n\r\n<p>H&atilde;y c&ugrave;ng A Mẫn S&agrave;i G&ograve;n kh&aacute;m ph&aacute; mẫu&nbsp;<a href=\"https://amansaigon.com/\">n&oacute;n bucket</a>&nbsp;xốp d&uacute;m đang trở th&agrave;nh hot trend trong m&ugrave;a đ&ocirc;ng năm nay nh&eacute;!</p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%93N-BUCKET-X%E1%BB%90P-D%C3%9AM-TH%E1%BB%9CI-TRANG-2.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>Mẫu n&oacute;n n&agrave;y c&oacute; thiết kế form đứng, phần viền mềm rũ xuống.</p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%93N-BUCKET-X%E1%BB%90P-D%C3%9AM-TH%E1%BB%9CI-TRANG-19.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p>N&eacute;t tinh tế nhất trong thiết kế của&nbsp;<a href=\"https://amansaigon.com/\">n&oacute;n bucket</a>&nbsp;xốp d&uacute;m n&agrave;y ch&iacute;nh l&agrave; sự h&ograve;a hợp giữa vẻ cổ điển, v&agrave; sự hiện đại. Kh&ocirc;ng tạo ra cảm gi&aacute;c cồng kềnh khi đội, chiếc n&oacute;n n&agrave;y c&oacute; dạng giả l&ocirc;ng cừu, được thiết kế kh&aacute; gọn nhẹ, nhưng vẫn giữ ấm cho phần đầu của bạn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%93N-BUCKET-X%E1%BB%90P-D%C3%9AM-TH%E1%BB%9CI-TRANG-8.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%93N-BUCKET-X%E1%BB%90P-D%C3%9AM-TH%E1%BB%9CI-TRANG-20.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%93N-BUCKET-X%E1%BB%90P-D%C3%9AM-TH%E1%BB%9CI-TRANG-12.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%93N-BUCKET-X%E1%BB%90P-D%C3%9AM-TH%E1%BB%9CI-TRANG-4.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%93N-BUCKET-X%E1%BB%90P-D%C3%9AM-TH%E1%BB%9CI-TRANG-5.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%93N-BUCKET-X%E1%BB%90P-D%C3%9AM-TH%E1%BB%9CI-TRANG-1.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p>Với nhiều m&agrave;u sắc đa dạng, bạn c&oacute; thể thoải m&aacute;i lựa chọn cho m&igrave;nh những chiếc mũ ưng &yacute; theo sở th&iacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%93N-BUCKET-X%E1%BB%90P-D%C3%9AM-TH%E1%BB%9CI-TRANG-10.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%93N-BUCKET-X%E1%BB%90P-D%C3%9AM-TH%E1%BB%9CI-TRANG-13.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p>K&iacute;ch thước được lấy theo tỉ lệ cơ bản của v&ugrave;ng đầu khoảng 56 ~ 58 cm, đảm bảo th&iacute;ch hợp với mọi người</p>\r\n', '5', 33, 17, 0, 130000, 130000, '2022-05-20 12:59:32', '2', '2022-05-20 13:01:10', '2', 1, 1, 1, '', ''),
(30, 1, 'Thắt lưng da ulzzang mặt vuông đai kim loại tuỳ chỉnh ', 'that-lung-da-ulzzang-mat-vuong-dai-kim-loai-tuy-chinh', '25-1.jpg', '25-1.jpg#25-2.jpg#25-1.jpg', 'Giới thiệu Thắt lưng da ulzzang mặt vuông đai kim loại tuỳ chỉnh (Có sẵn/ảnh thật)\r\n???????????? #Thắt_lưng_da mặt vuông da nhám mới về.', '<div style=\"background:#eeeeee;border:1px solid #cccccc;padding:5px 10px;\">Chất lượng lắm khách nha, đường may tỉ mỉ, chất da đẹp dày dặn sịn sò????<br />\r\n( Dây dài 110cm, ngan 2,5cm mặt vuông ôm sát dây da n&ecirc;n tự điều chỉnh rộng chật được^^, tiện lợi hơn loại cài lỗ rất nhiều đó ạ????)<br />\r\n&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;<br />\r\n<img alt=\"Thắt lưng da ulzzang mặt vuông đai kim loại tuỳ chỉnh (Có sẵn/ảnh thật)\" src=\"https://cf.shopee.vn/file/350a7a7dcc47884b80a55242b0348f7c\" style=\"height:525px; width:525px\" /><br />\r\n???? COCA STORE_: Gian2 149 Trần Hữu Tước, HN (Bên trong cửa hàng CHAMBRE)<br />\r\n???? OPEN: 8h00 - 22h00<br />\r\n???? 098 513 2907<br />\r\n-INS: https://instagram.com/coca.store_<br />\r\n-SHOPEE: https://shopee.vn/cocastores<br />\r\n-WEBSITE: http://Coca.net.vn<br />\r\n???? ẢNH THẬT 100%, COCA cam kết chất lượng và form dáng của sản phẩm nên nàng yên tâm đặt hàng nhé^^<br />\r\n#phongtron #aophong #tshirt #quansuong #quanke #hanoishop #saigonshop #setaovoan #aohaiday #hoodie #sweater #mockhoa #mocchiakhoa #mockhoaech #muluoitrai #mũ #nón #mule #set #setquanao #somi #aosomi #somitrang #tất #vớ #tấtcaocổ</div>\r\n', '1', 100, 1, 0, 90000, 90000, '2017-05-23 18:51:26', '6', '2022-05-19 15:19:58', '2', 1, 1, 1, '', ''),
(31, 1, 'Thắt Lưng Gúcci nữ,Dây Lưng Gúcci nữ Siêu xinh đẹp', 'that-lung-gucci-nu-day-lung-gucci-nu-sieu-xinh-dep', '26-1.jpg', '26-1.jpg#26-2.jpg#26-1.jpg', 'Thắt Lưng Gúcci nữ,Dây Lưng Gúcci nữ Siêu xinh đẹp, Siêu dễ thương ♥️♥️♥️', '<h2>Giới thiệu Thắt Lưng G&uacute;cci nữ,D&acirc;y Lưng G&uacute;cci nữ Si&ecirc;u xinh đẹp, Si&ecirc;u dễ thương &hearts;️&hearts;️&hearts;️</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<ul>\r\n		<li>______G&Oacute;C PHỤ KIỆN _______<br />\r\n		❌thắt lưng Gucci<br />\r\n		<img alt=\"Thắt Lưng Gúcci nữ,Dây Lưng Gúcci nữ Siêu xinh đẹp, Siêu dễ thương ♥️♥️♥️\" src=\"https://cf.shopee.vn/file/d901f5009e00673da1bc741a837467ac\" style=\"height:525px; width:525px\" /><br />\r\n		????d&acirc;y da thật + mặt kim kh&iacute; đ&uacute;c nguy&ecirc;n khối<br />\r\n		????1 Set bao gồm : một d&acirc;y da + một mặt logo</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '3', 50, 11, 0, 180000, 180000, '2017-05-23 18:54:38', '6', '2022-05-19 15:23:42', '2', 1, 1, 1, '', ''),
(7, 2, 'NÓN BUCKET THÁI CON MỰC', 'non-bucket-thai-con-muc', '15-1.jpg', '15-1.jpg#15-2.jpg#15-3.jpg#15-1.jpg#', 'Chiếc nón này có thiết kế như nhiều loại nón cùng loại tuy nhiên với một chiều cao được “hack” thì người dùng sẽ cảm thấy chiếc nón này sâu hơn những loại bình thường rất nhiều.', '<h1>Đối với những t&iacute;n đồ thời trang, phụ kiện ch&iacute;nh l&agrave; một trong những nh&acirc;n tố quan trọng tạo n&ecirc;n sự độc đ&aacute;o, ấn tượng v&agrave; kh&aacute;c biệt ở mỗi người. Một trong những loại phụ kiện rất phổ biến, kh&ocirc;ng thể kh&ocirc;ng nhắc đến đ&oacute; ch&iacute;nh l&agrave; những chiếc mũ. Mũ bucket &ndash; phụ kiện thời trang với bề d&agrave;y lịch sử kh&aacute; ấn tượng</h1>\r\n\r\n<h1>H&ocirc;m nay A Mẫn xin giới thiệu đến bạn một mẫu n&oacute;n bucket mới l&agrave; n&oacute;n bucket 1 mặt con mực.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/01/N%C3%93N-BUCKET-TH%C3%81I-CON-M%E1%BB%B0C-6.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>ĐẶC ĐIỂM NỔI BẬT</h1>\r\n\r\n<h1>Đầu ti&ecirc;n nhất l&agrave; thiết kế, chiếc n&oacute;n n&agrave;y c&oacute; thiết kế như nhiều loại n&oacute;n c&ugrave;ng loại tuy nhi&ecirc;n với một chiều cao được &ldquo;hack&rdquo; th&igrave; người d&ugrave;ng sẽ cảm thấy chiếc n&oacute;n n&agrave;y s&acirc;u hơn những loại b&igrave;nh thường rất nhiều.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/01/N%C3%93N-BUCKET-TH%C3%81I-CON-M%E1%BB%B0C-7.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Chất vải Cotton thấm h&uacute;t si&ecirc;u tốt, đảm bảo kh&ocirc;ng hề b&iacute; hơi v&igrave; loại vải n&agrave;y cũng rất tho&aacute;ng kh&iacute;.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/01/N%C3%93N-BUCKET-TH%C3%81I-CON-M%E1%BB%B0C-8.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>M&agrave;u sắc đa dạng, thiết kế đơn giản, dễ d&agrave;ng phối đồ. Đ&acirc;y trở th&agrave;nh một item kh&ocirc;ng thể thiếu trong c&aacute;c set đồ thời trang của giới trẻ hiện nay.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/01/N%C3%93N-BUCKET-TH%C3%81I-CON-M%E1%BB%B0C-3.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Ph&ugrave; hợp với loại lứa tuổi, mọi giới t&iacute;nh, trong mọi trường hợp, đ&acirc;y quả thật ch&iacute;nh l&agrave; một mẫu n&oacute;n đ&aacute;ng được mong chờ phải kh&ocirc;ng n&agrave;o?! C&ograve;n chần chờ g&igrave; m&agrave; kh&ocirc;ng đến A Mẫn sắm ngay cho m&igrave;nh một c&aacute;i !!!</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/01/N%C3%93N-BUCKET-TH%C3%81I-CON-M%E1%BB%B0C-4.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/01/N%C3%93N-BUCKET-TH%C3%81I-CON-M%E1%BB%B0C-5.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/01/N%C3%93N-BUCKET-TH%C3%81I-CON-M%E1%BB%B0C-2.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/01/N%C3%93N-BUCKET-TH%C3%81I-CON-M%E1%BB%B0C-1.jpg\" style=\"height:720px; width:720px\" /></p>\r\n', '4', 55, 14, 0, 110000, 110000, '2017-05-23 21:51:13', '4', '2022-05-19 14:43:37', '2', 1, 1, 1, '', ''),
(8, 1, 'Thắt lưng đai vuông L&D', 'that-lung-dai-vuong-l-d', '36-1.jpg', '36-1.jpg#36-2.jpg', 'Thắt lưng đai vuông L&D (Thắt lưng khuyên)', '<h2>Giới thiệu Thắt lưng đai vu&ocirc;ng L&amp;D (Thắt lưng khuy&ecirc;n)</h2>\r\n\r\n<p>???????????????????? Thắt lưng khuy&ecirc;n ch&aacute;y h&agrave;ng sau bao l&acirc;u e lại về h&agrave;ng trả kh&aacute;ch đ&acirc;y<br />\r\n????Mẫu thắt lưng chất chơi, ứng dụng đa đạng với c&aacute;c loại quần. Chất Da tổng hợp<br />\r\n????Ảnh thật chụp tại shop nha mn<br />\r\nSỉ 10k/1c<br />\r\nKm cho 10 bạn đặt h&agrave;ng qua shoppee theo link n&agrave;y đc mua h&agrave;ng với gi&aacute; km 8k/1c<br />\r\n<img alt=\"Thắt lưng đai vuông L&amp;D (Thắt lưng khuyên)\" src=\"https://cf.shopee.vn/file/34145b62ec3f239aef3fd5cbf24bced8\" style=\"height:525px; width:525px\" /></p>\r\n', '4', 30, 3, 0, 90000, 90000, '2017-05-23 21:53:52', '4', '2022-05-19 16:49:23', '2', 1, 1, 1, '', ''),
(64, 7, '    Lens mắt Auburn Brown', 'lens-mat-auburn-brown', '41-1.jpg', '41-1.jpg#41-2.jpg', 'Màu sắc : Nâu ca cao\r\n\r\nĐường kính màu : 13.8mm\r\n\r\nĐường kính : 14.0mm', '<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/nychic/auburn-brown/lens-han-quoc.jpg\" style=\"height:500px; width:1000px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/nychic/auburn-brown/kinh-ap-trong.jpg\" style=\"height:500px; width:1000px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-auburn-brown\">Auburn Brown</a>&nbsp;được thiết kế v&agrave; sản xuất theo c&ocirc;ng nghệ h&oacute;a m&agrave;u ti&ecirc;n tiến H&agrave;n Quốc. Lens c&oacute; m&agrave;u n&acirc;u đậm từ ngo&agrave;i v&agrave;o trong, c&oacute; c&aacute;c v&acirc;n n&acirc;u khi đeo v&agrave;o mặt, c&aacute;c tia n&acirc;u hướng từ trong ra ngo&agrave;i gi&uacute;p mắt bạn long lanh v&agrave; c&oacute; m&agrave;u n&acirc;u đậm.</p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-auburn-brown\">Auburn Brown</a>&nbsp;c&oacute; đường k&iacute;nh 14.0mm l&agrave; d&ograve;ng k&iacute;nh &aacute;p tr&ograve;ng, lấy cảm hứng từ đ&ocirc;i mắt n&acirc;u của người &Aacute; Đ&ocirc;ng, n&ecirc;n vừa với nh&atilde;n cầu người Việt v&agrave; t&ocirc; điểm th&ecirc;m vẻ đẹp v&agrave; long lanh của đ&ocirc;i mắt.&nbsp;<a href=\"https://lensstore.vn/lens-mat-auburn-brown\">Auburn Brown</a>&nbsp;sử dụng 1 ng&agrave;y, rất ph&ugrave; hợp với chị em đi dự tiệc, đi chơi bạn b&egrave; ... l&agrave;m m&igrave;nh nỗi bật hơn trong đ&aacute;m đ&ocirc;ng. Lens c&oacute; m&agrave;u n&acirc;u động tạo ấn tượng mạnh với những người xung quanh, gi&uacute;p bạn tự tin v&agrave; năng động hơn</p>\r\n\r\n<p><a href=\"https://lensstore.vn/auburn-brown\">Auburn Brown</a>&nbsp;l&agrave; lens 1 ng&agrave;y c&oacute; thời gian sử dụng tối đa 12h/ng&agrave;y, nhưng tốt nhất bạn n&ecirc;n đeo 8h/ng&agrave;y. V&igrave; thời gian đeo k&eacute;o d&agrave;i l&agrave;m ma s&aacute;t giữa lens v&agrave; gi&aacute;c mạc l&agrave;m kh&ocirc; mắt, bạn c&oacute; thể sử dụng thuốc nhỏ mắt để b&ocirc;i trơn v&agrave; bảo vệ mắt tốt hơn.</p>\r\n\r\n<p>Hiện tại tr&ecirc;n thị trường c&oacute; nhiều người b&aacute;n&nbsp;<a href=\"https://lensstore.vn/lens-1-ngay\">lens 1 ng&agrave;y</a>, lens gi&aacute; rẻ nhưng kh&ocirc;ng giải th&iacute;ch r&otilde; cho người d&ugrave;ng. Dẫn đến người mua về sử dụng lại rất nhiều lần v&agrave; g&acirc;y k&iacute;ch ứng cho măt, g&acirc;y đỏ mắt, cộm mắt.</p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-auburn-brown\">Auburn Brown</a>&nbsp;thuộc nh&atilde;n hiệu&nbsp;<a href=\"https://lensstore.vn/europa\">Europa</a>&nbsp;của H&agrave;n Quốc được&nbsp;<a href=\"https://lensstore.vn/\">Lens - Store</a>&nbsp;nhập khẩu ch&iacute;nh h&atilde;ng v&agrave; ph&acirc;n phối tại thị trường Việt Nam.</p>\r\n', '6', 20, 0, 20, 110000, 110000, '2022-05-20 16:56:54', '2', '2022-05-20 16:56:54', '2', 1, 1, 0, '', ''),
(32, 2, 'NÓN CÓI VÀNH CONG', 'non-coi-vanh-cong', '16-1.jpg', '16-1.jpg#16-2.jpg', 'Thiết kế nhỏ gọn, giúp trông nhẹ nhàng và tinh tế hơn\r\nChất liệu cối mềm, thoáng mát cho ngày hè nóng bức\r\nNón Cói Không những đi biển, nón còn dùng trong những hoạt động hằng ngày như dạo phố, picnic', '<h1>N&oacute;n C&oacute;i Kh&ocirc;ng những đi biển, n&oacute;n c&ograve;n d&ugrave;ng trong những hoạt động hằng ng&agrave;y như dạo phố, picnic Gi&aacute; trị của chiếc mũ C&oacute;i c&agrave;ng tăng khi phối với những trang phục nữa t&iacute;nh, kh&ocirc;ng nhất thiết phải l&agrave; v&aacute;y khi kết hợp với chiếc quần jean c&ugrave;ng chiếc &aacute;o trắng cũng thể hiện được sự năng động, trẻ trung.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/04/n%C3%B3n-c%C3%B3i-9-8.jpg\" style=\"height:563px; width:563px\" /></p>\r\n\r\n<h1>ĐẶT ĐIỂM NỔI BẬT</h1>\r\n\r\n<h1>Thiết kế trẻ trung theo kiểu H&agrave;n.</h1>\r\n\r\n<h1>Ph&ugrave; hợp cho cả m&ugrave;a Xu&acirc;n, Thu, H&egrave;, khi bạn đi du lịch, đi biển, đi c&aacute;c v&ugrave;ng cao Như Đ&agrave; Lạt, v&agrave; c&aacute;c v&ugrave;ng n&ocirc;ng th&ocirc;n.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/04/n%C3%B3n-c%C3%B3i-9-9.jpg\" style=\"height:563px; width:563px\" /></p>\r\n\r\n<h1>Chất liệu: c&oacute;i tho&aacute;ng m&aacute;t, mềm mại cực kỳ thoải m&aacute;i khi đội.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/04/n%C3%B3n-c%C3%B3i-9-11.jpg\" style=\"height:563px; width:563px\" /></p>\r\n\r\n<h1>K&iacute;ch thước: V&agrave;nh 11cm, Cao n&oacute;n 10cm, V&ograve;ng đầu 56 đến 58cm c&oacute; d&acirc;y để chỉnh k&iacute;ch cỡ hợp với hầu hết cỡ đầu.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/04/n%C3%B3n-c%C3%B3i-9-10.jpg\" style=\"height:480px; width:480px\" /></p>\r\n\r\n<h1>C&oacute; thể quấn gọn lại để mang đi du lịch dễ d&agrave;ng m&agrave; kh&ocirc;ng sợ bị g&atilde;y.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/04/n%C3%B3n-c%C3%B3i-9-12.jpg\" style=\"height:520px; width:520px\" /></p>\r\n', '5', 70, 40, 0, 130000, 130000, '2017-05-23 18:59:00', '6', '2022-05-19 14:48:02', '2', 1, 1, 1, '', ''),
(34, 5, 'Khăn Acne Studios   ', 'khan-acne-studios', '27-1.jpg', '27-1.jpg#27-2.jpg#27-1.jpg', 'Khăn Acne Studios - Aone Studios (chất liệu len cao cấp)', '<h2>&nbsp;</h2>\r\n\r\n<h2>iới thiệu Khăn Acne Studios - Aone Studios (chất liệu len cao cấp)</h2>\r\n\r\n<p>1} Khăn shop b&aacute;n l&agrave; loại len x&ugrave;, d&agrave;y dặn, h&agrave;ng loại 1, kh&ocirc;ng phải loại acne/aone mỏng, len b&oacute;ng mịn gi&aacute; rẻ, shop bao chất, kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;n t&acirc;m mua, kh&ocirc;ng cần đắn đo về chất lượng ạ<br />\r\n2} Kh&aacute;ch c&oacute; thể k&eacute;o sang phải xem bảng m&agrave;u của shop k&egrave;m với ảnh thật chất khăn, shop cam kết ảnh thật 100%, kh&ocirc;ng c&oacute; chỉnh sửa, ch&iacute;nh tay chủ shop chụp :)<br />\r\n3} Kh&aacute;ch k&iacute;ch v&agrave;o từng ph&acirc;n loại sẽ hiện ra số tồn kho, kho c&ograve;n l&agrave; h&agrave;ng c&ograve;n n&ecirc;n kh&aacute;ch cứ thoải m&aacute;i mua kh&ocirc;ng cần lo hết h&agrave;ng nh&aacute;<br />\r\n4} Nếu kh&aacute;ch mua nhiều hơn 1 m&agrave;u, vui l&ograve;ng đặt đ&uacute;ng m&agrave;u m&agrave; m&igrave;nh muốn mua, kh&ocirc;ng n&ecirc;n đặt 2c 1 m&agrave;u v&agrave; nhắn shop 2 m&agrave;u, v&igrave; lượng đơn h&agrave;ng ng&agrave;y nhiều n&ecirc;n shop c&oacute; thể kh&ocirc;ng thể xem hết đc tin nhắn ch&aacute;t, rất mong kh&aacute;ch th&ocirc;ng cảm v&agrave; ch&uacute; &yacute; gi&uacute;p shop nh&eacute;<br />\r\n<img alt=\"Khăn Acne Studios - Aone Studios (chất liệu len cao cấp)\" src=\"https://cf.shopee.vn/file/d6633a3070d615539f7074ed277b3568\" style=\"height:525px; width:525px\" /><br />\r\n5} Để đặt nhiều m&agrave;u c&ugrave;ng 1 đơn h&agrave;ng, kh&aacute;ch nhấn v&agrave;o m&agrave;u thứ nhất rồi nhấn &quot;Th&ecirc;m v&agrave;o giỏ h&agrave;ng&quot;, l&agrave;m tương tự đến hết, v&agrave; cuối c&ugrave;ng v&agrave;o giỏ h&agrave;ng nhấn v&agrave;o dấu + để chỉnh số lượng muốn mua của mỗi m&agrave;u, NHẤN MUA H&Agrave;NG để ho&agrave;n th&agrave;nh đơn h&agrave;ng nh&eacute;<br />\r\nTH&Ocirc;NG TIN SẢN PHẨM:<br />\r\nACNE STUDIOS - KHĂN LEN L&Ocirc;NG CỪU<br />\r\n- Acne studios/Aone studios d&ugrave;ng được cho mọi lứa tuổi v&agrave; giới t&iacute;nh, nam hay nữ gi&agrave; hay trẻ đều c&oacute; thể d&ugrave;ng được nha, đ&agrave;n &ocirc;ng qu&agrave;ng rất lịch l&atilde;m đ&oacute; lun, mua l&agrave;m qu&agrave; tặng c&aacute;c anh th&igrave; qu&aacute; ho&agrave;n hảo lu&ocirc;n nh&eacute; :))<br />\r\n- Khăn mềm mại, d&agrave;y dặn, chất len x&ugrave; tự nhi&ecirc;n, bản to, k&iacute;ch thước 70x165cm<br />\r\n- Qu&agrave;ng được nhiều kiểu, dễ phối đồ, rất phong c&aacute;ch, rất T&acirc;y ạ</p>\r\n', '4', 100, 20, 10, 210000, 210000, '2017-05-23 19:09:22', '6', '2022-05-19 15:27:38', '2', 1, 1, 1, '', ''),
(35, 5, 'Khăn Choàng Cổ Lụa 2 Mặt Pashmina Màu Xanh', 'khan-choang-co-lua-2-mat-pashmina-mau-xanh', '29-1.jpg', '29-1.jpg#29-1.jpg#29-1.jpg', ' Khăn Choàng Cổ Lụa 2 Mặt Pashmina Màu Xanh.\r\n- Được làm từ chất liệu Pashmina cực mềm mịn và mát tay\r\n- Giúp người dùng có cảm giác vô cùng thoải mái, dễ chịu.', '<h2>Giới thiệu Khăn Cho&agrave;ng Cổ Lụa 2 Mặt Pashmina M&agrave;u Xanh</h2>\r\n\r\n<p>- Khăn Choàng C&ocirc;̉ Lụa 2 Mặt Pashmina M&agrave;u Xanh.<br />\r\nLưu &yacute; : Họa tiết tr&ecirc;n khăn l&agrave; ngẫu nhi&ecirc;n. Chọn M&agrave;u Theo Số H&igrave;nh Ph&iacute;a Tr&ecirc;n..<br />\r\n- Được l&agrave;m từ chất liệu Pashmina cực mềm mịn v&agrave; m&aacute;t tay<br />\r\n- Gi&uacute;p người d&ugrave;ng c&oacute; cảm gi&aacute;c v&ocirc; c&ugrave;ng thoải m&aacute;i, dễ chịu.<br />\r\n<img alt=\"Khăn Choàng Cổ Lụa 2 Mặt Pashmina Màu Xanh\" src=\"https://cf.shopee.vn/file/eb79ee2bac2c3f5af1dd71724bcb7c56\" style=\"height:525px; width:525px\" /><br />\r\n- Tanh khiết kết hợp với những m&agrave;u sắc h&agrave;i h&ograve;a, đa dạng mang đến một vẻ đẹp cực kỳ sang trọng v&agrave; duy&ecirc;n d&aacute;ng.<br />\r\n- Che nắng, che sương, giữ ấm nơi văn ph&ograve;ng&hellip;<br />\r\n- Đi học, đi chơi hay đi l&agrave;m đều d&ugrave;ng được.<br />\r\n- Chị em sẽ thỏa sức biến h&oacute;a, kh&ocirc;ng nh&agrave;m ch&aacute;n m&agrave; lại v&ocirc; c&ugrave;ng xinh đẹp, quyến rũ.<br />\r\n- Nhiều hoa văn đa dạng.</p>\r\n', '1', 45, 3, 12, 160000, 160000, '2017-05-23 19:15:45', '6', '2022-05-19 15:31:54', '2', 1, 1, 1, '', ''),
(37, 54, 'ĐỒNG HỒ NỮ TCPLY – EH3', 'dong-ho-nu-tcply-eh3', '3a77d4cace6f432c8d101ac0c614ac8a.jpg', 'b8efcf0ba5c832d71e13c555530bd282.jpg#2cc96bee911a0696f6d84a8d3d065815.jpg', 'Chất liệu vỏ: Thép không gỉ.\r\n– Chất liệu dây đeo: Thép không gỉ.\r\n– Chất liệu mặt kính: Sapphire.', '<p><strong>Điểm nhấn ấn tượng đến từ những gi&aacute; trị tinh tế, Đồng hồ nữ thời trang cao cấp ELLY &ndash; EH3 gi&uacute;p n&agrave;ng tự tin đ&aacute;nh gục &aacute;nh nh&igrave;n của đối phương với diện mạo, phong c&aacute;ch v&agrave; thần th&aacute;i cuốn h&uacute;t. Trong mỗi khoảnh khắc n&agrave;ng xuất hiện đều sẽ để lại một ấn tượng kh&oacute; phai, ghi dấu ấn đặc biệt. H&atilde;y cũng ELLY chi&ecirc;m ngưỡng thiết kế n&agrave;y ngay b&acirc;y giờ nh&eacute;!</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17141531/O1CN0161Mkwx1mNTxRJ6CAC_134474942.jpg\" style=\"height:739px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17141400/O1CN01Dt8rdU22T0aiB9lle_2025107120.jpg\" style=\"height:974px; width:700px\" /></p>\r\n\r\n<p>Thiết kế mặt số đen họa tiết kết hợp d&acirc;y đeo m&agrave;u gold đẹp tinh tế hay vẻ thanh lịch, điệu đ&agrave; của phi&ecirc;n bản mặt số trắng với d&acirc;y đeo v&agrave;ng sang trọng sẽ thu h&uacute;t n&agrave;ng?</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17141413/O1CN01q8ft2V1mNTxYv0ifc_134474942.jpg\" style=\"height:707px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17141432/O1CN01xWAhH91nnsP1jiXoJ_2206437435135.jpg\" style=\"height:478px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17141450/O1CN012ujNUl1vGupx0vW3O_762526146.jpg\" style=\"height:429px; width:700px\" /></p>\r\n\r\n<p>D&acirc;y đeo thiết kế dạng lưới chất liệu th&eacute;p kh&ocirc;ng gỉ m&agrave;u gold kết hợp c&ugrave;ng kho&aacute; bấm sang trọng in t&ecirc;n thương hiệu ELLY nổi bật nhằm khẳng định nguồn gốc xuất xứ chất lượng sản phẩm!</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17141444/O1CN012NbRNv1nnsP3U3LsS_2206437435135.jpg\" style=\"height:919px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17141455/O1CN012uNtzM1nnsP5uxDQi_2206437435135.jpg\" style=\"height:963px; width:700px\" /></p>\r\n', '3', 10, 0, 10, 2600000, 2600000, '2022-05-20 17:44:21', '2', '2022-05-20 17:44:21', '2', 1, 1, 1, '', ''),
(36, 5, 'Khăn choàng cổ ZARA cao cao cấp', 'khan-choang-co-zara-cao-cao-cap', '28-1.jpg', '28-1.jpg#28-2.jpg#28-2.jpg', 'Khăn choàng cổ ZARA cao cao cấp (chất liệu cotton - nhún - thô, mềm mát mịn)', '<h2>Giới thiệu Khăn cho&agrave;ng cổ ZARA cao cao cấp (chất liệu cotton - nh&uacute;n - th&ocirc;, mềm m&aacute;t mịn)</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<ul>\r\n		<li>Khăn cho&agrave;ng cổ thương hiệu Zara gi&agrave;nh cho người lớn<br />\r\n		L&agrave;m qu&agrave; tặng sang chảnh hết nấc lu&ocirc;n.<br />\r\n		Chất dầy dặn ,ấm lắm lu&ocirc;n ạ,khăn khổ rộng 200*70cm ,thoải m&aacute;i cho&agrave;ng nhiều c&aacute;ch kh&aacute;c nhau.<br />\r\n		<img alt=\"Khăn choàng cổ ZARA cao cao cấp (chất liệu cotton - nhún - thô, mềm mát mịn)\" src=\"https://cf.shopee.vn/file/ffa6e29a3cd7292bdb7e01b1919c2588\" style=\"height:525px; width:525px\" /><br />\r\n		C&oacute; 3 m&agrave;u: đỏ, be-ghi, đỏ - x&aacute;m - ghi<br />\r\n		Sang thu rồi ,nhất định phải sắm 1 chiếc khăn th&ocirc;i ạ, đầu mua đồ bao giờ cũng rẻ v&agrave; đẹp ạ<br />\r\n		Khăn Zara h&agrave;ng xuất dư ạ.<br />\r\n		Giao m&agrave;u sản phẩm ngẫu nhi&ecirc;n.<br />\r\n		Lưu &yacute;: tr&ecirc;n thị trường xuất hiện h&agrave;ng nh&aacute;i sản phẩm nhưng mẫu m&atilde; k&eacute;m chất lượng, kh&ocirc;ng c&oacute; bao b&igrave; giấy cao cấp bọc sản phẩm b&ecirc;n ngo&agrave;i nh&eacute;!</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', '1', 50, 1, 0, 190000, 190000, '2017-05-23 19:17:36', '6', '2022-05-19 15:29:29', '2', 1, 1, 1, '', '');
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(67, 2, 'NÓN BUCKET SỐ 106', 'non-bucket-so-106', '17-1.jpg', '17-1.jpg#17-2.jpg#17-3.jpg', 'Chiếc nón này có thiết kế như nhiều loại nón cùng loại tuy nhiên với một chiều cao được “hack” thì người dùng sẽ cảm thấy chiếc nón này sâu hơn những loại bình thường rất nhiều.\r\n\r\nChất vải Cotton thấm hút siêu tốt, đảm bảo không hề bí hơi vì loại vải này cũng rất thoáng khí.\r\n\r\nMàu sắc đa dạng, thiết kế đơn giản, dễ dàng phối đồ.\r\n\r\nĐây trở thành một item không thể thiếu trong các set đồ thời trang của giới trẻ hiện nay.\r\n\r\nPhù hợp với loại lứa tuổi, mọi giới tính, trong mọi trường hợp.', '<h1>Đối với những t&iacute;n đồ thời trang, phụ kiện ch&iacute;nh l&agrave; một trong những nh&acirc;n tố quan trọng tạo n&ecirc;n sự độc đ&aacute;o, ấn tượng v&agrave; kh&aacute;c biệt ở mỗi người. Một trong những loại phụ kiện rất phổ biến, kh&ocirc;ng thể kh&ocirc;ng nhắc đến đ&oacute; ch&iacute;nh l&agrave; những chiếc mũ. Mũ bucket &ndash; phụ kiện thời trang với bề d&agrave;y lịch sử kh&aacute; ấn tượng</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%B3n-bucket-s%E1%BB%91-106-11.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>ĐẶC ĐIỂM NỔI BẬT</h1>\r\n\r\n<h1>Đầu ti&ecirc;n nhất l&agrave; thiết kế, chiếc n&oacute;n n&agrave;y c&oacute; thiết kế như nhiều loại n&oacute;n c&ugrave;ng loại tuy nhi&ecirc;n với một chiều cao được &ldquo;hack&rdquo; th&igrave; người d&ugrave;ng sẽ cảm thấy chiếc n&oacute;n n&agrave;y s&acirc;u hơn những loại b&igrave;nh thường rất nhiều.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%B3n-bucket-s%E1%BB%91-106-7.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Chất vải Cotton thấm h&uacute;t si&ecirc;u tốt, đảm bảo kh&ocirc;ng hề b&iacute; hơi v&igrave; loại vải n&agrave;y cũng rất tho&aacute;ng kh&iacute;</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%B3n-bucket-s%E1%BB%91-106-8.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>M&agrave;u sắc cơ bản, thiết kế đơn giản, dễ d&agrave;ng phối đồ. Đ&acirc;y trở th&agrave;nh một item kh&ocirc;ng thể thiếu trong c&aacute;c set đồ thời trang của giới trẻ hiện nay</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%B3n-bucket-s%E1%BB%91-106-1.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Ph&ugrave; hợp với loại lứa tuổi, mọi giới t&iacute;nh, trong mọi trường hợp, đ&acirc;y quả thật ch&iacute;nh l&agrave; một mẫu n&oacute;n đ&aacute;ng được mong chờ phải kh&ocirc;ng n&agrave;o?! C&ograve;n chần chờ g&igrave; m&agrave; kh&ocirc;ng đến A Mẫn sắm ngay cho m&igrave;nh một c&aacute;i !</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%B3n-bucket-s%E1%BB%91-106-3.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%B3n-bucket-s%E1%BB%91-106-4.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%B3n-bucket-s%E1%BB%91-106-5.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%B3n-bucket-s%E1%BB%91-106-2.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%B3n-bucket-s%E1%BB%91-106-10.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%B3n-bucket-s%E1%BB%91-106-9.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/N%C3%B3n-bucket-s%E1%BB%91-106-6.jpg\" style=\"height:720px; width:720px\" /></p>\r\n', '3', 50, 11, 0, 110000, 110000, '2017-05-23 19:34:42', '6', '2022-05-19 14:53:01', '2', 1, 1, 1, '', ''),
(9, 2, 'NÓN CÓI VÀNH NHỎ RETRO ', 'non-coi-vanh-nho-retro', '23-1.jpg', '23-1.jpg#23-2.jpg', 'Thiết kế nhỏ gọn, giúp trông nhẹ nhàng và tinh tế hơn\r\nĐược làm từ chất liệu cối mềm, thoáng mát cho ngày hè nóng bức\r\nMũ Cói Che nắng, bảo vệ da, thể hiện sự phong cách, cá tính', '<h1>Những m&oacute;n đồ bằng c&oacute;i lu&ocirc;n c&oacute; sức h&uacute;t m&atilde;nh liệt mỗi khi h&egrave; về. Chất liệu n&agrave;y tuy kh&ocirc;ng mới mẻ nhưng lại lu&ocirc;n l&agrave; điểm nhấn quan trọng mang lại ấn tượng cho bộ trang phục. Năm nay, phụ kiện c&oacute;i chỉ ri&ecirc;ng mũ, gi&agrave;y d&eacute;p hay t&uacute;i x&aacute;ch cũng c&oacute; v&ocirc; số những biến tấu vừa xinh xắn lại c&aacute; t&iacute;nh, thời trang để c&aacute;c n&agrave;ng tha hồ lựa chọn.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/04/n%C3%B3n-c%C3%B3i-11-5.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>ĐẶC ĐIỂM NỔI BẬT</h1>\r\n\r\n<h1>Thiết kế nhỏ gọn, gi&uacute;p tr&ocirc;ng nhẹ nh&agrave;ng v&agrave; tinh tế hơn.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/04/n%C3%B3n-c%C3%B3i-11-7.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Được l&agrave;m từ chất liệu cối mềm, tho&aacute;ng m&aacute;t cho ng&agrave;y h&egrave; n&oacute;ng bức.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/04/n%C3%B3n-c%C3%B3i-11-2.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Mũ C&oacute;i Che nắng, bảo vệ da, thể hiện sự phong c&aacute;ch, c&aacute; t&iacute;nh.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/04/n%C3%B3n-c%C3%B3i-11-6.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>N&oacute;n C&oacute;i Kh&ocirc;ng những đi biển, n&oacute;n c&ograve;n d&ugrave;ng trong những hoạt động hằng ng&agrave;y như dạo phố, picnic.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/04/n%C3%B3n-c%C3%B3i-11-4.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Gi&aacute; trị của chiếc mũ C&oacute;i c&agrave;ng tăng khi phối với những trang phục nữa t&iacute;nh, kh&ocirc;ng nhất thiết phải l&agrave; v&aacute;y khi kết hợp với chiếc quần jean c&ugrave;ng chiếc &aacute;o trắng cũng thể hiện được sự năng động, trẻ trung.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2022/04/n%C3%B3n-c%C3%B3i-11-1.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '5', 80, 14, 0, 140000, 140000, '2017-05-23 19:36:58', '6', '2022-05-19 15:12:52', '2', 1, 1, 1, '', ''),
(10, 3, 'CỘT TÓC VẢI SCRUNCHIES HOA TÍM', 'cot-toc-vai-scrunchies-hoa-tim', '18-1.jpg', '18-1.jpg#18-2.jpg#18-3.jpg#18-1.jpg', 'ược làm bằng vải voan cao cấp, cho bạn cảm giác mịn màng và thoải mái\r\n\r\nMỗi chiếc có một dải cao su bền giữ tóc của bạn tại chỗ mà không làm hại tóc của bạn và dễ dàng và mềm mại khi đeo.\r\n\r\nMàu sắc khác nhau có thể phù hợp với tất cả các màu yêu thích của bạn trong tủ quần áo của bạn và có thể được sử dụng trong nhiều dịp\r\n\r\nMột món quà tuyệt vời cho gia đình bạn bè và chính bạn.\r\n\r\nChiều rộng vải: 4 cm/1.57 inch, độ đàn hồi tốt, có thể kéo dài 21 cm', '<h1>D&acirc;y buộc t&oacute;c vải scrunchies &ldquo;thời &ocirc;ng b&agrave;&rdquo; bất ngờ lại được c&aacute;c ulzzang H&agrave;n Quốc xem như m&oacute;n đồ hot trend. Với phụ kiện n&agrave;y bạn sẽ dễ d&agrave;ng biến h&oacute;a kiểu t&oacute;c cột xinh đẹp m&agrave; bạn g&aacute;i n&agrave;o cũng nhất định phải thử cho m&ugrave;a h&egrave; n&agrave;y</h1>\r\n\r\n<h1>Mu&ocirc;n h&igrave;nh vạn trạng&rdquo; kiểu cột t&oacute;c đẹp m&agrave; bạn nhất định phải thử cho m&ugrave;a h&egrave; n&agrave;y!Một v&ograve;ng vải đơn giản , m&agrave;u sắc tươi s&aacute;ng sẽ khiến m&aacute;i t&oacute;c đu&ocirc;i ngựa của bạn trở n&ecirc;n kh&aacute;c lạ ho&agrave;n to&agrave;n, cực kỳ sang trọng v&agrave; h&uacute;t lấy &aacute;nh nh&igrave;n của mọi người xung quanh.&nbsp;&nbsp;Scrunchies&nbsp;vừa l&agrave;m d&acirc;y buộc t&oacute;c lại vừa đeo tay cực k&igrave; xinh xắn nh&eacute;!</h1>\r\n\r\n<h1>Những ng&ocirc;i sao h&agrave;ng đầu Kpop như Jennie, HyunA, Irene, Seulgi&hellip; đều đ&atilde; v&agrave; đang lăng x&ecirc; mốt chun buộc t&oacute;c vải từ thời &ldquo;&ocirc;ng b&agrave; em&rdquo;. Họ buộc t&oacute;c bằng những chiếc chun vải ngỡ như đ&atilde; lỗi thời tại s&acirc;n bay v&agrave; cũng xem đ&acirc;y l&agrave; m&oacute;n&nbsp;phụ kiện t&oacute;c&nbsp;c&oacute; thể d&ugrave;ng để đeo nơi cổ tay cho mới mẻ, ngầu ngầu.</h1>\r\n\r\n<h1>Xu hướng diện chun buộc t&oacute;c cứ thế được lan toả rộng r&atilde;i v&agrave; đ&atilde; được c&aacute;c mỹ nh&acirc;n Việt như Ngọc Trinh, Thiều Bảo Tr&acirc;m bắt s&oacute;ng. D&ugrave; t&oacute;c d&agrave;i hay t&oacute;c ngắn th&igrave; những chiếc d&acirc;y buộc t&oacute;c xinh xắn n&agrave;y vẫn lu&ocirc;n l&agrave; phụ kiện cực kỳ hữu &iacute;ch lại c&ograve;n bắt trend nữa. Ngo&agrave;i ra sự kết hợp với hot trend hoa c&uacute;c th&igrave; kh&ocirc;ng c&ograve;n ch&ecirc; v&agrave;o đ&acirc;u đ&uacute;ng kh&ocirc;ng n&agrave;o</h1>\r\n\r\n<h1>C&ograve;n bạn, c&ograve;n chần chừ g&igrave; nữa m&agrave; kh&ocirc;ng đến ngay A Mẫn chọn cho m&igrave;nh một em xinh xắn nhỉ?</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-HOA-T%C3%8DM-3.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>ĐẶC ĐIỂM NỔI BẬT</h1>\r\n\r\n<h1>Được l&agrave;m bằng vải voan cao cấp, cho bạn cảm gi&aacute;c mịn m&agrave;ng v&agrave; thoải m&aacute;i</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-HOA-T%C3%8DM-1.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Mỗi chiếc c&oacute; một dải cao su bền giữ t&oacute;c của bạn tại chỗ m&agrave; kh&ocirc;ng l&agrave;m hại t&oacute;c của bạn v&agrave; dễ d&agrave;ng v&agrave; mềm mại khi đeo.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-HOA-T%C3%8DM-8.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>M&agrave;u sắc kh&aacute;c nhau c&oacute; thể ph&ugrave; hợp với tất cả c&aacute;c m&agrave;u y&ecirc;u th&iacute;ch của bạn trong tủ quần &aacute;o của bạn v&agrave; c&oacute; thể được sử dụng trong nhiều dịp</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-HOA-T%C3%8DM-7.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Một m&oacute;n qu&agrave; tuyệt vời cho gia đ&igrave;nh bạn b&egrave; v&agrave; ch&iacute;nh bạn</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-HOA-T%C3%8DM-6.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Chiều rộng vải: 4 cm/1.57 inch, độ đ&agrave;n hồi tốt, c&oacute; thể k&eacute;o d&agrave;i 21 cm</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-HOA-T%C3%8DM-5.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-HOA-T%C3%8DM-4.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-HOA-T%C3%8DM-2.jpg\" style=\"height:720px; width:720px\" /></p>\r\n', '7', 70, 4, 4, 40000, 40000, '2017-05-23 19:43:21', '6', '2022-05-19 14:55:57', '2', 1, 1, 1, '', ''),
(11, 5, 'Khăn lụa vuông satin 70x70 cm Clover', 'khan-lua-vuong-satin-70x70-cm-clover', '30-1.jpg', '30-1.jpg#30-2.jpg#30-1.jpg', 'Khăn lụa satin từ rất lâu đã được xem là một món phụ kiện không thể thiếu trong tủ đồ của các nàng', '<h3>KHĂN LỤA SATIN VU&Ocirc;NG 70x70cm<br />\r\nKhăn lụa satin từ rất l&acirc;u đ&atilde; được xem l&agrave; một m&oacute;n phụ kiện kh&ocirc;ng thể thiếu trong tủ đồ của c&aacute;c n&agrave;ng. Khăn được l&agrave;m từ nhiều chất liệu với c&aacute;c họa tiết v&ocirc; c&ugrave;ng đa dạng, cực kỳ dễ phối đồ v&agrave; linh hoạt sử dụng trong nhiều m&ugrave;a, nhiều ho&agrave;n cảnh đều đẹp. L&agrave; mẫu khăn rất được ưa chuộng bởi vẻ b&oacute;ng đẹp v&agrave; thanh lịch của chất liệu vải lụa<br />\r\nC&oacute; rất nhiều c&aacute;ch biến h&oacute;a những chiếc khăn lụa vu&ocirc;ng mỏng nhẹ th&agrave;nh phụ kiện độc đ&aacute;o, chắc chắn sẽ khiến qu&yacute; c&ocirc; trở n&ecirc;n nổi bật, lộng lẫy hơn bao giờ hết.<br />\r\n-Quấn t&oacute;c - mix với đồ hoặc tạo kiểu t&oacute;c khi đi chơi dạo phố.<br />\r\n- Quấn cổ tay - như một phụ kiện deo tay thật phong c&aacute;ch.<br />\r\n- Cột t&uacute;i x&aacute;ch - trang tr&iacute; cho chiếc t&uacute;i của bạn kh&aacute;c biệt tạm thời.<br />\r\n<img alt=\"Khăn lụa vuông satin 70x70 cm Clover\" src=\"https://cf.shopee.vn/file/ddd6ac4e551b2a448006c5053d1e4c8a\" style=\"height:525px; width:525px\" /><br />\r\n- Qu&agrave;ng cổ &aacute;o sơ mi - tạo style mới cho bạn.<br />\r\n- Khăn đồng phục, mix khi mặc với Vest &amp; &aacute;o sơ mi phá cách.<br />\r\nLựa chọn cho m&igrave;nh những sắc khăn rực rỡ, c&aacute; t&iacute;nh hay sang trọng theo &yacute; th&iacute;ch để kết hợp với set đồ hay phụ kiện ton sur ton để tạo điểm nhấn trong mỗi chuyến đi trong k&igrave; nghỉ của m&igrave;nh nh&eacute; c&aacute;c qu&yacute; c&ocirc;.<br />\r\n***Lưu &yacute; khi giặt v&agrave; bảo quản:<br />\r\n- Giặt tay nhẹ nh&agrave;ng với sữa tắm hoặc dầu gội.<br />\r\n- Phơi ngang tr&ecirc;n m&oacute;c, tr&aacute;nh &aacute;nh nắng trực tiếp.<br />\r\n- Xếp khăn gọn g&agrave;ng để kh&ocirc;ng bị nhăn.<br />\r\n- Chỉ ủi ở nhiệt độ thấp.<br />\r\n- Tr&aacute;nh những vật dụng sắc nhọn l&agrave;m xước<br />\r\n#khanlua #khăn #khanluavuong #khanluasatin #khanluasatinvuong #khanturban #khan70x70 #khandep #khanquangco #khanlen #khanthoitrang #aoyem #khanaoyem #yem #khanlamao</h3>\r\n', '7', 50, 6, 10, 290000, 290000, '2017-05-23 19:48:36', '6', '2022-05-19 15:43:08', '2', 1, 1, 1, '', ''),
(40, 54, 'ĐỒNG HỒ NỮ PELLY  EH10', 'dong-ho-nu-pelly-eh10', '6e70473bc62249446fcfc429f455833f.jpg', 'ce1615e63e57c6006161ec39095fdb01.jpg', 'Gia công lắp ráp tại nhà máy Trung Quốc (theo tiêu chuẩn chất lượng của thương hiệu ELLY)', '<p><strong>Ghi dấu ấn với mặt đồng hồ hoạ tiết trang nh&atilde; biến ELLY &ndash; EH10 trở th&agrave;nh cỗ m&aacute;y thời gian đa sắc m&agrave;u, kho&aacute;c l&ecirc;n m&igrave;nh n&eacute;t đẹp thanh lịch v&agrave; phong c&aacute;ch, c&ugrave;ng lối thiết kế sang trọng đầy ki&ecirc;u h&atilde;nh. Mang hơi thở đi c&ugrave;ng thời đại, ELLY &ndash; EH10 vẫn bứt ph&aacute; mạnh mẽ bắt kịp xu hướng thời trang khi mang l&ecirc;n m&igrave;nh bảng m&agrave;u đa dạng, thời thượng v&agrave; độc đ&aacute;o, m&ecirc; mẩn những t&iacute;n đồ s&agrave;nh mốt.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17102701/0a014c838e33466d1f22.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17102908/O1CN01HurqkY1FLlCoczAUu_3355540471.jpg\" style=\"height:1055px; width:700px\" /></p>\r\n\r\n<p>Phi&ecirc;n bản d&acirc;y đeo m&agrave;u hồng mặt số trắng thanh lịch, ngọt ng&agrave;o</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17102719/4_a44c1f8a-e55f-4c76-bb2d-77b6804320d7.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17102851/7_9b6feb5e-50cf-4291-a30d-b86d1fd58bde.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p>Hay đầy c&aacute; t&iacute;nh v&agrave; nổi bật với phi&ecirc;n bản mặt số m&agrave;u trắng kết hợp d&acirc;y đeo m&agrave;u n&acirc;u</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17102714/2-3.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh sự sắc sảo của đồng hồ, những gam m&agrave;u sang trọng, tựa như m&oacute;n trang sức nhỏ xinh, duy&ecirc;n d&aacute;ng gi&uacute;p n&agrave;ng t&ocirc;n l&ecirc;n vẻ thanh lịch, v&ocirc; c&ugrave;ng chỉn chu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17102844/7_0ee1320a-9f02-4124-9bd5-9240051dc62b.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17102833/5a951a5f0239b.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p>Mặt k&iacute;nh Sapphire trong suốt, độ cứng cao (chống va đập tốt)</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17102828/5a951a5d42333.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p>Đầu n&uacute;m vặn in logo tr&ograve;n sang trọng</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17103025/O1CN019QxaQJ1FLlCkuHZrM_3355540471.jpg\" style=\"height:928px; width:700px\" /></p>\r\n\r\n<p>Mặt số họa tiết với c&aacute;c đường n&eacute;t tinh xảo</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17102941/O1CN01sGDb7g1FLlCc1QKDS_3355540471.jpg\" style=\"height:670px; width:700px\" /><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17102822/5a951a5b956a1.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17102839/5a951a611f501.jpg\" style=\"height:700px; width:700px\" /></p>\r\n', '3', 15, 0, 5, 3100000, 3100000, '2022-05-20 17:22:27', '2', '2022-05-20 17:22:27', '2', 1, 1, 1, '', ''),
(12, 5, 'Khăn Dạ Hàn Quốc ', 'khan-da-han-quoc', '31-1.jpg', '31-1.jpg#31-2.jpg', 'Khăn Dạ Hàn Quốc Loại Dày Màu Trơn Thời Trang Nam Nữ', '<h3><br />\r\nKhăn qu&agrave;ng cổ cực đẹp cực hot<br />\r\nN&oacute;i đến những ng&agrave;y đ&ocirc;ng lạnh, b&ecirc;n cạnh loạt item quen thuộc như &aacute;o len, &aacute;o kho&aacute;c, quần dạ, boots, &hellip; ch&uacute;ng ta kh&ocirc;ng thể kh&ocirc;ng nhắc tới khăn qu&agrave;ng, m&oacute;n phụ kiện m&agrave; hẳn c&ocirc; n&agrave;ng n&agrave;o cũng c&oacute; &iacute;t nhất v&agrave;i c&aacute;i trong tủ đồ của m&igrave;nh. Một set đồ đ&ocirc;ng kh&ocirc;ng chỉ trở n&ecirc;n ấm &aacute;p hơn bội phần m&agrave; sẽ c&ograve;n bắt mắt hơn hẳn khi được phối th&ecirc;m với một chiếc khăn qu&agrave;ng thật hợp &yacute;. Vậy chiếc khăn HOT nhất m&ugrave;a đ&ocirc;ng năm nay<br />\r\nCơn sốt khăn cực đẹp đang l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n c&aacute;c cộng đồng mạng .Với thiết kế đơn giản, m&agrave;u cực t&acirc;y lu&ocirc;n ạ dễ kết hợp đồ ko bao h lỗi mốt, cả nam nữ đều d&ugrave;ng được nha. Khăn cực d&agrave;y 200&times;70 nặng 280gr si&ecirc;u ấm, chất cực đẹp.<br />\r\n<img alt=\"Khăn Dạ Hàn Quốc Loại Dày Màu Trơn Thời Trang Nam Nữ\" src=\"https://cf.shopee.vn/file/ed7af81799306a116898955f2b101656\" style=\"height:525px; width:525px\" /></h3>\r\n', '7', 104, 10, 0, 150000, 150000, '2017-05-23 19:56:05', '6', '2022-05-19 15:47:22', '2', 1, 1, 1, '', ''),
(6, 1, 'DÂY THẮT LƯNG NỮ  PUMA', 'day-that-lung-nu-puma', '7149faa03dc65f452749719914ece4f4.jpg', '00dba76133b01859d80b3875c9cc0407.jpg#04648384335a2d8aaca06a30d6d0211c.jpg', 'Màu sắc: Đen\r\n– Kích thước: 5 x 78 cm (Bản rộng x chiều dài)\r\n– Chất liệu: Da tổng hợp cao cấp nhập khẩu.', '<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2020/01/13085737/Day-lung-nu-cao-cap-da-that-ED46-14.jpg\" style=\"height:1206px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2020/01/13085842/Day-lung-nu-cao-cap-da-that-ED46-1.jpg\" style=\"height:688px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2020/01/13085746/Day-lung-nu-cao-cap-da-that-ED46-12.jpg\" style=\"height:471px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2020/01/13085818/Day-lung-nu-cao-cap-da-that-ED46-6.jpg\" style=\"height:541px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2020/01/13085741/Day-lung-nu-cao-cap-da-that-ED46-13.jpg\" style=\"height:581px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2020/01/13085807/Day-lung-nu-cao-cap-da-that-ED46-7.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2020/01/13085823/Day-lung-nu-cao-cap-da-that-ED46-5.jpg\" style=\"height:748px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2020/01/13085758/Day-lung-nu-cao-cap-da-that-ED46-9.jpg\" style=\"height:700px; width:700px\" /></p>\r\n', '8', 20, 0, 0, 290000, 290000, '2022-05-20 17:07:56', '2', '2022-05-20 17:07:56', '2', 1, 1, 1, '', ''),
(2, 54, 'ĐỒNG HỒ NỮ THỜI TRANG CAO CẤP ELLY', 'dong-ho-nu-thoi-trang-cao-cap-elly', '31832278bebfe38aeeac8d342d8a1a9c.jpg', '4fb3e1fa86f44f14e88d0293798ff80f.jpg#217a399ffa9b50736ec6626876eb4153.jpg#0e450e4d4501605d95a126a7086ac6f9.jpg', 'àu sắc: đen, nâu.\r\n– Chất liệu vỏ: Thép không gỉ.\r\n– Chất liệu dây đeo: Da thật.\r\n– Chất liệu mặt kính: Sapphire.\r\n– Kích thước mặt số: 19x20mm\r\n– Chống nước: 3ATM.', '<p><strong>Thời gian viết n&ecirc;n c&acirc;u chuyện v&agrave; phụ kiện để t&ocirc; điểm th&ecirc;m xinh. Đồng hồ l&agrave; phụ kiện xinh xắn vừa rạng rỡ c&aacute; t&iacute;nh với phong c&aacute;ch thời thượng, vừa tinh tế t&ocirc; điểm n&eacute;t duy&ecirc;n &ndash; xinh tr&ecirc;n cổ tay n&agrave;ng. B&ecirc;n cạnh sự sắc sảo của thiết kế, những m&agrave;u sắc ấn tượng, ELLY &ndash; EH13 tựa như m&oacute;n trang sức nhỏ xinh, duy&ecirc;n d&aacute;ng gi&uacute;p n&agrave;ng t&ocirc;n l&ecirc;n vẻ thanh lịch, sang trọng v&ocirc; c&ugrave;ng chỉn chu. Phụ kiện nhỏ xinh n&agrave;y sẽ l&agrave; lựa chọn &ldquo;mix &amp; match&rdquo; chuẩn gu cho mọi phong c&aacute;ch n&agrave;ng chọn.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17094944/O1CN01Z48bPI2K6G7Mjxx2b_2207969949507.jpg\" style=\"height:1164px; width:700px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh sự sắc sảo của thiết kế, những m&agrave;u sắc ấn tượng, ELLY &ndash; EH13 tựa như m&oacute;n trang sức nhỏ xinh, duy&ecirc;n d&aacute;ng gi&uacute;p n&agrave;ng t&ocirc;n l&ecirc;n vẻ thanh lịch, sang trọng v&ocirc; c&ugrave;ng chỉn chu.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17094932/O1CN01WfXaqc2K6G7I8jzoh_2207969949507.jpg\" style=\"height:935px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17094849/O1CN01kynFZL2MbWNBWiBTB_2666549846.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p>Phi&ecirc;n bản mặt trắng d&acirc;y da n&acirc;u thanh lịch h&uacute;t trọn mọi &aacute;nh nh&igrave;n</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17094844/O1CN01kRUKxQ27FnK1tq2tx_2211267437768.jpg\" style=\"height:700px; width:700px\" /></p>\r\n', '1', 10, 0, 5, 2870000, 2870000, '2022-05-20 17:17:02', '2', '2022-05-20 17:17:02', '2', 1, 1, 1, '', ''),
(68, 54, 'ĐỒNG HỒ NỮ EH2', 'dong-ho-nu-eh2', '2ced790db275aab209fc2e05b9e8a3de.jpg', '2fb3346be00286d1306c5c3ea47ab5aa.jpg#1fbd142aa6dc20f8b05fcfa9206f2ac7.jpg', 'Màu sắc: đen, trắng.\r\n– Chất liệu vỏ: Thép không gỉ.\r\n– Chất liệu dây đeo: Thép không gỉ gắn charm.\r\n– Chất liệu mặt kính: Sapphire.\r\n– Đường kính mặt: 24mm.\r\n– Chống nước: 3ATM.', '<p><strong>Từ diện mạo, thần th&aacute;i đến c&aacute;i t&ocirc;i kh&aacute;c biệt trong phong c&aacute;ch tạo n&ecirc;n một c&ocirc; n&agrave;ng nổi bật kh&ocirc;ng trộn lẫn với thiết kế Đồng hồ nữ thời trang cao cấp ELLY &ndash; EH2. C&ugrave;ng ELLY lựa chọn phụ kiện xứng tầm, đồng h&agrave;nh với n&agrave;ng định danh phong c&aacute;ch chuẩn chỉnh để ch&iacute;nh m&igrave;nh lu&ocirc;n ngời s&aacute;ng v&agrave; rạng rỡ đầy tinh tế với thiết kế sang trọng n&agrave;y nh&eacute;!</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17142021/8a61cc0592a35bfd02b2.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17142047/b9c8665d38fbf1a5a8ea.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17142115/O1CN01lNHOEI1DItS31N2Qy_2207332920194.jpg\" style=\"height:506px; width:700px\" /></p>\r\n\r\n<p>Thổi bừng phong c&aacute;ch thời thượng với điểm nhấn ấn tượng từ thiết kế Đồng hồ nữ thời trang cao cấp ELLY &ndash; EH2 thời trang sang trọng, tinh tế v&agrave; đẳng cấp.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17142035/540c29357486bdd8e497.jpg\" style=\"height:933px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17142015/6c57d32a8d8c44d21d9d.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p>Vẻ thanh lịch, điệu đ&agrave; của phi&ecirc;n bản mặt số trắng với d&acirc;y đeo v&agrave;ng sang trọng</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17142053/ca8f25e9eaa421fa78b5.jpg\" style=\"height:707px; width:700px\" /></p>\r\n\r\n<p>D&acirc;y đeo thiết kế kiểu lắc tay sang trọng, nữ t&iacute;nh với chất liệu th&eacute;p kh&ocirc;ng gỉ gắn charm ấn tượng v&agrave; bền đẹp</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/17142059/e3e3f3f768b8a3e6faa9.jpg\" style=\"height:510px; width:700px\" /></p>\r\n\r\n<p>Thiết kế mặt xanh &aacute;nh nhũ kết hợp d&acirc;y đeo m&agrave;u gold đẹp tinh tế</p>\r\n', '8', 5, 3, 0, 2500000, 2500000, '2022-05-20 17:20:23', '2', '2022-05-20 17:20:23', '2', 1, 1, 1, '', ''),
(13, 7, 'Lens mắt Milky Light Gray', 'lens-mat-milky-light-gray', '32-1.jpg', '32-1.jpg#32-2.jpg', 'Màu sắc : Ánh sáng ngân hà\r\n\r\nĐường kính màu : 14.0mm\r\n\r\nĐường kính : 14.2mm', '<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/qeye/milky-light-gray/lens-mat-milky-light-gray.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/qeye/milky-light-gray/contact-lens.jpg\" style=\"height:533px; width:1000px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/qeye/milky-light-gray/kinh-ap-trong.jpg\" style=\"height:400px; width:1000px\" /></p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-milky-light-gray\">Milky Light Gray</a>&nbsp;c&aacute;i t&ecirc;n n&oacute;i l&ecirc;n tất cả!Lấy cảm hứng từ dải ng&acirc;n h&agrave; Milky Way, thiết kế m&agrave;u x&aacute;m liti như những ng&ocirc;i sao, tao n&ecirc;n một dải ng&acirc;n h&agrave; với m&agrave;u x&aacute;m s&aacute;ng tuyệt đẹp.&nbsp;<a href=\"https://lensstore.vn/lens-mat-milky-light-gray\">Milky Light Gray</a>&nbsp;l&agrave; sự lụa chọn tuyệt vời để bạn t&ocirc;n l&ecirc;n đ&ocirc;i mắt đẹp v&agrave; quyến rũ như dải ng&acirc;n h&agrave;.</p>\r\n\r\n<p>Lens được thiết kế v&agrave; sản xuất theo c&ocirc;ng nghệ ti&ecirc;n tiến H&agrave;n Quốc với th&agrave;nh phần cấu tạo&nbsp;HEMA 45% v&agrave; nước 55% đeo rất &ecirc;m diệu v&agrave; kh&ocirc;ng g&acirc;y cộm mắt. Đảm bảo độ an to&agrave;n cho mắt v&agrave; lens kh&ocirc;ng bị mờ trong thời gian sử dụng.</p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-milky-light-gray\">Milky Light Gray</a>&nbsp;c&oacute; đường k&iacute;nh 14.2mm v&agrave; đường k&iacute;nh m&agrave;u 14.0mm l&agrave;&nbsp;<a href=\"https://lensstore.vn/kinh-ap-trong\">k&iacute;nh &aacute;p tr&ograve;ng</a>, được thiết kế vừa với nh&atilde;n cầu của người Việt. Độ cần từ 0.00 - 6.00 diop dễ d&agrave;ng cho việc lựa chọn, ph&ugrave; hợp với mọi đối tượng. Lens c&oacute; thời gian sử dụng 6 th&aacute;ng, đeo 8h/ng&agrave;y. Sau khi th&aacute;o lens ra phải ng&acirc;m bằng dung dịch ng&acirc;m lens mới. Để đảm chất lượng v&agrave; rửa c&aacute;c bụi bẩn b&aacute;m v&agrave;o lens trong l&uacute;c đeo.</p>\r\n\r\n<p><strong>CẢNH B&Aacute;O</strong></p>\r\n\r\n<p>Hiện tại tr&ecirc;n thị trường c&oacute; rất nhiều loại lens mắt tr&ocirc;i nổi, kh&ocirc;ng r&otilde; nguồn gốc xuất xử, tem nh&atilde;n hay thời gian sử dụng ch&iacute;nh x&aacute;c. Những loại lens n&agrave;y c&oacute; điểm chung l&agrave; gi&aacute; rất rẻ, thiết kế bao bị đẹp mắt. Dẫn đến người ti&ecirc;u d&ugrave;ng hay lựa chọn để sử dụng, khi đeo một thời gian dễ g&acirc;y ảnh hưởng cho mắt như: đỏ mắt, đau mắt, kh&ocirc; mắt v&agrave; c&aacute;c bệnh về mắt kh&aacute;c. V&igrave; thế khi mua lens, người mua n&ecirc;n t&igrave;m hiểu về tem nh&atilde;n, nguồn gốc xuất sứ r&otilde; r&agrave;ng hoặc chọn c&aacute;c đơn vị kinh doanh uy t&iacute;n. Để bảo vệ sức khỏe cho đ&ocirc;i mắt s&aacute;ng v&agrave; đẹp</p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-milky-light-gray\">Milky Light Gray</a>&nbsp;thuộc thương hiệu&nbsp;<a href=\"https://lensstore.vn/qeye\">Qeye H&agrave;n Quốc</a>&nbsp;được&nbsp;<a href=\"https://lensstore.vn/\">Lens - Store</a>&nbsp;nhập khẩu ch&iacute;nh h&atilde;ng, ph&acirc;n phối thị trường cả nước.</p>\r\n', '2', 50, 10, 15, 300000, 300000, '2017-05-23 20:12:51', '6', '2022-05-19 15:51:01', '2', 1, 1, 1, '', ''),
(65, 1, 'DÂY THẮT LƯNG NỮ THỜI TRANG CAO CẤP ELLY', 'day-that-lung-nu-thoi-trang-cao-cap-elly', '3a8795697a41e267d5cdd26c1cd08829.jpg', 'c1f234e27b240e4224f4676f36b44803.jpg#5f2c1061808bb5b242792faca9c82c52.jpg', 'ản xuất: Trung Quốc (theo tiêu chuẩn chất lượng của thương hiệu ELLY).\r\n– Màu sắc: Đen.', '<p><strong>D&acirc;y thắt lưng nữ thời trang cao cấp ELLY &ndash; ED58 &ndash; Chiếc thắt lưng g&acirc;y ấn tượng mạnh với thiết kế thanh lịch, c&ugrave;ng điểm nhấn phần mặt kho&aacute; độc đ&aacute;o, ph&aacute; c&aacute;ch. Tất cả kết hợp ho&agrave;n hảo hứa hẹn sẽ tạo th&agrave;nh cơn b&atilde;o trong thời gian tới.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/16121841/1548db4e575d9b03c24c.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/08134241/ed58-10-1.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/08134221/ed58-7-1.jpg\" style=\"height:700px; width:700px\" /><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/08134248/ed58-11-1.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/08134155/ed58-3-1.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/11100241/z3171512350671_a3b5cd44a58eac6dc6cf1cba8d1db10c.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/08134214/ed58-6-1.jpg\" style=\"height:933px; width:700px\" /><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/08134201/ed58-4-1.jpg\" style=\"height:700px; width:700px\" /><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/08134139/ed58-1-1.jpg\" style=\"height:463px; width:700px\" /><img alt=\"\" src=\"https://cdn.elly.vn/uploads/2022/01/08134144/ed58-2-1.jpg\" style=\"height:483px; width:700px\" /></p>\r\n', '7', 15, 1, 15, 230000, 230000, '2022-05-20 17:05:12', '2', '2022-05-20 17:05:12', '2', 1, 1, 1, '', ''),
(14, 7, 'Lens mắt  ALIXX', 'lens-mat-alixx', '35-1.png', '35-1.png#35-1.png#35-1.png', 'Với DOLL EYES, ????????̣???? ????????̀ ????????????????̂???? ????????̉???? ???????????? ????????????̂́????', '<h3>Lưu &yacute;: Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; 1 chiếc lens nếu lấy một cặp qu&yacute; kh&aacute;ch vui l&ograve;ng chọn 2 sản phẩm gi&uacute;p DOLL EYES. Nếu kh&ocirc;ng nhận được th&ocirc;ng tin độ cận, DOLL EYES mặc định lấy độ cận c&ograve;n h&agrave;ng gần nhất với lựa chọn của bạn. Với DOLL EYES, ????????̣???? ????????̀ ????????????????̂???? ????????̉???? ???????????? ????????????̂́???? ★ ???????? ???????????? được tạo ra d&agrave;nh cho c&aacute;c c&ocirc; g&aacute;i biết n&acirc;ng niu gi&aacute; trị của ri&ecirc;ng m&igrave;nh. Kh&ocirc;ng cần theo bất cứ khu&ocirc;n mẫu n&agrave;o, với ???????? ???????????? bạn kh&ocirc;ng chỉ sở hữu kh&iacute; chất ri&ecirc;ng m&agrave; c&ograve;n xinh đẹp tự tin đầy cuốn h&uacute;t</h3>\r\n\r\n<p>Lưu &yacute;: Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; 1 chiếc lens nếu lấy một cặp qu&yacute; kh&aacute;ch vui l&ograve;ng chọn 2 sản phẩm gi&uacute;p DOLL EYES. Nếu kh&ocirc;ng nhận được th&ocirc;ng tin độ cận, DOLL EYES mặc định lấy độ cận c&ograve;n h&agrave;ng gần nhất với lựa chọn của bạn. Với DOLL EYES, ????????̣???? ????????̀ ????????????????̂???? ????????̉???? ???????????? ????????????̂́???? ★ ???????? ???????????? được tạo ra d&agrave;nh cho c&aacute;c c&ocirc; g&aacute;i biết n&acirc;ng niu gi&aacute; trị của ri&ecirc;ng m&igrave;nh. Kh&ocirc;ng cần theo bất cứ khu&ocirc;n mẫu n&agrave;o, với ???????? ???????????? bạn kh&ocirc;ng chỉ sở hữu kh&iacute; chất ri&ecirc;ng m&agrave; c&ograve;n xinh đẹp tự tin đầy cuốn h&uacute;t</p>\r\n\r\n<p>Lưu &yacute;: Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; 1 chiếc lens nếu lấy một cặp qu&yacute; kh&aacute;ch vui l&ograve;ng chọn 2 sản phẩm gi&uacute;p DOLL EYES. Nếu kh&ocirc;ng nhận được th&ocirc;ng tin độ cận, DOLL EYES mặc định lấy độ cận c&ograve;n h&agrave;ng gần nhất với lựa chọn của bạn. Với DOLL EYES, ????????̣???? ????????̀ ????????????????̂???? ????????̉???? ???????????? ????????????̂́???? ★ ???????? ???????????? được tạo ra d&agrave;nh cho c&aacute;c c&ocirc; g&aacute;i biết n&acirc;ng niu gi&aacute; trị của ri&ecirc;ng m&igrave;nh. Kh&ocirc;ng cần theo bất cứ khu&ocirc;n mẫu n&agrave;o, với ???????? ???????????? bạn kh&ocirc;ng chỉ sở hữu kh&iacute; chất ri&ecirc;ng m&agrave; c&ograve;n xinh đẹp tự tin đầy cuốn h&uacute;t</p>\r\n\r\n<p>Lưu &yacute;: Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; 1 chiếc lens nếu lấy một cặp qu&yacute; kh&aacute;ch vui l&ograve;ng chọn 2 sản phẩm gi&uacute;p DOLL EYES. Nếu kh&ocirc;ng nhận được th&ocirc;ng tin độ cận, DOLL EYES mặc định lấy độ cận c&ograve;n h&agrave;ng gần nhất với lựa chọn của bạn. Với DOLL EYES, ????????̣???? ????????̀ ????????????????̂???? ????????̉???? ???????????? ????????????̂́???? ★ ???????? ???????????? được tạo ra d&agrave;nh cho c&aacute;c c&ocirc; g&aacute;i biết n&acirc;ng niu gi&aacute; trị của ri&ecirc;ng m&igrave;nh. Kh&ocirc;ng cần theo bất cứ khu&ocirc;n mẫu n&agrave;o, với ???????? ???????????? bạn kh&ocirc;ng chỉ sở hữu kh&iacute; chất ri&ecirc;ng m&agrave; c&ograve;n xinh đẹp tự tin đầy cuốn h&uacute;t</p>\r\n\r\n<p>Lưu &yacute;: Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; 1 chiếc lens nếu lấy một cặp qu&yacute; kh&aacute;ch vui l&ograve;ng chọn 2 sản phẩm gi&uacute;p DOLL EYES. Nếu kh&ocirc;ng nhận được th&ocirc;ng tin độ cận, DOLL EYES mặc định lấy độ cận c&ograve;n h&agrave;ng gần nhất với lựa chọn của bạn. Với DOLL EYES, ????????̣???? ????????̀ ????????????????̂???? ????????̉???? ???????????? ????????????̂́???? ★ ???????? ???????????? được tạo ra d&agrave;nh cho c&aacute;c c&ocirc; g&aacute;i biết n&acirc;ng niu gi&aacute; trị của ri&ecirc;ng m&igrave;nh. Kh&ocirc;ng cần theo bất cứ khu&ocirc;n mẫu n&agrave;o, với ???????? ???????????? bạn kh&ocirc;ng chỉ sở hữu kh&iacute; chất ri&ecirc;ng m&agrave; c&ograve;n xinh đẹp tự tin đầy cuốn h&uacute;t</p>\r\n\r\n<p>Lưu &yacute;: Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; 1 chiếc lens nếu lấy một cặp qu&yacute; kh&aacute;ch vui l&ograve;ng chọn 2 sản phẩm gi&uacute;p DOLL EYES. Nếu kh&ocirc;ng nhận được th&ocirc;ng tin độ cận, DOLL EYES mặc định lấy độ cận c&ograve;n h&agrave;ng gần nhất với lựa chọn của bạn. Với DOLL EYES, ????????̣???? ????????̀ ????????????????̂???? ????????̉???? ???????????? ????????????̂́???? ★ ???????? ???????????? được tạo ra d&agrave;nh cho c&aacute;c c&ocirc; g&aacute;i biết n&acirc;ng niu gi&aacute; trị của ri&ecirc;ng m&igrave;nh. Kh&ocirc;ng cần theo bất cứ khu&ocirc;n mẫu n&agrave;o, với ???????? ???????????? bạn kh&ocirc;ng chỉ sở hữu kh&iacute; chất ri&ecirc;ng m&agrave; c&ograve;n xinh đẹp tự tin đầy cuốn h&uacute;t</p>\r\n', '2', 90, 16, 0, 180000, 180000, '2017-05-23 20:16:19', '6', '2022-05-19 16:40:13', '2', 1, 1, 1, '', ''),
(15, 3, 'CỘT TÓC VẢI SCRUNCHIES PHẢN QUANG', 'cot-toc-vai-scrunchies-phan-quang', '19-1.jpg', '19-1.jpg#19-2.jpg', 'Được làm bằng vải voan cao cấp, cho bạn cảm giác mịn màng và thoải mái\r\n\r\nMỗi chiếc có một dải cao su bền giữ tóc của bạn tại chỗ mà không làm hại tóc của bạn và dễ dàng và mềm mại khi đeo.\r\n\r\nMàu sắc khác nhau có thể phù hợp với tất cả các màu yêu thích của bạn trong tủ quần áo của bạn và có thể được sử dụng trong nhiều dịp\r\n\r\nMột món quà tuyệt vời cho gia đình bạn bè và chính bạn.\r\n\r\nChiều rộng vải: 4 cm/1.57 inch, độ đàn hồi tốt, có thể kéo dài 21 cm', '<h1>D&acirc;y buộc t&oacute;c vải scrunchies &ldquo;thời &ocirc;ng b&agrave;&rdquo; bất ngờ lại được c&aacute;c ulzzang H&agrave;n Quốc xem như m&oacute;n đồ hot trend. Với phụ kiện n&agrave;y bạn sẽ dễ d&agrave;ng biến h&oacute;a kiểu t&oacute;c cột xinh đẹp m&agrave; bạn g&aacute;i n&agrave;o cũng nhất định phải thử cho m&ugrave;a h&egrave; n&agrave;y</h1>\r\n\r\n<h1>Mu&ocirc;n h&igrave;nh vạn trạng&rdquo; kiểu cột t&oacute;c đẹp m&agrave; bạn nhất định phải thử cho m&ugrave;a h&egrave; n&agrave;y!Một v&ograve;ng vải đơn giản , m&agrave;u sắc tươi s&aacute;ng sẽ khiến m&aacute;i t&oacute;c đu&ocirc;i ngựa của bạn trở n&ecirc;n kh&aacute;c lạ ho&agrave;n to&agrave;n, cực kỳ sang trọng v&agrave; h&uacute;t lấy &aacute;nh nh&igrave;n của mọi người xung quanh.&nbsp;&nbsp;Scrunchies&nbsp;vừa l&agrave;m d&acirc;y buộc t&oacute;c lại vừa đeo tay cực k&igrave; xinh xắn nh&eacute;!</h1>\r\n\r\n<h1>Những ng&ocirc;i sao h&agrave;ng đầu Kpop như Jennie, HyunA, Irene, Seulgi&hellip; đều đ&atilde; v&agrave; đang lăng x&ecirc; mốt chun buộc t&oacute;c vải từ thời &ldquo;&ocirc;ng b&agrave; em&rdquo;. Họ buộc t&oacute;c bằng những chiếc chun vải ngỡ như đ&atilde; lỗi thời tại s&acirc;n bay v&agrave; cũng xem đ&acirc;y l&agrave; m&oacute;n&nbsp;phụ kiện t&oacute;c&nbsp;c&oacute; thể d&ugrave;ng để đeo nơi cổ tay cho mới mẻ, ngầu ngầu.</h1>\r\n\r\n<h1>Xu hướng diện chun buộc t&oacute;c cứ thế được lan toả rộng r&atilde;i v&agrave; đ&atilde; được c&aacute;c mỹ nh&acirc;n Việt như Ngọc Trinh, Thiều Bảo Tr&acirc;m bắt s&oacute;ng. D&ugrave; t&oacute;c d&agrave;i hay t&oacute;c ngắn th&igrave; những chiếc d&acirc;y buộc t&oacute;c xinh xắn n&agrave;y vẫn lu&ocirc;n l&agrave; phụ kiện cực kỳ hữu &iacute;ch lại c&ograve;n bắt trend nữa. Ngo&agrave;i ra sự kết hợp với hot trend hoa c&uacute;c th&igrave; kh&ocirc;ng c&ograve;n ch&ecirc; v&agrave;o đ&acirc;u đ&uacute;ng kh&ocirc;ng n&agrave;o</h1>\r\n\r\n<h1>C&ograve;n bạn, c&ograve;n chần chừ g&igrave; nữa m&agrave; kh&ocirc;ng đến ngay A Mẫn chọn cho m&igrave;nh một em xinh xắn nhỉ?</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-8.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>ĐẶC ĐIỂM NỔI BẬT</h1>\r\n\r\n<h1>Được l&agrave;m bằng vải voan cao cấp, cho bạn cảm gi&aacute;c mịn m&agrave;ng v&agrave; thoải m&aacute;i</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-7.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Mỗi chiếc c&oacute; một dải cao su bền giữ t&oacute;c của bạn tại chỗ m&agrave; kh&ocirc;ng l&agrave;m hại t&oacute;c của bạn v&agrave; dễ d&agrave;ng v&agrave; mềm mại khi đeo.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-1.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>M&agrave;u sắc kh&aacute;c nhau c&oacute; thể ph&ugrave; hợp với tất cả c&aacute;c m&agrave;u y&ecirc;u th&iacute;ch của bạn trong tủ quần &aacute;o của bạn v&agrave; c&oacute; thể được sử dụng trong nhiều dịp</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-12.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Một m&oacute;n qu&agrave; tuyệt vời cho gia đ&igrave;nh bạn b&egrave; v&agrave; ch&iacute;nh bạn.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-3.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Chiều rộng vải: 4 cm/1.57 inch, độ đ&agrave;n hồi tốt, c&oacute; thể k&eacute;o d&agrave;i 21 cm</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-11.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-9.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-6.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-10.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-4.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-5.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/12/C%E1%BB%98T-T%C3%93C-V%E1%BA%A2I-SCRUNCHIES-PH%E1%BA%A2N-QUANG-2.jpg\" style=\"height:720px; width:720px\" /></p>\r\n', '2', 160, 16, 0, 30000, 30000, '2017-05-23 20:19:43', '6', '2022-05-19 14:58:11', '2', 1, 1, 1, '', ''),
(16, 2, 'NÓN LƯỠI TRAI THÊU CON CỪU N5', 'non-luoi-trai-theu-con-cuu-n5', '22-1.jpg', '22-1.jpg#22-2.jpg#22-3.jpg', 'Thiết kế theo kiểu dáng cực kỳ đơn giản nhưng lại toát lên vẻ thanh lịch và năng động cho người mang.\r\n\r\nPhù hợp với tất cả người dùng nam hay nữ, đặc biệt là những bạn trẻ năng động thường xuyên có những hoạt động ngoài trời.\r\n\r\nSản phẩm được làm từ chất liệu siêu nhẹ giúp thoải mái và êm ái khi đội cả ngày không lo đau đầu\r\n\r\nCó thiết kế lỗ thông gió đảm bảo không gây bí bách khi đội.', '<h1>N&oacute;n lưỡi trai l&agrave; một trong những phụ kiện phổ biến trong trong trang phục của nam &amp; nữ, ngo&agrave;i chức năng gi&uacute;p bảo vệ phần đầu , bảo vệ l&agrave;n da của khu&ocirc;n mặt bạn mỗi khi xuống phố, hoặc đi du lịch. N&oacute;n sự kiện c&ograve;n l&agrave; vật dụng hữu &iacute;ch mang lại cho bạn phong c&aacute;ch trẻ trung, c&aacute; t&iacute;nh.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-12.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>ĐẶC ĐIỂM NỔI BẬT</h1>\r\n\r\n<h1>N&oacute;n lưỡi trai thời trang được thiết kế theo kiểu d&aacute;ng cực kỳ đơn giản nhưng lại to&aacute;t l&ecirc;n vẻ thanh lịch v&agrave; năng động cho người mang. Ch&iacute;nh v&igrave; được trang bị thiết kế kh&aacute; hiện đại m&agrave; chiếc mũ lưỡi trai n&agrave;y sẽ ph&ugrave; hợp với tất cả người d&ugrave;ng nam hay nữ, đặc biệt l&agrave; những bạn trẻ năng động thường xuy&ecirc;n c&oacute; những hoạt động ngo&agrave;i trời.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-3.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Sản phẩm được l&agrave;m từ chất liệu si&ecirc;u nhẹ gi&uacute;p thoải m&aacute;i v&agrave; &ecirc;m &aacute;i khi đội cả ng&agrave;y kh&ocirc;ng lo đau đầu</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-13.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Với thiết kế chuy&ecirc;n nghiệp v&agrave; c&ocirc;ng nghệ hiện đại, n&oacute;n lưỡi trai mang lại sự thoải m&aacute;i tuyệt vời cho bạn. N&oacute; được thiết kế với c&aacute;c lỗ để th&ocirc;ng gi&oacute; trong thời tiết n&oacute;ng nực, trong khi vải của n&oacute; giữ mồ h&ocirc;i để giữ cho bạn kh&ocirc; v&agrave; thoải m&aacute;i. Th&ecirc;m v&agrave;o đ&oacute;, h&igrave;nh d&aacute;ng v&agrave; thiết kế c&oacute; form tạo cho bạn một phong c&aacute;ch ph&ugrave; hợp v&agrave; chuy&ecirc;n nghiệp với trang phục của bạn.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-6.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-7.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-10.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-8.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-9.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-19.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-18.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-17.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-16.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-20.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-2.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-11.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-5.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-4.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-15.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-14.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-L%C6%B0%E1%BB%A1i-Trai-con-c%E1%BB%ABu-N5-1.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2', 45, 3, 0, 90000, 90000, '2017-05-23 20:33:37', '6', '2022-05-19 15:07:34', '2', 1, 1, 1, '', '');
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(17, 2, 'NÓN BUCKET NEW FASHIONE K7 ', 'non-bucket-new-fashione-k7', '20-1.jpg', '20-1.jpg#20-2.jpg', 'Chiếc nón này có thiết kế như nhiều loại nón cùng loại tuy nhiên với một chiều cao được “hack” thì người dùng sẽ cảm thấy chiếc nón này sâu hơn những loại bình thường rất nhiều.\r\n\r\nChất vải Cotton thấm hút siêu tốt, đảm bảo không hề bí hơi vì loại vải này cũng rất thoáng khí.\r\n\r\nMàu sắc đa dạng, thiết kế đơn giản, dễ dàng phối đồ.\r\n\r\nĐây trở thành một item không thể thiếu trong các set đồ thời trang của giới trẻ hiện nay.\r\n\r\nPhù hợp với loại lứa tuổi, mọi giới tính, trong mọi trường hợp.', '<h1>Đối với những t&iacute;n đồ thời trang, phụ kiện ch&iacute;nh l&agrave; một trong những nh&acirc;n tố quan trọng tạo n&ecirc;n sự độc đ&aacute;o, ấn tượng v&agrave; kh&aacute;c biệt ở mỗi người. Một trong những loại phụ kiện rất phổ biến, kh&ocirc;ng thể kh&ocirc;ng nhắc đến đ&oacute; ch&iacute;nh l&agrave; những chiếc mũ. Mũ bucket &ndash; phụ kiện thời trang với bề d&agrave;y lịch sử kh&aacute; ấn tượng</h1>\r\n\r\n<h1>H&ocirc;m nay A Mẫn xin giới thiệu đến bạn một mẫu n&oacute;n bucket mới l&agrave; n&oacute;n bucket NEW FASHIONE k7</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-Bucket-new-fashion-K7-1.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>ĐẶC ĐIỂM NỔI BẬT</h1>\r\n\r\n<h1>Đầu ti&ecirc;n nhất l&agrave; thiết kế, chiếc n&oacute;n n&agrave;y c&oacute; thiết kế như nhiều loại n&oacute;n c&ugrave;ng loại tuy nhi&ecirc;n với một chiều cao được &ldquo;hack&rdquo; th&igrave; người d&ugrave;ng sẽ cảm thấy chiếc n&oacute;n n&agrave;y s&acirc;u hơn những loại b&igrave;nh thường rất nhiều.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-Bucket-new-fashion-K7-2.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Chất vải Cotton thấm h&uacute;t si&ecirc;u tốt, đảm bảo kh&ocirc;ng hề b&iacute; hơi v&igrave; loại vải n&agrave;y cũng rất tho&aacute;ng kh&iacute;.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-Bucket-new-fashion-K7-4.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>M&agrave;u sắc cơ bản, thiết kế đơn giản, dễ d&agrave;ng phối đồ. Đ&acirc;y trở th&agrave;nh một item kh&ocirc;ng thể thiếu trong c&aacute;c set đồ thời trang của giới trẻ hiện nay.</h1>\r\n\r\n<h1>Ph&ugrave; hợp với loại lứa tuổi, mọi giới t&iacute;nh, trong mọi trường hợp, đ&acirc;y quả thật ch&iacute;nh l&agrave; một mẫu n&oacute;n đ&aacute;ng được mong chờ phải kh&ocirc;ng n&agrave;o?! C&ograve;n chần chờ g&igrave; m&agrave; kh&ocirc;ng đến A Mẫn sắm ngay cho m&igrave;nh một c&aacute;i !</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-Bucket-new-fashion-K7-5.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-Bucket-new-fashion-K7-7.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-Bucket-new-fashion-K7-6.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/10/N%C3%B3n-Bucket-new-fashion-K7-8.jpg\" style=\"height:720px; width:720px\" /></p>\r\n', '4', 57, 8, 0, 100000, 100000, '2017-05-23 20:39:47', '6', '2022-05-19 15:09:59', '2', 1, 1, 1, '', ''),
(18, 6, 'Kính Mát Gentle Monster Dreamer Hoff 01 Màu Đen', 'kinh-mat-gentle-monster-dreamer-hoff-01-mau-den', '9-1.jpg', '9-2.jpg#9-3.jpg#9-1.jpg', 'Kính mắt Gentle Monster Dreamer Hoff 01 Unisex là chiếc kính mắt thời trang đến từ thương hiệu Gentle Monster nổi tiếng của Hàn Quốc. Thiết kế vẫn là một trong những khung hình cổ điển của thương hiệu Gentle Monster.', '<p>Gentle Monster l&agrave; thương hiệu&nbsp;<a href=\"https://vuahanghieu.com/kinh-mat\">mắt k&iacute;nh thời trang cao cấp</a>&nbsp;của H&agrave;n Quốc được biết đến với t&ecirc;n gọi k&iacute;nh chữ V hay k&iacute;nh Gentle Monster. Với chiến dịch quảng b&aacute; th&ocirc;ng minh qua phim truyền h&igrave;nh với những ng&ocirc;i sao điện ảnh nổi tiếng, h&atilde;ng k&iacute;nh H&agrave;n Quốc nhanh ch&oacute;ng phủ s&oacute;ng khắp nơi. Đồng thời, Gentle Monster cũng ch&uacute; trọng đến chất lượng v&agrave; trải nghiệm của kh&aacute;ch h&agrave;ng trong từng sản phẩm của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Về thương hiệu Gentle Monster nổi tiếng\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/03/kinh-mat-gentle-monster-696x385-jpg-1616473196-23032021111956.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>Gentle Monster l&agrave; thương hiệu non trẻ đến từ phương Đ&ocirc;ng nhưng đ&atilde; tấn c&ocirc;ng v&agrave;o những thị trường lớn tr&ecirc;n thế giới. Tốc độ c&agrave;n qu&eacute;t của thương hiệu H&agrave;n Quốc n&agrave;y khiến c&aacute;c t&iacute;n đồ k&iacute;nh mắt&nbsp;<a href=\"https://vuahanghieu.com/thoi-trang\">thời trang</a>&nbsp;cảm thấy v&ocirc; c&ugrave;ng cho&aacute;ng ngợp.&nbsp;<a href=\"https://vuahanghieu.com/gentle-monster\">Thương hiệu Gentle Monster</a>&nbsp;cũng được biết đến nhiều qua sự xuất hiện tr&ecirc;n m&agrave;n ảnh c&ugrave;ng với những ng&ocirc;i sao nổi tiếng của xứ sở kim chi.</p>\r\n\r\n<h2><strong>Đặc điểm nổi bật của K&iacute;nh mắt Gentle Monster Dreamer Hoff 01 m&agrave;u đen</strong></h2>\r\n\r\n<p><a href=\"https://vuahanghieu.com/kinh-mat-gentle-monster-dreamer-hoff-01-ph004115\"><strong>K&iacute;nh mắt Gentle Monster Dreamer Hoff 01 m&agrave;u đen</strong></a>&nbsp;được l&agrave;m thủ c&ocirc;ng ho&agrave;n to&agrave;n bằng chất liệu acetate m&agrave;u đen, khung k&iacute;nh lớn mang đậm phong c&aacute;ch lịch l&atilde;m.&nbsp;<a href=\"https://vuahanghieu.com/gentle-monster/kinh-mat\"><strong>K&iacute;nh m&aacute;t GM</strong></a>&nbsp;được ho&agrave;n thiện với ống k&iacute;nh Zeiss m&agrave;u đen với khả năng hỗ trợ l&agrave;m giảm tia cực t&iacute;m đối với mắt.</p>\r\n\r\n<p><img alt=\"Đặc điểm nổi bật của Kính mắt Gentle Monster Dreamer Hoff 01 màu đen\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2020/10/kinh-mat-gentle-monster-dreamer-hoff-01-min-jpg-1591759113-10062020101833-jpg-1602840934-16102020163534.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p>Với thiết kế trẻ trung, năng động,&nbsp;<strong>k&iacute;nh&nbsp;<a href=\"https://vuahanghieu.com/gentle-monster/kinh-mat/gentle-monster-dreamer\">Gentle Monster Dreamer</a>&nbsp;Hoff 01</strong>&nbsp;l&agrave; sản phẩm&nbsp;ho&agrave;n hảo của những t&iacute;n đồ thời trang. Bởi&nbsp;<a href=\"https://vuahanghieu.com/kinh-mat\">mắt k&iacute;nh</a>&nbsp;ph&ugrave; hợp với mọi khu&ocirc;n mặt v&agrave; nhiều loại trang phục kh&aacute;c nhau.</p>\r\n\r\n<h2><strong>H&igrave;nh ảnh sản phẩm k&iacute;nh Dreamer Hoff 01</strong></h2>\r\n\r\n<p><img alt=\"Mua Kính Mắt Gentle Monster Dreamer Hoff 01 chính hãng Hàn Quốc, Unisex Giá Tốt - 2\" src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2020/06/kinh-mat-gentle-monster-dreamer-hoff-01-han-quoc-min-jpg-1591759298-10062020102138.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><img src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2020/10/kinh-mat-gentle-monster-dreamer-hoff-01-cao-cap-min-jpg-1591759384-10062020102304-jpg-1602840954-16102020163554.jpg\" style=\"width:600px\" /></p>\r\n', '2', 60, 16, 5, 1200000, 1200000, '2017-05-23 20:54:41', '6', '2022-05-19 12:47:54', '2', 1, 1, 1, '', ''),
(19, 3, 'Percy Hair Pin - Small', 'percy-hair-pin-small', '7-1.jpg', '7-2.jpg#7-3.jpg#7-1.jpg', 'Crystal Hair Pin. 150,000đ. Flower Hair Pin. 350,000đ. Gretel Hair Pin. 99,000đ. Hanoi Hair Pin. 150,000đ. Ilia Hair Pin. 150,000đ. Percy Hair Pin - Small.', '<h3>Crystal Hair Pin. 150,000đ. Flower Hair Pin. 350,000đ. Gretel Hair Pin. 99,000đ. Hanoi Hair Pin. 150,000đ. Ilia Hair Pin. 150,000đ.&nbsp;<em>Percy Hair Pin</em>&nbsp;-&nbsp;<em>Small</em>.</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Crystal Hair Pin. 150,000đ. Flower Hair Pin. 350,000đ. Gretel Hair Pin. 99,000đ. Hanoi Hair Pin. 150,000đ. Ilia Hair Pin. 150,000đ.&nbsp;<em>Percy Hair Pin</em>&nbsp;-&nbsp;<em>Small</em>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Crystal Hair Pin. 150,000đ. Flower Hair Pin. 350,000đ. Gretel Hair Pin. 99,000đ. Hanoi Hair Pin. 150,000đ. Ilia Hair Pin. 150,000đ.&nbsp;<em>Percy Hair Pin</em>&nbsp;-&nbsp;<em>Small</em>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Crystal Hair Pin. 150,000đ. Flower Hair Pin. 350,000đ. Gretel Hair Pin. 99,000đ. Hanoi Hair Pin. 150,000đ. Ilia Hair Pin. 150,000đ.&nbsp;<em>Percy Hair Pin</em>&nbsp;-&nbsp;<em>Small</em>.Crystal Hair Pin. 150,000đ. Flower Hair Pin. 350,000đ. Gretel Hair Pin. 99,000đ. Hanoi Hair Pin. 150,000đ. Ilia Hair Pin. 150,000đ.&nbsp;<em>Percy Hair Pin</em>&nbsp;-&nbsp;<em>Small</em>.Crystal Hair Pin. 150,000đ. Flower Hair Pin. 350,000đ. Gretel Hair Pin. 99,000đ. Hanoi Hair Pin. 150,000đ. Ilia Hair Pin. 150,000đ.&nbsp;<em>Percy Hair Pin</em>&nbsp;-&nbsp;<em>Small</em>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Crystal Hair Pin. 150,000đ. Flower Hair Pin. 350,000đ. Gretel Hair Pin. 99,000đ. Hanoi Hair Pin. 150,000đ. Ilia Hair Pin. 150,000đ.&nbsp;<em>Percy Hair Pin</em>&nbsp;-&nbsp;<em>Small</em>.</p>\r\n\r\n<p>Crystal Hair Pin. 150,000đ. Flower Hair Pin. 350,000đ. Gretel Hair Pin. 99,000đ. Hanoi Hair Pin. 150,000đ. Ilia Hair Pin. 150,000đ.&nbsp;<em>Percy Hair Pin</em>&nbsp;-&nbsp;<em>Small</em>.</p>\r\n\r\n<p>Crystal Hair Pin. 150,000đ. Flower Hair Pin. 350,000đ. Gretel Hair Pin. 99,000đ. Hanoi Hair Pin. 150,000đ. Ilia Hair Pin. 150,000đ.&nbsp;<em>Percy Hair Pin</em>&nbsp;-&nbsp;<em>Small</em>.</p>\r\n', '1', 80, 10, 0, 140000, 140000, '2017-05-23 21:03:06', '6', '2022-05-19 23:30:15', '2', 1, 1, 1, '', ''),
(63, 7, 'Kính áp tròng màu Magic Black', 'kinh-ap-trong-mau-magic-black', '40-1.jpg', '40-1.jpg#40-2.jpg', 'Cách nhanh nhất để biến đôi mắt của bạn trở nên đen láy hút hồn là hãy sắm cho mình một đôi kính áp tròng màu đen. Và dòng kính Magic chính là một trong số đó. T', '<p>C&aacute;ch nhanh nhất để biến đ&ocirc;i mắt của bạn trở n&ecirc;n đen l&aacute;y h&uacute;t hồn l&agrave; h&atilde;y sắm cho m&igrave;nh một đ&ocirc;i k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u đen. V&agrave; d&ograve;ng k&iacute;nh Magic ch&iacute;nh l&agrave; một trong số đ&oacute;. Thậm ch&iacute;, d&ograve;ng n&agrave;y đặc biệt &ldquo;cưng chiều&rdquo; m&agrave;u đen huyền b&iacute; khi chỉ ra một m&agrave;u n&agrave;y, hiện tại đang rất được y&ecirc;u th&iacute;ch tại Angel Eyes</p>\r\n\r\n<p>Magic l&agrave; một d&ograve;ng&nbsp;<strong>k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u</strong>&nbsp;nổi tiếng v&agrave; được ưa chuộng tại H&agrave;n Quốc, được Angel Eyes nhập khẩu về phục vụ nhu cầu l&agrave;m đẹp của c&aacute;c c&ocirc; g&aacute;i. Đặc biệt, Angel Eyes đ&atilde; tinh chỉnh lại độ cong của k&iacute;nh để ph&ugrave; hợp với đ&ocirc;i mắt người Việt, tạo sự thoải m&aacute;i nhất khi đeo cho c&aacute;c c&ocirc; g&aacute;i.</p>\r\n\r\n<p>Đừng bỏ qua&nbsp;<em><strong>Magic Black ( Đen Ma Thuật )</strong></em>&nbsp;nếu bạn muốn c&oacute; một đ&ocirc;i mắt đen cuốn h&uacute;t. Chất lượng của k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u&nbsp;H&agrave;n Quốc th&igrave; c&aacute;c n&agrave;ng lu&ocirc;n y&ecirc;n t&acirc;m v&igrave; đeo rất thoải m&aacute;i, đảm bảo an to&agrave;n, bảo vệ mắt rất tốt.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể xem th&ecirc;m c&aacute;c sản phẩm k&iacute;nh &aacute;p tr&ograve;ng H&agrave;n Quốc kh&aacute;c&nbsp;<strong><a href=\"http://angeleyes.vn/\" target=\"_blank\">tại đ&acirc;y</a></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;ch nhanh nhất để biến đ&ocirc;i mắt của bạn trở n&ecirc;n đen l&aacute;y h&uacute;t hồn l&agrave; h&atilde;y sắm cho m&igrave;nh một đ&ocirc;i k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u đen. V&agrave; d&ograve;ng k&iacute;nh Magic ch&iacute;nh l&agrave; một trong số đ&oacute;. Thậm ch&iacute;, d&ograve;ng n&agrave;y đặc biệt &ldquo;cưng chiều&rdquo; m&agrave;u đen huyền b&iacute; khi chỉ ra một m&agrave;u n&agrave;y, hiện tại đang rất được y&ecirc;u th&iacute;ch tại Angel Eyes</p>\r\n\r\n<p>Magic l&agrave; một d&ograve;ng&nbsp;<strong>k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u</strong>&nbsp;nổi tiếng v&agrave; được ưa chuộng tại H&agrave;n Quốc, được Angel Eyes nhập khẩu về phục vụ nhu cầu l&agrave;m đẹp của c&aacute;c c&ocirc; g&aacute;i. Đặc biệt, Angel Eyes đ&atilde; tinh chỉnh lại độ cong của k&iacute;nh để ph&ugrave; hợp với đ&ocirc;i mắt người Việt, tạo sự thoải m&aacute;i nhất khi đeo cho c&aacute;c c&ocirc; g&aacute;i.</p>\r\n\r\n<p>Đừng bỏ qua&nbsp;<em><strong>Magic Black ( Đen Ma Thuật )</strong></em>&nbsp;nếu bạn muốn c&oacute; một đ&ocirc;i mắt đen cuốn h&uacute;t. Chất lượng của k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u&nbsp;H&agrave;n Quốc th&igrave; c&aacute;c n&agrave;ng lu&ocirc;n y&ecirc;n t&acirc;m v&igrave; đeo rất thoải m&aacute;i, đảm bảo an to&agrave;n, bảo vệ mắt rất tốt.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể xem th&ecirc;m c&aacute;c sản phẩm k&iacute;nh &aacute;p tr&ograve;ng H&agrave;n Quốc kh&aacute;c&nbsp;<strong><a href=\"http://angeleyes.vn/\" target=\"_blank\">tại đ&acirc;y</a></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;ch nhanh nhất để biến đ&ocirc;i mắt của bạn trở n&ecirc;n đen l&aacute;y h&uacute;t hồn l&agrave; h&atilde;y sắm cho m&igrave;nh một đ&ocirc;i k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u đen. V&agrave; d&ograve;ng k&iacute;nh Magic ch&iacute;nh l&agrave; một trong số đ&oacute;. Thậm ch&iacute;, d&ograve;ng n&agrave;y đặc biệt &ldquo;cưng chiều&rdquo; m&agrave;u đen huyền b&iacute; khi chỉ ra một m&agrave;u n&agrave;y, hiện tại đang rất được y&ecirc;u th&iacute;ch tại Angel Eyes</p>\r\n\r\n<p>Magic l&agrave; một d&ograve;ng&nbsp;<strong>k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u</strong>&nbsp;nổi tiếng v&agrave; được ưa chuộng tại H&agrave;n Quốc, được Angel Eyes nhập khẩu về phục vụ nhu cầu l&agrave;m đẹp của c&aacute;c c&ocirc; g&aacute;i. Đặc biệt, Angel Eyes đ&atilde; tinh chỉnh lại độ cong của k&iacute;nh để ph&ugrave; hợp với đ&ocirc;i mắt người Việt, tạo sự thoải m&aacute;i nhất khi đeo cho c&aacute;c c&ocirc; g&aacute;i.</p>\r\n\r\n<p>Đừng bỏ qua&nbsp;<em><strong>Magic Black ( Đen Ma Thuật )</strong></em>&nbsp;nếu bạn muốn c&oacute; một đ&ocirc;i mắt đen cuốn h&uacute;t. Chất lượng của k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u&nbsp;H&agrave;n Quốc th&igrave; c&aacute;c n&agrave;ng lu&ocirc;n y&ecirc;n t&acirc;m v&igrave; đeo rất thoải m&aacute;i, đảm bảo an to&agrave;n, bảo vệ mắt rất tốt.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể xem th&ecirc;m c&aacute;c sản phẩm k&iacute;nh &aacute;p tr&ograve;ng H&agrave;n Quốc kh&aacute;c&nbsp;<strong><a href=\"http://angeleyes.vn/\" target=\"_blank\">tại đ&acirc;y</a></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;ch nhanh nhất để biến đ&ocirc;i mắt của bạn trở n&ecirc;n đen l&aacute;y h&uacute;t hồn l&agrave; h&atilde;y sắm cho m&igrave;nh một đ&ocirc;i k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u đen. V&agrave; d&ograve;ng k&iacute;nh Magic ch&iacute;nh l&agrave; một trong số đ&oacute;. Thậm ch&iacute;, d&ograve;ng n&agrave;y đặc biệt &ldquo;cưng chiều&rdquo; m&agrave;u đen huyền b&iacute; khi chỉ ra một m&agrave;u n&agrave;y, hiện tại đang rất được y&ecirc;u th&iacute;ch tại Angel Eyes</p>\r\n\r\n<p>Magic l&agrave; một d&ograve;ng&nbsp;<strong>k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u</strong>&nbsp;nổi tiếng v&agrave; được ưa chuộng tại H&agrave;n Quốc, được Angel Eyes nhập khẩu về phục vụ nhu cầu l&agrave;m đẹp của c&aacute;c c&ocirc; g&aacute;i. Đặc biệt, Angel Eyes đ&atilde; tinh chỉnh lại độ cong của k&iacute;nh để ph&ugrave; hợp với đ&ocirc;i mắt người Việt, tạo sự thoải m&aacute;i nhất khi đeo cho c&aacute;c c&ocirc; g&aacute;i.</p>\r\n\r\n<p>Đừng bỏ qua&nbsp;<em><strong>Magic Black ( Đen Ma Thuật )</strong></em>&nbsp;nếu bạn muốn c&oacute; một đ&ocirc;i mắt đen cuốn h&uacute;t. Chất lượng của k&iacute;nh &aacute;p tr&ograve;ng m&agrave;u&nbsp;H&agrave;n Quốc th&igrave; c&aacute;c n&agrave;ng lu&ocirc;n y&ecirc;n t&acirc;m v&igrave; đeo rất thoải m&aacute;i, đảm bảo an to&agrave;n, bảo vệ mắt rất tốt.</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể xem th&ecirc;m c&aacute;c sản phẩm k&iacute;nh &aacute;p tr&ograve;ng H&agrave;n Quốc kh&aacute;c&nbsp;<strong><a href=\"http://angeleyes.vn/\" target=\"_blank\">tại đ&acirc;y</a></strong></p>\r\n', '6', 22, 0, 0, 230000, 230000, '2022-05-20 16:51:35', '2', '2022-05-20 16:51:35', '', 1, 1, 0, '', ''),
(20, 6, 'Jose Sunglasses - Beige', 'jose-sunglasses-beige', '6-1.jpg', '6-2.jpg#6-3.jpg#6-1.jpg', 'OSE SUNGLASSES - BEIGE VỚI KIỂU DÁNG CHỮ NHẬT VỚI\r\nCHẤT LIỆU NHỰA ACETATE.KIỂU DÁNG MẮT MÈO CÓ SỰ CÂN\r\nBẰNG GIỮA CÁC ĐƯỜNG CONG MỀM MẠI', '<p>COLOUR :&nbsp; BEIGE<br />\r\n<br />\r\nDIMENSION 40 X 140 X 10 X 145 (MM)<br />\r\n(CAO X NGANG X MŨI X C&Agrave;NG)</p>\r\n\r\n<p>JOSE SUNGLASSES&nbsp;- BEIGE&nbsp;VỚI KIỂU D&Aacute;NG CHỮ NHẬT VỚI<br />\r\nCHẤT LIỆU NHỰA ACETATE.KIỂU D&Aacute;NG MẮT M&Egrave;O C&Oacute; SỰ C&Acirc;N<br />\r\nBẰNG GIỮA C&Aacute;C ĐƯỜNG CONG MỀM MẠI, ĐƯỜNG N&Eacute;T G&Oacute;C<br />\r\nCẠNH ĐƯỢC&nbsp;THIẾT KẾ TINH XẢO.TRONG K&Iacute;NH M&Agrave;U ĐEN C&Oacute; KHẢ<br />\r\nNĂNG CHỐNG TIA CỰC T&Iacute;M (UV400).</p>\r\n\r\n<p>POST SERVICE KH&Ocirc;NG BẢO H&Agrave;NH( ĐỔI TRẢ TRONG 7 NG&Agrave;Y NẾU LỖI SẢN XUẤT)</p>\r\n\r\n<p>&nbsp;Default Title&nbsp;</p>\r\n\r\n<p>ADD TO CART</p>\r\n\r\n<p>COLOUR :&nbsp; BEIGE<br />\r\n<br />\r\nDIMENSION 40 X 140 X 10 X 145 (MM)<br />\r\n(CAO X NGANG X MŨI X C&Agrave;NG)</p>\r\n\r\n<p>JOSE SUNGLASSES&nbsp;- BEIGE&nbsp;VỚI KIỂU D&Aacute;NG CHỮ NHẬT VỚI<br />\r\nCHẤT LIỆU NHỰA ACETATE.KIỂU D&Aacute;NG MẮT M&Egrave;O C&Oacute; SỰ C&Acirc;N<br />\r\nBẰNG GIỮA C&Aacute;C ĐƯỜNG CONG MỀM MẠI, ĐƯỜNG N&Eacute;T G&Oacute;C<br />\r\nCẠNH ĐƯỢC&nbsp;THIẾT KẾ TINH XẢO.TRONG K&Iacute;NH M&Agrave;U ĐEN C&Oacute; KHẢ<br />\r\nNĂNG CHỐNG TIA CỰC T&Iacute;M (UV400).</p>\r\n\r\n<p>POST SERVICE KH&Ocirc;NG BẢO H&Agrave;NH( ĐỔI TRẢ TRONG 7 NG&Agrave;Y NẾU LỖI SẢN XUẤT)</p>\r\n\r\n<p>&nbsp;Default Title&nbsp;</p>\r\n\r\n<p>ADD TO CART</p>\r\n\r\n<p>COLOUR :&nbsp; BEIGE<br />\r\n<br />\r\nDIMENSION 40 X 140 X 10 X 145 (MM)<br />\r\n(CAO X NGANG X MŨI X C&Agrave;NG)</p>\r\n\r\n<p>JOSE SUNGLASSES&nbsp;- BEIGE&nbsp;VỚI KIỂU D&Aacute;NG CHỮ NHẬT VỚI<br />\r\nCHẤT LIỆU NHỰA ACETATE.KIỂU D&Aacute;NG MẮT M&Egrave;O C&Oacute; SỰ C&Acirc;N<br />\r\nBẰNG GIỮA C&Aacute;C ĐƯỜNG CONG MỀM MẠI, ĐƯỜNG N&Eacute;T G&Oacute;C<br />\r\nCẠNH ĐƯỢC&nbsp;THIẾT KẾ TINH XẢO.TRONG K&Iacute;NH M&Agrave;U ĐEN C&Oacute; KHẢ<br />\r\nNĂNG CHỐNG TIA CỰC T&Iacute;M (UV400).</p>\r\n\r\n<p>POST SERVICE KH&Ocirc;NG BẢO H&Agrave;NH( ĐỔI TRẢ TRONG 7 NG&Agrave;Y NẾU LỖI SẢN XUẤT)</p>\r\n\r\n<p>&nbsp;Default Title&nbsp;</p>\r\n\r\n<p>ADD TO CART</p>\r\n\r\n<p>COLOUR :&nbsp; BEIGE<br />\r\n<br />\r\nDIMENSION 40 X 140 X 10 X 145 (MM)<br />\r\n(CAO X NGANG X MŨI X C&Agrave;NG)</p>\r\n\r\n<p>JOSE SUNGLASSES&nbsp;- BEIGE&nbsp;VỚI KIỂU D&Aacute;NG CHỮ NHẬT VỚI<br />\r\nCHẤT LIỆU NHỰA ACETATE.KIỂU D&Aacute;NG MẮT M&Egrave;O C&Oacute; SỰ C&Acirc;N<br />\r\nBẰNG GIỮA C&Aacute;C ĐƯỜNG CONG MỀM MẠI, ĐƯỜNG N&Eacute;T G&Oacute;C<br />\r\nCẠNH ĐƯỢC&nbsp;THIẾT KẾ TINH XẢO.TRONG K&Iacute;NH M&Agrave;U ĐEN C&Oacute; KHẢ<br />\r\nNĂNG CHỐNG TIA CỰC T&Iacute;M (UV400).</p>\r\n\r\n<p>POST SERVICE KH&Ocirc;NG BẢO H&Agrave;NH( ĐỔI TRẢ TRONG 7 NG&Agrave;Y NẾU LỖI SẢN XUẤT)</p>\r\n\r\n<p>&nbsp;Default Title&nbsp;</p>\r\n\r\n<p>ADD TO CART</p>\r\n', '1', 67, 8, 0, 350000, 350000, '2017-05-23 21:12:42', '6', '2022-05-19 12:07:16', '2', 1, 1, 1, '', ''),
(21, 2, 'Mũ Xô trang trí gấu', 'mu-xo-trang-tri-gau', '12-2.jpg', '12-3.jpg#12-1.jpg#12-2.jpg', 'Chất liệu: Sợi cói tự nhiên 100% cao cấp, - Có dây điều chỉnh size', '<p>&nbsp;</p>\r\n\r\n<p>&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>N&oacute;n c&oacute;i / mũ c&oacute;i - phụ kiện cứu v&atilde;n mọi &quot; thần th&aacute;i &quot; . D&ugrave; trang phục c&oacute; lộng lẫy tới đ&acirc;u nhưng thiếu đi n&oacute;n đi biển bạn trờ n&ecirc;n nhạt v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si&ecirc;u phẩm n&agrave;y rất được l&ograve;ng c&aacute;c c&ocirc; g&aacute;i nh&agrave; m&igrave;nh bởi &quot;độ xinh&quot; kh&ocirc;ng tưởng m&agrave; n&oacute; đem lại. N&oacute;n mềm, nơ ren ở tr&ecirc;n n&oacute;n rất s&agrave;nh điệu, phụ kiện kh&oacute; l&ograve;ng bỏ qua trong h&egrave; n&agrave;y kh&aacute;ch nh&eacute;! N&agrave;ng thu hay n&agrave;ng xu&acirc;n cũng vẫn cứ xinh v&igrave; ẻm chẳng sợ lỗi mốt lại dễ mix đồ nữa. Bạn đ&atilde; c&oacute; chưa?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2 m&agrave;u: n&acirc;u v&agrave; kem</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&iacute;ch hợp đi chơi, đi dạo phố, đi biển, đi nắng h&agrave;ng ng&agrave;y</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mũ C&oacute;i rất hợp cạ với những trang phục thi&ecirc;n về sự năng động, thoải m&aacute;i v&agrave; trẻ trung.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n c&oacute;i l&agrave; sự lựa chọn gần như đầu ti&ecirc;n của c&aacute;c c&ocirc; n&agrave;ng khi chuẩn bị cho kỳ nghỉ m&aacute;t. Chiếc n&oacute;n dường như đẹp hơn trong khung cảnh biển xanh, c&aacute;t trắng v&agrave; những tia nắng ch&oacute;i chang.-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n rộng v&agrave;nh dễ d&agrave;ng kết hợp với những trang phục mang phong c&aacute;ch mềm mại, nữ t&iacute;nh. Những sự kết hợp ho&agrave;n hảo v&agrave; đẹp l&agrave; với những mẫu v&aacute;y d&agrave;i thướt tha đậm chất tiểu thư như mullet hay maxi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#N&oacute;n #mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#nonthoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang #mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>N&oacute;n c&oacute;i / mũ c&oacute;i - phụ kiện cứu v&atilde;n mọi &quot; thần th&aacute;i &quot; . D&ugrave; trang phục c&oacute; lộng lẫy tới đ&acirc;u nhưng thiếu đi n&oacute;n đi biển bạn trờ n&ecirc;n nhạt v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si&ecirc;u phẩm n&agrave;y rất được l&ograve;ng c&aacute;c c&ocirc; g&aacute;i nh&agrave; m&igrave;nh bởi &quot;độ xinh&quot; kh&ocirc;ng tưởng m&agrave; n&oacute; đem lại. N&oacute;n mềm, nơ ren ở tr&ecirc;n n&oacute;n rất s&agrave;nh điệu, phụ kiện kh&oacute; l&ograve;ng bỏ qua trong h&egrave; n&agrave;y kh&aacute;ch nh&eacute;! N&agrave;ng thu hay n&agrave;ng xu&acirc;n cũng vẫn cứ xinh v&igrave; ẻm chẳng sợ lỗi mốt lại dễ mix đồ nữa. Bạn đ&atilde; c&oacute; chưa?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2 m&agrave;u: n&acirc;u v&agrave; kem</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&iacute;ch hợp đi chơi, đi dạo phố, đi biển, đi nắng h&agrave;ng ng&agrave;y</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mũ C&oacute;i rất hợp cạ với những trang phục thi&ecirc;n về sự năng động, thoải m&aacute;i v&agrave; trẻ trung.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n c&oacute;i l&agrave; sự lựa chọn gần như đầu ti&ecirc;n của c&aacute;c c&ocirc; n&agrave;ng khi chuẩn bị cho kỳ nghỉ m&aacute;t. Chiếc n&oacute;n dường như đẹp hơn trong khung cảnh biển xanh, c&aacute;t trắng v&agrave; những tia nắng ch&oacute;i chang.-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n rộng v&agrave;nh dễ d&agrave;ng kết hợp với những trang phục mang phong c&aacute;ch mềm mại, nữ t&iacute;nh. Những sự kết hợp ho&agrave;n hảo v&agrave; đẹp l&agrave; với những mẫu v&aacute;y d&agrave;i thướt tha đậm chất tiểu thư như mullet hay maxi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#N&oacute;n #mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#nonthoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang #mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>N&oacute;n c&oacute;i / mũ c&oacute;i - phụ kiện cứu v&atilde;n mọi &quot; thần th&aacute;i &quot; . D&ugrave; trang phục c&oacute; lộng lẫy tới đ&acirc;u nhưng thiếu đi n&oacute;n đi biển bạn trờ n&ecirc;n nhạt v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si&ecirc;u phẩm n&agrave;y rất được l&ograve;ng c&aacute;c c&ocirc; g&aacute;i nh&agrave; m&igrave;nh bởi &quot;độ xinh&quot; kh&ocirc;ng tưởng m&agrave; n&oacute; đem lại. N&oacute;n mềm, nơ ren ở tr&ecirc;n n&oacute;n rất s&agrave;nh điệu, phụ kiện kh&oacute; l&ograve;ng bỏ qua trong h&egrave; n&agrave;y kh&aacute;ch nh&eacute;! N&agrave;ng thu hay n&agrave;ng xu&acirc;n cũng vẫn cứ xinh v&igrave; ẻm chẳng sợ lỗi mốt lại dễ mix đồ nữa. Bạn đ&atilde; c&oacute; chưa?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2 m&agrave;u: n&acirc;u v&agrave; kem</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&iacute;ch hợp đi chơi, đi dạo phố, đi biển, đi nắng h&agrave;ng ng&agrave;y</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mũ C&oacute;i rất hợp cạ với những trang phục thi&ecirc;n về sự năng động, thoải m&aacute;i v&agrave; trẻ trung.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n c&oacute;i l&agrave; sự lựa chọn gần như đầu ti&ecirc;n của c&aacute;c c&ocirc; n&agrave;ng khi chuẩn bị cho kỳ nghỉ m&aacute;t. Chiếc n&oacute;n dường như đẹp hơn trong khung cảnh biển xanh, c&aacute;t trắng v&agrave; những tia nắng ch&oacute;i chang.-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n rộng v&agrave;nh dễ d&agrave;ng kết hợp với những trang phục mang phong c&aacute;ch mềm mại, nữ t&iacute;nh. Những sự kết hợp ho&agrave;n hảo v&agrave; đẹp l&agrave; với những mẫu v&aacute;y d&agrave;i thướt tha đậm chất tiểu thư như mullet hay maxi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#N&oacute;n #mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#nonthoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang #mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>N&oacute;n c&oacute;i / mũ c&oacute;i - phụ kiện cứu v&atilde;n mọi &quot; thần th&aacute;i &quot; . D&ugrave; trang phục c&oacute; lộng lẫy tới đ&acirc;u nhưng thiếu đi n&oacute;n đi biển bạn trờ n&ecirc;n nhạt v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si&ecirc;u phẩm n&agrave;y rất được l&ograve;ng c&aacute;c c&ocirc; g&aacute;i nh&agrave; m&igrave;nh bởi &quot;độ xinh&quot; kh&ocirc;ng tưởng m&agrave; n&oacute; đem lại. N&oacute;n mềm, nơ ren ở tr&ecirc;n n&oacute;n rất s&agrave;nh điệu, phụ kiện kh&oacute; l&ograve;ng bỏ qua trong h&egrave; n&agrave;y kh&aacute;ch nh&eacute;! N&agrave;ng thu hay n&agrave;ng xu&acirc;n cũng vẫn cứ xinh v&igrave; ẻm chẳng sợ lỗi mốt lại dễ mix đồ nữa. Bạn đ&atilde; c&oacute; chưa?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2 m&agrave;u: n&acirc;u v&agrave; kem</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&iacute;ch hợp đi chơi, đi dạo phố, đi biển, đi nắng h&agrave;ng ng&agrave;y</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mũ C&oacute;i rất hợp cạ với những trang phục thi&ecirc;n về sự năng động, thoải m&aacute;i v&agrave; trẻ trung.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n c&oacute;i l&agrave; sự lựa chọn gần như đầu ti&ecirc;n của c&aacute;c c&ocirc; n&agrave;ng khi chuẩn bị cho kỳ nghỉ m&aacute;t. Chiếc n&oacute;n dường như đẹp hơn trong khung cảnh biển xanh, c&aacute;t trắng v&agrave; những tia nắng ch&oacute;i chang.-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n rộng v&agrave;nh dễ d&agrave;ng kết hợp với những trang phục mang phong c&aacute;ch mềm mại, nữ t&iacute;nh. Những sự kết hợp ho&agrave;n hảo v&agrave; đẹp l&agrave; với những mẫu v&aacute;y d&agrave;i thướt tha đậm chất tiểu thư như mullet hay maxi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#N&oacute;n #mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#nonthoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang #mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>N&oacute;n c&oacute;i / mũ c&oacute;i - phụ kiện cứu v&atilde;n mọi &quot; thần th&aacute;i &quot; . D&ugrave; trang phục c&oacute; lộng lẫy tới đ&acirc;u nhưng thiếu đi n&oacute;n đi biển bạn trờ n&ecirc;n nhạt v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si&ecirc;u phẩm n&agrave;y rất được l&ograve;ng c&aacute;c c&ocirc; g&aacute;i nh&agrave; m&igrave;nh bởi &quot;độ xinh&quot; kh&ocirc;ng tưởng m&agrave; n&oacute; đem lại. N&oacute;n mềm, nơ ren ở tr&ecirc;n n&oacute;n rất s&agrave;nh điệu, phụ kiện kh&oacute; l&ograve;ng bỏ qua trong h&egrave; n&agrave;y kh&aacute;ch nh&eacute;! N&agrave;ng thu hay n&agrave;ng xu&acirc;n cũng vẫn cứ xinh v&igrave; ẻm chẳng sợ lỗi mốt lại dễ mix đồ nữa. Bạn đ&atilde; c&oacute; chưa?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2 m&agrave;u: n&acirc;u v&agrave; kem</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&iacute;ch hợp đi chơi, đi dạo phố, đi biển, đi nắng h&agrave;ng ng&agrave;y</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mũ C&oacute;i rất hợp cạ với những trang phục thi&ecirc;n về sự năng động, thoải m&aacute;i v&agrave; trẻ trung.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n c&oacute;i l&agrave; sự lựa chọn gần như đầu ti&ecirc;n của c&aacute;c c&ocirc; n&agrave;ng khi chuẩn bị cho kỳ nghỉ m&aacute;t. Chiếc n&oacute;n dường như đẹp hơn trong khung cảnh biển xanh, c&aacute;t trắng v&agrave; những tia nắng ch&oacute;i chang.-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n rộng v&agrave;nh dễ d&agrave;ng kết hợp với những trang phục mang phong c&aacute;ch mềm mại, nữ t&iacute;nh. Những sự kết hợp ho&agrave;n hảo v&agrave; đẹp l&agrave; với những mẫu v&aacute;y d&agrave;i thướt tha đậm chất tiểu thư như mullet hay maxi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#N&oacute;n #mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#nonthoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang #mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>N&oacute;n c&oacute;i / mũ c&oacute;i - phụ kiện cứu v&atilde;n mọi &quot; thần th&aacute;i &quot; . D&ugrave; trang phục c&oacute; lộng lẫy tới đ&acirc;u nhưng thiếu đi n&oacute;n đi biển bạn trờ n&ecirc;n nhạt v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Si&ecirc;u phẩm n&agrave;y rất được l&ograve;ng c&aacute;c c&ocirc; g&aacute;i nh&agrave; m&igrave;nh bởi &quot;độ xinh&quot; kh&ocirc;ng tưởng m&agrave; n&oacute; đem lại. N&oacute;n mềm, nơ ren ở tr&ecirc;n n&oacute;n rất s&agrave;nh điệu, phụ kiện kh&oacute; l&ograve;ng bỏ qua trong h&egrave; n&agrave;y kh&aacute;ch nh&eacute;! N&agrave;ng thu hay n&agrave;ng xu&acirc;n cũng vẫn cứ xinh v&igrave; ẻm chẳng sợ lỗi mốt lại dễ mix đồ nữa. Bạn đ&atilde; c&oacute; chưa?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2 m&agrave;u: n&acirc;u v&agrave; kem</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&iacute;ch hợp đi chơi, đi dạo phố, đi biển, đi nắng h&agrave;ng ng&agrave;y</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mũ C&oacute;i rất hợp cạ với những trang phục thi&ecirc;n về sự năng động, thoải m&aacute;i v&agrave; trẻ trung.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n c&oacute;i l&agrave; sự lựa chọn gần như đầu ti&ecirc;n của c&aacute;c c&ocirc; n&agrave;ng khi chuẩn bị cho kỳ nghỉ m&aacute;t. Chiếc n&oacute;n dường như đẹp hơn trong khung cảnh biển xanh, c&aacute;t trắng v&agrave; những tia nắng ch&oacute;i chang.-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- N&oacute;n rộng v&agrave;nh dễ d&agrave;ng kết hợp với những trang phục mang phong c&aacute;ch mềm mại, nữ t&iacute;nh. Những sự kết hợp ho&agrave;n hảo v&agrave; đẹp l&agrave; với những mẫu v&aacute;y d&agrave;i thướt tha đậm chất tiểu thư như mullet hay maxi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#N&oacute;n #mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#nonthoitrang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang #mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '4', 66, 8, 5, 90000, 90000, '2017-05-23 21:15:34', '6', '2022-05-20 10:52:47', '2', 1, 1, 1, '', ''),
(22, 6, 'Kính Mát Guess Men\'s Blue Aviator', 'kinh-mat-guess-mens-blue-aviator', '10-1.jpg', '10-2.jpg#10-1.jpg', 'Kính Mát Guess Men\'s Blue Aviator/Pilot Sunglasses GU698290W64 Màu Xanh Blue', '<p><strong>K&iacute;nh M&aacute;t Guess Men&#39;s Blue Aviator/Pilot Sunglasses GU698290W64 M&agrave;u Xanh Blue&nbsp;</strong>l&agrave; chiếc k&iacute;nh thời trang đến từ thương hiệu Guess nổi tiếng của Mỹ. Sản phẩm bảo vệ tốt cho đ&ocirc;i mắt những ng&agrave;y h&egrave; nắng đồng thời thể hiện n&eacute;t đẹp v&ocirc; c&ugrave;ng nam t&iacute;nh, đẳng cấp v&agrave; sang trọng.</p>\r\n\r\n<p><img src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2022/05/2-jpg-1651807331-06052022102211.jpg\" /></p>\r\n\r\n<h2><strong>Đ&ocirc;i n&eacute;t về thương hiệu Guess</strong></h2>\r\n\r\n<p>Guess l&agrave; một nh&atilde;n hiệu thời trang của Mỹ phổ biến v&agrave; được ưa chuộng tại nhiều nước tr&ecirc;n thế giới, l&agrave; một nh&atilde;n hiệu l&acirc;u đời v&agrave; h&igrave;nh th&agrave;nh thương hiệu với sự vững chắc trong thị trường thời trang. H&atilde;ng được th&agrave;nh lập v&agrave;o năm 1981 bởi anh em nh&agrave; Marciano, người đ&atilde; rời nước Ph&aacute;p để theo đuổi giấc mơ Mỹ.</p>\r\n\r\n<p><img src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2022/04/mat-kinh-guess-cua-nuoc-nao-co-t-jpg-1651224510-29042022162830.jpg\" /></p>\r\n\r\n<p>Sản phẩm ban đầu l&agrave; quần jean đ&aacute; rửa mang phong c&aacute;ch mạnh mẽ v&agrave; gợi cảm, hướng đến kh&aacute;ch h&agrave;ng l&agrave; phụ nữ trưởng th&agrave;nh th&iacute;ch t&iacute;nh c&aacute;ch bụi bậm. Sản phẩm chủ lực l&agrave; quần jean bụi bậm, Guess mở rộng thị trường đến c&aacute;c phụ kiện kh&aacute;c như t&uacute;i x&aacute;ch, nước hoa, k&iacute;nh m&aacute;t. Đặc biệt, d&ograve;ng k&iacute;nh Guess lu&ocirc;n hướng đến sự mới lạ c&ugrave;ng những gi&aacute; trị ẩn l&acirc;u đời của nh&atilde;n hiệu.</p>\r\n\r\n<h2><strong>M&ocirc; tả K&iacute;nh M&aacute;t Guess Men&#39;s Blue Aviator/Pilot Sunglasses GU698290W64 M&agrave;u Xanh Blue</strong></h2>\r\n\r\n<p><strong>K&iacute;nh M&aacute;t Guess Men&#39;s Blue Aviator/Pilot Sunglasses GU698290W64 M&agrave;u Xanh Blue</strong>&nbsp;sở hữu thiết kế cực kỳ thời trang, dễ d&agrave;ng kết hợp với phong c&aacute;ch trẻ trung, c&aacute; t&iacute;nh. L&agrave; sự pha trộn cổ điển v&agrave; n&eacute;t hiện đại, sản phẩm mang đến một kh&iacute; chất đầy tự tin, mạnh mẽ.&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2022/05/untitled-1-jpg-1651807323-06052022102203.jpg\" /></p>\r\n\r\n<p>Ở&nbsp;<strong>Guess Men&#39;s Blue Aviator/Pilot Sunglasses GU698290W64</strong>, phần&nbsp;<a href=\"https://vuahanghieu.com/kinh-mat\">mắt k&iacute;nh</a>&nbsp;được thiết kế chống ch&oacute;i v&agrave; tia UV g&acirc;y hại cho mắt bảo vệ đ&ocirc;i mắt của bạn khỏi những t&aacute;c nh&acirc;n g&acirc;y hại từ m&ocirc;i trường như bụi, gi&oacute;, nắng. Sản phẩm th&iacute;ch hợp cho c&aacute;c bạn sử dụng khi đi ra ngo&agrave;i hoặc du lịch.&nbsp;</p>\r\n\r\n<h2><strong>Hướng dẫn bảo quản k&iacute;nh m&aacute;t Guess</strong></h2>\r\n\r\n<p>- Khi kh&ocirc;ng sử dụng k&iacute;nh n&ecirc;n giữ gìn trong h&ocirc;̣p cẩn thận.</p>\r\n\r\n<p>- Thường xuy&ecirc;n rửa kính bằng nước m&aacute;y, kh&ocirc;ng sử dụng c&aacute;c nước lau rửa k&iacute;nh c&oacute; t&iacute;nh tẩy rửa mạnh, lau sạch tròng kính bằng khăn chuy&ecirc;n dùng đ&ecirc;̉ lau kính.</p>\r\n\r\n<p>- Kh&ocirc;ng đặt úp tròng kính xu&ocirc;́ng c&aacute;c b&ecirc;̀ mặt.</p>\r\n\r\n<p>- Kh&ocirc;ng va chạm mạnh vào kính.</p>\r\n\r\n<p>- Đ&ecirc;̉ gọng kính kh&ocirc;ng bi&ecirc;́n dạng, khi đeo và tháo kính, n&ecirc;n dùng 2 tay c&acirc;̀m 2 càng kính v&agrave; k&eacute;o thẳng ra.</p>\r\n\r\n<p>- Đ&ocirc;́i với gọng kính kim loại, n&ecirc;n thường xuy&ecirc;n ki&ecirc;̉m tra và vặn chặt &ocirc;́c vít giữ tròng kính ở gọng.</p>\r\n', '3', 50, 10, 0, 1290000, 1290000, '2017-05-23 21:19:04', '6', '2022-05-19 13:00:21', '2', 1, 1, 1, '', ''),
(23, 2, 'MŨ CÓI CHUÔNG NHỎ VINTAGE SỢI TỰ NHIÊN CAO CẤP', 'mu-coi-chuong-nho-vintage-soi-tu-nhien-cao-cap', '11-1.jpg', '11-3.jpg#11-2.jpg#11-1.jpg', 'Tiếp nối sự thành công rực rỡ từ người tiền nhiệm OPPO F1s thì mới đây OPPO đã chính thức giới thiệu phiên bản kế nhiệm với nâng cấp nhẹ về cầu hình mang tên OPPO F1s 2017.', '<p>&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>N&oacute;n c&oacute;i / mũ c&oacute;i - phụ kiện cứu v&atilde;n mọi &quot; thần th&aacute;i &quot; . D&ugrave; trang phục c&oacute; lộng lẫy tới đ&acirc;u nhưng thiếu đi n&oacute;n đi biển bạn trờ n&ecirc;n nhạt v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>Si&ecirc;u phẩm n&agrave;y rất được l&ograve;ng c&aacute;c c&ocirc; g&aacute;i nh&agrave; m&igrave;nh bởi &quot;độ xinh&quot; kh&ocirc;ng tưởng m&agrave; n&oacute; đem lại. N&oacute;n mềm, nơ ren ở tr&ecirc;n n&oacute;n rất s&agrave;nh điệu, phụ kiện kh&oacute; l&ograve;ng bỏ qua trong h&egrave; n&agrave;y kh&aacute;ch nh&eacute;! N&agrave;ng thu hay n&agrave;ng xu&acirc;n cũng vẫn cứ xinh v&igrave; ẻm chẳng sợ lỗi mốt lại dễ mix đồ nữa. Bạn đ&atilde; c&oacute; chưa?</p>\r\n\r\n<p>2 m&agrave;u: n&acirc;u v&agrave; kem</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>Th&iacute;ch hợp đi chơi, đi dạo phố, đi biển, đi nắng h&agrave;ng ng&agrave;y</p>\r\n\r\n<p>Mũ C&oacute;i rất hợp cạ với những trang phục thi&ecirc;n về sự năng động, thoải m&aacute;i v&agrave; trẻ trung.</p>\r\n\r\n<p>- N&oacute;n c&oacute;i l&agrave; sự lựa chọn gần như đầu ti&ecirc;n của c&aacute;c c&ocirc; n&agrave;ng khi chuẩn bị cho kỳ nghỉ m&aacute;t. Chiếc n&oacute;n dường như đẹp hơn trong khung cảnh biển xanh, c&aacute;t trắng v&agrave; những tia nắng ch&oacute;i chang.-</p>\r\n\r\n<p>- N&oacute;n rộng v&agrave;nh dễ d&agrave;ng kết hợp với những trang phục mang phong c&aacute;ch mềm mại, nữ t&iacute;nh. Những sự kết hợp ho&agrave;n hảo v&agrave; đẹp l&agrave; với những mẫu v&aacute;y d&agrave;i thướt tha đậm chất tiểu thư như mullet hay maxi.</p>\r\n\r\n<p>#N&oacute;n #mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang</p>\r\n\r\n<p>#nonthoitrang</p>\r\n\r\n<p>#mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang #mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>N&oacute;n c&oacute;i / mũ c&oacute;i - phụ kiện cứu v&atilde;n mọi &quot; thần th&aacute;i &quot; . D&ugrave; trang phục c&oacute; lộng lẫy tới đ&acirc;u nhưng thiếu đi n&oacute;n đi biển bạn trờ n&ecirc;n nhạt v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>Si&ecirc;u phẩm n&agrave;y rất được l&ograve;ng c&aacute;c c&ocirc; g&aacute;i nh&agrave; m&igrave;nh bởi &quot;độ xinh&quot; kh&ocirc;ng tưởng m&agrave; n&oacute; đem lại. N&oacute;n mềm, nơ ren ở tr&ecirc;n n&oacute;n rất s&agrave;nh điệu, phụ kiện kh&oacute; l&ograve;ng bỏ qua trong h&egrave; n&agrave;y kh&aacute;ch nh&eacute;! N&agrave;ng thu hay n&agrave;ng xu&acirc;n cũng vẫn cứ xinh v&igrave; ẻm chẳng sợ lỗi mốt lại dễ mix đồ nữa. Bạn đ&atilde; c&oacute; chưa?</p>\r\n\r\n<p>2 m&agrave;u: n&acirc;u v&agrave; kem</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>Th&iacute;ch hợp đi chơi, đi dạo phố, đi biển, đi nắng h&agrave;ng ng&agrave;y</p>\r\n\r\n<p>Mũ C&oacute;i rất hợp cạ với những trang phục thi&ecirc;n về sự năng động, thoải m&aacute;i v&agrave; trẻ trung.</p>\r\n\r\n<p>- N&oacute;n c&oacute;i l&agrave; sự lựa chọn gần như đầu ti&ecirc;n của c&aacute;c c&ocirc; n&agrave;ng khi chuẩn bị cho kỳ nghỉ m&aacute;t. Chiếc n&oacute;n dường như đẹp hơn trong khung cảnh biển xanh, c&aacute;t trắng v&agrave; những tia nắng ch&oacute;i chang.-</p>\r\n\r\n<p>- N&oacute;n rộng v&agrave;nh dễ d&agrave;ng kết hợp với những trang phục mang phong c&aacute;ch mềm mại, nữ t&iacute;nh. Những sự kết hợp ho&agrave;n hảo v&agrave; đẹp l&agrave; với những mẫu v&aacute;y d&agrave;i thướt tha đậm chất tiểu thư như mullet hay maxi.</p>\r\n\r\n<p>#N&oacute;n #mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang</p>\r\n\r\n<p>#nonthoitrang</p>\r\n\r\n<p>#mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang #mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>N&oacute;n c&oacute;i / mũ c&oacute;i - phụ kiện cứu v&atilde;n mọi &quot; thần th&aacute;i &quot; . D&ugrave; trang phục c&oacute; lộng lẫy tới đ&acirc;u nhưng thiếu đi n&oacute;n đi biển bạn trờ n&ecirc;n nhạt v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>Si&ecirc;u phẩm n&agrave;y rất được l&ograve;ng c&aacute;c c&ocirc; g&aacute;i nh&agrave; m&igrave;nh bởi &quot;độ xinh&quot; kh&ocirc;ng tưởng m&agrave; n&oacute; đem lại. N&oacute;n mềm, nơ ren ở tr&ecirc;n n&oacute;n rất s&agrave;nh điệu, phụ kiện kh&oacute; l&ograve;ng bỏ qua trong h&egrave; n&agrave;y kh&aacute;ch nh&eacute;! N&agrave;ng thu hay n&agrave;ng xu&acirc;n cũng vẫn cứ xinh v&igrave; ẻm chẳng sợ lỗi mốt lại dễ mix đồ nữa. Bạn đ&atilde; c&oacute; chưa?</p>\r\n\r\n<p>2 m&agrave;u: n&acirc;u v&agrave; kem</p>\r\n\r\n<p>#mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n\r\n<p>Th&iacute;ch hợp đi chơi, đi dạo phố, đi biển, đi nắng h&agrave;ng ng&agrave;y</p>\r\n\r\n<p>Mũ C&oacute;i rất hợp cạ với những trang phục thi&ecirc;n về sự năng động, thoải m&aacute;i v&agrave; trẻ trung.</p>\r\n\r\n<p>- N&oacute;n c&oacute;i l&agrave; sự lựa chọn gần như đầu ti&ecirc;n của c&aacute;c c&ocirc; n&agrave;ng khi chuẩn bị cho kỳ nghỉ m&aacute;t. Chiếc n&oacute;n dường như đẹp hơn trong khung cảnh biển xanh, c&aacute;t trắng v&agrave; những tia nắng ch&oacute;i chang.-</p>\r\n\r\n<p>- N&oacute;n rộng v&agrave;nh dễ d&agrave;ng kết hợp với những trang phục mang phong c&aacute;ch mềm mại, nữ t&iacute;nh. Những sự kết hợp ho&agrave;n hảo v&agrave; đẹp l&agrave; với những mẫu v&aacute;y d&agrave;i thướt tha đậm chất tiểu thư như mullet hay maxi.</p>\r\n\r\n<p>#N&oacute;n #mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang</p>\r\n\r\n<p>#nonthoitrang</p>\r\n\r\n<p>#mũ #n&oacute;nđẹp #noncoi #noncoidibien #noncoisanhdieu #noncoino #noncoithoitrang #mũ_c&oacute;i #n&oacute;n_c&oacute;i #n&oacute;n_c&oacute;i_đi_biển #Mũ_c&oacute;i_đi_biển #n&oacute;n_c&oacute;i_nữ #mũ_c&oacute;i_nữ</p>\r\n', '3', 45, 10, 0, 120000, 120000, '2017-05-23 21:22:31', '6', '2022-05-19 13:07:59', '2', 1, 1, 1, '', '');
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(24, 3, 'CÀI TÓC LÔNG CỪU XOẮN', 'cai-toc-long-cuu-xoan', '21-1.jpg', '21-1.jpg#21-2.jpg', 'Băng Đô Cài Tóc lông cừu xoắn có thiết kế xinh xắn, đáng yêu, mang lại vẻ xinh xắn cho bạn gái.\r\n\r\nBăng đô có thiết kế đơn giản, phối màu nhẹ nhàng, nữ tính\r\n\r\nPhụ kiện đơn giản phù hợp với các bạn nữ và phù hợp với nhiều trang phục.', '<p><kbd><samp><code><tt>Từ năm ngo&aacute;i đến giờ, những m&oacute;n phụ kiện t&oacute;c b&aacute;nh b&egrave;o m&agrave; đặc biệt l&agrave; bờm nơ, băng đ&ocirc; vải&hellip; ng&agrave;y c&agrave;ng chứng tỏ sức h&uacute;t m&atilde;nh liệt đối với c&aacute;c t&iacute;n đồ thời trang.</tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt>Cho d&ugrave; t&oacute;c x&otilde;a quyến rũ, t&oacute;c thẳng, t&oacute;c tết hay t&oacute;c b&uacute;i th&igrave; băng đ&ocirc; c&agrave;i t&oacute;c turban cũng lu&ocirc;n thể hiện được sự đ&aacute;ng y&ecirc;u v&agrave; phong c&aacute;ch.</tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt>Cho d&ugrave; bạn l&agrave; c&ocirc; n&agrave;ng c&aacute; t&iacute;nh hay s&agrave;nh điệu th&igrave; băng đ&ocirc; c&agrave;i t&oacute;c sẽ trở th&agrave;nh điểm nhấn cho bạn trong m&ugrave;a h&egrave; n&agrave;y.</tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt>Ngo&agrave;i c&ocirc;ng dụng vừa l&agrave;m đẹp th&igrave; chị em c&ograve;n c&oacute; thể sử dụng băng đ&ocirc; để l&agrave;m gọn g&agrave;ng trong mỗi lần tẩy trang hay trang điểm.</tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt>H&ocirc;m nay,&nbsp;<a href=\"https://amansaigon.com/\">A Mẫn</a>&nbsp;xin giới thiệu đến chị em mẫu&nbsp;<a href=\"https://amansaigon.com/\">Băng đ&ocirc; c&agrave;i t&oacute;c</a>&nbsp;l&ocirc;ng cừu xoắn cực k&igrave; xinh xắn đ&aacute;ng y&ecirc;u</tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-2.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><strong>ĐẶC ĐIỂM NỔI BẬT</strong></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt>Băng Đ&ocirc;&nbsp;<a href=\"https://amansaigon.com/\">C&agrave;i T&oacute;c</a>&nbsp;l&ocirc;ng cừu xoắn c&oacute; thiết kế xinh xắn, đ&aacute;ng y&ecirc;u, mang lại vẻ xinh xắn cho bạn g&aacute;i.</tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-22.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt>Băng Đ&ocirc; c&agrave;i t&oacute;c l&ocirc;ng cừu xoắn c&oacute; m&agrave;u nhẹ nh&agrave;ng</tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-20.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-1.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt>Băng đ&ocirc; c&oacute;&nbsp;<a href=\"https://amansaigon.com/\">thiết kế</a>&nbsp;đơn giản, phối m&agrave;u nhẹ nh&agrave;ng, nữ t&iacute;nh</tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-11.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-12.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-13.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt>Phụ kiện đơn giản ph&ugrave; hợp với c&aacute;c bạn nữ v&agrave; ph&ugrave; hợp với nhiều trang phục.</tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-14.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-15.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-16.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-17.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-18.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-10.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-19.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-21.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-9.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-8.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-7.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-6.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-5.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-4.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n\r\n<p><kbd><samp><code><tt><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/06/C%C3%80I-T%C3%93C-L%C3%94NG-C%E1%BB%AAU-XO%E1%BA%AEN-3.jpg\" style=\"height:720px; width:720px\" /></tt></code></samp></kbd></p>\r\n', '5', 70, 10, 0, 60000, 60000, '2017-05-23 21:41:56', '6', '2022-05-19 16:45:28', '2', 1, 1, 1, '', ''),
(25, 3, 'Luna Hair Pins', 'luna-hair-pins', '3-1.png', '3-1.png#3-2.png#3-3.png', 'Những chiếc kẹp tóc Luna là item phải có của mùa này. Có hai mặt trăng vàng và các ngôi sao diamante trên một ghim tóc dài cong hơn.', '<p>Những chiếc kẹp t&oacute;c Luna l&agrave; item phải c&oacute; của m&ugrave;a n&agrave;y. C&oacute; hai mặt trăng v&agrave;ng v&agrave; c&aacute;c ng&ocirc;i sao diamante tr&ecirc;n một ghim t&oacute;c d&agrave;i cong hơn. Bạn c&oacute; thể chỉ cần đeo những chiếc Ghim T&oacute;c Luna của ri&ecirc;ng m&igrave;nh hoặc kết hợp với những chiếc ghim kh&aacute;c của ch&uacute;ng t&ocirc;i. Ch&acirc;n t&oacute;c cong d&agrave;i 85mm Dễ sử dụng Th&iacute;ch hợp cho giao diện ban đ&ecirc;m hoặc ban ng&agrave;y ấn tượng Trọng lượng nhẹ Những chiếc kẹp t&oacute;c Luna của bạn sẽ được đựng trong một hộp qu&agrave; m&agrave;u đen mờ sang trọng với d&acirc;y nhung v&agrave; ruy băng. Lưu &yacute;: Bảo quản ghim t&oacute;c của bạn, vui l&ograve;ng cất ri&ecirc;ng với đồ trang sức kh&aacute;c v&agrave; tr&aacute;nh để ghim t&oacute;c cọ x&aacute;t với đồ trang sức kh&aacute;c. Xử l&yacute; cẩn thận. Những chiếc kẹp t&oacute;c Luna l&agrave; item phải c&oacute; của m&ugrave;a n&agrave;y. C&oacute; hai mặt trăng v&agrave;ng v&agrave; c&aacute;c ng&ocirc;i sao diamante tr&ecirc;n một ghim t&oacute;c d&agrave;i cong hơn. Bạn c&oacute; thể chỉ cần đeo những chiếc Ghim T&oacute;c Luna của ri&ecirc;ng m&igrave;nh hoặc kết hợp với những chiếc ghim kh&aacute;c của ch&uacute;ng t&ocirc;i. Ch&acirc;n t&oacute;c cong d&agrave;i 85mm Dễ sử dụng Th&iacute;ch hợp cho giao diện ban đ&ecirc;m hoặc ban ng&agrave;y ấn tượng Trọng lượng nhẹ Những chiếc kẹp t&oacute;c Luna của bạn sẽ được đựng trong một hộp qu&agrave; m&agrave;u đen mờ sang trọng với d&acirc;y nhung v&agrave; ruy băng. Lưu &yacute;: Bảo quản ghim t&oacute;c của bạn, vui l&ograve;ng cất ri&ecirc;ng với đồ trang sức kh&aacute;c v&agrave; tr&aacute;nh để ghim t&oacute;c cọ x&aacute;t với đồ trang sức kh&aacute;c. Xử l&yacute; cẩn thận. Những chiếc kẹp t&oacute;c Luna l&agrave; item phải c&oacute; của m&ugrave;a n&agrave;y. C&oacute; hai mặt trăng v&agrave;ng v&agrave; c&aacute;c ng&ocirc;i sao diamante tr&ecirc;n một ghim t&oacute;c d&agrave;i cong hơn. Bạn c&oacute; thể chỉ cần đeo những chiếc Ghim T&oacute;c Luna của ri&ecirc;ng m&igrave;nh hoặc kết hợp với những chiếc ghim kh&aacute;c của ch&uacute;ng t&ocirc;i. Ch&acirc;n t&oacute;c cong d&agrave;i 85mm Dễ sử dụng Th&iacute;ch hợp cho giao diện ban đ&ecirc;m hoặc ban ng&agrave;y ấn tượng Trọng lượng nhẹ Những chiếc kẹp t&oacute;c Luna của bạn sẽ được đựng trong một hộp qu&agrave; m&agrave;u đen mờ sang trọng với d&acirc;y nhung v&agrave; ruy băng. Lưu &yacute;: Bảo quản ghim t&oacute;c của bạn, vui l&ograve;ng cất ri&ecirc;ng với đồ trang sức kh&aacute;c v&agrave; tr&aacute;nh để ghim t&oacute;c cọ x&aacute;t với đồ trang sức kh&aacute;c. Xử l&yacute; cẩn thận. Những chiếc kẹp t&oacute;c Luna l&agrave; item phải c&oacute; của m&ugrave;a n&agrave;y. C&oacute; hai mặt trăng v&agrave;ng v&agrave; c&aacute;c ng&ocirc;i sao diamante tr&ecirc;n một ghim t&oacute;c d&agrave;i cong hơn. Bạn c&oacute; thể chỉ cần đeo những chiếc Ghim T&oacute;c Luna của ri&ecirc;ng m&igrave;nh hoặc kết hợp với những chiếc ghim kh&aacute;c của ch&uacute;ng t&ocirc;i. Ch&acirc;n t&oacute;c cong d&agrave;i 85mm Dễ sử dụng Th&iacute;ch hợp cho giao diện ban đ&ecirc;m hoặc ban ng&agrave;y ấn tượng Trọng lượng nhẹ Những chiếc kẹp t&oacute;c Luna của bạn sẽ được đựng trong một hộp qu&agrave; m&agrave;u đen mờ sang trọng với d&acirc;y nhung v&agrave; ruy băng. Lưu &yacute;: Bảo quản ghim t&oacute;c của bạn, vui l&ograve;ng cất ri&ecirc;ng với đồ trang sức kh&aacute;c v&agrave; tr&aacute;nh để ghim t&oacute;c cọ x&aacute;t với đồ trang sức kh&aacute;c. Xử l&yacute; cẩn thận.</p>\r\n', '3', 45, 0, 0, 420000, 400000, '2017-05-23 21:44:51', '6', '2022-05-18 12:06:16', '2', 1, 1, 1, '', ''),
(59, 6, 'Connor Sunglasses', 'connor-sunglasses', '43-2.png', '43-1.png#43-3.png#43-2.jpg', 'KÍNH MÁT GỌNG VIỀN NHỰA MÀU ĐEN KẾT HỢP CHI TIẾT MẠ KIM Ở ĐUÔI GỌNG, DÁNG THIÊN TRÒN', '<p>K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MẠ KIM Ở ĐU&Ocirc;I GỌNG, D&Aacute;NG THI&Ecirc;N TR&Ograve;N. PHỤ KIỆN MẮT VỚI THIẾT KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK PLASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.&nbsp;K&Iacute;NH M&Aacute;T GỌNG NG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK PLASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.</p>\r\n\r\n<p>K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MẠ KIM Ở ĐU&Ocirc;I GỌNG, D&Aacute;NG THI&Ecirc;N TR&Ograve;N. PHỤ KIỆN MẮT VỚI THIẾT KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK PLASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.&nbsp;K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MẠ KIM Ở ĐU&Ocirc;I GỌNG, D&Aacute;NG THI&Ecirc;N TR&Ograve;N.&nbsp;PHỤ KIỆN MẮT VỚI THIẾT KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK PLASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MN.&nbsp;PHỤ KIỆN MẮT VỚI THIẾT KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK PLASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.</p>\r\n\r\n<p>K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MẠ KIM Ở ĐU&Ocirc;I GỌNG, D&Aacute;NG THI&Ecirc;N TR&Ograve;N. PHỤ KIỆN MẮT VỚI THIẾT</p>\r\n\r\n<p>KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK P</p>\r\n\r\n<p>LASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGIN</p>\r\n\r\n<p>G A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.&nbsp;K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MẠ KIM Ở ĐU&Ocirc;I G</p>\r\n\r\n<p>ỌNG, D&Aacute;NG THI&Ecirc;N TR&Ograve;N.&nbsp;PHỤ KIỆN MẮT VỚI THIẾT KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;</p>\r\n\r\n<p>CIRCULAR BLACK PLASTIC RIMME</p>\r\n\r\n<p>D SUNGLASSES FEATURING METALLIC DETAIL</p>\r\n\r\n<p>S IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.</p>\r\n\r\n<p>K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MẠ KIM Ở ĐU&Ocirc;I GỌNG, D&Aacute;NG THI&Ecirc;N TR&Ograve;N. PHỤ KIỆN MẮT VỚI THIẾT KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK PLASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.&nbsp;K&Iacute;NH M&Aacute;T GỌNG NG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK PLASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.</p>\r\n\r\n<p>K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MẠ KIM Ở ĐU&Ocirc;I GỌNG, D&Aacute;NG THI&Ecirc;N TR&Ograve;N. PHỤ KIỆN MẮT VỚI THIẾT KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK PLASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.&nbsp;K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MẠ KIM Ở ĐU&Ocirc;I GỌNG, D&Aacute;NG THI&Ecirc;N TR&Ograve;N.&nbsp;PHỤ KIỆN MẮT VỚI THIẾT KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK PLASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MN.&nbsp;PHỤ KIỆN MẮT VỚI THIẾT KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK PLASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.</p>\r\n\r\n<p>K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MẠ KIM Ở ĐU&Ocirc;I GỌNG, D&Aacute;NG THI&Ecirc;N TR&Ograve;N. PHỤ KIỆN MẮT VỚI THIẾT</p>\r\n\r\n<p>KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;CIRCULAR BLACK P</p>\r\n\r\n<p>LASTIC RIMMED SUNGLASSES FEATURING METALLIC DETAILS IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGIN</p>\r\n\r\n<p>G A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.&nbsp;K&Iacute;NH M&Aacute;T GỌNG VIỀN NHỰA M&Agrave;U ĐEN KẾT HỢP CHI TIẾT MẠ KIM Ở ĐU&Ocirc;I G</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.google.com/url?sa=i&amp;url=https%3A%2F%2Fxn--thitrangn-6p7dqh.vn%2Fkinh-mat-floralpunk-jose-sunglasses-black-mau-den-s14813594361.html&amp;psig=AOvVaw2eR3wmlMbXaBXbzeCjOVYA&amp;ust=1652937849302000&amp;source=images&amp;cd=vfe&amp;ved=0CAkQjRxqFwoTCLC9sb2n6PcCFQAAAAAdAAAAABAK\" /></p>\r\n\r\n<p>ỌNG, D&Aacute;NG THI&Ecirc;N TR&Ograve;N.&nbsp;PHỤ KIỆN MẮT VỚI THIẾT KẾ CỔ ĐIỂN ĐEM ĐẾN PHONG C&Aacute;CH TỐI GIẢN, THANH LỊCH. CHỈ SỐ CHỐNG TIA UV 400.&nbsp;</p>\r\n\r\n<p>CIRCULAR BLACK PLASTIC RIMME</p>\r\n\r\n<p>D SUNGLASSES FEATURING METALLIC DETAIL</p>\r\n\r\n<p>S IN THE REAR.&nbsp;EYE ACCESSORIES WITH CLASSIC DESIGN BRINGING A MINIMALIST, ELEGANT STYLE. UV PROTECTION 400.</p>\r\n', '3', 66, 0, 10, 400000, 400000, '2022-05-18 12:25:49', '2', '2022-05-20 10:51:05', '2', 1, 1, 1, '', ''),
(26, 7, 'Lens mắt Cinnamon Brown', 'lens-mat-cinnamon-brown', '33-2.jpg', '33-2.jpg#33-2.jpg', 'Màu sắc : Nâu\r\n\r\nĐường kính màu : 13.8mm\r\n\r\nĐường kính : 14.0mm', '<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/san-pham/natural-day/lens-mat.jpg\" style=\"height:2874px; width:827px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/san-pham/natural-day/contact-lens.jpg\" style=\"height:1417px; width:803px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-cinnamon-brown\">Cinnamon Brown</a>&nbsp;được thiết kế v&agrave; sản xuất theo c&ocirc;ng nghệ tiến H&agrave;n Quốc, lens lu&ocirc;n nằm trong top lens đẹp của xứ H&agrave;n, với thiết đặc biệt c&aacute;c v&acirc;n m&agrave;u liti tạo cảm gi&aacute;c mịn v&agrave; tự nhi&ecirc;n cho mắt. Được nhiều bạn trẻ xử H&agrave;n v&agrave; Việt y&ecirc;u th&iacute;ch v&agrave; sử dụng</p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-cinnamon-brown\">Cinnamon Brown</a>&nbsp;c&oacute; độ cận từ 0.00 diop, đường k&iacute;nh 14.0mm v&agrave; đường k&iacute;nh m&agrave;u 13.8mm l&agrave;&nbsp;<a href=\"https://lensstore.vn/lens-1-ngay\">lens 1&nbsp; ng&agrave;y</a>. Lens được thiết kế vừa với nh&atilde;n cầu người Việt, ph&ugrave; hợp với mọi đối tượng v&agrave; dễ d&agrave;ng cho việc lựa chọn. Đặc biệt đối với những bạn kh&ocirc;ng muốn đeo k&iacute;nh cận, hoặc k&iacute;nh cận cho đi đ&ocirc;i măt đẹp, lens mắt l&agrave; sự lựa chọn tối ưu v&agrave; thời trang c&oacute; điều đ&oacute;.</p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-cinnamon-brown\">Cinnamon Brown</a>&nbsp;l&agrave; d&ograve;ng k&iacute;nh &aacute;p tr&ograve;ng, thời gian sử dụng 1 ng&agrave;y, thời gian đeo 8h/ng&agrave;y. Lens thuộc thương hiệu&nbsp;<a href=\"https://lensstore.vn/europa\">Europa H&agrave;n Quốc</a>&nbsp;được&nbsp;<a href=\"https://lensstore.vn/\">Lens - Store</a>&nbsp;nhập khẩu ch&iacute;nh h&atilde;ng v&agrave; ph&acirc;n phối cả nước</p>\r\n', '6', 66, 0, 5, 100000, 100000, '2017-05-23 21:49:35', '6', '2022-05-19 15:53:19', '2', 1, 1, 1, '', ''),
(27, 6, 'Kính Mát Rayban Aviator RB3025 002/40 Màu Xanh Size 58', 'kinh-mat-rayban-aviator-rb3025-002-40-mau-xanh-size-58', '10.jpg', '10.jpg', 'Kính Mát Rayban Aviator RB3025 002/40 Màu Xanh Size 58 là mẫu kính thời trang đến từ thương hiệu Rayban của Mỹ. Ngay từ khi có mặt trên thị trường, sản phẩm nhanh chóng trở thành xu hướng bởi sự săn đón của các tín đồ thời trang.', '<p>Thương hiệu Rayban l&agrave; thương hiệu h&agrave;ng đầu về&nbsp;<a href=\"https://vuahanghieu.com/kinh-mat\">mắt k&iacute;nh</a>&nbsp;tr&ecirc;n to&agrave;n thế giới, được s&aacute;ng lập bởi tập đo&agrave;n Bausch &amp; Lomb sau lời đề nghị của qu&acirc;n đội Mỹ về việc s&aacute;ng chế một loại k&iacute;nh d&agrave;nh cho phi c&ocirc;ng. K&iacute;nh M&aacute;t Rayban nhanh ch&oacute;ng trở th&agrave;nh cơn sốt trong giới y&ecirc;u thời trang.</p>\r\n\r\n<p><img src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/03/storefront-ray-ban_1200x601_acf_cropped-jpg-1616396559-22032021140239.jpg\" /></p>\r\n\r\n<p>Nối tiếp th&agrave;nh c&ocirc;ng, Rayban tiếp tục giới thiệu nhiều mẫu k&iacute;nh mới như: Rayban Wayfarer, Outdoors man... C&aacute;c d&ograve;ng k&iacute;nh thời trang của Rayban d&ugrave; ra mắt từ l&acirc;u nhưng vẫn được ưa chuộng v&igrave; ph&ugrave; hợp với mọi thời đại.</p>\r\n\r\n<h2><strong>Đặc điểm của K&iacute;nh M&aacute;t Rayban Aviator RB3025 002/40 M&agrave;u Xanh Size 58&nbsp;</strong></h2>\r\n\r\n<p>Điểm nổi bật nhất khi nhắc đến<strong>&nbsp;K&iacute;nh M&aacute;t Rayban Aviator RB3025 002/40 M&agrave;u Xanh Size 58</strong>&nbsp;ch&iacute;nh l&agrave; khả năng chống ch&oacute;i cực tốt, chống tia UV mang lại cảm gi&aacute;c &ecirc;m dịu cho mắt. K&iacute;nh sở hữu kiểu d&aacute;ng mắt dạng giọt nước hợp thời trang. Mẫu k&iacute;nh ph&ugrave; hợp với mọi gương mặt c&ugrave;ng khả năng chống lại c&aacute;c tia cực t&iacute;m vượt trội hơn hẳn so với c&aacute;c d&ograve;ng k&iacute;nh c&ugrave;ng ph&acirc;n kh&uacute;c.</p>\r\n\r\n<p><img src=\"https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2022/05/untitled-1-jpg-1652422371-13052022131251.jpg\" /></p>\r\n\r\n<p>G&oacute;c k&iacute;nh rộng, khung k&iacute;nh l&agrave;m bằng kim loại c&ugrave;ng tr&ograve;ng k&iacute;nh si&ecirc;u nhẹ l&agrave; một điểm cộng cho d&ograve;ng k&iacute;nh m&aacute;t<strong>&nbsp;Rayban Aviator RB3025 002/40 M&agrave;u Xanh</strong>. Nếu bạn l&agrave; một t&iacute;n đồ thời trang s&agrave;nh điệu chắc chắn bạn kh&ocirc;ng thể bỏ qua chiếc k&iacute;nh mắt thời thượng n&agrave;y cho mỗi chuyến du lịch nghỉ m&aacute;t hay dạo phố c&ugrave;ng bạn b&egrave;.</p>\r\n\r\n<h2><strong>Hướng dẫn bảo quản k&iacute;nh Rayban</strong></h2>\r\n\r\n<p>- Khi kh&ocirc;ng sử dụng k&iacute;nh n&ecirc;n giữ gìn trong h&ocirc;̣p cẩn thận.</p>\r\n\r\n<p>- Thường xuy&ecirc;n rửa kính bằng nước m&aacute;y, kh&ocirc;ng sử dụng c&aacute;c nước lau rửa k&iacute;nh c&oacute; t&iacute;nh tẩy rửa mạnh, lau sạch tròng kính bằng khăn chuy&ecirc;n dùng đ&ecirc;̉ lau kính.</p>\r\n\r\n<p>- Kh&ocirc;ng đặt úp tròng kính xu&ocirc;́ng c&aacute;c b&ecirc;̀ mặt.</p>\r\n\r\n<p>- Kh&ocirc;ng va chạm mạnh vào kính.</p>\r\n\r\n<p>- Đ&ecirc;̉ gọng kính kh&ocirc;ng bi&ecirc;́n dạng, khi đeo và tháo kính, n&ecirc;n dùng 2 tay c&acirc;̀m 2 càng kính v&agrave; k&eacute;o thẳng ra.</p>\r\n\r\n<p>- Đ&ocirc;́i với gọng kính kim loại, n&ecirc;n thường xuy&ecirc;n ki&ecirc;̉m tra và vặn chặt &ocirc;́c vít giữ tròng kính ở gọng.</p>\r\n', '4', 88, 1, 10, 2900000, 2900000, '2017-05-23 22:01:06', '6', '2022-05-19 12:57:13', '2', 1, 1, 1, '', ''),
(28, 7, 'Lens mắt Sole Ivory', 'lens-mat-sole-ivory', '35.jpg', '35.jpg#35.jpg', 'Màu sắc : Nâu (tây)\r\n\r\nĐường kính màu : 14.0mm\r\n\r\nĐường kính : 14.2mm', '<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/uropa/sole-ivory/lens-mat.jpg\" style=\"height:1279px; width:1000px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/uropa/sole-ivory/contact-lens.jpg\" style=\"height:1289px; width:1000px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/uropa/sole-ivory/kinh-ap-trong.jpg\" style=\"height:1349px; width:1000px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/uropa/sole-ivory/thong-so-sole-ivory.jpg\" style=\"height:360px; width:960px\" /></p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-sole-ivory\">Sole Ivory</a>&nbsp;được thiết kế dựa tr&ecirc;n &yacute; tưởng từ đ&ocirc;i mắt n&acirc;u của người &Aacute; Ch&acirc;u kết với với đ&ocirc;i mắt xanh của người Ch&acirc;u &Acirc;u để tạo ra một đ&ocirc;i mắt c&oacute; m&agrave;u n&acirc;u t&acirc;y (n&acirc;u xanh). Với thiết kế đặc biệt khi đeo v&agrave;o &aacute;nh mắt của bạn phản phất m&agrave;u xanh v&agrave; n&acirc;u, tạo n&ecirc;n n&eacute;t tinh tế, nhẹ nh&agrave;ng Phương Đ&ocirc;ng v&agrave; năng động quyến rũ Phương T&acirc;y. Đấy kết quả Sole Ivory rất được nhiều nữ xinh thanh lịch xứ H&agrave;n v&agrave; Việt y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-sole-ivory\">Sole Ivory</a>&nbsp;thiết kế v&agrave; sản xuất theo c&ocirc;ng nghệ h&oacute;a m&agrave;u ti&ecirc;n tiến H&agrave;n Quốc,&nbsp;với th&agrave;nh phần cấu tạo HEMA 45% v&agrave; nước 55% đeo rất &ecirc;m diệu v&agrave; kh&ocirc;ng g&acirc;y cộm mắt. Đảm bảo độ an to&agrave;n cho mắt v&agrave; lens kh&ocirc;ng bị mờ trong thời gian sử dụng.</p>\r\n\r\n<p><a href=\"https://lensstore.vn/lens-mat-sole-ivory\">Sole Ivory</a>&nbsp;c&oacute; đường k&iacute;nh lens 14.2mm, đường k&iacute;nh m&agrave;u 14.0mm l&agrave;&nbsp;<a href=\"https://lensstore.vn/kinh-ap-trong\">k&iacute;nh &aacute;p tr&ograve;ng</a>. Lens được thiết kế vừa với nh&atilde;n cầu của người Việt. Độ cần từ 0.00 - 6.00 diop dễ d&agrave;ng cho việc lựa chọn, ph&ugrave; hợp với mọi đối tượng. Lens c&oacute; thời gian sử dụng 6 th&aacute;ng, đeo 8h/ng&agrave;y. Sau khi th&aacute;o lens ra phải ng&acirc;m bằng dung dịch ng&acirc;m lens mới. Để đảm chất lượng v&agrave; rửa c&aacute;c bụi bẩn b&aacute;m v&agrave;o lens trong l&uacute;c đeo.</p>\r\n\r\n<p><strong>CẢNH B&Aacute;O</strong></p>\r\n\r\n<p>Hiện tại tr&ecirc;n thị trường c&oacute; rất nhiều loại lens mắt tr&ocirc;i nổi, kh&ocirc;ng r&otilde; nguồn gốc xuất xử, tem nh&atilde;n hay thời gian sử dụng ch&iacute;nh x&aacute;c. Những loại lens n&agrave;y c&oacute; điểm chung l&agrave; gi&aacute; rất rẻ, thiết kế bao bị đẹp mắt. Dẫn đến người ti&ecirc;u d&ugrave;ng hay lựa chọn để sử dụng, khi đeo một thời gian dễ g&acirc;y ảnh hưởng cho mắt như: đỏ mắt, đau mắt, kh&ocirc; mắt v&agrave; c&aacute;c bệnh về mắt kh&aacute;c. V&igrave; thế khi mua lens, người mua n&ecirc;n t&igrave;m hiểu về tem nh&atilde;n, nguồn gốc xuất sứ r&otilde; r&agrave;ng hoặc chọn c&aacute;c đơn vị kinh doanh uy t&iacute;n. Để bảo vệ sức khỏe cho đ&ocirc;i mắt s&aacute;ng v&agrave; đẹp</p>\r\n\r\n<p>Để được mua lens uy t&iacute;n, nguồn gốc xuất xứ r&otilde; r&agrave;ng. Đ&ecirc; bảo vệ đ&ocirc;i mắt của bạn</p>\r\n', '2', 40, 10, 0, 300000, 300000, '2017-05-23 22:05:42', '6', '2022-05-19 16:04:00', '2', 1, 1, 1, '', ''),
(29, 7, 'Lens mắt Shadow Gray', 'lens-mat-shadow-gray', '34-1.jpg', '34-1.jpg#34-2.jpg', 'Màu sắc : Gray\r\n\r\nĐường kính màu : 13.1mm\r\n\r\nĐường kính : 14.2mm', '<p>&ecirc;n sản phẩm : Shadow Gray</p>\r\n\r\n<p>Độ cận : 0.00 độ</p>\r\n\r\n<p>M&agrave;u sắc : Gray</p>\r\n\r\n<p>Đường k&iacute;nh m&agrave;u : 13.1mm</p>\r\n\r\n<p>Đường k&iacute;nh : 14.2mm</p>\r\n\r\n<p>Xuất xứ :&nbsp;<strong>KOREA</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/nychic/shadow-gray/kinh-ap-trong.jpg\" style=\"height:700px; width:700px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://lensstore.vn/uploads/source/nychic/shadow-gray/lens-1-ngay.jpg\" style=\"height:700px; width:700px\" /></p>\r\n', '6', 30, 0, 0, 120000, 120000, '2017-05-23 22:10:15', '6', '2022-05-19 23:27:36', '2', 1, 1, 1, '', ''),
(38, 6, 'Nelson Sunglasses', 'nelson-sunglasses', '5-1.jpg', '5-2.jpg#5-3.jpg#5-4.jpg#5-4.jpg', '\r\nKEY SELLING POINTS NELSON SUNGLASSES LÀ KIỂU KÍNH MANG HƠI HƯỚNG CỔ\r\nĐIỂN, DÁNG KÍNH 2 LỚP LẠ MẮT KẾT HỢP MÀU TRÀ CỦA TRÒNG\r\nKÍNH VÀ HIỆU ỨNG ĐỒI MỒI ẤN TƯỢNG.VỚI CHẤT LIỆU NHỰA\r\nACETATE VÀ TRÒNG KÍNH CÓ KHẢ NĂNG CHỐNG TIA CỰC TÍM (UV\r\n400).\r\n', '<p>COLOUR&nbsp; : BROWN<br />\r\n<br />\r\nMATERIAL : NHỰA ACETATE<br />\r\n<br />\r\nDIMENSION 47 - 135 - 18 - 142 (MM)<br />\r\n( CAO X NGANG X MŨI X C&Agrave;NG)</p>\r\n\r\n<p>KEY SELLING POINTS NELSON SUNGLASSES L&Agrave; KIỂU K&Iacute;NH MANG HƠI HƯỚNG CỔ<br />\r\nĐIỂN, D&Aacute;NG K&Iacute;NH 2 LỚP LẠ MẮT KẾT HỢP M&Agrave;U TR&Agrave; CỦA TR&Ograve;NG<br />\r\nK&Iacute;NH V&Agrave; HIỆU ỨNG ĐỒI MỒI ẤN TƯỢNG.VỚI CHẤT LIỆU NHỰA<br />\r\nACETATE V&Agrave; TR&Ograve;NG K&Iacute;NH C&Oacute; KHẢ NĂNG CHỐNG TIA CỰC T&Iacute;M (UV<br />\r\n400).</p>\r\n\r\n<p>POST SERVICE : KH&Ocirc;NG BẢO H&Agrave;NH( ĐỔI TRẢ TRONG 7 NG&Agrave;Y, NẾU LỖI SẢN XUẤT)</p>\r\n\r\n<p>COLOUR&nbsp; : BROWN<br />\r\n<br />\r\nMATERIAL : NHỰA ACETATE<br />\r\n<br />\r\nDIMENSION 47 - 135 - 18 - 142 (MM)<br />\r\n( CAO X NGANG X MŨI X C&Agrave;NG)</p>\r\n\r\n<p>KEY SELLING POINTS NELSON SUNGLASSES L&Agrave; KIỂU K&Iacute;NH MANG HƠI HƯỚNG CỔ<br />\r\nĐIỂN, D&Aacute;NG K&Iacute;NH 2 LỚP LẠ MẮT KẾT HỢP M&Agrave;U TR&Agrave; CỦA TR&Ograve;NG<br />\r\nK&Iacute;NH V&Agrave; HIỆU ỨNG ĐỒI MỒI ẤN TƯỢNG.VỚI CHẤT LIỆU NHỰA<br />\r\nACETATE V&Agrave; TR&Ograve;NG K&Iacute;NH C&Oacute; KHẢ NĂNG CHỐNG TIA CỰC T&Iacute;M (UV<br />\r\n400).</p>\r\n\r\n<p>POST SERVICE : KH&Ocirc;NG BẢO H&Agrave;NH( ĐỔI TRẢ TRONG 7 NG&Agrave;Y, NẾU LỖI SẢN XUẤT)</p>\r\n\r\n<p>COLOUR&nbsp; : BROWN<br />\r\n<br />\r\nMATERIAL : NHỰA ACETATE<br />\r\n<br />\r\nDIMENSION 47 - 135 - 18 - 142 (MM)<br />\r\n( CAO X NGANG X MŨI X C&Agrave;NG)</p>\r\n\r\n<p>KEY SELLING POINTS NELSON SUNGLASSES L&Agrave; KIỂU K&Iacute;NH MANG HƠI HƯỚNG CỔ<br />\r\nĐIỂN, D&Aacute;NG K&Iacute;NH 2 LỚP LẠ MẮT KẾT HỢP M&Agrave;U TR&Agrave; CỦA TR&Ograve;NG<br />\r\nK&Iacute;NH V&Agrave; HIỆU ỨNG ĐỒI MỒI ẤN TƯỢNG.VỚI CHẤT LIỆU NHỰA<br />\r\nACETATE V&Agrave; TR&Ograve;NG K&Iacute;NH C&Oacute; KHẢ NĂNG CHỐNG TIA CỰC T&Iacute;M (UV<br />\r\n400).</p>\r\n\r\n<p>POST SERVICE : KH&Ocirc;NG BẢO H&Agrave;NH( ĐỔI TRẢ TRONG 7 NG&Agrave;Y, NẾU LỖI SẢN XUẤT)</p>\r\n\r\n<p>COLOUR&nbsp; : BROWN<br />\r\n<br />\r\nMATERIAL : NHỰA ACETATE<br />\r\n<br />\r\nDIMENSION 47 - 135 - 18 - 142 (MM)<br />\r\n( CAO X NGANG X MŨI X C&Agrave;NG)</p>\r\n\r\n<p>KEY SELLING POINTS NELSON SUNGLASSES L&Agrave; KIỂU K&Iacute;NH MANG HƠI HƯỚNG CỔ<br />\r\nĐIỂN, D&Aacute;NG K&Iacute;NH 2 LỚP LẠ MẮT KẾT HỢP M&Agrave;U TR&Agrave; CỦA TR&Ograve;NG<br />\r\nK&Iacute;NH V&Agrave; HIỆU ỨNG ĐỒI MỒI ẤN TƯỢNG.VỚI CHẤT LIỆU NHỰA<br />\r\nACETATE V&Agrave; TR&Ograve;NG K&Iacute;NH C&Oacute; KHẢ NĂNG CHỐNG TIA CỰC T&Iacute;M (UV<br />\r\n400).</p>\r\n\r\n<p>POST SERVICE : KH&Ocirc;NG BẢO H&Agrave;NH( ĐỔI TRẢ TRONG 7 NG&Agrave;Y, NẾU LỖI SẢN XUẤT)</p>\r\n\r\n<p>COLOUR&nbsp; : BROWN<br />\r\n<br />\r\nMATERIAL : NHỰA ACETATE<br />\r\n<br />\r\nDIMENSION 47 - 135 - 18 - 142 (MM)<br />\r\n( CAO X NGANG X MŨI X C&Agrave;NG)</p>\r\n\r\n<p>KEY SELLING POINTS NELSON SUNGLASSES L&Agrave; KIỂU K&Iacute;NH MANG HƠI HƯỚNG CỔ<br />\r\nĐIỂN, D&Aacute;NG K&Iacute;NH 2 LỚP LẠ MẮT KẾT HỢP M&Agrave;U TR&Agrave; CỦA TR&Ograve;NG<br />\r\nK&Iacute;NH V&Agrave; HIỆU ỨNG ĐỒI MỒI ẤN TƯỢNG.VỚI CHẤT LIỆU NHỰA<br />\r\nACETATE V&Agrave; TR&Ograve;NG K&Iacute;NH C&Oacute; KHẢ NĂNG CHỐNG TIA CỰC T&Iacute;M (UV<br />\r\n400).</p>\r\n\r\n<p>POST SERVICE : KH&Ocirc;NG BẢO H&Agrave;NH( ĐỔI TRẢ TRONG 7 NG&Agrave;Y, NẾU LỖI SẢN XUẤT)</p>\r\n\r\n<p>COLOUR&nbsp; : BROWN<br />\r\n<br />\r\nMATERIAL : NHỰA ACETATE<br />\r\n<br />\r\nDIMENSION 47 - 135 - 18 - 142 (MM)<br />\r\n( CAO X NGANG X MŨI X C&Agrave;NG)</p>\r\n\r\n<p>KEY SELLING POINTS NELSON SUNGLASSES L&Agrave; KIỂU K&Iacute;NH MANG HƠI HƯỚNG CỔ<br />\r\nĐIỂN, D&Aacute;NG K&Iacute;NH 2 LỚP LẠ MẮT KẾT HỢP M&Agrave;U TR&Agrave; CỦA TR&Ograve;NG<br />\r\nK&Iacute;NH V&Agrave; HIỆU ỨNG ĐỒI MỒI ẤN TƯỢNG.VỚI CHẤT LIỆU NHỰA<br />\r\nACETATE V&Agrave; TR&Ograve;NG K&Iacute;NH C&Oacute; KHẢ NĂNG CHỐNG TIA CỰC T&Iacute;M (UV<br />\r\n400).</p>\r\n\r\n<p>POST SERVICE : KH&Ocirc;NG BẢO H&Agrave;NH( ĐỔI TRẢ TRONG 7 NG&Agrave;Y, NẾU LỖI SẢN XUẤT)</p>\r\n', '1', 65, 3, 0, 250000, 250000, '2017-05-23 18:51:26', '6', '2022-05-19 12:05:27', '2', 1, 1, 1, '', ''),
(58, 6, 'Lay Glasses - Tortoise', 'glasses-description', '4-1.jpg', '4-2.jpg#4-3.jpg#4-4.jpg#4-1.jpg', 'SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE', '<h2>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</h2>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n\r\n<p>PHỤ KIỆN T&Oacute;C&nbsp;CHO MỖI NG&Agrave;Y ĐEM ĐẾN PHONG C&Aacute;CH NỮ T&Iacute;NH, DỊU D&Agrave;NG&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>SMALL SIZE HAIR ACCESSORIES FOR EVERY DAY WEAR BRINGING A FEMININE, ELEGANT STYLE</p>\r\n', '1', 55, 3, 10, 490000, 200000, '2017-05-23 18:51:26', '6', '2022-05-19 11:39:26', '2', 1, 1, 1, '', ''),
(71, 55, 'Bộ làm móng Oriflame Nail It Manicure Kit', 'bo-lam-mong-oriflame-nail-it-manicure-kit', '0b71a5a1080a4810efa10eabdaa4d994.png', '68a594f0abe3c6cfe0e20131842c517c.png#0ed2d28d3a3e6e7fac47a06cc0ba6169.png', 'Bộ làm móng Oriflame Nail It Manicure Kit gồm 5 sản phẩm', '<p>42290 Oriflame &ndash; Bộ l&agrave;m móng Oriflame Nail It Manicure Kit gồm 5 sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bộ l&agrave;m m&oacute;ng của Oriflame mini nhỏ gọn, tiện lợi với 2 dụng cụ cắt m&oacute;ng, 2 dũa m&oacute;ng v&agrave; 1 dụng cụ đẩy da thừa. Bộ dụng cụ thiết yếu để bạn vệ sinh v&agrave; tạo h&igrave;nh những chiếc m&oacute;ng xinh tại nh&agrave; thật dễ d&agrave;ng v&agrave; bất cứ khi n&agrave;o.</p>\r\n	</li>\r\n	<li>\r\n	<p>Vật liệu: th&eacute;p kh&ocirc;ng gỉ, th&eacute;p carbon, giấy nh&aacute;m, PS.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ l&agrave;m m&oacute;ng mini gồm 5 sản phẩm:&nbsp;Dụng cụ đẩy da thừa, k&eacute;o cắt m&oacute;ng, dụng cụ cắt m&oacute;ng, dũa m&oacute;ng kim loại, c&acirc;y dũa m&oacute;ng mặt nh&aacute;m.</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch cỡ: 12 x 10 x 1.5 cm.</p>\r\n	</li>\r\n	<li>\r\n	<p>M&atilde; sản phẩm: 42290 Oriflame.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><a href=\"https://mypham102.com/?attachment_id=51005\"><img alt=\"42290 Oriflame Bộ Làm Móng Oriflame Nail It Manicure Kit\" src=\"https://i0.wp.com/mypham102.com/wp-content/media/2020/06/42290-oriflame-bo%CC%A3%CC%82-la%CC%80m-mo%CC%81ng-oriflame-Nail-It-Manicure-Kit.jpg?resize=500%2C500&amp;ssl=1\" style=\"height:500px; width:500px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chăm s&oacute;c m&oacute;ng tại nh&agrave;, chẳng cần đi đ&acirc;u xa</p>\r\n', '7', 5, 30, 0, 200000, 200000, '2022-06-03 13:04:44', '45', '2022-06-03 13:09:51', '', 1, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_quanhuyen`
--

CREATE TABLE `db_quanhuyen` (
  `maqh` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_quanhuyen`
--

INSERT INTO `db_quanhuyen` (`maqh`, `name`, `type`, `matp`) VALUES
('1', 'Quận Ba Đình', 'Quận', '1'),
('10', 'Huyện Sóc Sơn', 'Huyện', '1'),
('100', 'Huyện Điện Biên', 'Huyện', '11'),
('101', 'Huyện Điện Biên Đông', 'Huyện', '11'),
('102', 'Huyện Mường Ảng', 'Huyện', '11'),
('103', 'Huyện Nậm Pồ', 'Huyện', '11'),
('105', 'Thành phố Lai Châu', 'Thành phố', '12'),
('106', 'Huyện Tam Đường', 'Huyện', '12'),
('107', 'Huyện Mường Tè', 'Huyện', '12'),
('108', 'Huyện Sìn Hồ', 'Huyện', '12'),
('109', 'Huyện Phong Thổ', 'Huyện', '12'),
('11', 'Huyện Đông Anh', 'Huyện', '1'),
('110', 'Huyện Than Uyên', 'Huyện', '12'),
('111', 'Huyện Tân Uyên', 'Huyện', '12'),
('112', 'Huyện Nậm Nhùn', 'Huyện', '12'),
('116', 'Thành phố Sơn La', 'Thành phố', '14'),
('118', 'Huyện Quỳnh Nhai', 'Huyện', '14'),
('119', 'Huyện Thuận Châu', 'Huyện', '14'),
('120', 'Huyện Mường La', 'Huyện', '14'),
('121', 'Huyện Bắc Yên', 'Huyện', '14'),
('122', 'Huyện Phù Yên', 'Huyện', '14'),
('123', 'Huyện Mộc Châu', 'Huyện', '14'),
('124', 'Huyện Yên Châu', 'Huyện', '14'),
('125', 'Huyện Mai Sơn', 'Huyện', '14'),
('126', 'Huyện Sông Mã', 'Huyện', '14'),
('127', 'Huyện Sốp Cộp', 'Huyện', '14'),
('128', 'Huyện Vân Hồ', 'Huyện', '14'),
('132', 'Thành phố Yên Bái', 'Thành phố', '15'),
('133', 'Thị xã Nghĩa Lộ', 'Thị xã', '15'),
('135', 'Huyện Lục Yên', 'Huyện', '15'),
('136', 'Huyện Văn Yên', 'Huyện', '15'),
('137', 'Huyện Mù Căng Chải', 'Huyện', '15'),
('138', 'Huyện Trấn Yên', 'Huyện', '15'),
('139', 'Huyện Trạm Tấu', 'Huyện', '15'),
('140', 'Huyện Văn Chấn', 'Huyện', '15'),
('141', 'Huyện Yên Bình', 'Huyện', '15'),
('148', 'Thành phố Hòa Bình', 'Thành phố', '17'),
('150', 'Huyện Đà Bắc', 'Huyện', '17'),
('151', 'Huyện Kỳ Sơn', 'Huyện', '17'),
('152', 'Huyện Lương Sơn', 'Huyện', '17'),
('153', 'Huyện Kim Bôi', 'Huyện', '17'),
('154', 'Huyện Cao Phong', 'Huyện', '17'),
('155', 'Huyện Tân Lạc', 'Huyện', '17'),
('156', 'Huyện Mai Châu', 'Huyện', '17'),
('157', 'Huyện Lạc Sơn', 'Huyện', '17'),
('158', 'Huyện Yên Thủy', 'Huyện', '17'),
('159', 'Huyện Lạc Thủy', 'Huyện', '17'),
('164', 'Thành phố Thái Nguyên', 'Thành phố', '19'),
('165', 'Thành phố Sông Công', 'Thành phố', '19'),
('167', 'Huyện Định Hóa', 'Huyện', '19'),
('168', 'Huyện Phú Lương', 'Huyện', '19'),
('169', 'Huyện Đồng Hỷ', 'Huyện', '19'),
('170', 'Huyện Võ Nhai', 'Huyện', '19'),
('171', 'Huyện Đại Từ', 'Huyện', '19'),
('172', 'Thị xã Phổ Yên', 'Thị xã', '19'),
('173', 'Huyện Phú Bình', 'Huyện', '19'),
('178', 'Thành phố Lạng Sơn', 'Thành phố', '20'),
('18', 'Huyện Gia Lâm', 'Huyện', '1'),
('180', 'Huyện Tràng Định', 'Huyện', '20'),
('181', 'Huyện Bình Gia', 'Huyện', '20'),
('182', 'Huyện Văn Lãng', 'Huyện', '20'),
('183', 'Huyện Cao Lộc', 'Huyện', '20'),
('184', 'Huyện Văn Quan', 'Huyện', '20'),
('185', 'Huyện Bắc Sơn', 'Huyện', '20'),
('186', 'Huyện Hữu Lũng', 'Huyện', '20'),
('187', 'Huyện Chi Lăng', 'Huyện', '20'),
('188', 'Huyện Lộc Bình', 'Huyện', '20'),
('189', 'Huyện Đình Lập', 'Huyện', '20'),
('19', 'Quận Nam Từ Liêm', 'Quận', '1'),
('193', 'Thành phố Hạ Long', 'Thành phố', '22'),
('194', 'Thành phố Móng Cái', 'Thành phố', '22'),
('195', 'Thành phố Cẩm Phả', 'Thành phố', '22'),
('196', 'Thành phố Uông Bí', 'Thành phố', '22'),
('198', 'Huyện Bình Liêu', 'Huyện', '22'),
('199', 'Huyện Tiên Yên', 'Huyện', '22'),
('2', 'Quận Hoàn Kiếm', 'Quận', '1'),
('20', 'Huyện Thanh Trì', 'Huyện', '1'),
('200', 'Huyện Đầm Hà', 'Huyện', '22'),
('201', 'Huyện Hải Hà', 'Huyện', '22'),
('202', 'Huyện Ba Chẽ', 'Huyện', '22'),
('203', 'Huyện Vân Đồn', 'Huyện', '22'),
('204', 'Huyện Hoành Bồ', 'Huyện', '22'),
('205', 'Thị xã Đông Triều', 'Thị xã', '22'),
('206', 'Thị xã Quảng Yên', 'Thị xã', '22'),
('207', 'Huyện Cô Tô', 'Huyện', '22'),
('21', 'Quận Bắc Từ Liêm', 'Quận', '1'),
('213', 'Thành phố Bắc Giang', 'Thành phố', '24'),
('215', 'Huyện Yên Thế', 'Huyện', '24'),
('216', 'Huyện Tân Yên', 'Huyện', '24'),
('217', 'Huyện Lạng Giang', 'Huyện', '24'),
('218', 'Huyện Lục Nam', 'Huyện', '24'),
('219', 'Huyện Lục Ngạn', 'Huyện', '24'),
('220', 'Huyện Sơn Động', 'Huyện', '24'),
('221', 'Huyện Yên Dũng', 'Huyện', '24'),
('222', 'Huyện Việt Yên', 'Huyện', '24'),
('223', 'Huyện Hiệp Hòa', 'Huyện', '24'),
('227', 'Thành phố Việt Trì', 'Thành phố', '25'),
('228', 'Thị xã Phú Thọ', 'Thị xã', '25'),
('230', 'Huyện Đoan Hùng', 'Huyện', '25'),
('231', 'Huyện Hạ Hoà', 'Huyện', '25'),
('232', 'Huyện Thanh Ba', 'Huyện', '25'),
('233', 'Huyện Phù Ninh', 'Huyện', '25'),
('234', 'Huyện Yên Lập', 'Huyện', '25'),
('235', 'Huyện Cẩm Khê', 'Huyện', '25'),
('236', 'Huyện Tam Nông', 'Huyện', '25'),
('237', 'Huyện Lâm Thao', 'Huyện', '25'),
('238', 'Huyện Thanh Sơn', 'Huyện', '25'),
('239', 'Huyện Thanh Thuỷ', 'Huyện', '25'),
('24', 'Thành phố Hà Giang', 'Thành phố', '2'),
('240', 'Huyện Tân Sơn', 'Huyện', '25'),
('243', 'Thành phố Vĩnh Yên', 'Thành phố', '26'),
('244', 'Thị xã Phúc Yên', 'Thị xã', '26'),
('246', 'Huyện Lập Thạch', 'Huyện', '26'),
('247', 'Huyện Tam Dương', 'Huyện', '26'),
('248', 'Huyện Tam Đảo', 'Huyện', '26'),
('249', 'Huyện Bình Xuyên', 'Huyện', '26'),
('250', 'Huyện Mê Linh', 'Huyện', '1'),
('251', 'Huyện Yên Lạc', 'Huyện', '26'),
('252', 'Huyện Vĩnh Tường', 'Huyện', '26'),
('253', 'Huyện Sông Lô', 'Huyện', '26'),
('256', 'Thành phố Bắc Ninh', 'Thành phố', '27'),
('258', 'Huyện Yên Phong', 'Huyện', '27'),
('259', 'Huyện Quế Võ', 'Huyện', '27'),
('26', 'Huyện Đồng Văn', 'Huyện', '2'),
('260', 'Huyện Tiên Du', 'Huyện', '27'),
('261', 'Thị xã Từ Sơn', 'Thị xã', '27'),
('262', 'Huyện Thuận Thành', 'Huyện', '27'),
('263', 'Huyện Gia Bình', 'Huyện', '27'),
('264', 'Huyện Lương Tài', 'Huyện', '27'),
('268', 'Quận Hà Đông', 'Quận', '1'),
('269', 'Thị xã Sơn Tây', 'Thị xã', '1'),
('27', 'Huyện Mèo Vạc', 'Huyện', '2'),
('271', 'Huyện Ba Vì', 'Huyện', '1'),
('272', 'Huyện Phúc Thọ', 'Huyện', '1'),
('273', 'Huyện Đan Phượng', 'Huyện', '1'),
('274', 'Huyện Hoài Đức', 'Huyện', '1'),
('275', 'Huyện Quốc Oai', 'Huyện', '1'),
('276', 'Huyện Thạch Thất', 'Huyện', '1'),
('277', 'Huyện Chương Mỹ', 'Huyện', '1'),
('278', 'Huyện Thanh Oai', 'Huyện', '1'),
('279', 'Huyện Thường Tín', 'Huyện', '1'),
('28', 'Huyện Yên Minh', 'Huyện', '2'),
('280', 'Huyện Phú Xuyên', 'Huyện', '1'),
('281', 'Huyện Ứng Hòa', 'Huyện', '1'),
('282', 'Huyện Mỹ Đức', 'Huyện', '1'),
('288', 'Thành phố Hải Dương', 'Thành phố', '30'),
('29', 'Huyện Quản Bạ', 'Huyện', '2'),
('290', 'Thị xã Chí Linh', 'Thị xã', '30'),
('291', 'Huyện Nam Sách', 'Huyện', '30'),
('292', 'Huyện Kinh Môn', 'Huyện', '30'),
('293', 'Huyện Kim Thành', 'Huyện', '30'),
('294', 'Huyện Thanh Hà', 'Huyện', '30'),
('295', 'Huyện Cẩm Giàng', 'Huyện', '30'),
('296', 'Huyện Bình Giang', 'Huyện', '30'),
('297', 'Huyện Gia Lộc', 'Huyện', '30'),
('298', 'Huyện Tứ Kỳ', 'Huyện', '30'),
('299', 'Huyện Ninh Giang', 'Huyện', '30'),
('3', 'Quận Tây Hồ', 'Quận', '1'),
('30', 'Huyện Vị Xuyên', 'Huyện', '2'),
('300', 'Huyện Thanh Miện', 'Huyện', '30'),
('303', 'Quận Hồng Bàng', 'Quận', '31'),
('304', 'Quận Ngô Quyền', 'Quận', '31'),
('305', 'Quận Lê Chân', 'Quận', '31'),
('306', 'Quận Hải An', 'Quận', '31'),
('307', 'Quận Kiến An', 'Quận', '31'),
('308', 'Quận Đồ Sơn', 'Quận', '31'),
('309', 'Quận Dương Kinh', 'Quận', '31'),
('31', 'Huyện Bắc Mê', 'Huyện', '2'),
('311', 'Huyện Thuỷ Nguyên', 'Huyện', '31'),
('312', 'Huyện An Dương', 'Huyện', '31'),
('313', 'Huyện An Lão', 'Huyện', '31'),
('314', 'Huyện Kiến Thuỵ', 'Huyện', '31'),
('315', 'Huyện Tiên Lãng', 'Huyện', '31'),
('316', 'Huyện Vĩnh Bảo', 'Huyện', '31'),
('317', 'Huyện Cát Hải', 'Huyện', '31'),
('318', 'Huyện Bạch Long Vĩ', 'Huyện', '31'),
('32', 'Huyện Hoàng Su Phì', 'Huyện', '2'),
('323', 'Thành phố Hưng Yên', 'Thành phố', '33'),
('325', 'Huyện Văn Lâm', 'Huyện', '33'),
('326', 'Huyện Văn Giang', 'Huyện', '33'),
('327', 'Huyện Yên Mỹ', 'Huyện', '33'),
('328', 'Huyện Mỹ Hào', 'Huyện', '33'),
('329', 'Huyện Ân Thi', 'Huyện', '33'),
('33', 'Huyện Xín Mần', 'Huyện', '2'),
('330', 'Huyện Khoái Châu', 'Huyện', '33'),
('331', 'Huyện Kim Động', 'Huyện', '33'),
('332', 'Huyện Tiên Lữ', 'Huyện', '33'),
('333', 'Huyện Phù Cừ', 'Huyện', '33'),
('336', 'Thành phố Thái Bình', 'Thành phố', '34'),
('338', 'Huyện Quỳnh Phụ', 'Huyện', '34'),
('339', 'Huyện Hưng Hà', 'Huyện', '34'),
('34', 'Huyện Bắc Quang', 'Huyện', '2'),
('340', 'Huyện Đông Hưng', 'Huyện', '34'),
('341', 'Huyện Thái Thụy', 'Huyện', '34'),
('342', 'Huyện Tiền Hải', 'Huyện', '34'),
('343', 'Huyện Kiến Xương', 'Huyện', '34'),
('344', 'Huyện Vũ Thư', 'Huyện', '34'),
('347', 'Thành phố Phủ Lý', 'Thành phố', '35'),
('349', 'Huyện Duy Tiên', 'Huyện', '35'),
('35', 'Huyện Quang Bình', 'Huyện', '2'),
('350', 'Huyện Kim Bảng', 'Huyện', '35'),
('351', 'Huyện Thanh Liêm', 'Huyện', '35'),
('352', 'Huyện Bình Lục', 'Huyện', '35'),
('353', 'Huyện Lý Nhân', 'Huyện', '35'),
('356', 'Thành phố Nam Định', 'Thành phố', '36'),
('358', 'Huyện Mỹ Lộc', 'Huyện', '36'),
('359', 'Huyện Vụ Bản', 'Huyện', '36'),
('360', 'Huyện Ý Yên', 'Huyện', '36'),
('361', 'Huyện Nghĩa Hưng', 'Huyện', '36'),
('362', 'Huyện Nam Trực', 'Huyện', '36'),
('363', 'Huyện Trực Ninh', 'Huyện', '36'),
('364', 'Huyện Xuân Trường', 'Huyện', '36'),
('365', 'Huyện Giao Thủy', 'Huyện', '36'),
('366', 'Huyện Hải Hậu', 'Huyện', '36'),
('369', 'Thành phố Ninh Bình', 'Thành phố', '37'),
('370', 'Thành phố Tam Điệp', 'Thành phố', '37'),
('372', 'Huyện Nho Quan', 'Huyện', '37'),
('373', 'Huyện Gia Viễn', 'Huyện', '37'),
('374', 'Huyện Hoa Lư', 'Huyện', '37'),
('375', 'Huyện Yên Khánh', 'Huyện', '37'),
('376', 'Huyện Kim Sơn', 'Huyện', '37'),
('377', 'Huyện Yên Mô', 'Huyện', '37'),
('380', 'Thành phố Thanh Hóa', 'Thành phố', '38'),
('381', 'Thị xã Bỉm Sơn', 'Thị xã', '38'),
('382', 'Thị xã Sầm Sơn', 'Thị xã', '38'),
('384', 'Huyện Mường Lát', 'Huyện', '38'),
('385', 'Huyện Quan Hóa', 'Huyện', '38'),
('386', 'Huyện Bá Thước', 'Huyện', '38'),
('387', 'Huyện Quan Sơn', 'Huyện', '38'),
('388', 'Huyện Lang Chánh', 'Huyện', '38'),
('389', 'Huyện Ngọc Lặc', 'Huyện', '38'),
('390', 'Huyện Cẩm Thủy', 'Huyện', '38'),
('391', 'Huyện Thạch Thành', 'Huyện', '38'),
('392', 'Huyện Hà Trung', 'Huyện', '38'),
('393', 'Huyện Vĩnh Lộc', 'Huyện', '38'),
('394', 'Huyện Yên Định', 'Huyện', '38'),
('395', 'Huyện Thọ Xuân', 'Huyện', '38'),
('396', 'Huyện Thường Xuân', 'Huyện', '38'),
('397', 'Huyện Triệu Sơn', 'Huyện', '38'),
('398', 'Huyện Thiệu Hóa', 'Huyện', '38'),
('399', 'Huyện Hoằng Hóa', 'Huyện', '38'),
('4', 'Quận Long Biên', 'Quận', '1'),
('40', 'Thành phố Cao Bằng', 'Thành phố', '4'),
('400', 'Huyện Hậu Lộc', 'Huyện', '38'),
('401', 'Huyện Nga Sơn', 'Huyện', '38'),
('402', 'Huyện Như Xuân', 'Huyện', '38'),
('403', 'Huyện Như Thanh', 'Huyện', '38'),
('404', 'Huyện Nông Cống', 'Huyện', '38'),
('405', 'Huyện Đông Sơn', 'Huyện', '38'),
('406', 'Huyện Quảng Xương', 'Huyện', '38'),
('407', 'Huyện Tĩnh Gia', 'Huyện', '38'),
('412', 'Thành phố Vinh', 'Thành phố', '40'),
('413', 'Thị xã Cửa Lò', 'Thị xã', '40'),
('414', 'Thị xã Thái Hoà', 'Thị xã', '40'),
('415', 'Huyện Quế Phong', 'Huyện', '40'),
('416', 'Huyện Quỳ Châu', 'Huyện', '40'),
('417', 'Huyện Kỳ Sơn', 'Huyện', '40'),
('418', 'Huyện Tương Dương', 'Huyện', '40'),
('419', 'Huyện Nghĩa Đàn', 'Huyện', '40'),
('42', 'Huyện Bảo Lâm', 'Huyện', '4'),
('420', 'Huyện Quỳ Hợp', 'Huyện', '40'),
('421', 'Huyện Quỳnh Lưu', 'Huyện', '40'),
('422', 'Huyện Con Cuông', 'Huyện', '40'),
('423', 'Huyện Tân Kỳ', 'Huyện', '40'),
('424', 'Huyện Anh Sơn', 'Huyện', '40'),
('425', 'Huyện Diễn Châu', 'Huyện', '40'),
('426', 'Huyện Yên Thành', 'Huyện', '40'),
('427', 'Huyện Đô Lương', 'Huyện', '40'),
('428', 'Huyện Thanh Chương', 'Huyện', '40'),
('429', 'Huyện Nghi Lộc', 'Huyện', '40'),
('43', 'Huyện Bảo Lạc', 'Huyện', '4'),
('430', 'Huyện Nam Đàn', 'Huyện', '40'),
('431', 'Huyện Hưng Nguyên', 'Huyện', '40'),
('432', 'Thị xã Hoàng Mai', 'Thị xã', '40'),
('436', 'Thành phố Hà Tĩnh', 'Thành phố', '42'),
('437', 'Thị xã Hồng Lĩnh', 'Thị xã', '42'),
('439', 'Huyện Hương Sơn', 'Huyện', '42'),
('44', 'Huyện Thông Nông', 'Huyện', '4'),
('440', 'Huyện Đức Thọ', 'Huyện', '42'),
('441', 'Huyện Vũ Quang', 'Huyện', '42'),
('442', 'Huyện Nghi Xuân', 'Huyện', '42'),
('443', 'Huyện Can Lộc', 'Huyện', '42'),
('444', 'Huyện Hương Khê', 'Huyện', '42'),
('445', 'Huyện Thạch Hà', 'Huyện', '42'),
('446', 'Huyện Cẩm Xuyên', 'Huyện', '42'),
('447', 'Huyện Kỳ Anh', 'Huyện', '42'),
('448', 'Huyện Lộc Hà', 'Huyện', '42'),
('449', 'Thị xã Kỳ Anh', 'Thị xã', '42'),
('45', 'Huyện Hà Quảng', 'Huyện', '4'),
('450', 'Thành Phố Đồng Hới', 'Thành phố', '44'),
('452', 'Huyện Minh Hóa', 'Huyện', '44'),
('453', 'Huyện Tuyên Hóa', 'Huyện', '44'),
('454', 'Huyện Quảng Trạch', 'Thị xã', '44'),
('455', 'Huyện Bố Trạch', 'Huyện', '44'),
('456', 'Huyện Quảng Ninh', 'Huyện', '44'),
('457', 'Huyện Lệ Thủy', 'Huyện', '44'),
('458', 'Thị xã Ba Đồn', 'Huyện', '44'),
('46', 'Huyện Trà Lĩnh', 'Huyện', '4'),
('461', 'Thành phố Đông Hà', 'Thành phố', '45'),
('462', 'Thị xã Quảng Trị', 'Thị xã', '45'),
('464', 'Huyện Vĩnh Linh', 'Huyện', '45'),
('465', 'Huyện Hướng Hóa', 'Huyện', '45'),
('466', 'Huyện Gio Linh', 'Huyện', '45'),
('467', 'Huyện Đa Krông', 'Huyện', '45'),
('468', 'Huyện Cam Lộ', 'Huyện', '45'),
('469', 'Huyện Triệu Phong', 'Huyện', '45'),
('47', 'Huyện Trùng Khánh', 'Huyện', '4'),
('470', 'Huyện Hải Lăng', 'Huyện', '45'),
('471', 'Huyện Cồn Cỏ', 'Huyện', '45'),
('474', 'Thành phố Huế', 'Thành phố', '46'),
('476', 'Huyện Phong Điền', 'Huyện', '46'),
('477', 'Huyện Quảng Điền', 'Huyện', '46'),
('478', 'Huyện Phú Vang', 'Huyện', '46'),
('479', 'Thị xã Hương Thủy', 'Thị xã', '46'),
('48', 'Huyện Hạ Lang', 'Huyện', '4'),
('480', 'Thị xã Hương Trà', 'Thị xã', '46'),
('481', 'Huyện A Lưới', 'Huyện', '46'),
('482', 'Huyện Phú Lộc', 'Huyện', '46'),
('483', 'Huyện Nam Đông', 'Huyện', '46'),
('49', 'Huyện Quảng Uyên', 'Huyện', '4'),
('490', 'Quận Liên Chiểu', 'Quận', '48'),
('491', 'Quận Thanh Khê', 'Quận', '48'),
('492', 'Quận Hải Châu', 'Quận', '48'),
('493', 'Quận Sơn Trà', 'Quận', '48'),
('494', 'Quận Ngũ Hành Sơn', 'Quận', '48'),
('495', 'Quận Cẩm Lệ', 'Quận', '48'),
('497', 'Huyện Hòa Vang', 'Huyện', '48'),
('498', 'Huyện Hoàng Sa', 'Huyện', '48'),
('5', 'Quận Cầu Giấy', 'Quận', '1'),
('50', 'Huyện Phục Hoà', 'Huyện', '4'),
('502', 'Thành phố Tam Kỳ', 'Thành phố', '49'),
('503', 'Thành phố Hội An', 'Thành phố', '49'),
('504', 'Huyện Tây Giang', 'Huyện', '49'),
('505', 'Huyện Đông Giang', 'Huyện', '49'),
('506', 'Huyện Đại Lộc', 'Huyện', '49'),
('507', 'Thị xã Điện Bàn', 'Thị xã', '49'),
('508', 'Huyện Duy Xuyên', 'Huyện', '49'),
('509', 'Huyện Quế Sơn', 'Huyện', '49'),
('51', 'Huyện Hoà An', 'Huyện', '4'),
('510', 'Huyện Nam Giang', 'Huyện', '49'),
('511', 'Huyện Phước Sơn', 'Huyện', '49'),
('512', 'Huyện Hiệp Đức', 'Huyện', '49'),
('513', 'Huyện Thăng Bình', 'Huyện', '49'),
('514', 'Huyện Tiên Phước', 'Huyện', '49'),
('515', 'Huyện Bắc Trà My', 'Huyện', '49'),
('516', 'Huyện Nam Trà My', 'Huyện', '49'),
('517', 'Huyện Núi Thành', 'Huyện', '49'),
('518', 'Huyện Phú Ninh', 'Huyện', '49'),
('519', 'Huyện Nông Sơn', 'Huyện', '49'),
('52', 'Huyện Nguyên Bình', 'Huyện', '4'),
('522', 'Thành phố Quảng Ngãi', 'Thành phố', '51'),
('524', 'Huyện Bình Sơn', 'Huyện', '51'),
('525', 'Huyện Trà Bồng', 'Huyện', '51'),
('526', 'Huyện Tây Trà', 'Huyện', '51'),
('527', 'Huyện Sơn Tịnh', 'Huyện', '51'),
('528', 'Huyện Tư Nghĩa', 'Huyện', '51'),
('529', 'Huyện Sơn Hà', 'Huyện', '51'),
('53', 'Huyện Thạch An', 'Huyện', '4'),
('530', 'Huyện Sơn Tây', 'Huyện', '51'),
('531', 'Huyện Minh Long', 'Huyện', '51'),
('532', 'Huyện Nghĩa Hành', 'Huyện', '51'),
('533', 'Huyện Mộ Đức', 'Huyện', '51'),
('534', 'Huyện Đức Phổ', 'Huyện', '51'),
('535', 'Huyện Ba Tơ', 'Huyện', '51'),
('536', 'Huyện Lý Sơn', 'Huyện', '51'),
('540', 'Thành phố Qui Nhơn', 'Thành phố', '52'),
('542', 'Huyện An Lão', 'Huyện', '52'),
('543', 'Huyện Hoài Nhơn', 'Huyện', '52'),
('544', 'Huyện Hoài Ân', 'Huyện', '52'),
('545', 'Huyện Phù Mỹ', 'Huyện', '52'),
('546', 'Huyện Vĩnh Thạnh', 'Huyện', '52'),
('547', 'Huyện Tây Sơn', 'Huyện', '52'),
('548', 'Huyện Phù Cát', 'Huyện', '52'),
('549', 'Thị xã An Nhơn', 'Thị xã', '52'),
('550', 'Huyện Tuy Phước', 'Huyện', '52'),
('551', 'Huyện Vân Canh', 'Huyện', '52'),
('555', 'Thành phố Tuy Hoà', 'Thành phố', '54'),
('557', 'Thị xã Sông Cầu', 'Thị xã', '54'),
('558', 'Huyện Đồng Xuân', 'Huyện', '54'),
('559', 'Huyện Tuy An', 'Huyện', '54'),
('560', 'Huyện Sơn Hòa', 'Huyện', '54'),
('561', 'Huyện Sông Hinh', 'Huyện', '54'),
('562', 'Huyện Tây Hoà', 'Huyện', '54'),
('563', 'Huyện Phú Hoà', 'Huyện', '54'),
('564', 'Huyện Đông Hòa', 'Huyện', '54'),
('568', 'Thành phố Nha Trang', 'Thành phố', '56'),
('569', 'Thành phố Cam Ranh', 'Thành phố', '56'),
('570', 'Huyện Cam Lâm', 'Huyện', '56'),
('571', 'Huyện Vạn Ninh', 'Huyện', '56'),
('572', 'Thị xã Ninh Hòa', 'Thị xã', '56'),
('573', 'Huyện Khánh Vĩnh', 'Huyện', '56'),
('574', 'Huyện Diên Khánh', 'Huyện', '56'),
('575', 'Huyện Khánh Sơn', 'Huyện', '56'),
('576', 'Huyện Trường Sa', 'Huyện', '56'),
('58', 'Thành Phố Bắc Kạn', 'Thành phố', '6'),
('582', 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', '58'),
('584', 'Huyện Bác Ái', 'Huyện', '58'),
('585', 'Huyện Ninh Sơn', 'Huyện', '58'),
('586', 'Huyện Ninh Hải', 'Huyện', '58'),
('587', 'Huyện Ninh Phước', 'Huyện', '58'),
('588', 'Huyện Thuận Bắc', 'Huyện', '58'),
('589', 'Huyện Thuận Nam', 'Huyện', '58'),
('593', 'Thành phố Phan Thiết', 'Thành phố', '60'),
('594', 'Thị xã La Gi', 'Thị xã', '60'),
('595', 'Huyện Tuy Phong', 'Huyện', '60'),
('596', 'Huyện Bắc Bình', 'Huyện', '60'),
('597', 'Huyện Hàm Thuận Bắc', 'Huyện', '60'),
('598', 'Huyện Hàm Thuận Nam', 'Huyện', '60'),
('599', 'Huyện Tánh Linh', 'Huyện', '60'),
('6', 'Quận Đống Đa', 'Quận', '1'),
('60', 'Huyện Pác Nặm', 'Huyện', '6'),
('600', 'Huyện Đức Linh', 'Huyện', '60'),
('601', 'Huyện Hàm Tân', 'Huyện', '60'),
('602', 'Huyện Phú Quí', 'Huyện', '60'),
('608', 'Thành phố Kon Tum', 'Thành phố', '62'),
('61', 'Huyện Ba Bể', 'Huyện', '6'),
('610', 'Huyện Đắk Glei', 'Huyện', '62'),
('611', 'Huyện Ngọc Hồi', 'Huyện', '62'),
('612', 'Huyện Đắk Tô', 'Huyện', '62'),
('613', 'Huyện Kon Plông', 'Huyện', '62'),
('614', 'Huyện Kon Rẫy', 'Huyện', '62'),
('615', 'Huyện Đắk Hà', 'Huyện', '62'),
('616', 'Huyện Sa Thầy', 'Huyện', '62'),
('617', 'Huyện Tu Mơ Rông', 'Huyện', '62'),
('618', 'Huyện Ia H\' Drai', 'Huyện', '62'),
('62', 'Huyện Ngân Sơn', 'Huyện', '6'),
('622', 'Thành phố Pleiku', 'Thành phố', '64'),
('623', 'Thị xã An Khê', 'Thị xã', '64'),
('624', 'Thị xã Ayun Pa', 'Thị xã', '64'),
('625', 'Huyện KBang', 'Huyện', '64'),
('626', 'Huyện Đăk Đoa', 'Huyện', '64'),
('627', 'Huyện Chư Păh', 'Huyện', '64'),
('628', 'Huyện Ia Grai', 'Huyện', '64'),
('629', 'Huyện Mang Yang', 'Huyện', '64'),
('63', 'Huyện Bạch Thông', 'Huyện', '6'),
('630', 'Huyện Kông Chro', 'Huyện', '64'),
('631', 'Huyện Đức Cơ', 'Huyện', '64'),
('632', 'Huyện Chư Prông', 'Huyện', '64'),
('633', 'Huyện Chư Sê', 'Huyện', '64'),
('634', 'Huyện Đăk Pơ', 'Huyện', '64'),
('635', 'Huyện Ia Pa', 'Huyện', '64'),
('637', 'Huyện Krông Pa', 'Huyện', '64'),
('638', 'Huyện Phú Thiện', 'Huyện', '64'),
('639', 'Huyện Chư Pưh', 'Huyện', '64'),
('64', 'Huyện Chợ Đồn', 'Huyện', '6'),
('643', 'Thành phố Buôn Ma Thuột', 'Thành phố', '66'),
('644', 'Thị Xã Buôn Hồ', 'Thị xã', '66'),
('645', 'Huyện Ea H\'leo', 'Huyện', '66'),
('646', 'Huyện Ea Súp', 'Huyện', '66'),
('647', 'Huyện Buôn Đôn', 'Huyện', '66'),
('648', 'Huyện Cư M\'gar', 'Huyện', '66'),
('649', 'Huyện Krông Búk', 'Huyện', '66'),
('65', 'Huyện Chợ Mới', 'Huyện', '6'),
('650', 'Huyện Krông Năng', 'Huyện', '66'),
('651', 'Huyện Ea Kar', 'Huyện', '66'),
('652', 'Huyện M\'Đrắk', 'Huyện', '66'),
('653', 'Huyện Krông Bông', 'Huyện', '66'),
('654', 'Huyện Krông Pắc', 'Huyện', '66'),
('655', 'Huyện Krông A Na', 'Huyện', '66'),
('656', 'Huyện Lắk', 'Huyện', '66'),
('657', 'Huyện Cư Kuin', 'Huyện', '66'),
('66', 'Huyện Na Rì', 'Huyện', '6'),
('660', 'Thị xã Gia Nghĩa', 'Thị xã', '67'),
('661', 'Huyện Đăk Glong', 'Huyện', '67'),
('662', 'Huyện Cư Jút', 'Huyện', '67'),
('663', 'Huyện Đắk Mil', 'Huyện', '67'),
('664', 'Huyện Krông Nô', 'Huyện', '67'),
('665', 'Huyện Đắk Song', 'Huyện', '67'),
('666', 'Huyện Đắk R Lấp', 'Huyện', '67'),
('667', 'Huyện Tuy Đức', 'Huyện', '67'),
('672', 'Thành phố Đà Lạt', 'Thành phố', '68'),
('673', 'Thành phố Bảo Lộc', 'Thành phố', '68'),
('674', 'Huyện Đam Rông', 'Huyện', '68'),
('675', 'Huyện Lạc Dương', 'Huyện', '68'),
('676', 'Huyện Lâm Hà', 'Huyện', '68'),
('677', 'Huyện Đơn Dương', 'Huyện', '68'),
('678', 'Huyện Đức Trọng', 'Huyện', '68'),
('679', 'Huyện Di Linh', 'Huyện', '68'),
('680', 'Huyện Bảo Lâm', 'Huyện', '68'),
('681', 'Huyện Đạ Huoai', 'Huyện', '68'),
('682', 'Huyện Đạ Tẻh', 'Huyện', '68'),
('683', 'Huyện Cát Tiên', 'Huyện', '68'),
('688', 'Thị xã Phước Long', 'Thị xã', '70'),
('689', 'Thị xã Đồng Xoài', 'Thị xã', '70'),
('690', 'Thị xã Bình Long', 'Thị xã', '70'),
('691', 'Huyện Bù Gia Mập', 'Huyện', '70'),
('692', 'Huyện Lộc Ninh', 'Huyện', '70'),
('693', 'Huyện Bù Đốp', 'Huyện', '70'),
('694', 'Huyện Hớn Quản', 'Huyện', '70'),
('695', 'Huyện Đồng Phú', 'Huyện', '70'),
('696', 'Huyện Bù Đăng', 'Huyện', '70'),
('697', 'Huyện Chơn Thành', 'Huyện', '70'),
('698', 'Huyện Phú Riềng', 'Huyện', '70'),
('7', 'Quận Hai Bà Trưng', 'Quận', '1'),
('70', 'Thành phố Tuyên Quang', 'Thành phố', '8'),
('703', 'Thành phố Tây Ninh', 'Thành phố', '72'),
('705', 'Huyện Tân Biên', 'Huyện', '72'),
('706', 'Huyện Tân Châu', 'Huyện', '72'),
('707', 'Huyện Dương Minh Châu', 'Huyện', '72'),
('708', 'Huyện Châu Thành', 'Huyện', '72'),
('709', 'Huyện Hòa Thành', 'Huyện', '72'),
('71', 'Huyện Lâm Bình', 'Huyện', '8'),
('710', 'Huyện Gò Dầu', 'Huyện', '72'),
('711', 'Huyện Bến Cầu', 'Huyện', '72'),
('712', 'Huyện Trảng Bàng', 'Huyện', '72'),
('718', 'Thành phố Thủ Dầu Một', 'Thành phố', '74'),
('719', 'Huyện Bàu Bàng', 'Huyện', '74'),
('72', 'Huyện Nà Hang', 'Huyện', '8'),
('720', 'Huyện Dầu Tiếng', 'Huyện', '74'),
('721', 'Thị xã Bến Cát', 'Thị xã', '74'),
('722', 'Huyện Phú Giáo', 'Huyện', '74'),
('723', 'Thị xã Tân Uyên', 'Thị xã', '74'),
('724', 'Thị xã Dĩ An', 'Thị xã', '74'),
('725', 'Thị xã Thuận An', 'Thị xã', '74'),
('726', 'Huyện Bắc Tân Uyên', 'Huyện', '74'),
('73', 'Huyện Chiêm Hóa', 'Huyện', '8'),
('731', 'Thành phố Biên Hòa', 'Thành phố', '75'),
('732', 'Thị xã Long Khánh', 'Thị xã', '75'),
('734', 'Huyện Tân Phú', 'Huyện', '75'),
('735', 'Huyện Vĩnh Cửu', 'Huyện', '75'),
('736', 'Huyện Định Quán', 'Huyện', '75'),
('737', 'Huyện Trảng Bom', 'Huyện', '75'),
('738', 'Huyện Thống Nhất', 'Huyện', '75'),
('739', 'Huyện Cẩm Mỹ', 'Huyện', '75'),
('74', 'Huyện Hàm Yên', 'Huyện', '8'),
('740', 'Huyện Long Thành', 'Huyện', '75'),
('741', 'Huyện Xuân Lộc', 'Huyện', '75'),
('742', 'Huyện Nhơn Trạch', 'Huyện', '75'),
('747', 'Thành phố Vũng Tàu', 'Thành phố', '77'),
('748', 'Thành phố Bà Rịa', 'Thành phố', '77'),
('75', 'Huyện Yên Sơn', 'Huyện', '8'),
('750', 'Huyện Châu Đức', 'Huyện', '77'),
('751', 'Huyện Xuyên Mộc', 'Huyện', '77'),
('752', 'Huyện Long Điền', 'Huyện', '77'),
('753', 'Huyện Đất Đỏ', 'Huyện', '77'),
('754', 'Huyện Tân Thành', 'Huyện', '77'),
('755', 'Huyện Côn Đảo', 'Huyện', '77'),
('76', 'Huyện Sơn Dương', 'Huyện', '8'),
('760', 'Quận 1', 'Quận', '79'),
('761', 'Quận 12', 'Quận', '79'),
('762', 'Quận Thủ Đức', 'Quận', '79'),
('763', 'Quận 9', 'Quận', '79'),
('764', 'Quận Gò Vấp', 'Quận', '79'),
('765', 'Quận Bình Thạnh', 'Quận', '79'),
('766', 'Quận Tân Bình', 'Quận', '79'),
('767', 'Quận Tân Phú', 'Quận', '79'),
('768', 'Quận Phú Nhuận', 'Quận', '79'),
('769', 'Quận 2', 'Quận', '79'),
('770', 'Quận 3', 'Quận', '79'),
('771', 'Quận 10', 'Quận', '79'),
('772', 'Quận 11', 'Quận', '79'),
('773', 'Quận 4', 'Quận', '79'),
('774', 'Quận 5', 'Quận', '79'),
('775', 'Quận 6', 'Quận', '79'),
('776', 'Quận 8', 'Quận', '79'),
('777', 'Quận Bình Tân', 'Quận', '79'),
('778', 'Quận 7', 'Quận', '79'),
('783', 'Huyện Củ Chi', 'Huyện', '79'),
('784', 'Huyện Hóc Môn', 'Huyện', '79'),
('785', 'Huyện Bình Chánh', 'Huyện', '79'),
('786', 'Huyện Nhà Bè', 'Huyện', '79'),
('787', 'Huyện Cần Giờ', 'Huyện', '79'),
('794', 'Thành phố Tân An', 'Thành phố', '80'),
('795', 'Thị xã Kiến Tường', 'Thị xã', '80'),
('796', 'Huyện Tân Hưng', 'Huyện', '80'),
('797', 'Huyện Vĩnh Hưng', 'Huyện', '80'),
('798', 'Huyện Mộc Hóa', 'Huyện', '80'),
('799', 'Huyện Tân Thạnh', 'Huyện', '80'),
('8', 'Quận Hoàng Mai', 'Quận', '1'),
('80', 'Thành phố Lào Cai', 'Thành phố', '10'),
('800', 'Huyện Thạnh Hóa', 'Huyện', '80'),
('801', 'Huyện Đức Huệ', 'Huyện', '80'),
('802', 'Huyện Đức Hòa', 'Huyện', '80'),
('803', 'Huyện Bến Lức', 'Huyện', '80'),
('804', 'Huyện Thủ Thừa', 'Huyện', '80'),
('805', 'Huyện Tân Trụ', 'Huyện', '80'),
('806', 'Huyện Cần Đước', 'Huyện', '80'),
('807', 'Huyện Cần Giuộc', 'Huyện', '80'),
('808', 'Huyện Châu Thành', 'Huyện', '80'),
('815', 'Thành phố Mỹ Tho', 'Thành phố', '82'),
('816', 'Thị xã Gò Công', 'Thị xã', '82'),
('817', 'Thị xã Cai Lậy', 'Huyện', '82'),
('818', 'Huyện Tân Phước', 'Huyện', '82'),
('819', 'Huyện Cái Bè', 'Huyện', '82'),
('82', 'Huyện Bát Xát', 'Huyện', '10'),
('820', 'Huyện Cai Lậy', 'Thị xã', '82'),
('821', 'Huyện Châu Thành', 'Huyện', '82'),
('822', 'Huyện Chợ Gạo', 'Huyện', '82'),
('823', 'Huyện Gò Công Tây', 'Huyện', '82'),
('824', 'Huyện Gò Công Đông', 'Huyện', '82'),
('825', 'Huyện Tân Phú Đông', 'Huyện', '82'),
('829', 'Thành phố Bến Tre', 'Thành phố', '83'),
('83', 'Huyện Mường Khương', 'Huyện', '10'),
('831', 'Huyện Châu Thành', 'Huyện', '83'),
('832', 'Huyện Chợ Lách', 'Huyện', '83'),
('833', 'Huyện Mỏ Cày Nam', 'Huyện', '83'),
('834', 'Huyện Giồng Trôm', 'Huyện', '83'),
('835', 'Huyện Bình Đại', 'Huyện', '83'),
('836', 'Huyện Ba Tri', 'Huyện', '83'),
('837', 'Huyện Thạnh Phú', 'Huyện', '83'),
('838', 'Huyện Mỏ Cày Bắc', 'Huyện', '83'),
('84', 'Huyện Si Ma Cai', 'Huyện', '10'),
('842', 'Thành phố Trà Vinh', 'Thành phố', '84'),
('844', 'Huyện Càng Long', 'Huyện', '84'),
('845', 'Huyện Cầu Kè', 'Huyện', '84'),
('846', 'Huyện Tiểu Cần', 'Huyện', '84'),
('847', 'Huyện Châu Thành', 'Huyện', '84'),
('848', 'Huyện Cầu Ngang', 'Huyện', '84'),
('849', 'Huyện Trà Cú', 'Huyện', '84'),
('85', 'Huyện Bắc Hà', 'Huyện', '10'),
('850', 'Huyện Duyên Hải', 'Huyện', '84'),
('851', 'Thị xã Duyên Hải', 'Thị xã', '84'),
('855', 'Thành phố Vĩnh Long', 'Thành phố', '86'),
('857', 'Huyện Long Hồ', 'Huyện', '86'),
('858', 'Huyện Mang Thít', 'Huyện', '86'),
('859', 'Huyện  Vũng Liêm', 'Huyện', '86'),
('86', 'Huyện Bảo Thắng', 'Huyện', '10'),
('860', 'Huyện Tam Bình', 'Huyện', '86'),
('861', 'Thị xã Bình Minh', 'Thị xã', '86'),
('862', 'Huyện Trà Ôn', 'Huyện', '86'),
('863', 'Huyện Bình Tân', 'Huyện', '86'),
('866', 'Thành phố Cao Lãnh', 'Thành phố', '87'),
('867', 'Thành phố Sa Đéc', 'Thành phố', '87'),
('868', 'Thị xã Hồng Ngự', 'Thị xã', '87'),
('869', 'Huyện Tân Hồng', 'Huyện', '87'),
('87', 'Huyện Bảo Yên', 'Huyện', '10'),
('870', 'Huyện Hồng Ngự', 'Huyện', '87'),
('871', 'Huyện Tam Nông', 'Huyện', '87'),
('872', 'Huyện Tháp Mười', 'Huyện', '87'),
('873', 'Huyện Cao Lãnh', 'Huyện', '87'),
('874', 'Huyện Thanh Bình', 'Huyện', '87'),
('875', 'Huyện Lấp Vò', 'Huyện', '87'),
('876', 'Huyện Lai Vung', 'Huyện', '87'),
('877', 'Huyện Châu Thành', 'Huyện', '87'),
('88', 'Huyện Sa Pa', 'Huyện', '10'),
('883', 'Thành phố Long Xuyên', 'Thành phố', '89'),
('884', 'Thành phố Châu Đốc', 'Thành phố', '89'),
('886', 'Huyện An Phú', 'Huyện', '89'),
('887', 'Thị xã Tân Châu', 'Thị xã', '89'),
('888', 'Huyện Phú Tân', 'Huyện', '89'),
('889', 'Huyện Châu Phú', 'Huyện', '89'),
('89', 'Huyện Văn Bàn', 'Huyện', '10'),
('890', 'Huyện Tịnh Biên', 'Huyện', '89'),
('891', 'Huyện Tri Tôn', 'Huyện', '89'),
('892', 'Huyện Châu Thành', 'Huyện', '89'),
('893', 'Huyện Chợ Mới', 'Huyện', '89'),
('894', 'Huyện Thoại Sơn', 'Huyện', '89'),
('899', 'Thành phố Rạch Giá', 'Thành phố', '91'),
('9', 'Quận Thanh Xuân', 'Quận', '1'),
('900', 'Thị xã Hà Tiên', 'Thị xã', '91'),
('902', 'Huyện Kiên Lương', 'Huyện', '91'),
('903', 'Huyện Hòn Đất', 'Huyện', '91'),
('904', 'Huyện Tân Hiệp', 'Huyện', '91'),
('905', 'Huyện Châu Thành', 'Huyện', '91'),
('906', 'Huyện Giồng Riềng', 'Huyện', '91'),
('907', 'Huyện Gò Quao', 'Huyện', '91'),
('908', 'Huyện An Biên', 'Huyện', '91'),
('909', 'Huyện An Minh', 'Huyện', '91'),
('910', 'Huyện Vĩnh Thuận', 'Huyện', '91'),
('911', 'Huyện Phú Quốc', 'Huyện', '91'),
('912', 'Huyện Kiên Hải', 'Huyện', '91'),
('913', 'Huyện U Minh Thượng', 'Huyện', '91'),
('914', 'Huyện Giang Thành', 'Huyện', '91'),
('916', 'Quận Ninh Kiều', 'Quận', '92'),
('917', 'Quận Ô Môn', 'Quận', '92'),
('918', 'Quận Bình Thuỷ', 'Quận', '92'),
('919', 'Quận Cái Răng', 'Quận', '92'),
('923', 'Quận Thốt Nốt', 'Quận', '92'),
('924', 'Huyện Vĩnh Thạnh', 'Huyện', '92'),
('925', 'Huyện Cờ Đỏ', 'Huyện', '92'),
('926', 'Huyện Phong Điền', 'Huyện', '92'),
('927', 'Huyện Thới Lai', 'Huyện', '92'),
('930', 'Thành phố Vị Thanh', 'Thành phố', '93'),
('931', 'Thị xã Ngã Bảy', 'Thị xã', '93'),
('932', 'Huyện Châu Thành A', 'Huyện', '93'),
('933', 'Huyện Châu Thành', 'Huyện', '93'),
('934', 'Huyện Phụng Hiệp', 'Huyện', '93'),
('935', 'Huyện Vị Thuỷ', 'Huyện', '93'),
('936', 'Huyện Long Mỹ', 'Huyện', '93'),
('937', 'Thị xã Long Mỹ', 'Thị xã', '93'),
('94', 'Thành phố Điện Biên Phủ', 'Thành phố', '11'),
('941', 'Thành phố Sóc Trăng', 'Thành phố', '94'),
('942', 'Huyện Châu Thành', 'Huyện', '94'),
('943', 'Huyện Kế Sách', 'Huyện', '94'),
('944', 'Huyện Mỹ Tú', 'Huyện', '94'),
('945', 'Huyện Cù Lao Dung', 'Huyện', '94'),
('946', 'Huyện Long Phú', 'Huyện', '94'),
('947', 'Huyện Mỹ Xuyên', 'Huyện', '94'),
('948', 'Thị xã Ngã Năm', 'Thị xã', '94'),
('949', 'Huyện Thạnh Trị', 'Huyện', '94'),
('95', 'Thị Xã Mường Lay', 'Thị xã', '11'),
('950', 'Thị xã Vĩnh Châu', 'Thị xã', '94'),
('951', 'Huyện Trần Đề', 'Huyện', '94'),
('954', 'Thành phố Bạc Liêu', 'Thành phố', '95'),
('956', 'Huyện Hồng Dân', 'Huyện', '95'),
('957', 'Huyện Phước Long', 'Huyện', '95'),
('958', 'Huyện Vĩnh Lợi', 'Huyện', '95'),
('959', 'Thị xã Giá Rai', 'Thị xã', '95'),
('96', 'Huyện Mường Nhé', 'Huyện', '11'),
('960', 'Huyện Đông Hải', 'Huyện', '95'),
('961', 'Huyện Hoà Bình', 'Huyện', '95'),
('964', 'Thành phố Cà Mau', 'Thành phố', '96'),
('966', 'Huyện U Minh', 'Huyện', '96'),
('967', 'Huyện Thới Bình', 'Huyện', '96'),
('968', 'Huyện Trần Văn Thời', 'Huyện', '96'),
('969', 'Huyện Cái Nước', 'Huyện', '96'),
('97', 'Huyện Mường Chà', 'Huyện', '11'),
('970', 'Huyện Đầm Dơi', 'Huyện', '96'),
('971', 'Huyện Năm Căn', 'Huyện', '96'),
('972', 'Huyện Phú Tân', 'Huyện', '96'),
('973', 'Huyện Ngọc Hiển', 'Huyện', '96'),
('98', 'Huyện Tủa Chùa', 'Huyện', '11'),
('99', 'Huyện Tuần Giáo', 'Huyện', '11');

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `options` varchar(2) DEFAULT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_tinhthanhpho`
--

CREATE TABLE `db_tinhthanhpho` (
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `db_tinhthanhpho`
--

INSERT INTO `db_tinhthanhpho` (`matp`, `name`, `type`) VALUES
('1', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('10', 'Tỉnh Lào Cai', 'Tỉnh'),
('11', 'Tỉnh Điện Biên', 'Tỉnh'),
('12', 'Tỉnh Lai Châu', 'Tỉnh'),
('14', 'Tỉnh Sơn La', 'Tỉnh'),
('15', 'Tỉnh Yên Bái', 'Tỉnh'),
('17', 'Tỉnh Hoà Bình', 'Tỉnh'),
('19', 'Tỉnh Thái Nguyên', 'Tỉnh'),
('2', 'Tỉnh Hà Giang', 'Tỉnh'),
('20', 'Tỉnh Lạng Sơn', 'Tỉnh'),
('22', 'Tỉnh Quảng Ninh', 'Tỉnh'),
('24', 'Tỉnh Bắc Giang', 'Tỉnh'),
('25', 'Tỉnh Phú Thọ', 'Tỉnh'),
('26', 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
('27', 'Tỉnh Bắc Ninh', 'Tỉnh'),
('30', 'Tỉnh Hải Dương', 'Tỉnh'),
('31', 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
('33', 'Tỉnh Hưng Yên', 'Tỉnh'),
('34', 'Tỉnh Thái Bình', 'Tỉnh'),
('35', 'Tỉnh Hà Nam', 'Tỉnh'),
('36', 'Tỉnh Nam Định', 'Tỉnh'),
('37', 'Tỉnh Ninh Bình', 'Tỉnh'),
('38', 'Tỉnh Thanh Hóa', 'Tỉnh'),
('4', 'Tỉnh Cao Bằng', 'Tỉnh'),
('40', 'Tỉnh Nghệ An', 'Tỉnh'),
('42', 'Tỉnh Hà Tĩnh', 'Tỉnh'),
('44', 'Tỉnh Quảng Bình', 'Tỉnh'),
('45', 'Tỉnh Quảng Trị', 'Tỉnh'),
('46', 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
('48', 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
('49', 'Tỉnh Quảng Nam', 'Tỉnh'),
('51', 'Tỉnh Quảng Ngãi', 'Tỉnh'),
('52', 'Tỉnh Bình Định', 'Tỉnh'),
('54', 'Tỉnh Phú Yên', 'Tỉnh'),
('56', 'Tỉnh Khánh Hòa', 'Tỉnh'),
('58', 'Tỉnh Ninh Thuận', 'Tỉnh'),
('6', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('60', 'Tỉnh Bình Thuận', 'Tỉnh'),
('62', 'Tỉnh Kon Tum', 'Tỉnh'),
('64', 'Tỉnh Gia Lai', 'Tỉnh'),
('66', 'Tỉnh Đắk Lắk', 'Tỉnh'),
('67', 'Tỉnh Đắk Nông', 'Tỉnh'),
('68', 'Tỉnh Lâm Đồng', 'Tỉnh'),
('70', 'Tỉnh Bình Phước', 'Tỉnh'),
('72', 'Tỉnh Tây Ninh', 'Tỉnh'),
('74', 'Tỉnh Bình Dương', 'Tỉnh'),
('75', 'Tỉnh Đồng Nai', 'Tỉnh'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
('8', 'Tỉnh Tuyên Quang', 'Tỉnh'),
('80', 'Tỉnh Long An', 'Tỉnh'),
('82', 'Tỉnh Tiền Giang', 'Tỉnh'),
('83', 'Tỉnh Bến Tre', 'Tỉnh'),
('84', 'Tỉnh Trà Vinh', 'Tỉnh'),
('86', 'Tỉnh Vĩnh Long', 'Tỉnh'),
('87', 'Tỉnh Đồng Tháp', 'Tỉnh'),
('89', 'Tỉnh An Giang', 'Tỉnh'),
('91', 'Tỉnh Kiên Giang', 'Tỉnh'),
('92', 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
('93', 'Tỉnh Hậu Giang', 'Tỉnh'),
('94', 'Tỉnh Sóc Trăng', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `img`, `created`, `trash`, `access`, `status`) VALUES
(2, 'Vương Thủy Nguyên', 'thuynguyen', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'vuongthuynguyen0@gmail.com', 0, '0986445831', 'admin.jpg', '2016-10-03 22:30:00', 1, 1, 1),
(3, 'Supper Admin', 'supperadmin', 'adc909449d4d5002003ac2a7613648305e681a83', 2, 'superadmin@gmail.com', 1, '0167892358', 'a22aeef917ae5c59006182ced50f72e8.png', '2016-10-03 22:30:00', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Quản trị', '2015-07-09 00:00:00', 4, '2015-07-09 00:00:00', 4, 1, 1, 1),
(2, 'Chủ shop', '2015-07-09 00:00:00', 4, '2015-07-09 00:00:00', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_quanhuyen`
--
ALTER TABLE `db_quanhuyen`
  ADD PRIMARY KEY (`maqh`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_tinhthanhpho`
--
ALTER TABLE `db_tinhthanhpho`
  ADD PRIMARY KEY (`matp`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
