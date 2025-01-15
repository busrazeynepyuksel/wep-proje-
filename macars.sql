-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Ara 2024, 19:52:59
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `macars`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araclar`
--

CREATE TABLE `araclar` (
  `id` int(11) NOT NULL,
  `arac_modeli` varchar(100) NOT NULL,
  `yıllı` varchar(100) NOT NULL,
  `kilometre` varchar(100) NOT NULL,
  `günlük_fiyat` varchar(100) NOT NULL,
  `haftalık_fiyat` varchar(100) NOT NULL,
  `aylık_fiyat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `araclar`
--

INSERT INTO `araclar` (`id`, `arac_modeli`, `yıllı`, `kilometre`, `günlük_fiyat`, `haftalık_fiyat`, `aylık_fiyat`) VALUES
(1, 'Fiat Egea Sedan', '2021', '150', '1300', '8000', '28000'),
(2, 'Ford Focus Sedan', '2020', '150', '1800', '12000', '35000'),
(3, 'Fiat Fiorino', '2023', '150', '1500', '12000', '30000'),
(4, 'Renault Megan Sedan', '2020', '150', '2300', '14000', '35000'),
(5, 'Volkswagen Passat 2.0 TDİ 4x4', '2020', '150', '4000', '25000', '90000'),
(6, 'Mercedes Vito VİP', '2018', '150', '4000', '25000', '90000'),
(7, 'Volkswagen Passat 1.6 TDİ', '2020', '150', '3000', '20000', '70000'),
(8, 'Mitsubishi L200 Pick-up 4x4', '2020', '150', '3500', '22000', '60000'),
(9, 'Toyota Hilux Pick-up 4x4', '2020', '150', '3000', '20000', '55000'),
(10, 'Hyundai Tucson', '2022', '200', '2500', '15000', '45000'),
(11, 'Kia Sportage', '2021', '200', '2400', '14500', '44000'),
(12, 'Nissan Qashqai', '2022', '200', '2600', '16000', '47000'),
(13, 'BMW 3 Series', '2019', '150', '4500', '27000', '85000'),
(14, 'Audi A4', '2019', '150', '4300', '26000', '82000');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `ad` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mesaj` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `araclar`
--
ALTER TABLE `araclar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `araclar`
--
ALTER TABLE `araclar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
