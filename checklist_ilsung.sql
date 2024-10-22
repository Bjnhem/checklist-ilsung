-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2024 lúc 10:02 AM
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
-- Cơ sở dữ liệu: `checklist_ilsung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `checklist`
--

CREATE TABLE `checklist` (
  `id` int(11) NOT NULL,
  `ID_checklist` text DEFAULT NULL,
  `Machine` text DEFAULT NULL,
  `item_checklist` text DEFAULT NULL,
  `Hang_muc` text DEFAULT NULL,
  `Chu_ky` text DEFAULT NULL,
  `Remark` text DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `checklist`
--

INSERT INTO `checklist` (`id`, `ID_checklist`, `Machine`, `item_checklist`, `Hang_muc`, `Chu_ky`, `Remark`, `updated_at`, `created_at`) VALUES
(1, '1', 'Máy DMC', 'Check đầu ca', 'Kiểm tra tình trạng 5s của giá đỡ đặt dưới jig test \r\n- khi rubber bị vỡ   hỏng hay sử dụng đến \r\n30 000 lần test thì phải thay thế .', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(2, '1', 'Máy DMC', 'Check đầu ca', 'Kiểm tra thời gian đo   tỷ lệ dò khí   \r\nlực nén cung cấp có bình thường hay không .\r\n Tham khảo các thông số tiêu chuẩn trong bảng hướng dẩn\r\ncông việc của từng loại Model  ', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(3, '1', 'Máy DMC', 'Check đầu ca', 'Kiểm tra nút dừng khẩn cấp và cảm biến an toàn có \r\nhoạt đông bình thường hay không ?\r\n', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(4, '1', 'Máy DMC', 'Check đầu ca', 'Kiểm tra Spec công đoạnTem\r\nÁp lực khí    :………………….', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(5, '1', 'Máy DMC', 'Check đầu ca', 'Có thực hiện hiệu chỉnh thiết bị khi máy fail hỏng ', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(6, '1', 'Máy DMC', 'Check đầu ca', 'Kiểm tra xem day cung cấp khi có bình thường hay không \r\n JIG test có được cung cấp khí hay không ?', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(7, '1', 'Máy DMC', 'Check đầu ca', 'Kiểm tra điện áp Rò Spec: <5V', '1 lần/Tháng (check vào 15 hàng tháng)', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(8, '2', 'Máy DMC', 'Check Master Sample ', 'Đối với Hạng mục check master sử dụng mẫu chuẩn để check:\r\nMaster OK test cho giá trị OK thì tích O (NG tích X)\r\n\r\nMẫu Master NG step 1( Fail 1) spec ≥…………\r\n\r\n\r\nMẫu Master NG step 2 ( Fail 2) spec ≥………….\r\n\r\n\r\n( Mẫu Master NG sẽ ghi giá trị thực tế test )', '2 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(9, '3', 'Máy WLT', 'WLT', 'Kiểm tra điện áp Rò Spec < 5V', '1 lần/Tháng (check vào 15 hàng tháng)', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(10, '3', 'Máy WLT', 'WLT', 'Trạng thái vệ sinh của thiết bị và JIG (WLT JIG/ Vacuum JIG BASE) có sạch không\r\n - Kiểm tra xem thiết bị và phần gắn SET của Jig có dị vật/ bẩn không', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(11, '3', 'Máy WLT', 'WLT', 'Trạng thái của thiết bị và JIG (WLT JIG/ Vacuum JIG  BASE) có tốt không?\r\n- Hỏng hóc  dịch chuyển  kẹt  mòn biến dạng cong vênh  có tape dán không.Kiểm tra tên model trên Jig ', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(12, '3', 'Máy WLT', 'WLT', 'Nước của máy WLT-100V  đã được thay chưa? (không sử dụng lại nước  sử dụng nước sạch)\r\n - Ca ngày/đêm có thực hiện thay trước khi vận hành không', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(13, '3', 'Máy WLT', 'WLT', 'Có vệ sinh máy WLT-100V không?\r\n - Ca đêm có thực hiện trước khi vận hành không', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(14, '3', 'Máy WLT', 'WLT', 'Trong tank nước của máy WLT-100V có nước không và không có chất lạ phải không?', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(15, '', 'Máy WLT', 'WLT', '', '', '', '2024-10-18 08:52:39', '2024-10-18 01:52:39'),
(16, '3', 'Máy WLT', 'WLT', ' Các loại sensor có hoạt động bình thường không?\r\n - Water Sensor  Sensor nhận biết mẫu  Sensor an toàn  Emergency S/W', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(17, '3', 'Máy WLT', 'WLT', 'Kiểm tra độ cân bằng của thiết bị\r\n -  Kiểm tra thiết bị cân bằng được gắn trên máy và chỉnh trạng thái cân bằng của máy', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(18, '3', 'Máy WLT', 'WLT', ' \r\n - Supply Air Value : 15KPS +- 1KPa', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(19, '3', 'Máy WLT', 'WLT', 'Áp lực (press) :  0.35+-0.025  Mpa ', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(20, '3', 'Máy WLT', 'WLT', 'Thời gian kiểm tra (Test Time)  : ……………...  sec', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(21, '3', 'Máy WLT', 'WLT', 'Wet test time:      1 sec', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(22, '3', 'Máy WLT', 'WLT', 'Thời gian cấp khi (Air Supply) Time : …... sec', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(23, '4', 'Máy WLT', 'Check Master Sample ', 'Đặt Set chuẩn  Master Sample OK  vào Jig kiểm tra xem thử có hoạt động hay không (Kiểm tra có bị nước hay không)', '2 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(24, '4', 'Máy WLT', 'Check Master Sample ', 'Đặt Set chuẩn  Master Sample  NG vào Jig kiểm tra xem thử có hoạt động hay không (Kiểm tra có bị nước hay không)', '2 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(25, '5', 'Máy WLT', 'Vacuum JIG', 'Kiểm tra tình trạng làm sạch giá đỡ Vacuum JIG .\r\n- Kiểm tra Jig đúng model name', '2 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(26, '5', 'Máy WLT', 'Vacuum JIG', 'Lực hút (Air Presure): ………………………...Mpa', '2 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(27, '5', 'Máy WLT', 'Vacuum JIG', 'Thời gian hút (Suction Time):…………………...Sec', '2 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(28, '5', 'Máy WLT', 'Vacuum JIG', 'Máng nước của Vacuum JIG có đựng đầy nước không?\r\n - Đổ nước để máng nước không bị đầy nước ', '2 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(29, '5', 'Máy WLT', 'Vacuum JIG', 'Người Thiết bị Kiểm tra', '2 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(30, '6', 'Máy laser', 'Check đầu ca', 'Trạng thái liên kết và phần kết nối', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(31, '6', 'Máy laser', 'Check đầu ca', 'Trạng thái vốn cố định', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(32, '6', 'Máy laser', 'Check đầu ca', 'Trạng thái tác động sensor', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-22 03:50:23'),
(33, '6', 'Máy laser', 'Check đầu ca', 'Phát sinh âm thanh lạ chấn động ở bộ phận truyền lực chạy', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-21 20:50:23'),
(34, '6', 'Máy laser', 'Check đầu ca', 'Áp suất không khí', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-21 20:50:23'),
(35, '6', 'Máy laser', 'Check đầu ca', 'Công tắc máy', '1 lần/Shift', '', '2024-10-22 03:50:23', '2024-10-21 20:50:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `checklist_item`
--

CREATE TABLE `checklist_item` (
  `id` int(11) NOT NULL,
  `ID_checklist` text NOT NULL,
  `Machine` text NOT NULL,
  `item_checklist` text NOT NULL,
  `khung_check` text NOT NULL,
  `Shift` text NOT NULL,
  `Remark` text NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `checklist_item`
--

INSERT INTO `checklist_item` (`id`, `ID_checklist`, `Machine`, `item_checklist`, `khung_check`, `Shift`, `Remark`, `updated_at`, `created_at`) VALUES
(1, '1', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(2, '1', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(3, '2', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(4, '2', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(5, '2', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(6, '2', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(7, '3', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(8, '3', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(9, '4', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(10, '4', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(11, '5', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(12, '5', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(13, '5', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41'),
(14, '5', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '', '2024-10-22 03:44:41', '2024-10-21 20:44:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `checklist_master`
--

CREATE TABLE `checklist_master` (
  `id` int(11) NOT NULL,
  `Machine` text NOT NULL,
  `item_checklist` text NOT NULL,
  `Chu_ky` text NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `checklist_master`
--

INSERT INTO `checklist_master` (`id`, `Machine`, `item_checklist`, `Chu_ky`, `updated_at`, `created_at`) VALUES
(1, 'Máy DMC', 'Check đầu ca', '1 lần/Shift', '2024-10-22 03:43:15', '2024-10-21 20:43:15'),
(2, 'Máy DMC', 'Check Master Sample ', '1 lần/Shift', '2024-10-22 03:43:15', '2024-10-21 20:43:15'),
(3, 'Máy WLT', 'WLT', '1 lần/Shift', '2024-10-22 03:43:15', '2024-10-21 20:43:15'),
(4, 'Máy WLT', 'Check Master Sample ', '1 lần/Shift', '2024-10-22 03:43:15', '2024-10-21 20:43:15'),
(5, 'Máy WLT', 'Vacuum JIG', '1 lần/Shift', '2024-10-22 03:43:15', '2024-10-21 20:43:15'),
(6, 'Máy laser', 'Check đầu ca', '1 lần/Shift', '2024-10-22 03:43:15', '2024-10-21 20:43:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `checklist_result`
--

CREATE TABLE `checklist_result` (
  `id` int(11) NOT NULL,
  `ID_item_checklist` text DEFAULT NULL,
  `ID_checklist` text NOT NULL,
  `Location` text DEFAULT NULL,
  `Model` text NOT NULL,
  `Machine` text NOT NULL,
  `item_checklist` text NOT NULL,
  `Khung_check` text DEFAULT NULL,
  `Shift` text DEFAULT NULL,
  `Code_machine` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Check_status` text NOT NULL,
  `Remark` text NOT NULL,
  `PIC_check` text NOT NULL,
  `Date_check` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `checklist_result`
--

INSERT INTO `checklist_result` (`id`, `ID_item_checklist`, `ID_checklist`, `Location`, `Model`, `Machine`, `item_checklist`, `Khung_check`, `Shift`, `Code_machine`, `Status`, `Check_status`, `Remark`, `PIC_check`, `Date_check`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Line 01', 'S928', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500057723', 'User', 'Completed', '', '', '2024-10-22', '2024-10-22 07:03:16', '2024-10-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `checklist_result_detail`
--

CREATE TABLE `checklist_result_detail` (
  `id` int(11) NOT NULL,
  `ID_checklist_result` text NOT NULL,
  `Location` text DEFAULT NULL,
  `Model` text NOT NULL,
  `ID_item_checklist` text DEFAULT NULL,
  `Machine` text NOT NULL,
  `item_checklist` text NOT NULL,
  `Khung_check` text DEFAULT NULL,
  `Shift` text DEFAULT NULL,
  `Code_machine` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Check_status` text NOT NULL,
  `Remark` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `line_master`
--

CREATE TABLE `line_master` (
  `id` int(11) NOT NULL,
  `Location` text DEFAULT NULL,
  `line_name` text NOT NULL,
  `Status` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `line_master`
--

INSERT INTO `line_master` (`id`, `Location`, `line_name`, `Status`, `created_at`, `updated_at`) VALUES
(1, 'Production Line', 'Line 01', 'User', '2024-10-21 20:07:01', '2024-10-22 03:07:01'),
(2, 'Production Line', 'Line 02', 'User', '2024-10-21 20:07:01', '2024-10-22 03:07:01'),
(3, 'Production Line', 'Line 03', 'User', '2024-10-22 03:07:01', '2024-10-22 03:07:01'),
(4, 'Production Line', 'Line 04', 'User', '2024-10-22 03:07:01', '2024-10-22 03:07:01'),
(5, 'Production Line', 'Line 05', 'User', '2024-10-22 03:07:01', '2024-10-22 03:07:01'),
(6, 'Production Line', 'Line 06', 'User', '2024-10-22 03:07:01', '2024-10-22 03:07:01'),
(7, 'Production Line', 'Line 07', 'User', '2024-10-22 03:07:01', '2024-10-22 03:07:01'),
(8, 'Production Line', 'Line 08', 'User', '2024-10-22 03:07:01', '2024-10-22 03:07:01'),
(9, 'Production Line', 'Line 09', 'User', '2024-10-22 03:07:01', '2024-10-22 03:07:01'),
(10, 'Production Line', 'Line 10', 'User', '2024-10-22 03:07:01', '2024-10-22 03:07:01'),
(11, 'Production Line', 'Line 11', 'User', '2024-10-22 03:07:01', '2024-10-22 03:07:01'),
(12, 'Production Line', 'Line 12', 'User', '2024-10-22 03:07:01', '2024-10-22 03:07:01'),
(13, 'Production Line', 'Line 13', 'User', '2024-10-22 03:07:01', '2024-10-22 03:07:01'),
(14, 'Production Line', 'Line 14', 'User', '2024-10-21 20:07:01', '2024-10-22 03:07:01'),
(15, 'Production Line', 'Line 15', 'User', '2024-10-21 20:07:01', '2024-10-22 03:07:01'),
(16, 'Production Line', 'Line 16', 'User', '2024-10-21 20:07:01', '2024-10-22 03:07:01'),
(17, 'Kho', 'Kho EQM', 'Not User', '2024-10-21 20:07:01', '2024-10-22 03:07:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `machine_list`
--

CREATE TABLE `machine_list` (
  `id` int(11) NOT NULL,
  `ID_machine` text DEFAULT NULL,
  `Machine` text DEFAULT NULL,
  `Code_machine` text DEFAULT NULL,
  `Location` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Remark` text DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `machine_list`
--

INSERT INTO `machine_list` (`id`, `ID_machine`, `Machine`, `Code_machine`, `Location`, `Status`, `Remark`, `updated_at`, `created_at`) VALUES
(1, '1', 'Máy laser', '1501002597', 'Line 01', 'User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(2, '1', 'Máy laser', '1501001527', 'Line 02', 'User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(3, '1', 'Máy laser', '1501004624', 'Kho EQM', 'Not User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(4, '1', 'Máy laser', '1501001528', 'Line 01', 'User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(5, '1', 'Máy laser', '1501001526', 'Line 02', 'Not User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(6, '1', 'Máy laser', '1501004618', 'Kho EQM', 'Not User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(7, '1', 'Máy laser', '1501002749', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(8, '1', 'Máy laser', '1501005476', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(9, '1', 'Máy laser', '1501005478', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(10, '1', 'Máy laser', '1501005477', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(11, '1', 'Máy laser', '1501005479', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(12, '2', 'Máy DMC', '1500057723', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(13, '2', 'Máy DMC', '1500054511', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(14, '2', 'Máy DMC', '1500057803', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(15, '2', 'Máy DMC', '1500054092', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(16, '2', 'Máy DMC', '1501003353', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(17, '2', 'Máy DMC', '1500054910', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(18, '2', 'Máy DMC', '1500057830', '', '', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(19, '2', 'Máy DMC', '1500054111', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(20, '2', 'Máy DMC', '1500057681', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(21, '2', 'Máy DMC', '1500057697', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(22, '2', 'Máy DMC', '1501003361', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(23, '2', 'Máy DMC', '1500054070', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(24, '2', 'Máy DMC', '1500054898', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(25, '2', 'Máy DMC', '1500058614', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(26, '2', 'Máy DMC', '1501003331', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(27, '2', 'Máy DMC', '1501003347', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(28, '2', 'Máy DMC', '1500057773', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(29, '2', 'Máy DMC', '1501004196', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(30, '2', 'Máy DMC', '1500051573', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(31, '2', 'Máy DMC', '1501001938', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(32, '2', 'Máy DMC', '1501003354', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(33, '2', 'Máy DMC', '1501003351', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(34, '2', 'Máy DMC', '1500054913', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(35, '2', 'Máy DMC', '1500054087', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(36, '2', 'Máy DMC', '1500054615', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(37, '2', 'Máy DMC', '1501001920', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(38, '3', 'Máy vison', '1500048996', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(39, '3', 'Máy vison', '1500048991', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(40, '3', 'Máy vison', '1500027512', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(41, '3', 'Máy vison', '1500060082', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(42, '3', 'Máy vison', '1500060080', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(43, '3', 'Máy vison', '1500048998', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(44, '3', 'Máy vison', '1520007992', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(45, '3', 'Máy vison', '1500028358', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(46, '4', 'Máy vinyl', '1500056769', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(47, '4', 'Máy vinyl', '1500063022', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(48, '4', 'Máy vinyl', '1500060846', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(49, '4', 'Máy vinyl', '1500060844', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(50, '4', 'Máy vinyl', '1500054839', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(51, '4', 'Máy vinyl', '1500056756', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(52, '4', 'Máy vinyl', '1500058156', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(53, '4', 'Máy vinyl', '1500058153', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(54, '4', 'Máy vinyl', '1500058166', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(55, '4', 'Máy vinyl', '1501002506', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(56, '4', 'Máy vinyl', '1500058181', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(57, '4', 'Máy vinyl', '1500058193', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(58, '4', 'Máy vinyl', '1500058170', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(59, '4', 'Máy vinyl', '1500054801', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(60, '4', 'Máy vinyl', '1500058157', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(61, '4', 'Máy vinyl', '1500063026', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(62, '4', 'Máy vinyl', '1500058182', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(63, '4', 'Máy vinyl', '1500056758', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(64, '4', 'Máy vinyl', '1501002496', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(65, '4', 'Máy vinyl', '1500058191', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(66, '4', 'Máy vinyl', '1500058125', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(67, '4', 'Máy vinyl', '1500058187', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(68, '4', 'Máy vinyl', '1500063320', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(69, '4', 'Máy vinyl', '1500058188', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(70, '4', 'Máy vinyl', '1500054836', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(71, '4', 'Máy vinyl', '1500060799', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(72, '4', 'Máy vinyl', '1500054803', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(73, '5', 'Máy WLT', '1500058457', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(74, '5', 'Máy WLT', '1501002303', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(75, '5', 'Máy WLT', '1500061302', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(76, '5', 'Máy WLT', '1500058456', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(77, '5', 'Máy WLT', '1501003939', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(78, '5', 'Máy WLT', '1501003922', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(79, '5', 'Máy WLT', '1500063989', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(80, '5', 'Máy WLT', '1500060786', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(81, '5', 'Máy WLT', '1500067753', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(82, '5', 'Máy WLT', '1500067734', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(83, '5', 'Máy WLT', '1501003940', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(84, '5', 'Máy WLT', '1500061308', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(85, '5', 'Máy WLT', '1500061301', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(86, '5', 'Máy WLT', '1500053327', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(87, '5', 'Máy WLT', '1500058461', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(88, '5', 'Máy WLT', '1501005053', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(89, '5', 'Máy WLT', '1501000722', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(90, '5', 'Máy WLT', '1500063992', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(91, '5', 'Máy WLT', '1501002288', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(92, '5', 'Máy WLT', '1501005056', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(93, '5', 'Máy WLT', '1501005054', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(94, '5', 'Máy WLT', '1501005057', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(95, '5', 'Máy WLT', '1501005038', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(96, '5', 'Máy WLT', '1501005045', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(97, '5', 'Máy WLT', '1501005060', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(98, '5', 'Máy WLT', '1501005033', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(99, '5', 'Máy WLT', '1501005027', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(100, '5', 'Máy WLT', '1501003927', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(101, '5', 'Máy WLT', '1501005028', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(102, '5', 'Máy WLT', '1501005039', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39'),
(103, '5', 'Máy WLT', '1501005032', '', '', '', '2024-10-22 03:38:39', '2024-10-21 20:38:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `machine_master`
--

CREATE TABLE `machine_master` (
  `id` int(11) NOT NULL,
  `Machine` text NOT NULL,
  `Remark` text NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `machine_master`
--

INSERT INTO `machine_master` (`id`, `Machine`, `Remark`, `updated_at`, `created_at`) VALUES
(1, 'Máy laser', '', '2024-10-22 04:15:00', '2024-10-21 21:15:00'),
(2, 'Máy DMC', '', '2024-10-22 04:15:00', '2024-10-21 21:15:00'),
(3, 'Máy vison', '', '2024-10-22 04:15:00', '2024-10-21 21:15:00'),
(4, 'Máy vinyl', '', '2024-10-22 04:15:00', '2024-10-21 21:15:00'),
(5, 'Máy WLT', '', '2024-10-22 04:15:00', '2024-10-21 21:15:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `model` text NOT NULL,
  `Name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model`
--

INSERT INTO `model` (`id`, `model`, `Name`, `created_at`, `updated_at`) VALUES
(1, 'S928', '', '2024-10-21 20:11:47', '2024-10-22 03:11:47'),
(2, 'F731 Sub', '', '2024-10-21 20:11:47', '2024-10-22 03:11:47'),
(3, 'S928', '', '2024-10-21 20:11:47', '2024-10-22 03:11:47'),
(4, 'Common', '', '2024-10-21 20:11:47', '2024-10-22 03:11:47'),
(5, 'X906', '', '2024-10-21 20:11:47', '2024-10-22 03:11:47'),
(6, 'F731 Main', '', '2024-10-21 20:11:47', '2024-10-22 03:11:47'),
(7, 'A305J', '', '2024-10-21 20:11:47', '2024-10-22 03:11:47'),
(8, 'P615', '', '2024-10-21 20:11:47', '2024-10-22 03:11:47'),
(9, 'F721 Main', '', '2024-10-21 20:11:47', '2024-10-22 03:11:47'),
(10, 'F721 Sub', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(11, 'A805', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(12, 'X916', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(13, 'S711', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(14, 'S928 Block', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(15, 'F741 MAIN', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(16, 'F741 SUB', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(17, 'G990', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(18, 'S908', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(19, 'X516', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(20, 'S918', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(21, 'F04-02', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(22, 'K03-01', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(23, 'X818', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(24, 'T976', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(25, 'S721', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(26, 'PA3', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48'),
(27, 'PA2', '', '2024-10-21 20:11:48', '2024-10-22 03:11:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `ID_NV` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `part` text DEFAULT NULL,
  `phan_quyen` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `ID_NV`, `name`, `email`, `part`, `phan_quyen`, `created_at`, `updated_at`) VALUES
(1, 'ID_NV', 'name', 'email', 'part', 'phan_quyen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '1111', 'Nguy?n v?n a', 'nguyen@gmail.com', '', 'leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '1112', 'Nguy?n v?n b', 'nguyen2@gmail.com', '', 'user', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `checklist_item`
--
ALTER TABLE `checklist_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `checklist_master`
--
ALTER TABLE `checklist_master`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `checklist_result`
--
ALTER TABLE `checklist_result`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `checklist_result_detail`
--
ALTER TABLE `checklist_result_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `line_master`
--
ALTER TABLE `line_master`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `machine_list`
--
ALTER TABLE `machine_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `machine_master`
--
ALTER TABLE `machine_master`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `checklist`
--
ALTER TABLE `checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `checklist_item`
--
ALTER TABLE `checklist_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `checklist_master`
--
ALTER TABLE `checklist_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `checklist_result`
--
ALTER TABLE `checklist_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `checklist_result_detail`
--
ALTER TABLE `checklist_result_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `line_master`
--
ALTER TABLE `line_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `machine_list`
--
ALTER TABLE `machine_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `machine_master`
--
ALTER TABLE `machine_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
