-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2024 lúc 10:34 AM
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
  `ID_checklist` text DEFAULT NULL,
  `Locations` text DEFAULT NULL,
  `Model` text DEFAULT NULL,
  `Machine` text DEFAULT NULL,
  `item_checklist` text DEFAULT NULL,
  `Khung_check` text DEFAULT NULL,
  `Shift` text DEFAULT NULL,
  `Code_machine` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Check_status` text DEFAULT NULL,
  `Remark` text DEFAULT NULL,
  `PIC_check` text DEFAULT NULL,
  `Date_check` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `checklist_result`
--

INSERT INTO `checklist_result` (`id`, `ID_item_checklist`, `ID_checklist`, `Locations`, `Model`, `Machine`, `item_checklist`, `Khung_check`, `Shift`, `Code_machine`, `Status`, `Check_status`, `Remark`, `PIC_check`, `Date_check`, `created_at`, `updated_at`) VALUES
(2, '2', '1', 'Line 05', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500057723', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(3, '3', '2', 'Line 05', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500057723', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(4, '4', '2', 'Line 05', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500057723', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(5, '5', '2', 'Line 05', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500057723', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(6, '6', '2', 'Line 05', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500057723', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(7, '1', '1', 'Line 06', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500054511', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(8, '2', '1', 'Line 06', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500054511', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(9, '3', '2', 'Line 06', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500054511', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(10, '4', '2', 'Line 06', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500054511', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(11, '5', '2', 'Line 06', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500054511', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(12, '6', '2', 'Line 06', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500054511', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(13, '1', '1', 'Line 07', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500057803', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(14, '2', '1', 'Line 07', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500057803', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(15, '3', '2', 'Line 07', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500057803', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(16, '4', '2', 'Line 07', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500057803', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(17, '5', '2', 'Line 07', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500057803', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(18, '6', '2', 'Line 07', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500057803', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(19, '1', '1', 'Line 08', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500054092', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(20, '2', '1', 'Line 08', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500054092', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(21, '3', '2', 'Line 08', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500054092', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(22, '4', '2', 'Line 08', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500054092', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(23, '5', '2', 'Line 08', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500054092', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(24, '6', '2', 'Line 08', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500054092', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(25, '1', '1', 'Line 09', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1501003353', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(26, '2', '1', 'Line 09', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1501003353', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(27, '3', '2', 'Line 09', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1501003353', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(28, '4', '2', 'Line 09', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1501003353', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(29, '5', '2', 'Line 09', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1501003353', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(30, '6', '2', 'Line 09', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1501003353', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(31, '1', '1', 'Line 10', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500054910', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(32, '2', '1', 'Line 10', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500054910', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(33, '3', '2', 'Line 10', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500054910', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(34, '4', '2', 'Line 10', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500054910', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(35, '5', '2', 'Line 10', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500054910', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(36, '6', '2', 'Line 10', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500054910', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(37, '1', '1', 'Line 11', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500057830', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(38, '2', '1', 'Line 11', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500057830', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(39, '3', '2', 'Line 11', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500057830', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(40, '4', '2', 'Line 11', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500057830', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(41, '5', '2', 'Line 11', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500057830', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(42, '6', '2', 'Line 11', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500057830', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(43, '1', '1', 'Line 12', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500054111', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(44, '2', '1', 'Line 12', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500054111', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(45, '3', '2', 'Line 12', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500054111', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(46, '4', '2', 'Line 12', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500054111', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(47, '5', '2', 'Line 12', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500054111', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(48, '6', '2', 'Line 12', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500054111', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(49, '1', '1', 'Line 13', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500057681', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(50, '2', '1', 'Line 13', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500057681', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(51, '3', '2', 'Line 13', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500057681', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(52, '4', '2', 'Line 13', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500057681', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(53, '5', '2', 'Line 13', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500057681', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(54, '6', '2', 'Line 13', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500057681', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(55, '1', '1', 'Line 14', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500057697', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(56, '2', '1', 'Line 14', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500057697', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(57, '3', '2', 'Line 14', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500057697', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(58, '4', '2', 'Line 14', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500057697', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(59, '5', '2', 'Line 14', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500057697', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(60, '6', '2', 'Line 14', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500057697', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(61, '1', '1', 'Line 15', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1501003361', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(62, '2', '1', 'Line 15', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1501003361', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(63, '3', '2', 'Line 15', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1501003361', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(64, '4', '2', 'Line 15', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1501003361', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(65, '5', '2', 'Line 15', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1501003361', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(66, '6', '2', 'Line 15', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1501003361', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(67, '1', '1', 'Line 16', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500054070', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(68, '2', '1', 'Line 16', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500054070', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(69, '3', '2', 'Line 16', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500054070', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(70, '4', '2', 'Line 16', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500054070', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(71, '5', '2', 'Line 16', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500054070', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(72, '6', '2', 'Line 16', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500054070', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(73, '1', '1', 'Line 01', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500054898', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(74, '2', '1', 'Line 01', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500054898', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(75, '3', '2', 'Line 01', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500054898', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(76, '4', '2', 'Line 01', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500054898', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(77, '5', '2', 'Line 01', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500054898', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(78, '6', '2', 'Line 01', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500054898', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(79, '1', '1', 'Line 02', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500058614', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(80, '2', '1', 'Line 02', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500058614', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(81, '3', '2', 'Line 02', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500058614', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(82, '4', '2', 'Line 02', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500058614', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(83, '5', '2', 'Line 02', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500058614', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(84, '6', '2', 'Line 02', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500058614', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(85, '1', '1', 'Line 03', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1501003331', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(86, '2', '1', 'Line 03', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1501003331', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(87, '3', '2', 'Line 03', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1501003331', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(88, '4', '2', 'Line 03', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1501003331', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(89, '5', '2', 'Line 03', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1501003331', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(90, '6', '2', 'Line 03', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1501003331', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(91, '1', '1', 'Line 04', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1501003347', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(92, '2', '1', 'Line 04', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1501003347', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(93, '3', '2', 'Line 04', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1501003347', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(94, '4', '2', 'Line 04', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1501003347', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(95, '5', '2', 'Line 04', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1501003347', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(96, '6', '2', 'Line 04', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1501003347', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(97, '1', '1', 'Line 05', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500057773', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(98, '2', '1', 'Line 05', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500057773', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(99, '3', '2', 'Line 05', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500057773', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(100, '4', '2', 'Line 05', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500057773', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(101, '5', '2', 'Line 05', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500057773', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(102, '6', '2', 'Line 05', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500057773', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(103, '1', '1', 'Line 06', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1501004196', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(104, '2', '1', 'Line 06', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1501004196', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(105, '3', '2', 'Line 06', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1501004196', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(106, '4', '2', 'Line 06', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1501004196', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(107, '5', '2', 'Line 06', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1501004196', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(108, '6', '2', 'Line 06', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1501004196', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(109, '1', '1', 'Line 07', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500051573', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(110, '2', '1', 'Line 07', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500051573', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(111, '3', '2', 'Line 07', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500051573', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(112, '4', '2', 'Line 07', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500051573', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(113, '5', '2', 'Line 07', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500051573', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(114, '6', '2', 'Line 07', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500051573', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(115, '1', '1', 'Line 08', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1501001938', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(116, '2', '1', 'Line 08', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1501001938', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(117, '3', '2', 'Line 08', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1501001938', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(118, '4', '2', 'Line 08', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1501001938', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(119, '5', '2', 'Line 08', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1501001938', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(120, '6', '2', 'Line 08', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1501001938', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(121, '1', '1', 'Line 09', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1501003354', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(122, '2', '1', 'Line 09', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1501003354', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(123, '3', '2', 'Line 09', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1501003354', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(124, '4', '2', 'Line 09', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1501003354', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(125, '5', '2', 'Line 09', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1501003354', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(126, '6', '2', 'Line 09', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1501003354', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(127, '1', '1', 'Line 10', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1501003351', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(128, '2', '1', 'Line 10', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1501003351', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(129, '3', '2', 'Line 10', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1501003351', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(130, '4', '2', 'Line 10', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1501003351', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(131, '5', '2', 'Line 10', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1501003351', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(132, '6', '2', 'Line 10', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1501003351', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(133, '1', '1', 'Line 11', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500054913', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(134, '2', '1', 'Line 11', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500054913', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(135, '3', '2', 'Line 11', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500054913', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(136, '4', '2', 'Line 11', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500054913', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(137, '5', '2', 'Line 11', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500054913', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(138, '6', '2', 'Line 11', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500054913', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(139, '1', '1', 'Line 12', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500054087', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(140, '2', '1', 'Line 12', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500054087', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(141, '3', '2', 'Line 12', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500054087', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(142, '4', '2', 'Line 12', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500054087', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(143, '5', '2', 'Line 12', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500054087', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(144, '6', '2', 'Line 12', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500054087', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(145, '1', '1', 'Line 13', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500054615', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(146, '2', '1', 'Line 13', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1500054615', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(147, '3', '2', 'Line 13', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1500054615', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(148, '4', '2', 'Line 13', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1500054615', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(149, '5', '2', 'Line 13', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1500054615', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(150, '6', '2', 'Line 13', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1500054615', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(151, '1', '1', 'Line 14', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1501001920', 'Not User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(152, '2', '1', 'Line 14', '---', 'Máy DMC', 'Check đầu ca', 'Ca đêm', 'Ca đêm', '1501001920', 'Not User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(153, '3', '2', 'Line 14', '---', 'Máy DMC', 'Check Master Sample ', '08h-12h', 'Ca ngày', '1501001920', 'Not User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(154, '4', '2', 'Line 14', '---', 'Máy DMC', 'Check Master Sample ', '12h-20h', 'Ca ngày', '1501001920', 'Not User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(155, '5', '2', 'Line 14', '---', 'Máy DMC', 'Check Master Sample ', '20h-00h', 'Ca đêm', '1501001920', 'Not User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(156, '6', '2', 'Line 14', '---', 'Máy DMC', 'Check Master Sample ', '00h-08h', 'Ca đêm', '1501001920', 'Not User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(157, '7', '3', 'Line 02', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500058457', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(158, '8', '3', 'Line 02', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500058457', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(159, '9', '4', 'Line 02', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500058457', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(160, '10', '4', 'Line 02', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500058457', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(161, '11', '5', 'Line 02', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500058457', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(162, '12', '5', 'Line 02', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500058457', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(163, '13', '5', 'Line 02', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500058457', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(164, '14', '5', 'Line 02', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500058457', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(165, '7', '3', 'Line 03', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501002303', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(166, '8', '3', 'Line 03', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501002303', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(167, '9', '4', 'Line 03', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501002303', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(168, '10', '4', 'Line 03', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501002303', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(169, '11', '5', 'Line 03', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501002303', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(170, '12', '5', 'Line 03', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501002303', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(171, '13', '5', 'Line 03', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501002303', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(172, '14', '5', 'Line 03', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501002303', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(173, '7', '3', 'Line 04', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500061302', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(174, '8', '3', 'Line 04', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500061302', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(175, '9', '4', 'Line 04', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500061302', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(176, '10', '4', 'Line 04', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500061302', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(177, '11', '5', 'Line 04', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500061302', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(178, '12', '5', 'Line 04', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500061302', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(179, '13', '5', 'Line 04', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500061302', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(180, '14', '5', 'Line 04', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500061302', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(181, '7', '3', 'Line 05', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500058456', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(182, '8', '3', 'Line 05', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500058456', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(183, '9', '4', 'Line 05', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500058456', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(184, '10', '4', 'Line 05', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500058456', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(185, '11', '5', 'Line 05', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500058456', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(186, '12', '5', 'Line 05', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500058456', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(187, '13', '5', 'Line 05', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500058456', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(188, '14', '5', 'Line 05', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500058456', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(189, '7', '3', 'Line 06', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501003939', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(190, '8', '3', 'Line 06', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501003939', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(191, '9', '4', 'Line 06', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501003939', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(192, '10', '4', 'Line 06', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501003939', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(193, '11', '5', 'Line 06', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501003939', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(194, '12', '5', 'Line 06', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501003939', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(195, '13', '5', 'Line 06', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501003939', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(196, '14', '5', 'Line 06', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501003939', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(197, '7', '3', 'Line 07', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501003922', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(198, '8', '3', 'Line 07', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501003922', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(199, '9', '4', 'Line 07', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501003922', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(200, '10', '4', 'Line 07', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501003922', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(201, '11', '5', 'Line 07', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501003922', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(202, '12', '5', 'Line 07', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501003922', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(203, '13', '5', 'Line 07', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501003922', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(204, '14', '5', 'Line 07', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501003922', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(205, '7', '3', 'Line 08', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500063989', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(206, '8', '3', 'Line 08', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500063989', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(207, '9', '4', 'Line 08', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500063989', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(208, '10', '4', 'Line 08', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500063989', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(209, '11', '5', 'Line 08', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500063989', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(210, '12', '5', 'Line 08', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500063989', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(211, '13', '5', 'Line 08', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500063989', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(212, '14', '5', 'Line 08', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500063989', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(213, '7', '3', 'Line 09', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500060786', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(214, '8', '3', 'Line 09', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500060786', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(215, '9', '4', 'Line 09', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500060786', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(216, '10', '4', 'Line 09', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500060786', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(217, '11', '5', 'Line 09', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500060786', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(218, '12', '5', 'Line 09', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500060786', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(219, '13', '5', 'Line 09', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500060786', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(220, '14', '5', 'Line 09', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500060786', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(221, '7', '3', 'Line 10', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500067753', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(222, '8', '3', 'Line 10', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500067753', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(223, '9', '4', 'Line 10', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500067753', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(224, '10', '4', 'Line 10', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500067753', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(225, '11', '5', 'Line 10', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500067753', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(226, '12', '5', 'Line 10', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500067753', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(227, '13', '5', 'Line 10', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500067753', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(228, '14', '5', 'Line 10', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500067753', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(229, '7', '3', 'Line 11', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500067734', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(230, '8', '3', 'Line 11', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500067734', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(231, '9', '4', 'Line 11', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500067734', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(232, '10', '4', 'Line 11', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500067734', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(233, '11', '5', 'Line 11', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500067734', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(234, '12', '5', 'Line 11', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500067734', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(235, '13', '5', 'Line 11', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500067734', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(236, '14', '5', 'Line 11', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500067734', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(237, '7', '3', 'Line 12', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501003940', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(238, '8', '3', 'Line 12', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501003940', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(239, '9', '4', 'Line 12', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501003940', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(240, '10', '4', 'Line 12', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501003940', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(241, '11', '5', 'Line 12', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501003940', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(242, '12', '5', 'Line 12', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501003940', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(243, '13', '5', 'Line 12', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501003940', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(244, '14', '5', 'Line 12', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501003940', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(245, '7', '3', 'Line 13', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500061308', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(246, '8', '3', 'Line 13', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500061308', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(247, '9', '4', 'Line 13', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500061308', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(248, '10', '4', 'Line 13', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500061308', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(249, '11', '5', 'Line 13', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500061308', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(250, '12', '5', 'Line 13', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500061308', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(251, '13', '5', 'Line 13', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500061308', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(252, '14', '5', 'Line 13', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500061308', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(253, '7', '3', 'Line 14', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500061301', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(254, '8', '3', 'Line 14', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500061301', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(255, '9', '4', 'Line 14', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500061301', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(256, '10', '4', 'Line 14', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500061301', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(257, '11', '5', 'Line 14', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500061301', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(258, '12', '5', 'Line 14', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500061301', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(259, '13', '5', 'Line 14', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500061301', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(260, '14', '5', 'Line 14', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500061301', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(261, '7', '3', 'Line 15', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500053327', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(262, '8', '3', 'Line 15', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500053327', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(263, '9', '4', 'Line 15', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500053327', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(264, '10', '4', 'Line 15', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500053327', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(265, '11', '5', 'Line 15', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500053327', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(266, '12', '5', 'Line 15', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500053327', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(267, '13', '5', 'Line 15', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500053327', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(268, '14', '5', 'Line 15', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500053327', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(269, '7', '3', 'Line 16', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500058461', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(270, '8', '3', 'Line 16', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500058461', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(271, '9', '4', 'Line 16', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500058461', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(272, '10', '4', 'Line 16', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500058461', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(273, '11', '5', 'Line 16', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500058461', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(274, '12', '5', 'Line 16', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500058461', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(275, '13', '5', 'Line 16', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500058461', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(276, '14', '5', 'Line 16', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500058461', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(279, '9', '4', 'Line 01', 'F731 Main', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005053', 'User', 'Completed', '', 'EQM', '2024-11-01', '2024-11-01 09:09:31', '2024-11-01'),
(280, '10', '4', 'Line 01', 'X906', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005053', 'User', 'Completed', '', 'EQM', '2024-11-01', '2024-11-01 09:11:19', '2024-11-01'),
(281, '11', '5', 'Line 01', 'A305J', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005053', 'User', 'Completed', '', 'EQM', '2024-11-01', '2024-11-01 09:13:25', '2024-11-01');
INSERT INTO `checklist_result` (`id`, `ID_item_checklist`, `ID_checklist`, `Locations`, `Model`, `Machine`, `item_checklist`, `Khung_check`, `Shift`, `Code_machine`, `Status`, `Check_status`, `Remark`, `PIC_check`, `Date_check`, `created_at`, `updated_at`) VALUES
(282, '12', '5', 'Line 01', 'S928', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005053', 'User', 'Completed', '', 'EQM', '2024-11-01', '2024-11-01 09:14:52', '2024-11-01'),
(283, '13', '5', 'Line 01', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005053', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(284, '14', '5', 'Line 01', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005053', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(285, '7', '3', 'Line 02', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501000722', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(286, '8', '3', 'Line 02', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501000722', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(287, '9', '4', 'Line 02', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501000722', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(288, '10', '4', 'Line 02', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501000722', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(289, '11', '5', 'Line 02', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501000722', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(290, '12', '5', 'Line 02', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501000722', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(291, '13', '5', 'Line 02', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501000722', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(292, '14', '5', 'Line 02', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501000722', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(293, '7', '3', 'Line 03', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1500063992', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(294, '8', '3', 'Line 03', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1500063992', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(295, '9', '4', 'Line 03', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1500063992', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(296, '10', '4', 'Line 03', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1500063992', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(297, '11', '5', 'Line 03', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1500063992', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(298, '12', '5', 'Line 03', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1500063992', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(299, '13', '5', 'Line 03', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1500063992', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(300, '14', '5', 'Line 03', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1500063992', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(301, '7', '3', 'Line 04', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501002288', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(302, '8', '3', 'Line 04', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501002288', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(303, '9', '4', 'Line 04', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501002288', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(304, '10', '4', 'Line 04', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501002288', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(305, '11', '5', 'Line 04', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501002288', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(306, '12', '5', 'Line 04', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501002288', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(307, '13', '5', 'Line 04', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501002288', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(308, '14', '5', 'Line 04', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501002288', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(309, '7', '3', 'Line 05', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005056', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(310, '8', '3', 'Line 05', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005056', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(311, '9', '4', 'Line 05', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005056', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(312, '10', '4', 'Line 05', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005056', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(313, '11', '5', 'Line 05', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005056', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(314, '12', '5', 'Line 05', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005056', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(315, '13', '5', 'Line 05', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005056', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(316, '14', '5', 'Line 05', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005056', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(317, '7', '3', 'Line 06', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005054', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(318, '8', '3', 'Line 06', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005054', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(319, '9', '4', 'Line 06', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005054', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(320, '10', '4', 'Line 06', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005054', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(321, '11', '5', 'Line 06', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005054', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(322, '12', '5', 'Line 06', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005054', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(323, '13', '5', 'Line 06', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005054', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(324, '14', '5', 'Line 06', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005054', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(325, '7', '3', 'Line 07', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005057', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(326, '8', '3', 'Line 07', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005057', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(327, '9', '4', 'Line 07', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005057', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(328, '10', '4', 'Line 07', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005057', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(329, '11', '5', 'Line 07', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005057', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(330, '12', '5', 'Line 07', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005057', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(331, '13', '5', 'Line 07', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005057', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(332, '14', '5', 'Line 07', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005057', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(333, '7', '3', 'Line 08', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005038', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(334, '8', '3', 'Line 08', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005038', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(335, '9', '4', 'Line 08', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005038', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(336, '10', '4', 'Line 08', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005038', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(337, '11', '5', 'Line 08', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005038', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(338, '12', '5', 'Line 08', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005038', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(339, '13', '5', 'Line 08', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005038', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(340, '14', '5', 'Line 08', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005038', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(341, '7', '3', 'Line 09', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005045', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(342, '8', '3', 'Line 09', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005045', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(343, '9', '4', 'Line 09', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005045', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(344, '10', '4', 'Line 09', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005045', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(345, '11', '5', 'Line 09', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005045', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(346, '12', '5', 'Line 09', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005045', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(347, '13', '5', 'Line 09', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005045', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(348, '14', '5', 'Line 09', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005045', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(349, '7', '3', 'Line 10', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005060', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(350, '8', '3', 'Line 10', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005060', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(351, '9', '4', 'Line 10', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005060', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(352, '10', '4', 'Line 10', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005060', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(353, '11', '5', 'Line 10', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005060', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(354, '12', '5', 'Line 10', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005060', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(355, '13', '5', 'Line 10', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005060', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(356, '14', '5', 'Line 10', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005060', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(357, '7', '3', 'Line 11', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005033', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(358, '8', '3', 'Line 11', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005033', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(359, '9', '4', 'Line 11', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005033', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(360, '10', '4', 'Line 11', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005033', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(361, '11', '5', 'Line 11', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005033', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(362, '12', '5', 'Line 11', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005033', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(363, '13', '5', 'Line 11', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005033', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(364, '14', '5', 'Line 11', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005033', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(365, '7', '3', 'Line 12', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005027', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(366, '8', '3', 'Line 12', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005027', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(367, '9', '4', 'Line 12', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005027', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(368, '10', '4', 'Line 12', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005027', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(369, '11', '5', 'Line 12', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005027', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(370, '12', '5', 'Line 12', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005027', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(371, '13', '5', 'Line 12', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005027', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(372, '14', '5', 'Line 12', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005027', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(373, '7', '3', 'Line 13', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501003927', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(374, '8', '3', 'Line 13', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501003927', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(375, '9', '4', 'Line 13', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501003927', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(376, '10', '4', 'Line 13', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501003927', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(377, '11', '5', 'Line 13', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501003927', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(378, '12', '5', 'Line 13', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501003927', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(379, '13', '5', 'Line 13', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501003927', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(380, '14', '5', 'Line 13', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501003927', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(381, '7', '3', 'Line 14', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005028', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(382, '8', '3', 'Line 14', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005028', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(383, '9', '4', 'Line 14', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005028', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(384, '10', '4', 'Line 14', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005028', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(385, '11', '5', 'Line 14', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005028', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(386, '12', '5', 'Line 14', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005028', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(387, '13', '5', 'Line 14', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005028', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(388, '14', '5', 'Line 14', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005028', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(389, '7', '3', 'Line 15', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005039', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(390, '8', '3', 'Line 15', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005039', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(391, '9', '4', 'Line 15', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005039', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(392, '10', '4', 'Line 15', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005039', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(393, '11', '5', 'Line 15', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005039', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(394, '12', '5', 'Line 15', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005039', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(395, '13', '5', 'Line 15', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005039', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(396, '14', '5', 'Line 15', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005039', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(397, '7', '3', 'Line 16', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005032', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(398, '8', '3', 'Line 16', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005032', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(399, '9', '4', 'Line 16', '---', 'Máy WLT', 'Check Master Sample ', 'Ca ngày', 'Ca ngày', '1501005032', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(400, '10', '4', 'Line 16', '---', 'Máy WLT', 'Check Master Sample ', 'Ca đêm', 'Ca đêm', '1501005032', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(401, '11', '5', 'Line 16', '---', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005032', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(402, '12', '5', 'Line 16', '---', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005032', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(403, '13', '5', 'Line 16', '---', 'Máy WLT', 'Vacuum JIG', '20h-0h', 'Ca đêm', '1501005032', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(404, '14', '5', 'Line 16', '---', 'Máy WLT', 'Vacuum JIG', '1h-8h', 'Ca đêm', '1501005032', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:17', '2024-11-01'),
(405, '1', '1', 'Line 05', '---', 'Máy DMC', 'Check đầu ca', 'Ca ngày', 'Ca ngày', '1500057723', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 00:25:45', '2024-11-01'),
(406, '7', '3', 'Line 01', '---', 'Máy WLT', 'WLT', 'Ca ngày', 'Ca ngày', '1501005053', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 02:13:07', '2024-11-01'),
(407, '8', '3', 'Line 01', '---', 'Máy WLT', 'WLT', 'Ca đêm', 'Ca đêm', '1501005053', 'User', 'Pending', '', 'EQM', '2024-11-01', '2024-11-01 02:13:07', '2024-11-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `checklist_result_detail`
--

CREATE TABLE `checklist_result_detail` (
  `id` int(11) NOT NULL,
  `ID_checklist_result` text DEFAULT NULL,
  `Locations` text DEFAULT NULL,
  `Model` text DEFAULT NULL,
  `ID_item_checklist` text DEFAULT NULL,
  `Machine` text DEFAULT NULL,
  `item_checklist` text DEFAULT NULL,
  `Khung_check` text DEFAULT NULL,
  `Shift` text DEFAULT NULL,
  `Code_machine` text DEFAULT NULL,
  `Hang_muc` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Check_status` text DEFAULT NULL,
  `Remark` text DEFAULT NULL,
  `Date_check` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `checklist_result_detail`
--

INSERT INTO `checklist_result_detail` (`id`, `ID_checklist_result`, `Locations`, `Model`, `ID_item_checklist`, `Machine`, `item_checklist`, `Khung_check`, `Shift`, `Code_machine`, `Hang_muc`, `Status`, `Check_status`, `Remark`, `Date_check`, `created_at`, `updated_at`) VALUES
(3, '295', 'Line 01', 'F731 Sub', '1', 'Máy WLT', 'Check Master Sample', 'Ca ngày', 'Ca ngày', '1500063992', NULL, NULL, 'NG', NULL, '2024-11-01', '2024-10-31 21:17:33', '2024-11-01 04:17:33'),
(4, '295', 'Line 01', 'F731 Sub', '1', 'Máy WLT', 'Check Master Sample', 'Ca ngày', 'Ca ngày', '1500063992', NULL, NULL, 'OK', NULL, '2024-11-01', '2024-10-31 21:17:33', '2024-11-01 04:17:33'),
(44, '279', 'Line 01', 'F731 Main', '1', 'Máy WLT', 'Check Master Sample', 'Ca ngày', 'Ca ngày', '1501005053', 'Đặt Set chuẩn  Master Sample OK  vào Jig kiểm tra xem thử có hoạt động hay không (Kiểm tra có bị nước hay không)', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:09:31', '2024-11-01 09:09:31'),
(45, '279', 'Line 01', 'F731 Main', '1', 'Máy WLT', 'Check Master Sample', 'Ca ngày', 'Ca ngày', '1501005053', 'Đặt Set chuẩn  Master Sample  NG vào Jig kiểm tra xem thử có hoạt động hay không (Kiểm tra có bị nước hay không)', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:09:31', '2024-11-01 09:09:31'),
(46, '280', 'Line 01', 'X906', '1', 'Máy WLT', 'Check Master Sample', 'Ca đêm', 'Ca đêm', '1501005053', 'Đặt Set chuẩn  Master Sample OK  vào Jig kiểm tra xem thử có hoạt động hay không (Kiểm tra có bị nước hay không)', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:11:19', '2024-11-01 09:11:19'),
(47, '280', 'Line 01', 'X906', '1', 'Máy WLT', 'Check Master Sample', 'Ca đêm', 'Ca đêm', '1501005053', 'Đặt Set chuẩn  Master Sample  NG vào Jig kiểm tra xem thử có hoạt động hay không (Kiểm tra có bị nước hay không)', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:11:19', '2024-11-01 09:11:19'),
(48, '281', 'Line 01', 'A305J', '1', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005053', 'Kiểm tra tình trạng làm sạch giá đỡ Vacuum JIG .\r\n- Kiểm tra Jig đúng model name', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:13:25', '2024-11-01 09:13:25'),
(49, '281', 'Line 01', 'A305J', '1', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005053', 'Lực hút (Air Presure): ………………………...Mpa', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:13:25', '2024-11-01 09:13:25'),
(50, '281', 'Line 01', 'A305J', '1', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005053', 'Thời gian hút (Suction Time):…………………...Sec', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:13:25', '2024-11-01 09:13:25'),
(51, '281', 'Line 01', 'A305J', '1', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005053', 'Máng nước của Vacuum JIG có đựng đầy nước không?\r\n - Đổ nước để máng nước không bị đầy nước', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:13:25', '2024-11-01 09:13:25'),
(52, '281', 'Line 01', 'A305J', '1', 'Máy WLT', 'Vacuum JIG', '8h-12h', 'Ca ngày', '1501005053', 'Người Thiết bị Kiểm tra', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:13:25', '2024-11-01 09:13:25'),
(53, '282', 'Line 01', 'S928', '1', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005053', 'Kiểm tra tình trạng làm sạch giá đỡ Vacuum JIG .\r\n- Kiểm tra Jig đúng model name', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:14:52', '2024-11-01 09:14:52'),
(54, '282', 'Line 01', 'S928', '1', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005053', 'Lực hút (Air Presure): ………………………...Mpa', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:14:52', '2024-11-01 09:14:52'),
(55, '282', 'Line 01', 'S928', '1', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005053', 'Thời gian hút (Suction Time):…………………...Sec', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:14:52', '2024-11-01 09:14:52'),
(56, '282', 'Line 01', 'S928', '1', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005053', 'Máng nước của Vacuum JIG có đựng đầy nước không?\r\n - Đổ nước để máng nước không bị đầy nước', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:14:52', '2024-11-01 09:14:52'),
(57, '282', 'Line 01', 'S928', '1', 'Máy WLT', 'Vacuum JIG', '13-20h', 'Ca ngày', '1501005053', 'Người Thiết bị Kiểm tra', NULL, 'OK', NULL, '2024-11-01', '2024-11-01 02:14:52', '2024-11-01 09:14:52');

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
  `Locations` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Remark` text DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `machine_list`
--

INSERT INTO `machine_list` (`id`, `ID_machine`, `Machine`, `Code_machine`, `Locations`, `Status`, `Remark`, `updated_at`, `created_at`) VALUES
(1, '1', 'Máy laser', '1501002597', 'Line 01', 'User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(2, '1', 'Máy laser', '1501001527', 'Line 02', 'User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(3, '1', 'Máy laser', '1501004624', 'Kho EQM', 'Not User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(4, '1', 'Máy laser', '1501001528', 'Line 01', 'User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(5, '1', 'Máy laser', '1501001526', 'Line 02', 'Not User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(6, '1', 'Máy laser', '1501004618', 'Kho EQM', 'Not User', '', '2024-10-22 03:38:38', '2024-10-21 20:38:38'),
(7, '1', 'Máy laser', '1501002749', 'Line 02', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(8, '1', 'Máy laser', '1501005476', 'Line 01', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(9, '1', 'Máy laser', '1501005478', 'Line 02', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(10, '1', 'Máy laser', '1501005477', 'Line 03', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(11, '1', 'Máy laser', '1501005479', 'Line 04', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(12, '2', 'Máy DMC', '1500057723', 'Line 05', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(13, '2', 'Máy DMC', '1500054511', 'Line 06', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(14, '2', 'Máy DMC', '1500057803', 'Line 07', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(15, '2', 'Máy DMC', '1500054092', 'Line 08', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(16, '2', 'Máy DMC', '1501003353', 'Line 09', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(17, '2', 'Máy DMC', '1500054910', 'Line 10', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(18, '2', 'Máy DMC', '1500057830', 'Line 11', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(19, '2', 'Máy DMC', '1500054111', 'Line 12', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(20, '2', 'Máy DMC', '1500057681', 'Line 13', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(21, '2', 'Máy DMC', '1500057697', 'Line 14', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(22, '2', 'Máy DMC', '1501003361', 'Line 15', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(23, '2', 'Máy DMC', '1500054070', 'Line 16', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(24, '2', 'Máy DMC', '1500054898', 'Line 01', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(25, '2', 'Máy DMC', '1500058614', 'Line 02', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(26, '2', 'Máy DMC', '1501003331', 'Line 03', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(27, '2', 'Máy DMC', '1501003347', 'Line 04', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(28, '2', 'Máy DMC', '1500057773', 'Line 05', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(29, '2', 'Máy DMC', '1501004196', 'Line 06', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(30, '2', 'Máy DMC', '1500051573', 'Line 07', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(31, '2', 'Máy DMC', '1501001938', 'Line 08', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(32, '2', 'Máy DMC', '1501003354', 'Line 09', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(33, '2', 'Máy DMC', '1501003351', 'Line 10', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(34, '2', 'Máy DMC', '1500054913', 'Line 11', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(35, '2', 'Máy DMC', '1500054087', 'Line 12', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(36, '2', 'Máy DMC', '1500054615', 'Line 13', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(37, '2', 'Máy DMC', '1501001920', 'Line 14', 'Not User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(38, '3', 'Máy vison', '1500048996', 'Line 15', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(39, '3', 'Máy vison', '1500048991', 'Line 16', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(40, '3', 'Máy vison', '1500027512', 'Line 01', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(41, '3', 'Máy vison', '1500060082', 'Line 02', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(42, '3', 'Máy vison', '1500060080', 'Line 03', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(43, '3', 'Máy vison', '1500048998', 'Line 04', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(44, '3', 'Máy vison', '1520007992', 'Line 05', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(45, '3', 'Máy vison', '1500028358', 'Line 06', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(46, '4', 'Máy vinyl', '1500056769', 'Line 07', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(47, '4', 'Máy vinyl', '1500063022', 'Line 08', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(48, '4', 'Máy vinyl', '1500060846', 'Line 09', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(49, '4', 'Máy vinyl', '1500060844', 'Line 10', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(50, '4', 'Máy vinyl', '1500054839', 'Line 11', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(51, '4', 'Máy vinyl', '1500056756', 'Line 12', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(52, '4', 'Máy vinyl', '1500058156', 'Line 13', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(53, '4', 'Máy vinyl', '1500058153', 'Line 14', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(54, '4', 'Máy vinyl', '1500058166', 'Line 15', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(55, '4', 'Máy vinyl', '1501002506', 'Line 16', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(56, '4', 'Máy vinyl', '1500058181', 'Line 01', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(57, '4', 'Máy vinyl', '1500058193', 'Line 02', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(58, '4', 'Máy vinyl', '1500058170', 'Line 03', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(59, '4', 'Máy vinyl', '1500054801', 'Line 04', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(60, '4', 'Máy vinyl', '1500058157', 'Line 05', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(61, '4', 'Máy vinyl', '1500063026', 'Line 06', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(62, '4', 'Máy vinyl', '1500058182', 'Line 07', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(63, '4', 'Máy vinyl', '1500056758', 'Line 08', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(64, '4', 'Máy vinyl', '1501002496', 'Line 09', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(65, '4', 'Máy vinyl', '1500058191', 'Line 10', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(66, '4', 'Máy vinyl', '1500058125', 'Line 11', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(67, '4', 'Máy vinyl', '1500058187', 'Line 12', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(68, '4', 'Máy vinyl', '1500063320', 'Line 13', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(69, '4', 'Máy vinyl', '1500058188', 'Line 14', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(70, '4', 'Máy vinyl', '1500054836', 'Line 15', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(71, '4', 'Máy vinyl', '1500060799', 'Line 16', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(72, '4', 'Máy vinyl', '1500054803', 'Line 01', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(73, '5', 'Máy WLT', '1500058457', 'Line 02', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(74, '5', 'Máy WLT', '1501002303', 'Line 03', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(75, '5', 'Máy WLT', '1500061302', 'Line 04', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(76, '5', 'Máy WLT', '1500058456', 'Line 05', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(77, '5', 'Máy WLT', '1501003939', 'Line 06', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(78, '5', 'Máy WLT', '1501003922', 'Line 07', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(79, '5', 'Máy WLT', '1500063989', 'Line 08', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(80, '5', 'Máy WLT', '1500060786', 'Line 09', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(81, '5', 'Máy WLT', '1500067753', 'Line 10', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(82, '5', 'Máy WLT', '1500067734', 'Line 11', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(83, '5', 'Máy WLT', '1501003940', 'Line 12', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(84, '5', 'Máy WLT', '1500061308', 'Line 13', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(85, '5', 'Máy WLT', '1500061301', 'Line 14', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(86, '5', 'Máy WLT', '1500053327', 'Line 15', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(87, '5', 'Máy WLT', '1500058461', 'Line 16', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(88, '5', 'Máy WLT', '1501005053', 'Line 01', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(89, '5', 'Máy WLT', '1501000722', 'Line 02', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(90, '5', 'Máy WLT', '1500063992', 'Line 03', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(91, '5', 'Máy WLT', '1501002288', 'Line 04', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(92, '5', 'Máy WLT', '1501005056', 'Line 05', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(93, '5', 'Máy WLT', '1501005054', 'Line 06', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(94, '5', 'Máy WLT', '1501005057', 'Line 07', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(95, '5', 'Máy WLT', '1501005038', 'Line 08', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(96, '5', 'Máy WLT', '1501005045', 'Line 09', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(97, '5', 'Máy WLT', '1501005060', 'Line 10', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(98, '5', 'Máy WLT', '1501005033', 'Line 11', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(99, '5', 'Máy WLT', '1501005027', 'Line 12', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(100, '5', 'Máy WLT', '1501003927', 'Line 13', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(101, '5', 'Máy WLT', '1501005028', 'Line 14', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(102, '5', 'Máy WLT', '1501005039', 'Line 15', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04'),
(103, '5', 'Máy WLT', '1501005032', 'Line 16', 'User', '', '2024-11-01 03:37:04', '2024-11-01 03:37:04');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT cho bảng `checklist_result_detail`
--
ALTER TABLE `checklist_result_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
