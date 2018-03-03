-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03-Mar-2018 às 01:30
-- Versão do servidor: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `celular`
--

CREATE TABLE `celular` (
  `id` int(4) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `descricao` varchar(255) COLLATE utf8_bin NOT NULL,
  `categoria` varchar(255) COLLATE utf8_bin NOT NULL,
  `foto` varchar(255) COLLATE utf8_bin NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `celular`
--

INSERT INTO `celular` (`id`, `nome`, `descricao`, `categoria`, `foto`, `preco`) VALUES
(1, 'Samsung On 7', 'Dourado, tela 4.9', 'celular', 'celular1.jpg', 950),
(2, 'Samsung Pocket', 'Preto, tela 3.0', 'celular', 'poque.jpeg', 800),
(3, 'Samsung J5 Pro', 'Preto, tela 5.0', 'celular', 'cel3.jpg', 1000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(4) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `cpf` bigint(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `senha` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES
(5, 'A logica do consumo', 1231231231, 'teste@teste.com2', '123'),
(6, '', 0, '', ''),
(7, '', 0, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `computador`
--

CREATE TABLE `computador` (
  `id` int(4) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `descricao` varchar(255) COLLATE utf8_bin NOT NULL,
  `categoria` varchar(255) COLLATE utf8_bin NOT NULL,
  `foto` varchar(255) COLLATE utf8_bin NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `computador`
--

INSERT INTO `computador` (`id`, `nome`, `descricao`, `categoria`, `foto`, `preco`) VALUES
(1, 'Ar condicionado', 'branco', 'eletronico', 'ar.jpg', 2000),
(2, 'Tv ', 'preta, led, tela 50', 'eletronico', 'tv.jpg', 4000),
(3, 'Som', 'preto', 'eletronico', 'som.jpg', 800);

-- --------------------------------------------------------

--
-- Estrutura da tabela `eletrodomesticos`
--

CREATE TABLE `eletrodomesticos` (
  `id` int(4) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `descricao` varchar(255) COLLATE utf8_bin NOT NULL,
  `categoria` varchar(255) COLLATE utf8_bin NOT NULL,
  `foto` varchar(255) COLLATE utf8_bin NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fucionario`
--

CREATE TABLE `fucionario` (
  `id` int(4) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `cpf` bigint(11) NOT NULL,
  `idade` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `informatica`
--

CREATE TABLE `informatica` (
  `id` int(4) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `descricao` varchar(255) COLLATE utf8_bin NOT NULL,
  `categoria` varchar(255) COLLATE utf8_bin NOT NULL,
  `foto` varchar(255) COLLATE utf8_bin NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `informatica`
--

INSERT INTO `informatica` (`id`, `nome`, `descricao`, `categoria`, `foto`, `preco`) VALUES
(1, 'Notebook Deel', 'cinza espacial', 'informatica', 'info1.jpg', 2500),
(2, 'Mouse', 'preto, azul, vermelho e cinza', 'informatica', 'info3.jpg', 35),
(3, 'Teclado', 'preto com detalhes verde', 'informatica', 'info.jpg', 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo`
--

CREATE TABLE `jogo` (
  `id` int(4) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `descricao` varchar(255) COLLATE utf8_bin NOT NULL,
  `categoria` varchar(255) COLLATE utf8_bin NOT NULL,
  `foto` varchar(255) COLLATE utf8_bin NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `jogo`
--

INSERT INTO `jogo` (`id`, `nome`, `descricao`, `categoria`, `foto`, `preco`) VALUES
(1, 'The last of us', 'Acao', 'jogo', 'games1.jpg', 50),
(2, 'Pes 2018', 'Animacao', 'jogo', 'games2.jpg', 200),
(3, 'Console Ps4', 'Preto, 1TB', 'jogo', 'games3.jpg', 2000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `descricao` varchar(255) COLLATE utf8_bin NOT NULL,
  `categoria` varchar(255) COLLATE utf8_bin NOT NULL,
  `foto` varchar(255) COLLATE utf8_bin NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id`, `nome`, `descricao`, `categoria`, `foto`, `preco`) VALUES
(1, 'Implantando Gorvernancia de TI', 'Informatica', 'livro', 'livro1.jpg', 20),
(2, 'O Futuro da Humanidade', 'Sociologia', 'livro', 'livro2.jpg', 15),
(3, 'Pesquisa Academica', 'Sociologia', 'livro', 'livro3.jpg', 23);

-- --------------------------------------------------------

--
-- Estrutura da tabela `roupa`
--

CREATE TABLE `roupa` (
  `id` int(4) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `descricao` varchar(255) COLLATE utf8_bin NOT NULL,
  `categoria` varchar(255) COLLATE utf8_bin NOT NULL,
  `foto` varchar(255) COLLATE utf8_bin NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `roupa`
--

INSERT INTO `roupa` (`id`, `nome`, `descricao`, `categoria`, `foto`, `preco`) VALUES
(1, 'Blusa Polo', 'Azul marinho, tamanho M', 'roupa', 'roupa1.jpg', 45),
(2, 'Regatas', 'Verde, Azul, Preta, Branca e Cinza, tamanho P, M, G', 'roupa', 'roupa2.jpg', 20),
(3, 'Camisa Alemanha', 'Branca, GG', 'roupa', 'roupa3.jpg', 300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `celular`
--
ALTER TABLE `celular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `computador`
--
ALTER TABLE `computador`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eletrodomesticos`
--
ALTER TABLE `eletrodomesticos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fucionario`
--
ALTER TABLE `fucionario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informatica`
--
ALTER TABLE `informatica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roupa`
--
ALTER TABLE `roupa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `celular`
--
ALTER TABLE `celular`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `computador`
--
ALTER TABLE `computador`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eletrodomesticos`
--
ALTER TABLE `eletrodomesticos`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fucionario`
--
ALTER TABLE `fucionario`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `informatica`
--
ALTER TABLE `informatica`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jogo`
--
ALTER TABLE `jogo`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roupa`
--
ALTER TABLE `roupa`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
