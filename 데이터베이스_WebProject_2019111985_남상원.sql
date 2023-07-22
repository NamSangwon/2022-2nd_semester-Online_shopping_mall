-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.31 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.2.0.6576
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- wptest 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `wptest` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `wptest`;

-- 테이블 wptest.cloth_tbl 구조 내보내기
CREATE TABLE IF NOT EXISTS `cloth_tbl` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `class` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(50) DEFAULT 'image/null.png',
  `price` varchar(50) DEFAULT NULL,
  `view` int DEFAULT '0',
  `keyword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 wptest.cloth_tbl:~15 rows (대략적) 내보내기
INSERT IGNORE INTO `cloth_tbl` (`id`, `name`, `type`, `class`, `image`, `price`, `view`, `keyword`) VALUES
	('000000', '후드 티셔츠', '상의', '후드', 'image/hood.png', '51000', 23, '옷,상의,후드,후드티,의류,'),
	('000100', '긴팔 티셔츠', '상의', '긴팔', 'image/long.png', '38000', 24, '옷,상의,티셔츠,긴팔,의류,'),
	('000200', '니트 티셔츠', '상의', '스웨터', 'image/sweater.png', '48000', 23, '옷,상의,스웨터,니트,의류,'),
	('000300', '맨투맨', '상의', '맨투맨', 'image/sweat.png', '53000', 23, '옷,상의,맨투맨,후드,의류,'),
	('010000', '데님팬츠', '하의', '데님', 'image/denim.png', '52000', 23, '옷,하의,청,바지,데님,의류,'),
	('010100', '코튼팬츠', '하의', '코튼', 'image/cotton.png', '46000', 23, '옷,하의,면,바지,의류,치노,'),
	('010200', '슬랙스', '하의', '슬랙스', 'image/slacks.png', '38000', 23, '옷,하의,슬랙스,바지,의류,정장,'),
	('010300', '조거팬츠', '하의', '조거', 'image/jogger.png', '47000', 24, '옷,하의,바지,의류,조거,'),
	('020000', '싱글 코트', '아우터', '코트', 'image/coat.png', '129000', 24, '옷,아우터,코트,의류,외투'),
	('020100', '가죽 자켓', '아우터', '레더', 'image/leather.png', '98000', 23, '옷,아우터,가죽,레더,레쟈,의류,외투'),
	('020200', '롱패딩', '아우터', '패딩', 'image/padding.png', '158000', 27, '옷,아우터,패딩,파카,의류,외투'),
	('020300', '트랙탑', '아우터', '트레이닝', 'image/null.png', '78000', 23, '옷,아우터,트레이닝,츄리닝,의류,트랙,저지,외투'),
	('030000', '캔버스화', '신발', '캔버스', 'image/canvas.png', '63000', 23, '신발,캔버스,단화,스니커즈,'),
	('030100', '로퍼', '신발', '로퍼', 'image/loafer.png', '82000', 24, '신발,구두,로퍼,'),
	('030200', '워커', '신발', '부츠', 'image/boots.png', '78000', 25, '신발,부츠,워커,');

-- 테이블 wptest.result_tbl 구조 내보내기
CREATE TABLE IF NOT EXISTS `result_tbl` (
  `userName` varchar(50) DEFAULT NULL,
  `userPhone` varchar(50) DEFAULT NULL,
  `userMail` varchar(50) DEFAULT NULL,
  `userAddr` varchar(50) DEFAULT NULL,
  `id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 wptest.result_tbl:~11 rows (대략적) 내보내기
INSERT IGNORE INTO `result_tbl` (`userName`, `userPhone`, `userMail`, `userAddr`, `id`, `size`, `quantity`) VALUES
	('홍길동', '010-0000-0000', 'asd123@naver.com', '서울특별시 중구 필동로 1길 30 동국대학교', '010300', 'XL', '2'),
	('홍길동', '010-0000-0000', 'asd123@naver.com', '서울특별시 중구 필동로 1길 30 동국대학교', '020100', 'XL', '1'),
	('홍길동', '010-1111-1111', 'qwer1234@naver.com', '서울특별시 중구 필동로 1길 30 동국대학교', '000100', 'XL', '2'),
	('홍길동', '010-1111-1111', 'qwer1234@naver.com', '서울특별시 중구 필동로 1길 30 동국대학교', '030000', 'XL', '1'),
	('김갑수', '010-1234-1234', 'qwe123@naver..com', '서울특별시 중구 필동로 1길 30 동국대학교', '020300', 'XL', '1'),
	('김철수', '010-2222-2222', 'zx123@naver.com', '서율특별시 중구 필동로 1길 30 동국대학교', '020000', 'XL', '1'),
	('테스트', '010-1357-2468', 'test@naver.com', '대한민국 서울특별시 중구 필동로 1길 30 동국대학교', '030200', 'XL', '2'),
	('테스트', '010-1357-2468', 'test@naver.com', '대한민국 서울특별시 중구 필동로 1길 30 동국대학교', '010000', 'L', '1'),
	('테스트', '010-1357-2468', 'test@naver.com', '서울특별시 중구 필동로 1길 30 동국대학교', '000200', 'XL', '1'),
	('테스트', '010-2468-1357', 'test123@naver.com', '서울시 중구 필동로 1길 30 동국대학교', '000100', 'XL', '1'),
	('테스트', '010-2468-1357', 'test123@naver.com', '서울시 중구 필동로 1길 30 동국대학교', '030100', 'XL', '2'),
	('남상원', '010-1111-1111', 'qwe123@naver.com', '주소', '000000', 'XL', '2');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
