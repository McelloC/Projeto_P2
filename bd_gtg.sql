-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 27/11/2023 às 04:03
-- Versão do servidor: 5.7.36
-- Versão do PHP: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_gtg`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cargos`
--

CREATE TABLE `tb_cargos` (
  `id_cargo` int(11) NOT NULL,
  `cargo` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `tb_cargos`
--

INSERT INTO `tb_cargos` (`id_cargo`, `cargo`) VALUES
(1, 'Gerente'),
(2, 'Vendedor');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `id_cliente` int(11) NOT NULL,
  `cpf` varchar(14) COLLATE utf8_bin NOT NULL,
  `nome` varchar(60) COLLATE utf8_bin NOT NULL,
  `data_nasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`id_cliente`, `cpf`, `nome`, `data_nasc`) VALUES
(1, '123.456.789-10', 'João Cardoso Filho', '2002-05-20'),
(2, '555.555.555-55', 'Júnior J.', '1999-02-20'),
(3, '987.654.321-10', 'Mauro L. M.', '1998-11-11'),
(4, '444.444.444-44', 'Zé', '1985-02-11'),
(5, '111.111.111-11', 'Amanda Carvalho Nunes', '2000-01-01'),
(6, '101.101.100-12', 'Maria Aparecida', '1970-01-10'),
(7, '111.111.111-13', 'Roberto Carvalho Nunes', '2000-01-01'),
(8, '222.222.222-23', 'Hugo M.', '2000-01-01'),
(9, '333.333.333-33', 'Luiza M. P.', '1997-07-10'),
(10, '789.456.123-10', 'Lucas Mendes Lima', '1997-06-19'),
(11, '654.987.321-10', 'Priscilla P. Mattos ', '2001-05-12'),
(12, '222.222.222-33', 'Jucelino D. L. M. R. R.', '2015-10-10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_descricao_venda`
--

CREATE TABLE `tb_descricao_venda` (
  `venda` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `tb_descricao_venda`
--

INSERT INTO `tb_descricao_venda` (`venda`, `produto`, `quantidade`) VALUES
(6, 11, 1),
(6, 22, 1),
(7, 32, 1),
(7, 55, 1),
(8, 11, 1),
(8, 32, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_estoque`
--

CREATE TABLE `tb_estoque` (
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `tb_estoque`
--

INSERT INTO `tb_estoque` (`produto`, `quantidade`) VALUES
(99, 2),
(98, 2),
(97, 7),
(96, 8),
(95, 4),
(94, 6),
(93, 9),
(92, 5),
(91, 1),
(90, 10),
(89, 3),
(88, 2),
(87, 9),
(86, 7),
(85, 4),
(84, 6),
(83, 1),
(82, 8),
(81, 2),
(80, 1),
(79, 1),
(78, 5),
(77, 3),
(76, 9),
(75, 7),
(74, 4),
(73, 6),
(72, 1),
(71, 8),
(70, 2),
(69, 10),
(68, 5),
(67, 3),
(66, 9),
(65, 5),
(64, 2),
(63, 4),
(62, 3),
(61, 7),
(60, 8),
(59, 16),
(58, 10),
(57, 7),
(56, 8),
(55, 4),
(54, 6),
(53, 9),
(52, 5),
(51, 1),
(50, 10),
(49, 3),
(48, 2),
(47, 9),
(46, 7),
(45, 4),
(44, 6),
(43, 1),
(42, 8),
(41, 2),
(40, 1),
(39, 1),
(38, 5),
(37, 3),
(36, 9),
(35, 7),
(34, 4),
(33, 6),
(32, 1),
(31, 8),
(30, 2),
(29, 10),
(28, 5),
(27, 3),
(26, 9),
(25, 5),
(24, 2),
(23, 4),
(22, 3),
(21, 7),
(20, 8),
(19, 6),
(18, 10),
(17, 4),
(16, 6),
(15, 3),
(14, 2),
(13, 2),
(12, 10),
(11, 2),
(10, 9),
(9, 8),
(8, 5),
(100, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(60) COLLATE utf8_bin NOT NULL,
  `marca` varchar(60) COLLATE utf8_bin NOT NULL,
  `categoria` varchar(60) COLLATE utf8_bin NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`id_produto`, `nome`, `tipo`, `marca`, `categoria`, `preco`) VALUES
(8, 'PlayStation 4 Standard 500GB', 'Console', 'Sony', 'Videogames', '2000.00'),
(9, 'PlayStation 4 Standard 1TB', 'Console', 'Sony', 'Videogames', '2300.00'),
(10, 'PlayStation 4 Slim 1TB', 'Console', 'Sony', 'Videogames', '2450.00'),
(11, 'PlayStation 5 Standard 825GB', 'Console', 'Sony', 'Videogames', '4375.00'),
(12, 'Xbox One 500GB', 'Console', 'Microsoft', 'Videogames', '1890.00'),
(13, 'Xbox One S 1 TB', 'Console', 'Microsoft', 'Videogames', '1970.00'),
(14, 'Xbox Series S 512GB + Controle Extra', 'Console', 'Microsoft', 'Videogames', '2700.00'),
(15, 'Xbox Series X 1 TB', 'Console', 'Microsoft', 'Videogames', '4680.00'),
(16, 'Nintendo Switch LITE (Cinza)', 'Console', 'Nintendo', 'Videogames', '1750.00'),
(17, 'Nintendo Switch LITE (Azul)', 'Console', 'Nintendo', 'Videogames', '1750.00'),
(18, 'Nintendo Switch LITE (Rosa)', 'Console', 'Nintendo', 'Videogames', '1750.00'),
(19, 'Nintendo Switch OLED', 'Console', 'Nintendo', 'Videogames', '2500.00'),
(20, 'Nintendo Switch OLED (Edição Mario Kart 8 Deluxe)', 'Console', 'Nintendo', 'Videogames', '2950.00'),
(21, 'Nintendo Switch OLED (Edição Legend of Zelda: Tears of the Kingdom)', 'Console', 'Nintendo', 'Videogames', '3420.00'),
(22, 'Nintendo Switch OLED (Edição Pokémon Scarlet & Violet)', 'Console', 'Nintendo', 'Videogames', '2850.00'),
(23, 'PlayStation Dualshock 4 (Preto)', 'Controle', 'Sony', 'Acessórios', '220.00'),
(24, 'PlayStation Dualshock 4 (Jet Black)', 'Controle', 'Sony', 'Acessórios', '255.00'),
(25, 'PlayStation Dualshock 4 (Edição GoW Ragnarok)', 'Controle', 'Sony', 'Acessórios', '320.00'),
(26, 'PlayStation Dualshock 4 (Edição de Aniversário PlayStation)', 'Controle', 'Sony', 'Acessórios', '450.00'),
(27, 'PlayStation DualSense (Preto)', 'Controle', 'Sony', 'Acessórios', '460.00'),
(28, 'PlayStation DualSense (Branco)', 'Controle', 'Sony', 'Acessórios', '470.00'),
(29, 'PlayStation Dualsense Edge (Branco)', 'Controle', 'Sony', 'Acessórios', '1575.00'),
(30, 'Controle Sem Fio Para Xbox 360', 'Controle', 'Microsoft', 'Acessórios', '132.00'),
(31, 'Controle Xbox One Com Fio Joystick Video', 'Controle', 'Microsoft', 'Acessórios', '210.00'),
(32, 'Xbox - Shock sem Fio (One e Serie X|S) (Preto)', 'Controle', 'Microsoft', 'Acessórios', '430.00'),
(33, 'Xbox - Shock sem Fio (One e Serie X|S) (Branco)', 'Controle', 'Microsoft', 'Acessórios', '435.00'),
(34, 'Xbox - Shock sem Fio (One e Serie X|S) (Stellar Shift)', 'Controle', 'Microsoft', 'Acessórios', '550.00'),
(35, 'Razer Kishi para Android', 'Controle', 'Razer', 'Acessórios', '950.00'),
(36, 'Volante Logitech (Xbox Series X|S)', 'Controle', 'Logitech', 'Acessórios', '1970.00'),
(37, 'Kit Volante e Pedal Ferrari (Xbox One)', 'Controle', 'Thrustmaster', 'Acessórios', '1300.00'),
(38, 'HEYSTOP - Case de Transporte (Nintendo Switch)', 'Estojo', 'HEYSTOP', 'Acessórios', '180.00'),
(39, 'Yeacher - Bolsa de Transporte Portátil (Nintendo Switch)', 'Estojo', 'Yeacher', 'Acessórios', '188.00'),
(40, 'Protetor de Tela para Nintendo Switch OLED', 'Película', 'AmFilm', 'Acessórios', '190.00'),
(41, 'Bolsa de Viagem para Nintendo Switch OLED', 'Estojo', '‎ASHATA', 'Acessórios', '220.00'),
(42, 'Funko POP! - Crash Bandicoot', 'Figure', 'Funko', 'Decorações', '425.00'),
(43, 'Funko POP! - Tiny Tiger (Crash Bandicoot)', 'Figure', 'Funko', 'Decorações', '435.00'),
(44, 'Funko POP! - Coco Bandicoot (Crash Bandicoot)', 'Figure', 'Funko', 'Decorações', '430.00'),
(45, 'Funko POP! - Aku Aku (Crash Bandicoot)', 'Figure', 'Funko', 'Decorações', '439.00'),
(46, 'Funko POP! - Halo Infinity', 'Figure', 'Funko', 'Decorações', '189.00'),
(47, 'Funko POP! - Kratos (GoW)', 'Figure', 'Funko', 'Decorações', '389.00'),
(48, 'Funko POP! - Atreus (GoW Ragnarok)', 'Figure', 'Funko', 'Decorações', '379.00'),
(49, 'Funko POP! - Miss Fortune (LoL)', 'Figure', 'Funko', 'Decorações', '750.00'),
(50, 'Funko POP! - Vi (LoL)', 'Figure', 'Funko', 'Decorações', '730.00'),
(51, 'Funko POP! - Jinx (LoL)', 'Figure', 'Funko', 'Decorações', '750.00'),
(52, '7 days to die', 'Jogo de PlayStation 4', 'The Fun Pimps Entertainment LLC', 'Sobrevivência', '160.00'),
(53, '7 days to die', 'Jogo de Xbox One', 'The Fun Pimps Entertainment LLC', 'Sobrevivência', '147.00'),
(54, 'Assassin\'s Creed® Origins', 'Jogo de PlayStation 4', 'Ubisoft', 'Ação', '195.00'),
(55, 'Assassin\'s Creed® Origins', 'Jogo de Xbox One', 'Ubisoft', 'Ação', '184.00'),
(56, 'Assassin\'s Creed® Valhalla', 'Jogo de PlayStation 4', 'Ubisoft', 'Ação', '190.00'),
(57, 'Assassin\'s Creed® Valhalla', 'Jogo de Xbox One', 'Ubisoft', 'Ação', '186.00'),
(58, 'Assassin\'s Creed® Valhalla', 'Jogo de PlayStation 5', 'Ubisoft', 'Ação', '260.00'),
(59, 'Assassin\'s Creed® Valhalla', 'Jogo de Xbox Series (X e S)', 'Ubisoft', 'Ação', '255.00'),
(60, 'ACE COMBAT™ 7: SKIES UNKNOWN', 'Jogo de PlayStation 4', 'Bandai Namco Entertainment', 'Simulador', '262.00'),
(61, 'Anthem™ Edição Standard', 'Jogo de PlayStation 4', 'BioWare', 'Aventura', '145.00'),
(62, 'Anthem™ Edição Standard', 'Jogo de Xbox One', 'BioWare', 'Aventura', '143.00'),
(63, 'Batman™: Arkham Knight', 'Jogo de PlayStation 4', 'Warner Bros. Interactive Entertainment', 'Aventura', '110.00'),
(64, 'Ben 10: Power Trip', 'Jogo de PlayStation 4', 'Outright Games Ltd.', 'Aventura', '125.00'),
(65, 'Ben 10: Power Trip', 'Jogo de PlayStation 5', 'Outright Games Ltd.', 'Aventura', '157.00'),
(66, 'Ben 10: Power Trip', 'Jogo de Xbox One', 'Outright Games Ltd.', 'Aventura', '133.00'),
(67, 'Ben 10: Power Trip', 'Jogo de Nintendo Switch', 'Outright Games Ltd.', 'Aventura', '115.00'),
(68, 'Devil May Cry 5', 'Jogo de PlayStation 4', 'CAPCOM Co., Ltd.', 'Ação', '134.00'),
(69, 'Devil May Cry 5', 'Jogo de PlayStation 5', 'CAPCOM Co., Ltd.', 'Ação', '177.00'),
(70, 'Devil May Cry 5', 'Jogo de Xbox One', 'CAPCOM Co., Ltd.', 'Ação', '130.00'),
(71, 'DRAGON BALL FIGHTERZ', 'Jogo de PlayStation 4', 'Bandai Namco Entertainment', 'Luta', '155.00'),
(72, 'DRAGON BALL FIGHTERZ', 'Jogo de PlayStation 5', 'Bandai Namco Entertainment', 'Luta', '220.00'),
(73, 'DRAGON BALL FIGHTERZ', 'Jogo de Xbox One', 'Bandai Namco Entertainment', 'Luta', '160.00'),
(74, 'DRAGON BALL FIGHTERZ', 'Jogo de Xbox Series (X e S)', 'Bandai Namco Entertainment', 'Luta', '235.00'),
(75, 'DRAGON BALL FIGHTERZ', 'Jogo de Nintendo Switch', 'Bandai Namco Entertainment', 'Luta', '205.00'),
(76, 'The Legend of Zelda: Tears of the Kingdom', 'Jogo de Nintendo Switch', 'Nintendo Entertainment', 'RPG', '310.00'),
(77, 'Hogwarts Legacy', 'Jogo de PlayStation 5', 'Avalanche Software', 'RPG', '320.00'),
(78, 'Hogwarts Legacy', 'Jogo de Nintendo Switch', 'Avalanche Software', 'RPG', '300.00'),
(79, 'Hogwarts Legacy', 'Jogo de Xbox Series (X e S)', 'Avalanche Software', 'RPG', '325.00'),
(80, 'The Legend of Zelda: Breath of the Wild', 'Jogo de Nintendo Switch', 'Nintendo Entertainment', 'RPG', '270.00'),
(81, 'Pokémon Scarlet', 'Jogo de Nintendo Switch', 'Game Freak', 'RPG', '310.00'),
(82, 'Pokémon Violet', 'Jogo de Nintendo Switch', 'Game Freak', 'RPG', '310.00'),
(83, 'Super Mario Odyssey', 'Jogo de Nintendo Switch', 'Nintendo Entertainment', 'Plataforma', '320.00'),
(84, 'Super Smash Bros. Ultimate', 'Jogo de Nintendo Switch', 'Nintendo Entertainment', 'Luta', '285.00'),
(85, 'Marvel\'s Spider-Man: Miles Morales', 'Jogo de PlayStation 4', 'Insomniac Games', 'Aventura', '180.00'),
(86, 'Marvel\'s Spider-Man: Miles Morales', 'Jogo de PlayStation 5', 'Insomniac Games', 'Aventura', '220.00'),
(87, 'Marvel\'s Guardians of the Galaxy', 'Jogo de PlayStation 4', 'Eidos-Montréal', 'Aventura', '190.00'),
(88, 'Marvel\'s Guardians of the Galaxy', 'Jogo de PlayStation 5', 'Eidos-Montréal', 'Aventura', '260.00'),
(89, 'Final Fantasy VII Remake Intergrade', 'Jogo de PlayStation 5', 'SQUARE ENIX', 'RPG', '320.00'),
(90, 'FINAL FANTASY VII CRISIS CORE', 'Jogo de Nintendo Switch', 'SQUARE ENIX', 'RPG', '340.00'),
(91, 'God of War Ragnarok', 'Jogo de PlayStation 5', 'Santa Monica Studio', 'Ação', '220.00'),
(92, 'Just Dance 2023', 'Jogo de PlayStation 5', 'Ubisoft', 'Ritmo', '220.00'),
(93, 'Just Dance 2023', 'Jogo de Nintendo Switch', 'Ubisoft', 'Ritmo', '190.00'),
(94, 'Just Dance 2023', 'Jogo de Xbox Series (X e S)', 'Ubisoft', 'Ritmo', '210.00'),
(95, 'LEGO Marvel Super Heroes 2', 'Jogo de Nintendo Switch', 'TT Games', 'Aventura', '100.00'),
(96, 'Minecraft: Xbox', 'Jogo de Xbox One', 'Mojang Studios', 'Criação', '100.00'),
(97, 'Minecraft: Xbox', 'Jogo de Xbox Series (X e S)', 'Mojang Studios', 'Criação', '130.00'),
(98, 'Funko POP! - Sylvannas (WoW)', 'Figure', 'Funko', 'Decorações', '357.68'),
(99, 'Luminária Star Wars - R2D2', 'Luminária', 'XMT Luzes', 'Decorações', '89.79'),
(100, 'Project Diva', 'Jogo PSVITA', 'Crypton', 'Jogo', '210.00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(60) COLLATE utf8_bin NOT NULL,
  `login` varchar(30) COLLATE utf8_bin NOT NULL,
  `senha` varchar(20) COLLATE utf8_bin NOT NULL,
  `cargo` int(30) NOT NULL,
  `status` varchar(20) COLLATE utf8_bin NOT NULL,
  `cpf` varchar(14) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuario`, `nome`, `login`, `senha`, `cargo`, `status`, `cpf`) VALUES
(1, 'Marcello C.', 'mcello', '1234', 2, 'ativo', '010.101.010-10'),
(2, 'Lucas H', 'lucash', '4321', 1, 'ativo', '233.344.455-67'),
(3, 'Caio M. Oliveira', 'caiomom', '5555', 1, 'inativo', '899.899.899-99'),
(4, 'Isabella Flores Cardoso', 'bellaflores', '5566', 2, 'ativo', '232.323.233-33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_vendas`
--

CREATE TABLE `tb_vendas` (
  `id_venda` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data_venda` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `tb_vendas`
--

INSERT INTO `tb_vendas` (`id_venda`, `valor`, `data_venda`) VALUES
(6, '7225.00', '2023-11-15'),
(7, '614.00', '2023-11-15'),
(8, '5235.00', '2023-11-17');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_venda_cliente`
--

CREATE TABLE `tb_venda_cliente` (
  `venda` int(11) NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `tb_venda_cliente`
--

INSERT INTO `tb_venda_cliente` (`venda`, `cliente`) VALUES
(6, 5),
(7, 5),
(8, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_venda_vendedor`
--

CREATE TABLE `tb_venda_vendedor` (
  `venda` int(11) NOT NULL,
  `vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `tb_venda_vendedor`
--

INSERT INTO `tb_venda_vendedor` (`venda`, `vendedor`) VALUES
(6, 1),
(7, 1),
(8, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_cargos`
--
ALTER TABLE `tb_cargos`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Índices de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `tb_descricao_venda`
--
ALTER TABLE `tb_descricao_venda`
  ADD KEY `venda` (`venda`),
  ADD KEY `produto` (`produto`);

--
-- Índices de tabela `tb_estoque`
--
ALTER TABLE `tb_estoque`
  ADD KEY `produto` (`produto`);

--
-- Índices de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `cargo` (`cargo`);

--
-- Índices de tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD PRIMARY KEY (`id_venda`);

--
-- Índices de tabela `tb_venda_cliente`
--
ALTER TABLE `tb_venda_cliente`
  ADD KEY `venda` (`venda`),
  ADD KEY `cliente` (`cliente`);

--
-- Índices de tabela `tb_venda_vendedor`
--
ALTER TABLE `tb_venda_vendedor`
  ADD KEY `venda` (`venda`),
  ADD KEY `vendedor` (`vendedor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_cargos`
--
ALTER TABLE `tb_cargos`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_descricao_venda`
--
ALTER TABLE `tb_descricao_venda`
  ADD CONSTRAINT `tb_descricao_venda_ibfk_1` FOREIGN KEY (`venda`) REFERENCES `tb_vendas` (`id_venda`),
  ADD CONSTRAINT `tb_descricao_venda_ibfk_2` FOREIGN KEY (`produto`) REFERENCES `tb_produtos` (`id_produto`);

--
-- Restrições para tabelas `tb_estoque`
--
ALTER TABLE `tb_estoque`
  ADD CONSTRAINT `tb_estoque_ibfk_1` FOREIGN KEY (`produto`) REFERENCES `tb_produtos` (`id_produto`);

--
-- Restrições para tabelas `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD CONSTRAINT `tb_usuarios_ibfk_1` FOREIGN KEY (`cargo`) REFERENCES `tb_cargos` (`id_cargo`);

--
-- Restrições para tabelas `tb_venda_cliente`
--
ALTER TABLE `tb_venda_cliente`
  ADD CONSTRAINT `tb_venda_cliente_ibfk_1` FOREIGN KEY (`venda`) REFERENCES `tb_vendas` (`id_venda`),
  ADD CONSTRAINT `tb_venda_cliente_ibfk_2` FOREIGN KEY (`cliente`) REFERENCES `tb_clientes` (`id_cliente`);

--
-- Restrições para tabelas `tb_venda_vendedor`
--
ALTER TABLE `tb_venda_vendedor`
  ADD CONSTRAINT `tb_venda_vendedor_ibfk_1` FOREIGN KEY (`venda`) REFERENCES `tb_vendas` (`id_venda`),
  ADD CONSTRAINT `tb_venda_vendedor_ibfk_2` FOREIGN KEY (`vendedor`) REFERENCES `tb_usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
