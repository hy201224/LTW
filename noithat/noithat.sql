-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th12 03, 2024 lúc 05:35 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `noithat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pk_danhmuc`
--

CREATE TABLE `pk_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `pk_danhmuc`
--

INSERT INTO `pk_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(22, 'Bàn', 1),
(23, 'Ghế', 2),
(24, 'Tủ / Kệ', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pk_sanpham`
--

CREATE TABLE `pk_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `soluongban` int(11) DEFAULT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `pk_sanpham`
--

INSERT INTO `pk_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `soluongban`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(31, 'Bàn HOBRO 601', 'B1', '2490000', 10, NULL, 'Bàn HOBRO.jpg', 'Kích thước :80cm x 80cm x 38cm.', 'Mặt bàn được làm từ Gỗ cao su tự nhiên; Chân được sắt sơn tĩnh điện.', 1, 22),
(33, 'Tủ Giày OSLO 901', 'T1', '2490000', 10, NULL, 'Tủ Giày OSLO 901.jpg', 'Kích thước: 80cm x 36cm x 92cm.', ' Mặt và Thân tủ được làm từ Gỗ công nghiệp FB chuẩn CARB - P2, Sơn phủ UV; Chân tủ được làm từ Gỗ cao su tự nhiên.', 1, 24),
(34, 'Bàn KOLDING 701', 'B7', '1990000', 10, NULL, 'Bàn KOLDING 701.jpg', 'Kích thước: 100cm x 50cm x 40cm.', 'Gỗ tràm tự nhiên, Chân sắt sơn tĩnh điện.', 1, 22),
(35, 'Ghế Sofa FYN 901', 'G9', ' 10990000', 10, NULL, 'Ghế Sofa FYN 901.jpg', 'Kích thước:206cm x 81.5cm x 79cm.', 'Gỗ cao su tự nhiên; Vải bọc sợi tổng hợp có khả năng chống thấm dầu và nước; Tấm phản được làm từ Gỗ công nghiệp Plywood chuẩn CARB - P2.', 1, 23),
(37, 'Bàn ODENSE 601', 'B0', '2990000', 10, NULL, 'Bàn ODENSE 601.jpg', 'Kích thước: 80cm x 45cm x 40cm.', 'Thân bàn được làm từ Gỗ công nghiệp MFC FB chuẩn CARP - B2, Veneer Tràm; Chân được làm từ Gỗ cao su tự nhiên.', 1, 22),
(39, 'Tủ Kệ Tivi LEEDS 701', 'TK1', '5190000', 10, NULL, 'Tủ Kệ Tivi LEEDS 701.jpg', 'Kích thước:180cm x 40cm x 50cm.', 'Mặt tủ được làm từ FB phủ melamin; Thân tủ được làm từ MFC (FB phủ melamin); Chân được sắt sơn tĩnh điện.', 1, 24),
(40, 'Bàn OSLO 901', 'BO', '1990000', 10, NULL, 'Bàn OSLO 901.jpg', 'Kích thước: 95cm x 50cm x 42cm.', 'Mặt và Chân bàn được làm từ Gỗ Thông tự nhiên.', 1, 22),
(41, 'Ghế Sofa KOLDING 701', 'GS1', '12990000', 10, NULL, 'Ghế Sofa KOLDING 701 .jpg', 'Kích thước:200cm x 86cm x 79.5cm.', 'Gỗ tràm tự nhiên; Chân ghế làm bằng sắt sơn tĩnh điện; Tấm phản được làm từ Gỗ công nghiệp Plywood chuẩn CARB - P2', 1, 23),
(42, 'Tủ Kệ Tivi OSLO 201', 'TK', '2190000', 10, NULL, 'Tủ Kệ Tivi OSLO 201.png', 'Kích thước:140cm x 40cm x 60cm.', 'Thân tủ được làm từ Gỗ công nghiệp FB chuẩn CARB - P2, Sơn phủ UV vân gỗ sồi tự nhiên; Chân tủ được làm từ Gỗ cao su tự nhiên.', 1, 24),
(43, 'Bàn VLINE 601', 'B6', '1390000', 10, NULL, 'Bàn VLINE 601.jpg', 'Kích thước:100cm x 50cm x 40cm.', 'Gỗ thông nguyên khối, màu gỗ walnut; Chống thấm, cong vênh, trầy xước, mối mọt.', 1, 22),
(44, 'Ghế Sofa LEEDS 701', 'GSF1', '11490000', 10, NULL, 'Ghế Sofa LEEDS 701.jpg', 'Kích thước:200cm x 93cm x 78cm.', ' Gỗ cao tràm su tự nhiên; Vải bọc sợi tổng hợp có khả năng chống thấm nước và dầu; Chân sắt sơn tĩnh điện.', 1, 23),
(45, 'Ghế Sofa MOSS 601', 'GSF3', '9900000', 10, NULL, 'Ghế Sofa MOSS 601.png', 'Kích thước:200cm x 75cm x 69cm.', 'Gỗ cao su tự nhiên; Vải bọc tổng hợp có khả năng chống thấm nước và dầu; Tấm phản được làm từ Gỗ công nghiệp Plywood chuẩn CARB - P2.', 1, 23),
(46, 'Tủ Kệ Tivi VLINE 301', 'TK3', '3190000', 10, NULL, 'Tủ Kệ Tivi VLINE 301.jpg', 'Kích thước:160cm x 41cm x 51cm.', 'Mặt kệ được làm từ Gỗ công nghiệp FB chuẩn CARB - P2; Của tủ được làm từ Mây tre tự nhiên; Chân tủ được làm từ Gỗ cao su tự nhiên', 1, 24),
(47, 'Ghế Sofa VLINE 601', 'GSF7', '8190000', 8, 2, 'Ghế Sofa VLINE 601 .jpg', 'Kích thước:180cm x 85cm x 69cm.', 'Thân ghế được làm từ Gỗ tràm tự nhiên; Chân ghế được làm từ Gỗ cao su tự nhiên;           Tấm phản được làm từ Gỗ công nghiệp Plywood chuẩn CARB - P2.', 1, 23),
(48, 'Tủ Giày VIENNA 202', 'T5', '2490000', 10, 0, 'Tủ Giày VIENNA 202 .png', 'Kích thước:60cm x 32cm x 180cm', 'Mặt tủ được làm từ Gỗ công nghiệp PB chuẩn CARB - P2, Sơn phủ UV. Thân tủ được làm từ Gỗ công nghiệp MDF chuẩn CARB - P2, Sơn phủ UV.', 1, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'nhiadmin', '25f9e794323b453885f5181f1b624d0b', 1),
(2, 'oanhadmin', '13052004', 2),
(6, 'phanuyen', '023ea4c3c207252a27332248f17df44a', 3),
(7, 'phanuyen', '023ea4c3c207252a27332248f17df44a', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(30, 24, '3201', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(17, '3201', 47, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangki` int(10) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `taikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangki`, `tenkhachhang`, `taikhoan`, `matkhau`, `dienthoai`) VALUES
(23, 'uyen', 'uyen', '202cb962ac59075b964b07152d234b70', '0000000000'),
(24, 'uyen', 'uyen', '202cb962ac59075b964b07152d234b70', '0000000000');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pk_danhmuc`
--
ALTER TABLE `pk_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `pk_sanpham`
--
ALTER TABLE `pk_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangki`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pk_danhmuc`
--
ALTER TABLE `pk_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `pk_sanpham`
--
ALTER TABLE `pk_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangki` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
