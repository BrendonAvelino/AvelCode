-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/04/2024 às 19:19
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `subtitulo`, `imagem`) VALUES
(24, '', '', '04-04-2024-14-06-10-Banner4.png'),
(25, '', '', '04-04-2024-14-06-15-Banner3.png'),
(27, '', '', '04-04-2024-14-06-27-Banner2.png'),
(28, '', '', '04-04-2024-14-06-32-Banner1.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `logo` varchar(80) NOT NULL,
  `icone` varchar(80) NOT NULL,
  `instagram` varchar(80) DEFAULT NULL,
  `twitter` varchar(80) DEFAULT NULL,
  `linkedin` varchar(80) DEFAULT NULL,
  `facebook` varchar(80) DEFAULT NULL,
  `youtube` varchar(80) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `titulo_servicos` varchar(50) DEFAULT NULL,
  `subtitulo_servicos` varchar(255) DEFAULT NULL,
  `titulo_trabalhos` varchar(50) DEFAULT NULL,
  `subtitulo_trabalhos` varchar(255) DEFAULT NULL,
  `titulo_equipe` varchar(50) DEFAULT NULL,
  `subtitulo_equipe` varchar(255) DEFAULT NULL,
  `titulo_contato` varchar(50) DEFAULT NULL,
  `subtitulo_contato` varchar(255) DEFAULT NULL,
  `texto_rodape` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `email`, `senha`, `telefone`, `endereco`, `logo`, `icone`, `instagram`, `twitter`, `linkedin`, `facebook`, `youtube`, `cor`, `titulo_servicos`, `subtitulo_servicos`, `titulo_trabalhos`, `subtitulo_trabalhos`, `titulo_equipe`, `subtitulo_equipe`, `titulo_contato`, `subtitulo_contato`, `texto_rodape`) VALUES
(1, 'AvelCode', 'brendonharrissonavelino@gmail.com', '123', '(11) 96515-5653', 'R. Francisco A Zeiler, 20 - Jardim Juliana, Ferraz de Vasconcelos - SP, 08502-310', 'logo.png', 'icone.png', '@brendonharrisson', '@Ddon_aveo', 'Brendon Avelino', 'brendon harrisson avelino', '', '#466dab', 'Serviços', 'Subtitulo falando sobre os serviços', 'Meus Trabalhos', 'Confira alguns de nossos Trabalhos', 'Nosso Time', 'Conheça nossa Equipe', 'Contate-nos', 'Texto do subtitulo de contatos', 'Serviços de Manutenção e Suporte / Desenvolvimento de Software Personalizado');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `equipe`
--

INSERT INTO `equipe` (`id`, `nome`, `cargo`, `imagem`) VALUES
(1, 'Pedro Henrique', 'Marketing WEB', '1.jpg'),
(2, 'Márcia Silva', 'Consultora', '2.jpg'),
(3, 'Paloma Campos', 'Gestora Financeira', '3.jpg'),
(4, 'Wanderley Freitas', 'Consultor e Gestor', '4.png'); 

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(2, 'Treinamento em segurança alimentar para colaboradores', 'Vamos dar todo o treinamento para seus colaboradores ensinando ...<br>', '14-11-2022-23-42-42-03serv.jpg', '', 'Imagem'),
(4, 'Treinamento em estratégia de vendas para colaboradores', 'Vamos aplicar técnicas para melhoras as estratégias de vendas e ensinar os colaboradores como..<br>', '14-11-2022-23-43-24-04serv.jpg', 'https://www.youtube.com/embed/SCkGQX2En2E', 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sobre`
--

CREATE TABLE `sobre` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `sobre`
--

INSERT INTO `sobre` (`id`, `titulo`, `subtitulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(1, 'AvelCode', 'Transformando Desafios em Oportunidades: Soluções Integradas de TI e Desenvolvimento de Software Personalizado', '<div style=\"text-align: left;\"><font face=\"trebuchet ms\" size=\"5\"><i>\"A AvelCode é uma empresa especialista em Tecnologia da Informação (TI) dedicada a fornecer serviços de manutenção e suporte, garantindo a estabilidade e segurança de seus sistemas. Além disso, oferecemos soluções personalizadas de desenvolvimento de software para atender às necessidades específicas de sua empresa. Conte conosco para simplificar suas operações de TI e impulsionar o crescimento de seu negócio!\"</i></font></div>', '22-03-2024-09-07-27-Design-sem-nome-(2).png', '', 'Vídeo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trabalhos`
--

CREATE TABLE `trabalhos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(100) NOT NULL,
  `video` varchar(100) DEFAULT NULL,
  `exibir` varchar(20) NOT NULL,
  `link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `trabalhos`
--

INSERT INTO `trabalhos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`, `link`) VALUES
(2, 'Consultoria Financeira', 'Fizemos uma consultoria Financeira para este estabelecimento, nele precisamos....<br>', '15-11-2022-20-26-28-con01.jpg', '', 'Imagem', ''),
(4, 'Gestão de Estoque', 'Nessa nossa consultoria conseguimos melhorar os lucros em 60% aplicando técnicas...<br>', '15-11-2022-23-30-02-vsg_2286.jpg', 'https://www.youtube.com/embed/kv22PI8J7yo?si=DxGxhHMbCJD5ogvb', 'Vídeo', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sobre`
--
ALTER TABLE `sobre`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sobre`
--
ALTER TABLE `sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
