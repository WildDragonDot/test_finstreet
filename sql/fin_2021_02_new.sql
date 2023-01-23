-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 25, 2022 at 01:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fin_2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `donate_eth`
--

CREATE TABLE `donate_eth` (
  `donate_id` int(200) NOT NULL,
  `donate_uid` varchar(200) NOT NULL,
  `donate_chain_network` varchar(200) NOT NULL,
  `txn_network_url` varchar(200) NOT NULL,
  `user_address_url` varchar(200) NOT NULL,
  `current_coin_symble` varchar(200) NOT NULL,
  `video_id` varchar(200) NOT NULL,
  `from_user_address` varchar(200) NOT NULL,
  `to_user_address` varchar(200) NOT NULL,
  `eth_price` varchar(200) NOT NULL,
  `transation_hash` varchar(200) NOT NULL,
  `from_ip` varchar(200) NOT NULL,
  `from_time` varchar(200) NOT NULL,
  `from_browser` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donate_eth`
--

INSERT INTO `donate_eth` (`donate_id`, `donate_uid`, `donate_chain_network`, `txn_network_url`, `user_address_url`, `current_coin_symble`, `video_id`, `from_user_address`, `to_user_address`, `eth_price`, `transation_hash`, `from_ip`, `from_time`, `from_browser`) VALUES
(1, '16081dd6-9827-4f73-ba12-45dfcf62bac1', '4', 'https://etherscan.io/tx/', 'https://etherscan.io/address/', 'ETH', 'fddb9130-e382-4058-a885-af9ceab9f2c0', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00058', '0x96ce128284ef5019e3c8499b3a2494ace6d57dab33ea411d6bb68f5ae79e91a2', '::1', '2022-08-25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(2, 'cb89113c-d657-43aa-84a7-f1f2f5aef720', '4', 'https://rinkeby.etherscan.io/tx/', 'https://rinkeby.etherscan.io/address/', 'MATIC', '47f5e19b-2d4a-42d5-baa9-576401469d95', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00058', '0x3944776a990d5b242382092a94fe31a5d3c8ea76a2d36ca96925f5a9a64d0028', '::1', '2022-08-25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(3, 'af9185b2-27b6-46fa-8fe1-24a9eca98783', '4', 'https://rinkeby.etherscan.io/tx/', 'https://rinkeby.etherscan.io/address/', 'ETH', '52ff0b28-0baa-4c32-9217-0752c5960b20', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00058', '0xca8f7e242d235f0e8ddf7c06c4448d4b9c0c94ce38aeead1cf5a7b4585ea237b', '::1', '2022-08-25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(4, '6a726fa3-94d0-4908-9929-e9adeea5843f', '4', 'https://rinkeby.etherscan.io/tx/', 'https://rinkeby.etherscan.io/address/', 'ETH', 'ac6cf51c-9ac8-4bd0-a6c8-3c1c01d0bb07', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00058', '0xb54c4a859b543bf253be7470bbb415cf83a9d803a6fa7f2ed402d1051c107c28', '::1', '2022-08-25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(5, 'd8d54ce7-9315-45b3-bfea-99585af600df', '4', 'https://rinkeby.etherscan.io/tx/', 'https://rinkeby.etherscan.io/address/', 'ETH', '7b9cb175-ae27-477c-b055-2d918bf7d45d', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00059', '0x5603eca74dc8f114c34b88c0658c5f12f7e65f12a38457a8377951fcbf3dfd07', '::1', '2022-08-25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(6, 'cfcb9a5a-8b46-4d1e-91dd-41dce6c4f03c', '4', 'https://rinkeby.etherscan.io/tx/', 'https://rinkeby.etherscan.io/address/', 'ETH', '9f43d4cc-62e6-46d1-ac2c-90b20b962609', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00059', '0xa49d1eced931ccd414b949c4533eba0326a325bf5091e720d1e56e52973e235c', '::1', '2022-08-25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(7, '86c36571-07c4-42ea-b856-90c94c15af62', '4', 'https://rinkeby.etherscan.io/tx/', 'https://rinkeby.etherscan.io/address/', 'ETH', 'bed1667b-4d80-4083-b028-f4a0934608f9', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00058', '0xb2cf28fdee513080ba5229d4ac205710f237e1e3790e6b700a8a0cf0d25e17a5', '::1', '2022-08-25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(8, 'd8f03a35-ea1d-4676-9415-bbe0a6f4cc5d', '4', 'https://rinkeby.etherscan.io/tx/', 'https://rinkeby.etherscan.io/address/', 'ETH', 'bed1667b-4d80-4083-b028-f4a0934608f9', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00058', '0x1c5c46b42d790b66e338f1a0691afb7e74c6f2202126025e53828cfd34b6e16a', '::1', '2022-08-25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(9, '677feeae-a464-460e-a994-a8ce0f8ffee6', '4', 'https://rinkeby.etherscan.io/tx/', 'https://rinkeby.etherscan.io/address/', 'ETH', '7b9cb175-ae27-477c-b055-2d918bf7d45d', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00058', '0xa16b1c87ba0f25a8656b5bff1186f7ce35f2098b0b3951c6c03c3fb1712f67cf', '::1', '2022-08-31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(10, 'a70f3eed-08eb-429a-9b25-d1393a08250d', '4', 'https://rinkeby.etherscan.io/tx/', 'https://rinkeby.etherscan.io/address/', 'ETH', '7b9cb175-ae27-477c-b055-2d918bf7d45d', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00060', '0x7ccdd1bef4df0f9c08bde4df075e0de27f96fe398025cfafc4b9a9790f6dcb94', '::1', '2022-09-01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(11, '306d0ad4-dd8d-4fde-ad01-be5fcf0bf1ee', '4', 'https://rinkeby.etherscan.io/tx/', 'https://rinkeby.etherscan.io/address/', 'ETH', 'fddb9130-e382-4058-a885-af9ceab9f2c0', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00065', '0x3cd3fade8049e7da4f2a7756abb2851ff88c73bbb186a68f428290198a05d5ea', '::1', '2022-09-01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(12, '65787f43-e812-47ba-a3c3-719a007702f9', '4', 'https://rinkeby.etherscan.io/tx/', 'https://rinkeby.etherscan.io/address/', 'ETH', 'fddb9130-e382-4058-a885-af9ceab9f2c0', '0x49e8883b30c482ade14488fd00a6622c9377c366', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00065', '0xffe2048a86f8b74074e4e256cfd221ea8cb66ec07504c49bb641c3c4a80c3fe3', '::1', '2022-09-01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(13, 'f616a3f4-464d-4860-9675-33e910dd7432', '97', 'https://testnet.bscscan.com/tx/', 'https://testnet.bscscan.com/address/', 'MATIC', '9f43d4cc-62e6-46d1-ac2c-90b20b962609', '0x0729aaf5757658bdab03ce2b2d76c06089462ba0', '0x49E8883B30c482ADE14488Fd00A6622c9377C366', '0.00373', '0xb3e1674a53f1bead71e02d2fd530db28bf47c8dc22fc539ba06447a82b5ea0c4', '::1', '2022-10-21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `dual_auth`
--

CREATE TABLE `dual_auth` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dual_auth`
--

INSERT INTO `dual_auth` (`id`, `username`, `password`, `date`) VALUES
(1, 'admin.finflix', '0xea0151c4cf78b351118dffcafd349230539bfe1a9c99c15aa057985b45885278775e9f281a6c83598e7283e0225b1b913afb2a8464fb5ed0885a29d2b46cdefa8be9066bee6827969d1093fa9f6b80418e7e7eaf4730ad8de5302656a2b6ba11', '2022-10-25 13:02:53'),
(2, 'admin1.finflix', '0xea0151c4cf78b351118dffcafd349230539bfe1a9c99c15aa057985b458852789a637389a6502675aa63891f45527bc9f7ce2309d7af3440f248835b27033e908be9066bee6827969d1093fa9f6b80418e7e7eaf4730ad8de5302656a2b6ba11', '2022-10-25 13:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_videos`
--

CREATE TABLE `favourite_videos` (
  `favourite_video_id` int(20) NOT NULL,
  `favourite_video_uuid` varchar(200) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `video_info_id` varchar(200) NOT NULL,
  `from_ip` varchar(200) NOT NULL,
  `from_browser` varchar(200) NOT NULL,
  `from_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourite_videos`
--

INSERT INTO `favourite_videos` (`favourite_video_id`, `favourite_video_uuid`, `user_id`, `video_info_id`, `from_ip`, `from_browser`, `from_time`) VALUES
(7, '3b575b27-b155-4dcd-a20f-8f792add1834', '', '52ff0b28-0baa-4c32-9217-0752c5960b20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'Wed, 29 Jun 2022 20:03:53 +0530'),
(8, 'd6a6302f-10aa-41ec-84b3-6c4767478684', '0x49e8883b30c482ade14488fd00a6622c9377c366', 'fddb9130-e382-4058-a885-af9ceab9f2c0', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'Mon, 29 Aug 2022 18:29:24 +0530'),
(9, '3b74ee9e-9fd2-4422-a188-c9f0783fad5f', '0x0729aaf5757658bdab03ce2b2d76c06089462ba0', 'fddb9130-e382-4058-a885-af9ceab9f2c0', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'Thu, 20 Oct 2022 17:26:05 +0530');

-- --------------------------------------------------------

--
-- Table structure for table `metamask_login`
--

CREATE TABLE `metamask_login` (
  `ID` int(11) NOT NULL,
  `address` varchar(42) NOT NULL,
  `publicName` tinytext DEFAULT NULL,
  `nonce` tinytext DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_time_login` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metamask_login`
--

INSERT INTO `metamask_login` (`ID`, `address`, `publicName`, `nonce`, `created`, `first_time_login`) VALUES
(31, '0xed9b1756dbf760a79547677f598bf001dad50fd1', NULL, '62bd41d706e17', '2022-06-29 10:18:54', ''),
(32, '0x49e8883b30c482ade14488fd00a6622c9377c366', NULL, '63107d4b8c5f9', '2022-08-26 06:18:16', ''),
(33, '0xfdb9621b453957728e8799c26fef850c3e107d6b', NULL, '63451602b25d6', '2022-10-11 07:06:36', ''),
(34, '0x0729aaf5757658bdab03ce2b2d76c06089462ba0', NULL, '6354adf5759e9', '2022-10-15 06:22:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `video_info`
--

CREATE TABLE `video_info` (
  `video_id` int(20) NOT NULL,
  `video_uuid` varchar(200) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `video_desc` varchar(200) NOT NULL,
  `thumbnail_ipfs` varchar(200) NOT NULL,
  `video_uid` varchar(200) NOT NULL,
  `module` varchar(200) NOT NULL,
  `module_uuid` varchar(200) NOT NULL,
  `more_details` varchar(255) NOT NULL,
  `from_time` varchar(200) NOT NULL,
  `from_browser` varchar(200) NOT NULL,
  `from_ip` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_info`
--

INSERT INTO `video_info` (`video_id`, `video_uuid`, `user_address`, `user_type`, `name`, `video_desc`, `thumbnail_ipfs`, `video_uid`, `module`, `module_uuid`, `more_details`, `from_time`, `from_browser`, `from_ip`) VALUES
(22, 'fddb9130-e382-4058-a885-af9ceab9f2c0', '0x0729aaf5757658bdab03ce2b2d76c06089462ba0', 'admin', 'What is JASMY: Japan’s First Approved Crypto', 'Jasmy is an organization that develops Internet of Things (IoT) platforms and decentralized data lockers.', 'https://bafybeicxqxwvzctb3mdcrcigwraq6exn5fmvktgadpug6s3ev4pngsu2oi.ipfs.w3s.link/What%20is%20JASMY%20Japan%20First%20Approved%20Crypto.jpg', 'https://bafybeihvr43b5z3wt6nwwv2irmheeddruqd6twe233y6aquf4aqoyufi4e.ipfs.w3s.link/What%20is%20JASMY%20Japan%20First%20Approved%20Crypto.mp4', 'Cryptonite', '927f0965-6eed-462c-bfa0-79867c9f9448', '', '2022-10-17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1'),
(23, '47f5e19b-2d4a-42d5-baa9-576401469d95', '0xfdb9621b453957728e8799c26fef850c3e107d6b', 'admin', '5 Crypto Research Tools जो बनाएंगे आपकी Trading Smart', 'Trading से पहले हमेशा Research Important होती है, अगर आप भी Crypto मे कर रहे है Investments तो यह ', 'https://bafybeihvperhkffcrvex2wc2jhkbdrfncj5v66z34wvgf7qx5obxky52li.ipfs.w3s.link/5%20Crypto%20Research%20Tools%20जो%20बनाएंगे%20आपकी%20Trading%20Smart.jpg', 'https://bafybeiaqwlz6e6rqz7itt4udsvm3bp4pqy5jh6s2j25yxry4pzwuykuywa.ipfs.w3s.link/5%20Crypto%20Research%20Tools%20जो%20बनाएंगे%20आपकी%20Trading%20Smart.mp4', 'Cryptonext', 'fd3d24bd-8764-494e-9ade-40911b8e11a1', '', '2022-10-12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1'),
(24, '52ff0b28-0baa-4c32-9217-0752c5960b20', '0xfdb9621b453957728e8799c26fef850c3e107d6b', 'admin', 'Big News: Football Star Cristiano Ronaldo and Binance inks NFT Partnership', 'Crypto exchange Binance partners with Cristiano Ronaldo for NFT push', 'https://bafybeifx5lodrseqb3gslkike3gmipxmjsu3krg5u5fol463lyxwc3dsou.ipfs.w3s.link/Big%20News%20Football%20Star%20Cristiano%20Ronaldo%20and%20Binance%20inks%20NFT%20Partnership.jpg', 'https://bafybeigy2dhzagqpjl3xanf3psxrqa45njxwofl3afb3xd7qs5rsqrb5sq.ipfs.w3s.link/Big%20News%20Football%20Star%20Cristiano%20Ronaldo%20and%20Binance%20inks%20NFT%20Partnership.mp4', 'Cryptonite', '927f0965-6eed-462c-bfa0-79867c9f9448', '', '2022-10-12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1'),
(25, 'ac6cf51c-9ac8-4bd0-a6c8-3c1c01d0bb07', '0xfdb9621b453957728e8799c26fef850c3e107d6b', 'admin', 'How Can You Make Passive Income Lending Cryptocurrency', 'Nexo, you can earn industry-leading interest on your crypto, borrow against your digital assets, or exchange between hundreds of market pairs', 'https://bafybeibspjdywo22tisfov7h7kjw37ijx3wyt7apuc52yk5ohmadylszqq.ipfs.w3s.link/How%20Can%20You%20Make%20Passive%20Income%20Lending%20Cryptocurrency.jpg', 'https://bafybeifv3tpsgvkshhcdilqowxk2rhheyeu3tosmrvvj5qczqwo2473nvi.ipfs.w3s.link/How%20Can%20You%20Make%20Passive%20Income%20Lending%20Cryptocurrency.mp4', 'Cryptonext', 'fd3d24bd-8764-494e-9ade-40911b8e11a1', '', '2022-10-12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1'),
(26, '7b9cb175-ae27-477c-b055-2d918bf7d45d', '0xfdb9621b453957728e8799c26fef850c3e107d6b', 'admin', 'WazirX Token', 'WRX is WazirX’s native utility token. \r\nIt is programmed to serve as the backbone \r\nof the entire WazirX ecosystem', 'https://bafybeifnrdfrww5tvwv7shexg34canran3hkt5acui6owlxsrjv2nakxrq.ipfs.w3s.link/WazirX%20token%20all%20you%20need%20to%20know.jpg', 'https://bafybeihxkzjrgy5oinutynccedctvi5q26bhdhobdbjp2ndc5nuqxwuhla.ipfs.w3s.link/WazirX%20token%20all%20you%20need%20to%20know.mp4', 'Cryptonext', 'fd3d24bd-8764-494e-9ade-40911b8e11a1', '', '2022-10-12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1'),
(27, '9f43d4cc-62e6-46d1-ac2c-90b20b962609', '0xfdb9621b453957728e8799c26fef850c3e107d6b', 'admin', '#cryptonewstoday : क्या #ShibaInu करेगा 80% पार', 'आज की  #cryptonews में जानिये की...', 'https://bafybeick326krbm6zyb4zpv2ds55elwfl2snbmpmddmxjzxkehhf72mf4i.ipfs.w3s.link/cryptonewstoday.jpg', 'https://bafybeid57nkwhvukgcryrffc2fju2ekfc4bgipsnhq4edhjol3ihosfosm.ipfs.w3s.link/cryptonewstoday.mp4', 'Cryptonite', '927f0965-6eed-462c-bfa0-79867c9f9448', '', '2022-10-12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1'),
(29, 'bed1667b-4d80-4083-b028-f4a0934608f9', '0xfdb9621b453957728e8799c26fef850c3e107d6b', 'admin', 'Vechain: What is VeChain? Real-World Applications To The Economy, Project Analysis', 'The VeChain network and its native VET coin have very unique and interesting plans to provide their services to businesses. Can they revolutionize the supply chain industry?', 'https://bafybeid2ng3usrld7prrpepdejcwvb52tk6fqm3kjo5nyuurqfrkxptdxi.ipfs.w3s.link/Vechain%20What%20is%20VeChain%20Real-World%20Applications%20To%20The%20Economy%20Project%20Analysis.jpg', 'https://bafybeigljnjaoxcmuj67bwvf6wmn2gy3u3p3fbwhwq3t2427p35t7mbsmy.ipfs.w3s.link/Vechain%20What%20is%20VeChain%20Real-World%20Applications%20To%20The%20Economy,%20Project%20Analysis.mp4', 'Cryptonite', '927f0965-6eed-462c-bfa0-79867c9f9448', '', '2022-10-12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `user_ip` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp(),
  `from_browser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `user_ip`, `date`, `time`, `from_browser`) VALUES
(1, '::1', '2022-10-11', '13:03:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(2, '::1', '2022-10-12', '11:29:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(3, '::1', '2022-10-13', '17:30:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(4, '::1', '2022-10-14', '06:54:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(5, '::1', '2022-10-15', '11:44:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(6, '::1', '2022-10-17', '11:51:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(7, '::1', '2022-10-18', '13:10:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(8, '::1', '2022-10-19', '07:21:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(9, '::1', '2022-10-20', '14:09:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donate_eth`
--
ALTER TABLE `donate_eth`
  ADD PRIMARY KEY (`donate_id`);

--
-- Indexes for table `dual_auth`
--
ALTER TABLE `dual_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_videos`
--
ALTER TABLE `favourite_videos`
  ADD PRIMARY KEY (`favourite_video_id`);

--
-- Indexes for table `metamask_login`
--
ALTER TABLE `metamask_login`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `address` (`address`);

--
-- Indexes for table `video_info`
--
ALTER TABLE `video_info`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donate_eth`
--
ALTER TABLE `donate_eth`
  MODIFY `donate_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dual_auth`
--
ALTER TABLE `dual_auth`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `favourite_videos`
--
ALTER TABLE `favourite_videos`
  MODIFY `favourite_video_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `metamask_login`
--
ALTER TABLE `metamask_login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `video_info`
--
ALTER TABLE `video_info`
  MODIFY `video_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
