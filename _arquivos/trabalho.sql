-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 13/06/2021 às 21:37
-- Versão do servidor: 10.4.14-MariaDB
-- Versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `trabalho`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cor`
--

CREATE TABLE `cor` (
  `id` int(11) NOT NULL,
  `cor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `cor`
--

INSERT INTO `cor` (`id`, `cor`) VALUES
(1, 'verde'),
(2, 'azul'),
(5, 'cinza'),
(6, 'preto'),
(7, 'branco'),
(8, 'amarelo'),
(9, 'chumbo'),
(10, 'grafite'),
(11, 'vermelho'),
(12, 'roxo'),
(13, 'rosa'),
(14, 'prata');

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `marca`
--

INSERT INTO `marca` (`id`, `marca`) VALUES
(1, 'Ford'),
(2, 'audi'),
(3, 'Mercedes'),
(4, 'Bmw'),
(5, 'Mitsubishi'),
(6, 'Nissan'),
(7, 'Peugeot'),
(8, ' Renault'),
(9, 'Suzuki'),
(10, 'Toyota'),
(11, 'Volkswagen'),
(12, 'Volvo'),
(13, 'Chevrolet'),
(14, 'Citroën'),
(15, 'Fiat'),
(16, 'Honda'),
(17, 'Hyundai'),
(18, 'Jeep'),
(19, 'Chery');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tipo`
--

INSERT INTO `tipo` (`id`, `tipo`) VALUES
(1, 'Novo'),
(2, 'Semi-Novo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `login`, `senha`) VALUES
(1, 'Administrador', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `anoModelo` varchar(4) NOT NULL,
  `anoFabricacao` varchar(4) NOT NULL,
  `valor` double NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `fotodestaque` varchar(50) NOT NULL,
  `marca_id` int(11) NOT NULL,
  `cor_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `opcionais` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`id`, `modelo`, `anoModelo`, `anoFabricacao`, `valor`, `tipo_id`, `fotodestaque`, `marca_id`, `cor_id`, `usuario_id`, `opcionais`) VALUES
(11, 'QQ', '2017', '2017', 15000, 2, 'Chery QQ flex 2017', 19, 7, 1, 'super conservado! basico'),
(12, 'Arrizo 5', '2021', '2021', 55000, 1, 'Chery  ARRIZO 5 0km', 19, 14, 1, 'Carro zero km, completo'),
(13, 'Tiggo 2', '2021', '2021', 56000, 1, 'Chery  TIGGO 2 0km', 19, 7, 1, 'carro 0 km , completo'),
(14, 'Tiggo 5x', '2021', '2021', 65000, 1, 'Chery  TIGGO 5X 0km', 19, 9, 1, 'carro 0km, coompleto'),
(15, 'Arrizo 6', '2021', '2021', 75000, 1, 'Chery Arrizo 6 0km', 19, 10, 1, 'carro 0km, completo'),
(16, 'QQ', '2013', '2013', 15000, 2, 'Chery QQ 2013', 19, 7, 1, 'terceiro dono, com direção hidráulica.super conservado!'),
(17, 'Tiggo 7', '2021', '2021', 52000, 1, 'Chery Tiggo 7 0km', 19, 7, 1, 'completo'),
(18, 'Onix', '2015', '2015', 35000, 2, 'CHEVROLET ONIX 15 15', 13, 11, 1, 'único dono, completo.'),
(19, 'Onix', '2019', '2018', 37000, 2, 'CHEVROLET ONIX 18 19', 13, 14, 1, 'completo'),
(20, 'Onix', '2020', '2019', 46000, 2, 'CHEVROLET ONIX 19 20', 13, 6, 1, 'unico dono, completo'),
(21, 'Onix', '2020', '2020', 50000, 2, 'CHEVROLET ONIX 2019 2020', 13, 6, 1, 'prefeito estado.'),
(22, 'Ka', '2019', '2018', 23000, 2, 'FORD KA 18 19', 1, 7, 1, NULL),
(23, 'Creta', '2017', '2017', 32000, 2, 'HYUNDAI CRETA 17 17', 17, 7, 1, 'melhhor semi-novo da categoria'),
(24, 'Compass', '2018', '2018', 52000, 2, 'JEEP COMPASS 18 18', 18, 10, 1, 'carro de madame, perfeitas condições.'),
(25, 'Logan', '2107', '2106', 33000, 2, 'RENAULT LOGAN 16 17 copiar', 8, 7, 1, NULL),
(26, 'Corola', '2105', '2014', 30000, 2, 'TOYOTA COROLLA 14 15', 10, 6, 1, NULL),
(27, 'Hilux', '2019', '2018', 52000, 2, 'TOYOTA HILUX 18 19', 10, 14, 1, NULL),
(28, 'Yaris', '2017', '2017', 31000, 2, 'TOYOTA YARIS 17 17', 10, 7, 1, NULL),
(29, 'Yaris', '2019', '2018', 35000, 2, 'TOYOTA YARIS 18 19', 10, 14, 1, 'completo'),
(30, 'Yaris', '2019', '2019', 38000, 2, 'TOYOTA YARIS 19 19', 10, 7, 1, NULL),
(31, 'Gol', '2019', '2018', 37000, 2, 'VOLKSWAGEN GOL 18 19', 11, 14, 1, 'completo'),
(32, 'Polo', '2018', '2017', 36000, 2, 'VOLKSWAGEN POLO 17 18', 11, 6, 1, 'básico, único dono'),
(33, 'Polo', '2018', '2018', 39000, 2, 'VOLKSWAGEN POLO 2018', 11, 6, 1, NULL),
(34, 'Voyage', '2019', '2019', 41000, 2, 'VOLKSWAGEN VOYAGE 2019', 11, 14, 1, 'completo, único dono.');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cor`
--
ALTER TABLE `cor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marca` (`marca_id`),
  ADD KEY `cor_id_idx` (`cor_id`),
  ADD KEY `usuario_id_idx` (`usuario_id`),
  ADD KEY `tipo_id` (`tipo_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cor`
--
ALTER TABLE `cor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `cor_id` FOREIGN KEY (`cor_id`) REFERENCES `cor` (`id`),
  ADD CONSTRAINT `marca_id` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`),
  ADD CONSTRAINT `tipo_id` FOREIGN KEY (`tipo_id`) REFERENCES `tipo` (`id`),
  ADD CONSTRAINT `usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
