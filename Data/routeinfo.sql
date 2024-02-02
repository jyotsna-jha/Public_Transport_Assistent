-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 18, 2024 at 07:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PROJECT_MAP_API`
--

-- --------------------------------------------------------

--
-- Table structure for table `RoutePlot_APP_routeinfo`
--

CREATE TABLE `RoutePlot_APP_routeinfo` (
  `id` bigint(20) NOT NULL,
  `route_id` bigint(20) NOT NULL,
  `route_english_name` varchar(250) NOT NULL,
  `route_nepali_name` varchar(250) NOT NULL,
  `start` varchar(50) NOT NULL,
  `end` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `RoutePlot_APP_routeinfo`
--

INSERT INTO `RoutePlot_APP_routeinfo` (`route_id`, `route_english_name`, `route_nepali_name`, `start`, `end`) VALUES
(4, 'Lagankhel-jwalakhel-Thapathali-Ratnapark-Jamal-Lainchaur-Narayan Gopal Chok-Budanilkantha', 'लगनखेल-जावलाखेल-थापाथली-रत्नपार्क-जमल-लैनचौर-नारायणगोपाल चोक-बुढानिलकण्ठ', 'लगनखेल', 'बुढानिलकण्ठ'),
(5, 'Lagankhel-jwalakhel-Thapathali-Tripureshwor-Jamal-Narayan Gopal Chok-Naya buspark', 'लगनखेल-जावलाखेल-थापाथली-त्रिपुरेश्वर-जमल-नारायणगोपाल चोक-नया बसपार्क', 'नया बसपार्क', 'लगनखेल'),
(7, 'Jamal-Maitighar-Kupandole-Jwalakhel-Lagankhel', 'जमल-माइतीघर-कुपन्डोल-जावलाखेल-लगनखेल', 'जमल', 'लगनखेल'),
(8, 'Purano Buspark-Tripureshwor-Balkhu-Panga Dobato-Panga Buspark', 'पुरानो बसपार्क-त्रिपुरेश्वर-बल्खु-पाँगा दोबाटो-पाँगा बसपार्क', 'पुरानो बसपार्क', 'पाँगा बसपार्क'),
(9, 'Ratnapark-Maitighar-Tinkune-Gairigaun-Airport', 'रत्नपार्क-माइतीघर-तिनकुने-गैरीगाउँ-एयरपोर्ट', 'रत्नपार्क', 'एयरपोर्ट'),
(10, 'Sanepa-Balkhu-Kalimati-Tripureshwor-Ratnapark', 'सानेपा-बल्खु-कालिमाटी-त्रिपुरेश्वर-रत्नपार्क', 'सानेपा', 'रत्नपार्क'),
(11, 'Ratnapark-Jamal-Kamladi-Krishna Pauroti-Gaushala-Chabahil-Jorpati-Makalbari', 'रत्नपार्क-जमल-कमलादी- कृष्णपाउरोटी-गौशाला-चाबहिल-जोरपाटी-माकलबारी', 'रत्नपार्क', 'माकलबारी'),
(12, 'Ratnapark-Jamal-Lainchaur-Narayan Gopal Chok-Budanilkantha', 'रत्नपार्क-जमल-लैनचौर-नारायणगोपाल चोक-बुढानिलकण्ठ', 'रत्नपार्क', 'बुढानिलकण्ठ'),
(13, 'Ratnapark-Ghantaghar-Kamladi-Krishna Pauroti-Gausala-Chabahil-Hayatt Regency-Jorpati-Narayantaar Cho', 'रत्नपार्क-घन्टाघर-कमलादी-कृष्ण पाउरोटी-गौशाला-चाबहिल-हायात रिजेन्सी-जोरपाटी-नारायणटार', 'रत्नपार्क', 'नारायणटार'),
(14, 'Purano Buspark-Jamal-Lainchaur-Samakhusi-Housing Chok', 'पुरानो बसपार्क-जमल-लैनचौर-सामाखुसी-हाउजिंग चोक', 'पुरानो बसपार्क', 'हाउजिंग चोक'),
(16, 'Purano Buspark-Tripureshwor-Thapathali-Maitighar-Koteshwor-Bhaktapur(Buspark)', 'पुरानो बसपार्क-त्रिपुरेश्वर-थापाथली-माइतीघर-कोटेश्वर-भक्तपुर(बसपार्क)', 'पुरानो बसपार्क', 'भक्तपुर बसपार्क '),
(18, 'Swyambhu-Naya Buspark-Chabahil-Balkhu-Kalanki-Swyambhu', 'स्वयम्भु-नया बसपार्क-चाबहिल-बल्खू-कलंकी-स्वयंभू', 'रिंग रोड ', 'रिंग रोड '),
(19, 'Ratnapark-Maitighar- Koteshwor- Sallaghari-Sanga', 'रत्नपार्क-माइतीघर-कोटेश्वर-सल्लाघारी-साँगा', 'रत्नपार्क', 'साँगा'),
(20, 'Old Buspark-Maitighar-Koteshwor-Saallaghari-Jagati-Banepa-Panauti', 'पुरानो बसपार्क-माइतीघर-कोटेश्वर-सल्लाघारी-जगाती-बनेपा-पनौती', 'पनौती', 'पुरानो बसपार्क'),
(21, 'Jamal-Old Buspark-Maitighar-Koteshwor-Saallaghari-Jagati-Banepa-Dhulikhel', 'पुरानो बसपार्क-माइतीघर-कोटेश्वर-सल्लाघारी-जगाती-बनेपा-धुलिखेल', 'धुलिखेल', 'जमल'),
(23, 'NAC-Maitighar-Tinkune-Koteshwor-Jadibuti-Kadaghari', 'एन.ए.सी.-माइतीघर-तिनकुने-कोटेश्वर-जडिबुटी-काँडाघारी', 'एन.ए.सी.', 'काँडाघारी'),
(24, 'Ratnapark-Maitighar-Kupandole-Jwalakhel-Lagankhel', 'रत्नपार्क-माइतीघर-कुपन्डोल-जावलाखेल-लगनखेल', 'रत्नपार्क', 'लगनखेल'),
(25, 'Lagankhel-Satdobato- Hattiban-Godawari', 'लगनखेल-सातदोबाटो-हत्तिबन-गोदावरी', 'लगनखेल', 'गोदावरी'),
(30, 'Lagankhel-Satdobato-Gwarkho-Sanagaun-Lubhoo', 'लगनखेल-सातदोबाटो-ग्वार्खो-सानागाउँ-लुभु', 'लुभू', 'लगनखेल'),
(33, 'Lagankhel-Satdobato-Gwarkho-Sanagaun-Lubhoo-Lamatar', 'लगनखेल-सातदोबाटो-ग्वार्खो-सानागाउँ-लुभु-लामाटार', 'लगनखेल', 'लामाटार'),
(34, 'Lagankhel-Satdobato-Gwarkho-Sanagaun-Lubhoo-Lamatar-Dhungen', 'लगनखेल-सातदोबाटो-ग्वार्खो-सानागाउँ-लुभु-लामाटार-ढुंगेन', 'ढुंगेन', 'लगनखेल'),
(36, 'Lagankhel-Satdobato-Gwarkho-Sanagaun-Lubhoo-Aarubot-Tinchal Chok', 'लगनखेल-सातदोबाटो-ग्वार्खो-सानागाउँ-लुभु-आरुबोट-तीनचल चोक', 'लगनखेल', 'तिनचल चोक'),
(41, 'Lagankhel-Satdobato-Hattiban-Thaiba-Badikhel Buspark', 'लगनखेल-सातदोबाटो-हत्तिबन-ठैब-बडिखेल बसपार्क', 'लगनखेल', 'बडिखेल बसपार्क'),
(42, 'Lagankhel-Satdobato-Gwarkho-Rata Makai Chok-Dhunge Saanghu-Changathali', 'लगनखेल-सातदोबाटो-ग्वार्खो-रातामकै चोक-ढुंगे साँघु-चांगाथाली', 'चांगाथली', 'लगनखेल'),
(43, 'Lagankhel-Satdobato-Gwarkho-siddhipur-buddhapokhari-naya basti', 'लगनखेल-सातदोबाटो-ग्वार्खो-सिद्धिपुर-बुद्धपोखरी-नया बस्ति', 'लगनखेल', 'नयाबस्ती'),
(44, 'Lagankhel-Satdobato-Gwarkho-Sanagaun-Bishundol-Shankhadevi-Dharachaur', 'लगनखेल-सातदोबाटो-ग्वार्खो-सानागाउँ-बिशुन्डोल-शंखादेवी-धाराचौर', 'लगनखेल', 'धाराचौर'),
(45, 'Lagankhel-Jawalakhel-Khokana Dobato-Chhampi', 'लगनखेल-जावलाखेल-खोकना दोबाटो-छम्पी', 'लगनखेल', 'छम्पी'),
(46, 'Lagankhel-Jawalakhel-Nakkhu-Bungmati', 'लगनखेल-जावलाखेल-नक्खु-बुन्गमति', 'बुंगमती ', 'लगनखेल'),
(48, 'Lagankhel-Jwalakhel- Thapathali-Tripureshwor-Jamal-Lazimpat-Narayangopal Chok-Naya Buspark', 'लगनखेल-जावलाखेल-थापाथली-त्रिपुरेश्वर-जमल-लाजिम्पाट-नारायण गोपाल चोक-नया बसपार्क', 'लगनखेल', 'नया बसपार्क'),
(49, 'Lagankhel-mahalaxmisthan-Kalanki-Naya Buspark ', 'लगनखेल-महालक्ष्मीस्थान-कलंकी-नया बसपार्क', 'नया बसपार्क', 'लगनखेल'),
(50, 'Ratnapark-Maitighar-Kupandole-Jwalakhel-Lagankhel-Satdobato-Chapagaun Dobato-Tutepani--Nakhipot', 'रत्नपार्क-माइतीघर-कुपन्डोल-जावलाखेल-लगनखेल-सातदोबाटो-चापागाउँ दोबाटो-टुटेपानी-नखिपोट', 'रत्नपार्क', 'नक्खिपोट'),
(51, 'Nakhipot-Tikhedebal chok-Mahalaxmisthan-Lagankhel-Jwalakhel--Maitighar-Sahid Gate-Ratnapark', 'नखिपोट-तिखेदेवल चोक-महालक्ष्मीस्थान-लगनखेल-जावलाखेल-माइतीघर-सहिद गेट-रत्नपार्क', 'रत्नपार्क', 'नखिपोट'),
(54, 'Thankot-Kalanki-Gongabu-Koteshwor-Bhaktapur-Dhulikhel-Panauti-Koteshwor-Khasibazar-Kalanki-Ring road', 'थानकोट-कलंकी-गोंगबु-कोटेश्वर-भक्तपुर-धुलिखेल-पनौती-कोटेश्वर-खसीबजार-कलंकी-रिंगरोड', 'थानकोट', 'रिंगरोड'),
(56, 'Jamal-Maitighar-Kupandole-Jwalakhel-Lagankhel-Satdobato-Chapagaun Dobato-Tutepani--Nakhipot', 'जमल-घन्टाघर-माइतीघर-कुपन्डोल-जावलाखेल-लगनखेल-सातदोबाटो-चापागाउँ दोबाटो-टुटेपानी-नखिपोट', 'जमल', 'नखिपोट'),
(57, 'Naakhipot-Tikhedebal chok-Mahalaxmisthan-Lagankhel-Jwalakhel--Maitighar-Sahid Gate-Ratnapark-Jamal', 'नखिपोट-तिखेदेवल चोक-महालक्ष्मीस्थान-लगनखेल-जावलाखेल-माइतीघर-सहिद गेट-जमल', 'नखिपोट', 'जमल'),
(59, 'Ratnapark-maitighar-Tinkune-Koteshwor-Gwarkho-Krishna Mandir-Imadol GA.BI.SA', 'रत्नपार्क-माइतीघर-तिनकुने-कोटेश्वर-ग्वार्खो-कृष्ण मन्दिर-इमाडोल गा.वि.स', 'रत्नपार्क', 'इमाडोल गा.वि.स'),
(61, 'Ratnapark-Ghantaghar-Kamladi-Krishna Pauroti-Gaushala-Chabahil-Jorpati-aryal gaaun', 'रत्नपार्क-घन्टाघर-कमलादी-कृष्णपाउरोटी-गौशाला-चाबहिल-जोरपाटी-अर्याल गाउँ', 'रत्नपार्क', 'अर्याल गाउँ'),
(63, 'Purano Buspark-Maitighar-Koteshwor-Kaushaltaar-Biruwa buspark', 'पुरानो बसपार्क-माइतीघर-कोटेश्वर-कौसलटार-बिरुवा बसपार्क', 'पुरानो बसपार्क', 'बिरुवा बसपार्क'),
(65, 'Purano Buspark-Tripureshwor-Kalimati-Balkhu-Panga Dobato-Maxxegaun', 'पुरानो बसपार्क- त्रिपुरेश्वर-कालिमाटी-बल्खु-पाँगा दोबाटो-मक्ष्क्षेगाउँ', 'मक्ष्क्षेगाउँ', 'पुरानो बसपार्क'),
(66, 'Purano Buspark-Maitighar-Tinkune-Chardobato-Naya Thimi', 'पुरानो बसपार्क-माइतीघर-कोटेश्वर-चारदोबाटो-नया ठिमी', 'पुरानो बसपार्क', 'नया ठिमी'),
(68, 'Purano Buspark-Ghantaghar-Kamladi-Krishna Pauroti-Gaushala-Chabahil-Jorpati-Tiwari Tole-Saankhu', 'पुरानो बसपार्क-घन्टाघर-कमलादी-कृष्ण पाउरोटी-गौशाला-चाबहिल-जोरपाटी-तिवारी टोल-साँखु', 'साँखु', 'पुरानो बसपार्क'),
(69, 'Purano Buspark-Ghantaghar-Kamladi-Krishna Pauroti-Gaushala-Chabahil-Jorpati Sano Bazar-Attarkhel-Sun', 'पुरानो बसपार्क-घन्टाघर-कमलादी-कृष्ण पाउरोटी-गौशाला-चाबहिल-जोरपाटी-सानो बजार-अत्तरखेल-सुन्दरीजल बसपार्क', 'पुरानो बसपार्क', 'सुन्दरीजल बसपार्क'),
(74, 'Bhrikutimandap-Jamal-lainchaur-Thamel-Balaju Chok-Sano Bypass-Tinpiple', 'भृकुटीमण्डप-जमल-लैनचौर-ठमेल-बालाजु चोक-सानो बाइपास-तिनपीप्ले', 'तिनपिप्ले', 'भृकुटीमण्डप'),
(75, 'Bhrikutimandap-Jamal-lainchaur-Thamel-Balaju Chok-Bypass', 'भृकुटीमण्डप-जमल-लैनचौर-ठमेल-बालाजु चोक-बाइपास', 'भृकुटीमण्डप', 'बाइपास'),
(77, 'Purano Buspark-Maitighar-Tinkune-Radhe Radhe', 'पुरानो बसपार्क-माइतीघर-तिनकुने-राधे राधे', 'राधे राधे', 'पुरानो बसपार्क'),
(78, 'Purano Buspark-Bishwobhasa Campus-Kamladi-Ratopul-Gausala-Chabahil-Jorpati-Tiwari Tole-N.E.C Buspark', 'पुरानो बसपार्क-विस्वभाषा क्याम्पस-कमलादी-कृष्ण पाउरोटी-ज्ञानेश्वर-रातोपुल-गौशाला-चाबहिल-हायात रिजेन्सी-जोरपाटी-तिवारी टोल-एन.इ.सी. बसपार्क', 'पुरानो बसपार्क', 'एन.इ.सी. बसपार्क'),
(80, 'Swyambhu-Kalanki-Tripureshwor-Ratnapark-Maitighar-Tinkune-Koteshwor-Suryabinayak', 'स्वयम्भु-कलंकी-त्रिपुरेश्वर-रत्नपार्क-माइतीघर-तिनकुने-कोटेश्वर-सुर्यविनायक', 'स्वयम्भू', 'सुर्यविनायक'),
(83, 'Ratnapark-Jamal-Kamladi-Maitidevi-Setopul-Gausala-Saraswatinagar-Durga Mandir', 'रत्नपार्क-जमल-घन्टाघर-कमलादी-कृष्ण पाउरोटी-मैतीदेवी-सेतो पुल-बत्तीसपुतली-गौशाला-सरस्वतिनगर-दुर्गामन्दिर', 'दुर्गामन्दिर', 'रत्नपार्क'),
(86, 'Ratnapark-Jamal-Durbarmarg-Naagpokhari-Naxal-BhatBhateni-Bhatkeko pul', 'रत्नपार्क-जमल-दरबारमार्ग-नागपोखरी-नक्साल-भाटभटेनी-भत्केको पुल', 'भत्केको पुल', 'रत्नपार्क'),
(91, 'Bagbazar Buspark-Maitighar-Tinkune-Koteshwor-Sainik aawasiya Bidhyalaya-Chaangu Buspark', 'बागबजार बसपार्क-माइतीघर-तिनकुने-कोटेश्वर-सैनिक आवासीय बिद्यालय-चाँगु बसपार्क', 'बागबजार बसपार्क', 'चाँगु बसपार्क'),
(92, 'Purano Buspark-Maitighar-Tinkune-Faidhoka-Nala Buspark', 'पुरानो बसपार्क-माइतीघर-तिनकुने-फैढोका-नाला बसपार्क', 'पुरानो बसपार्क', 'नाला बसपार्क'),
(93, 'Ratnapark-Jamal-Lainchaur-Thamel-Gongabu-Lamagaaun', 'रत्नपार्क-जमल-लैनचौर-ठमेल-गोंगबु-लामागाउँ', 'रत्नपार्क', 'लामागाउँ'),
(95, 'Ratnapark-Jamal-Lainchaur-Thamel-Gongabu-SuryaDarshan Height', 'रत्नपार्क-जमल-लैनचौर-ठमेल-गोंगबु-सुर्यदर्शन हाइट', 'रत्नपार्क ', 'सुर्यदर्शन हाइट'),
(96, 'Ratnapark-Maitighar-Jawalakhel-Nakkhu-Bungmati', 'रत्नपार्क-माइतीघर-जावलाखेल-नक्खु-बुन्गमति', 'रत्नपार्क', 'बुन्गमति'),
(98, 'Purano Buspark-Kamladi-Ratopul-Gausala-Chabahil-Tiwari Tole', 'पुरानो बसपार्क-विस्वभाषा क्याम्पस-कमलादी-कृष्ण पाउरोटी-ज्ञानेश्वर-रातोपुल-गौशाला-चाबहिल-हायात रिजेन्सी-जोरपाटी-तिवारी टोल-मिलनचोक-एन.इ.सी. बसपार्क', 'एन.इ.सी. बसपार्क', 'पुरानो बसपार्क'),
(103, 'Tinkune Gairigaun-Gausala-Chabahil-Narayan Gopal Chowk-Machhapokhari-Swyambhu', 'तिनकुने गैरीगाउ-गौशाला-चाबहिल-नारायणगोपाल चोक-माछापोखरी-स्वयम्भू', 'स्वयम्भू', 'तिनकुने'),
(107, 'Lagankhel-Satdobato-Hattiban-Harisiddhi Mod-Bahuna Chaur', 'लगनखेल-सातदोबाटो-हात्तिबन-हरिसिद्धी मोड-बाहुना चौर', 'लगनखेल', 'बाहुना चौर'),
(109, 'Lagankhel-Satdobato-Hattiban-Harisiddhi Mod-ganeshthan', 'लगनखेल-सातदोबाटो-हात्तिबन-हरिसिद्धी मोड-गणेशथान', 'लगनखेल', 'गणेशथान'),
(114, 'Purano Buspark-Kamladi-Ratopul-Gausala-Chabahil-Tiwari Tole-Gagalfedi', 'पुरानो बसपार्क-विश्वभाषा क्याम्पस-कमलादी-कृष्ण पाउरोटी-ज्ञानेश्वर-रातोपुल-गौशाला-चाबहिल-हायात रिजेन्सी-जोरपाटी-तिवारी टोल-पासिखेल-गागलफेदी', 'गागलफेदी', 'पुरानो बसपार्क'),
(117, 'Purano Buspark-Kamladi-Krishna Pauroti-Ratopul-Gausala-Chabahil-Gagalfedi', 'पुरानो बसपार्क-विश्वभाषा क्याम्पस-कमलादी-कृष्ण पाउरोटी-ज्ञानेश्वर-रातोपुल-गौशाला-चाबहिल-हायात रिजेन्सी-जोरपाटी-तिवारी टोल-तिर्थ चोक-ठूलाढीक-गागलफेदी', 'पुरानो बसपार्क', 'गागलफेदी'),
(118, 'Purano Buspark-Kamladi-Krishna Pauroti-Ratopul-Gausala-Chabahil-Tirtha chowk-Aaalapot', 'पुरानो बसपार्क-विश्वभाषा क्याम्पस-कमलादी-कृष्ण पाउरोटी-ज्ञानेश्वर-रातोपुल-गौशाला-चाबहिल-हायात रिजेन्सी-जोरपाटी-तिवारी टोल-तिर्थ चोक-आलापोट बसपार्क', 'आलापोट बसपार्क', 'पुरानो बसपार्क'),
(119, 'Naya Buspark-Narayan Gopal Chok-Chabahil-Airport-Tinkune-Koteshwor-Jadibuti-Pepsikola-Thimi-Dubakot ', 'नया बसपार्क-नारायणगोपाल चोक-चाबहिल-एयरपोर्ट-तिनकुने-कोटेश्वर-जडिबुटी-पेप्सीकोला-ठिमी-दुबाकोट मोड-दुधपाटि बसपार्क', 'नया बसपार्क', 'दुधपाटि बसपार्क'),
(120, 'NAC-Ratnapark-New Plaza-Anamnagar-Naya Baneshwor-MinBhawan-Deurali Footsall', 'एन.ए.सी.-रत्नपार्क-न्यु प्लाजा-अनामनगर-नया बानेश्वर-मिनभवन-देउराली फूटसल', 'एन.ए.सी', 'देउराली फूटसल'),
(124, 'BaghBazar Buspark-Bhrikutimandap-Maitighar-Tinkune-Koteshwor-Jadibuti-Dubakot Mod-Dudhpati Buspark', 'बागबजार बसपार्क-भृकुटीमण्डप-माइतीघर-तिनकुने-कोटेश्वर-जडिबुटी-दुवाकोट मोड-दुधपाटि बसपार्क', 'बागबजार बसपार्क', 'दुधपाटि बसपार्क'),
(127, 'Lagankhel-Satdobato-Dhapakhel-Naagdaha-Bajrabarahi  Uttar Gate', 'लगनखेल-सातदोबाटो-धापाखेल-नागदह-बज्रबाराही उत्तर गेट', 'लगनखेल', 'बज्रबाराही उत्तर गेट'),
(130, 'NAC-Jamal-Lainchaur-Thamel-Dhungedhara-Nursery Chok-Raniban', 'एन.ए.सी.-जमल-लैनचौर-ठमेल-ढुंगेधारा-नर्सरी चोक-रानीबन', 'एन.ए.सी.', 'रानीबन'),
(131, 'NAC-Jamal-Lainchaur-Thamel-Balaju Chok-Bypass-Jarankhu-Bhedigoth-Kavresthali Stop', 'एन.ए.सी.-जमल-लैनचौर-ठमेल-बालाजु चोक-बाइपास-जरंखु-भेडीगोठ-काभ्रेस्थली स्टप', 'काभ्रेस्थली स्टप', 'एन.ए.सी.'),
(138, 'Lagankhel-Mahalaxmisthan-Chapagaaun Dobato-Jyoti Bihar-Chapagaaun', 'लगनखेल-महालक्ष्मीस्थान-चापागाउँ दोबाटो-ज्योति बिहार-चापागाउँ', 'लगनखेल', 'चापागाउँ'),
(140, 'Purano Buspark-Campus Gate-Kamladi-Gyaneshwor-Ratopul-Gausala-Chabahil-Tiwari Tole-Bode', 'पुरानो बसपार्क-शंकरदेव क्याम्पस गेट-कमलादी-कृष्ण पाउरोटी-ज्ञानेश्वर-रातोपूल-गौशाला-चाबहिल-हायात रिजेन्सी-जोरपाटी-तिवारी टोल-बाबा चोक-बोडे चारदोबाटो बसपार्क', 'पुरानो बसपार्क', 'बोडे चारदोबाटो बसपार्क'),
(143, 'NAC-Jamal-Lainchaur-Thamel-Bhagwanpaau-Lamkhumki-Ramkot', 'एन.ए.सी.-जमल-लैनचौर-ठमेल-भगवानपाउ-लम्खुम्की-रामकोट', 'रामकोट', 'एन.ए.सी.'),
(144, 'NAC-Jamal-Lainchaur-Thamel-Bhagwanpaau-Hulak Ghar-Karkhana Chok', 'एन.ए.सी.-जमल-लैनचौर-ठमेल-भगवानपाउ-हुलाक घर-कारखाना चोक', 'एन.ए.सी.', 'कारखाना चोक'),
(145, 'NAC-Jamal-Lainchaur-Thamel-Bhagwanpaau', 'एन.ए.सी.-जमल-लैनचौर-ठमेल-भगवानपाउ', 'एन.ए.सी.', 'भगवानपाउ'),
(146, 'NAC-Ratnapark-Sahid Gate-Tripureshwor-Kalimati-Bafal Marga-Solti Dobato', 'एन.ए.सी.-रत्नपार्क-सहिद गेट-त्रिपुरेश्वर-कालिमाटी-बाफल मार्ग-सोल्टी दोबाटो', 'एन.ए.सी.', 'सोल्टी दोबाटो'),
(147, 'Nac-battisputaliNAC-Ratnapark-New Plaza-Anamnagar-Naya Baneshwor-Purano Baneshwor-battisputali', 'एन.ए.सी.-रत्नपार्क-न्यु प्लाजा-अनामनगर-नया बानेश्वर-पुरानो बानेश्वर-बत्तीसपुतली', 'एन.ए.सी.', 'बत्तीसपुतली'),
(148, 'Lagankhel-Jwalakhel-Thapathali-Tripureshwor-Kalimati-Dhalko', 'लगनखेल-जावलाखेल-थापाथली-त्रिपुरेश्वर-कालिमाटी-ढल्को', 'लगनखेल', 'ढल्को'),
(149, 'NAC-Jamal-Lainchaur-Thamel-Gongabu-Sehensa\r\n\r\n', 'एन.ए.सी.-जमल-लैनचौर-ठमेल-गोंगबु-सेहेंसा', 'एन.ए.सी.', 'सेहेंसा'),
(152, 'Baagbazar Buspark-Matighar-Naya Baneshwor-Tinkune-Koteshwor-Jadibuti-Purano Thimi-Bode Chardobato-Sa', 'बागबजार बसपार्क-माइतीघर-नया बानेश्वर-तिनकुने-कोटेश्वर-जडिबुटी-पुरानो ठिमी-बोडे चारदोबाटो-सरस्वतिखेल बसपार्क', 'बागबजार बसपार्क', 'सरस्वतिखेल बसपार्क'),
(154, 'NAC-Ratnapark-Sahid Gate-Tripureshwor-Kalimati-Sitapaila', 'एन.ए.सी.-रत्नपार्क-सहिद गेट-त्रिपुरेश्वर-कालिमाटी-सितापाइला', 'एन.ए.सी.', 'सितापाइला'),
(158, 'Purano Buspark-Maitighar-Naya Baneshwor-Tinkune-Koteshwor-Dubakot Mod-Gelal Gau-Dubakot Buspark', 'पुरानो बसपार्क-माइतीघर-नया बानेश्वर-तिनकुने-कोटेश्वर-दुवाकोट मोड-गेलाल गाउँ-दुवाकोट बसपार्क', 'पुरानो बसपार्क', 'दुवाकोट बसपार्क'),
(162, 'NAC-Ratnapark-New Plaza-Anamnagar-Naya Baneshwor-Purano Baneshwor-kattyaini', 'एन.ए.सी.-रत्नपार्क-न्यु प्लाजा-अनामनगर-नया बानेश्वर-पुरानो बानेश्वर-कात्याएनी चोक', 'कात्याएनी चोक', 'एन.ए.सी.'),
(163, 'Lagankhel-Satdobato-Balkhu-Kalanki\r\n', 'लगनखेल-सातदोबाटो-बल्खू-कलंकी', 'कलंकी', 'लगनखेल'),
(165, 'NAC-Jamal-Lainchaur-Narayan Gopal Chok-Basundhara-Greenland Station', 'एन.ए.सी-जमल-लैनचौर-नारायणगोपाल चोक-बसुन्धारा-ग्रीनल्यान्ड ', 'एन.ए.सी', 'ग्रीनल्यान्ड '),
(167, 'Lagankhel-Satdobato-Hattiban Oralo-Ghumti-Thaiba', 'लगनखेल-सातदोबाटो-हात्तिबन ओरालो-घुम्ती-ठैब', 'लगनखेल', 'ठैब'),
(168, 'Lagankhel-Satdobato-Hattiban Oralo-Ghumti-Thaiba-Badegaaun-Taukhel', 'लगनखेल-सातदोबाटो-हात्तिबन ओरालो-घुम्ती-ठैब-बाँडेगाउँ-टौखेल', 'टौखेल', 'लगनखेल'),
(169, 'NAC-Jamal-Kamladi-Krishna Pauroti-Maitidevi-Seto pul-Bhimsengola-KMC', 'एन.ए.सी-जमल-कमलादी-कृष्ण पाउरोटी-मैतीदेवी-सेतो पूल-भीमसेनगोला-के.एम.सी(सिनामंगल)', 'एन.ए.सी', 'के.एम.सी(सिनामंगल)'),
(170, 'Ratnapark-Sahid Gate-Tripureshwor-Kalimati-Soltimod-Kalanki', 'रत्नपार्क-सहिद गेट-त्रिपुरेश्वर-कालिमाटी-सोल्टीमोड-कलंकी', 'रत्नपार्क', 'कलंकी'),
(171, 'NAC-Ratnapark-Bhrikutimandap-Maitighar-Naya Baneshwor-Shankhamul Stop', 'एन.ए.सी-रत्नपार्क-भृकुटीमण्डप-माइतीघर-नया बानेश्वर-संखमुल स्टप', 'एन.ए.सी', 'संखमुल स्टप'),
(172, 'NAC-Ratnapark-New Plaza-Anamnagar-Naya Baneshwor-Purano Baneshwor', 'एन.ए.सी-रत्नपार्क-न्यु प्लाजा-अनामनगर-नया बानेश्वर-पुरानो बानेश्वर', 'एन.ए.सी', 'पुरानो बानेश्वर'),
(173, 'Purano Buspark-Sahid Gate-Tripureshwor-Kalimati-Balkhu-Chovar Gate-Farping-Dakshinkali Bus Stop', 'पुरानो बसपार्क-सहिद गेट-त्रिपुरेश्वर-कालिमाटी-बल्खु-चोभार गेट-फर्पिंग-दक्षिणकाली बस स्टप', 'पुरानो बसपार्क', 'दक्षिणकाली बस स्टप'),
(174, 'Sitapaiula Chok-Padma Colony-Ramkot School-Bhimdhunga Buspark', 'सितापाईला चोक-पदमा कोलोनी-रामकोट स्कुल-भिमढुंगा बसपार्क', 'सितापाईला चोक', 'भिमढुंगा बसपार्क'),
(175, 'Ratnapark-Sahid Gate-Tripureshwor-Kalimati-Kalanki-Gurjudhara-Saraswatithan Bus Stop(Thankot)', 'रत्नपार्क-सहिदगेट-त्रिपुरेश्वर-कालिमाटी-कलंकी-गुर्जुधारा-सरस्वतिथान बस स्टप(थानकोट)', 'रत्नपार्क', 'सरस्वतिथान बस स्टप(थानकोट)'),
(177, 'Ratnapark-Maitighar-Jawalakhel-Khokana Dobato-Chunikhel', 'रत्नपार्क-माइतीघर-जावलाखेल-खोकना दोबाटो-चुनिखेल', 'चुनिखेल', 'रत्नपार्क'),
(180, 'Naya Buspark-Kalanki-Tripureshwor-Jamal-Kamaladi-Gyaneshwor-Kalopul-Mitrapark-Gopikrishna-Akasedhara-Bhangal', 'नया बसपार्क-कलंकी-त्रिपुरेश्वर-जमल-कमलादी-ज्ञानेश्वर-सानो गौचरण-कालोपूल-मित्रपार्क-सरस्वतिनगर-आकासेधारा-भंगाल', 'नया बसपार्क', 'भंगाल'),
(182, 'Mangalbazar-Pulchok-Thapathali-Tripureshwor-Jamal-Durbarmarg-Naagpokhari-tangal-Baluwataar', 'मंगलबजार-पुल्चोक-थापाथली-त्रिपुरेश्वर-जमल-दरबारमार्ग-नागपोखरी-टंगाल-बालुवाटार', 'मंगलबजार', 'बालुवाटार'),
(183, 'NAC-Jamal-Lainchaur-Bishalnagar Chok-Kumari Mandir-Mandikhataar', 'एन.ए.सी.-जमल-लैनचौर-बिशालनगर चोक-कुमारी मन्दिर-मण्डीखाटार', 'एन.ए.सी.', 'मण्डीखाटार'),
(186, 'NAC-Jamal-Lainchaur-Thamel-Balaju-Bypass-Turning-Phutung Bus Station', 'एन.ए.सी.-जमल-लैनचौर-बालाजु चोक-बाइपास-टर्निंग-फुटुंग बसपार्क', 'फुटुंग बसपार्क', 'एन.ए.सी.'),
(189, 'NAC-Jamal-Lainchaur-Thamel-Balaju Chok-Nursery Chok-Raniban', 'एन.ए.सी.-जमल-लैनचौर-बालाजु चोक-नर्सरी चोक-रानीबन', 'रानीबन', 'एन.ए.सी.'),
(190, 'NAC-Jamal-Lainchaur-Thamel-Balaju-Bypass-Turning-Futung-Sangla Buspark', 'एन.ए.सी.-जमल-लैनचौर-बालाजु चोक-बाइपास-टर्निंग-फुटुंग-सांङ्गला बसपार्क', 'एन.ए.सी.', 'सांङ्गला बसपार्क'),
(191, 'NAC-Jamal-Lainchaur-Thamel-Balaju-Bypass-Asthanarayan Hall-Sunflower Chok-Basnetaar', 'एन.ए.सी.-जमल-लैनचौर-बालाजु चोक-बाइपास-अस्टनारायण हल-सनफ्लावर चोक-बस्नेतटार', 'बस्नेतटार', 'एन.ए.सी.'),
(193, 'NAC-Jamal-Lainchaur-Balaju Chok-Bypass-Jarankhu-Plotting-kavresthali Stop', 'एन.ए.सी.-जमल-लैनचौर-बालाजु चोक-बाइपास-जरंखु-प्लटिंग-काभ्रेस्थली', 'काभ्रेस्थली', '	\r\nएन.ए.सी.'),
(195, 'Gopikrishna-Talim Kendra-Baluwataar-Naxal-Nagpokhari-Kamladi-New Plaza-New baneshwor-Tinkune-Balkumari', 'गोपीकृष्ण-नारायणगोपाल चोक-तालिम केन्द्र-बालुवाटार-भाटभटेनी-नक्साल-नागपोखरी-कमलादी-न्यु प्लाजा-अनामनगर-नया बानेश्वर-तिनकुने-कोटेश्वर-बालकुमारी ', 'गोपीकृष्ण', 'बालकुमारी '),
(196, 'Purano Buspark-Ratnapark-Sahid Gate-Tripureshwor-Kalimati-Kalanki-Naikap', 'पुरानो बसपार्क-रत्नपार्क-सहिद गेट-त्रिपुरेश्वर-कालिमाटी-कलंकी-नैकाप', 'पुरानो बसपार्क', 'नैकाप'),
(198, 'Bhrikutimandap-Jamal-lainchaur-Thamel-Balaju Chok-Bypass-Dharmasthali', 'भृकुटीमण्डप-जमल-लैनचौर-ठमेल-बालाजु चोक-बाइपास-धर्मस्थली', 'धर्मस्थली', 'भृकुटीमण्डप'),
(200, 'Naya Buspark-Gongabu-Lainchaur-kamladi-Maitidevi-sinamangal-Maitidevi-Baagbazar-Bhadrakali-Jamal', 'नया बसपार्क-गोंगबु-लैनचौर-कमलादी-कृष्ण पाउरोटी भण्डार-मैतीदेवी-सिनामंगल-मैतीदेवी-बागबजार-भद्रकाली-जमल ', 'नया बसपार्क', 'जमल '),
(204, 'Swyambhu-Kalimati-Tripureshwor-Thapathali-Maitighar-Koteshwor-Panauti', 'स्वयम्भु-कालिमाटी-त्रिपुरेश्वर-थापाथली-माइतीघर-कोटेश्वर-पनौती', 'स्वयम्भु', 'पनौती'),
(207, 'New Buspark-Samakhusi-Kamaladi-Krishna pauroti-Sinamangal', 'नया बसपार्क-सामाखुसी-कमलादी-कृष्ण पाउरोटी-सिनामंगल', 'नया बसपार्क', 'सिनामंगल'),
(208, 'Naya Buspark-Chabahil-Koteshwor-panauti', 'नयाँ बस पार्क चबहिल कोटेश्वर पनौती ', 'नयाँ बस पार्क', 'पनौती'),
(209, 'Lamatar-Lubhoo-Imadol-Gwarkho-Satdobato-Lagankhel-Jawalakhel-Kupandole-Tripureshwor-NAC-Jamal-Lainchaur-Teaching Hospital-Narayangopal Chowk-Budanilkantha', 'लामाटार-लुभू-इमाडोल्-ग्वार्को-सातदोबाटो-लगनखेल्-जावलाखेल-कुपोन्डोल-तृपुरेश्वर-एन ए सि -लाईन्चौर्-सिक्ष्यण अस्पताल-नारायणगोपालचोक-बुढानिलकण्ठ ', '', ''),
(210, 'Thankot-Kalanki-Kalimati-Tripureshwor-Ratnapark-SinghaDarbar-Maitighar-Thapathali-Kupandole-Pulchok-Jawalakhel-Lagankhel', 'थानकोट-कलन्की-कालिमाटी-तृपुरेश्वर-रत्नपार्क-सिंह डरबार-माइतिघर-थापाथली-कुपोन्डोल -पुल्चोक-जावलाखेल-लगनखेल ', '', ''),
(211, 'Lamatar-Lubhoo-Imadol-Gwarkho-Lagankhel-Tripureshwor-NarayanGopalChowk-Naya Buspark', 'लामाटर-लुभू-इमदोल-ग्वर्खो-लगन्खेल-तृपुरेश्वर-नारायणगोपालचोक-नयाँ बसपार्क ', '', ''),
(212, 'Reserve', 'Reserve', '33', '33'),
(213, 'Maintenance', 'Maintenance', '', ''),
(214, 'Butwal-Belahiya', 'बुटवल-बेलहिया', '', ''),
(215, 'pepsicola ekantakuna ', 'पेप्सिकोला एकान्तकुना ', 'पेप्सिकोला ', 'एकान्तकुना'),
(216, 'annapurna yatayat', 'रिङ्गरोड अन्नपूर्ण यातायात सोभाभगवती ', 'सोभाभगवती', 'रिङ्गरोड');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `RoutePlot_APP_routeinfo`
--
ALTER TABLE `RoutePlot_APP_routeinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `RoutePlot_APP_routeinfo`
--
ALTER TABLE `RoutePlot_APP_routeinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
