-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 23-Nov-2022 às 19:40
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `larveltest`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

DROP TABLE IF EXISTS `contatos`;
CREATE TABLE IF NOT EXISTS `contatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `nomeContato` varchar(255) NOT NULL,
  `emailContato` varchar(255) NOT NULL,
  `telefoneContato` varchar(255) NOT NULL,
  `CEP` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`id`, `estado`, `cidade`, `bairro`, `endereco`, `numero`, `nomeContato`, `emailContato`, `telefoneContato`, `CEP`) VALUES
(94, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 501, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(93, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 777, 'ruan', 'henriquedasilvacosta@live.com', '44997070974', '87205046'),
(92, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(103, 'PR', 'Cianorte', 'Conjunto Portal das Américas', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205100'),
(5, 'PR', 'Cianorte', 'zona 2', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 520, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '45454545'),
(90, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(7, 'PR', 'Cianorte', 'zona 2', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 520, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '45454545'),
(8, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(9, 'PR', 'Cianorte', 'zona 2', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 520, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '45454545'),
(10, 'PR', 'Cianorte', 'zona 2', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 520, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '45454545'),
(11, 'PR', 'Cianorte', 'zona 2', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 520, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '45454545'),
(12, 'PR', 'Cianorte', 'zona 2', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 520, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '45454545'),
(13, 'PR', 'Cianorte', 'zona 2', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 520, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '45454545'),
(14, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(15, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(16, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(17, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(18, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(19, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(20, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(21, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(22, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(23, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(24, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(25, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(26, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(27, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(28, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(29, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(30, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(31, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(32, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(33, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(34, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(35, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(36, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(37, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(38, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(39, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(40, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(41, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(42, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(43, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(44, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(45, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(46, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(47, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(48, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(49, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(50, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(51, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(52, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(53, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(54, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(55, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(56, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(57, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(58, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(59, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(60, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(61, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(62, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(63, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(64, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(65, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(66, 'SP', 'Barureri', 'Zona 06', 'ffsfss', 881, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '3123123213'),
(70, 'PR', 'brazil', 'zona 2', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 881, 'Maurício  Mendes de  Silva', 'henriquedasilvacosta@live.com', '+5544997070974', '87205-048'),
(91, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 1999, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(95, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(96, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(97, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 903, 'Henrique Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(98, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(99, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(100, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(101, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(102, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henrique@lok.com.net', '44997070974', '87205-048'),
(104, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 5555, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(105, 'PR', 'brazil', 'Zona 06', 'Avenida Arthur M Thomas de 761 a 1429 - lado ímpar', 554, 'henrique rike', 'henriquedasilvacosta@live.com', '+5544997070974', '87205048'),
(106, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(107, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(108, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(109, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(110, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(111, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(112, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048'),
(113, 'PR', 'Cianorte', 'Zona 06', 'Avenida Arthur M Thomas', 903, 'Henrique da silva Costa', 'henriquedasilvacosta@live.com', '44997070974', '87205-048');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
