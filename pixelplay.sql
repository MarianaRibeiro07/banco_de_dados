-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 17/10/2025 às 16:41
-- Versão do servidor: 8.0.40
-- Versão do PHP: 8.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pixelplay`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `ID` int NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`ID`, `Nome`, `Email`, `Telefone`) VALUES
(1, 'Mariana', 'mari1012@gmail.com', '11 944441708'),
(2, 'Mariana', 'mari1012@gmail.com', '11 944441708'),
(3, 'Lucas', 'lucas.silva@gmail.com', '21 988774512'),
(4, 'Ana', 'ana.souza@hotmail.com', '31 972335689'),
(5, 'João', 'joaopedro23@yahoo.com', '11 111111111'),
(6, 'Beatriz', 'bia_oliveira@gmail.com', '41 995623478'),
(7, 'Carlos', 'carlinhos.rj@gmail.com', '21 987665412'),
(8, 'Fernanda', 'fernanda.melo@hotmail.com', '61 984557231'),
(9, 'Rafael', 'rafael.torres@gmail.com', '71 991234589'),
(10, 'Camila', 'camila.santos@yahoo.com', '51 996874523'),
(11, 'Gustavo', 'gustavo.almeida@gmail.com', '85 992345678');

-- --------------------------------------------------------

--
-- Estrutura para tabela `game`
--

CREATE TABLE `game` (
  `ID` int NOT NULL,
  `Titulo` varchar(100) DEFAULT NULL,
  `Plataformas` varchar(50) DEFAULT NULL,
  `Informações` varchar(150) DEFAULT NULL,
  `Ano_publicacao` int DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `game`
--

INSERT INTO `game` (`ID`, `Titulo`, `Plataformas`, `Informações`, `Ano_publicacao`, `genero`) VALUES
(14, 'Clash Royale', 'Celular', 'Jogo de luta', 2004, 'Luta'),
(15, 'Resident Evil 4', 'Videogame', 'Jogo de ação', 2008, 'RPG'),
(16, 'EA Sports FC 25', 'Videogame', 'Jogo de futebol', 2000, 'Futebol'),
(17, 'Stardew Valley', 'Todas', 'Jogo de fazenda e criação', 2019, 'RPG'),
(18, 'Hades II', 'Computador', 'Jogo de história', 2012, 'Ação');

-- --------------------------------------------------------

--
-- Estrutura para tabela `venda`
--

CREATE TABLE `venda` (
  `ID` int NOT NULL,
  `Data_Compra` date DEFAULT NULL,
  `Valor` int DEFAULT NULL,
  `ClienteID` int DEFAULT NULL,
  `GameID` int DEFAULT NULL,
  `FormaPagamento` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `venda`
--

INSERT INTO `venda` (`ID`, `Data_Compra`, `Valor`, `ClienteID`, `GameID`, `FormaPagamento`) VALUES
(1, '2025-12-10', 22, NULL, NULL, 'Déb'),
(2, '2025-11-05', 150, NULL, NULL, 'Créd'),
(3, '2025-10-22', 89, NULL, NULL, 'Pix'),
(4, '2025-09-18', 45, NULL, NULL, 'Din');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClienteID` (`ClienteID`),
  ADD KEY `GameID` (`GameID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `game`
--
ALTER TABLE `game`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `cliente` (`ID`),
  ADD CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`GameID`) REFERENCES `game` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
