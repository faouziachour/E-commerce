-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 21 avr. 2020 à 06:18
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `Id_contact` int(35) NOT NULL,
  `Nom` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `Commentaire` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`Id_contact`, `Nom`, `Prenom`, `Email`, `Commentaire`) VALUES
(1, 'Ayoub', 'Sami', 'AyoubSami@gmail.com', 'Trés bon site pour effectuer ses achats.'),
(3, 'Med', 'Laila', 'Laila.M@gmail.com', 'Ce site est excellent , très bon service client . '),
(5, 'Samia', 'Massia', 'sanfour@gmail.com', 'Très bon site, amusant (y)'),
(6, 'Simo', 'Mohamed', 'simo.moha@yahoo.fr', '(y) Bien');

-- --------------------------------------------------------

--
-- Structure de la table `Panier`
--

CREATE TABLE `Panier` (
  `IdPanier` int(35) NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Details` text COLLATE utf8_unicode_ci NOT NULL,
  `PrixTotal` int(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `Panier`
--

INSERT INTO `Panier` (`IdPanier`, `Email`, `Details`, `PrixTotal`) VALUES
(1, 'smi@gmail.com', '1*Tshirt1+1*Capuchon2', 340);

-- --------------------------------------------------------

--
-- Structure de la table `Produit`
--

CREATE TABLE `Produit` (
  `IdProduit` int(32) NOT NULL,
  `NomProduit` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `Prix` int(35) NOT NULL,
  `Image` varchar(35) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `Produit`
--

INSERT INTO `Produit` (`IdProduit`, `NomProduit`, `Prix`, `Image`) VALUES
(1, 'Tshirt1', 120, 'item1.jpg'),
(2, 'Capuchon1', 220, 'item2.jpg'),
(3, 'Capuchon2', 220, 'item3.jpg'),
(4, 'Tshirt2', 120, 'item4.jpg'),
(5, 'Tshirt3', 120, 'item5.jpg'),
(6, 'Tshirt4', 120, 'item6.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `usersselected`
--

CREATE TABLE `usersselected` (
  `Id` int(35) NOT NULL,
  `Username` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `Numero` varchar(35) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `usersselected`
--

INSERT INTO `usersselected` (`Id`, `Username`, `Email`, `Password`, `Numero`) VALUES
(1, 'smi', 'smi@gmail.com', 'smi', '0'),
(2, 'faouzi', 'faouzi@gmail.com', '123456', '0');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id_contact`);

--
-- Index pour la table `Panier`
--
ALTER TABLE `Panier`
  ADD PRIMARY KEY (`IdPanier`);

--
-- Index pour la table `Produit`
--
ALTER TABLE `Produit`
  ADD PRIMARY KEY (`IdProduit`);

--
-- Index pour la table `usersselected`
--
ALTER TABLE `usersselected`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id_contact` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `Panier`
--
ALTER TABLE `Panier`
  MODIFY `IdPanier` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Produit`
--
ALTER TABLE `Produit`
  MODIFY `IdProduit` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `usersselected`
--
ALTER TABLE `usersselected`
  MODIFY `Id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
