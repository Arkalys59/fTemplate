-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Set-2021 às 01:23
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `es_extended`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `items`
--

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('advancedrifle', 'CTAR-21', -1, 0, 1),
('appistol', 'Colt SCAMP', -1, 0, 1),
('assaultrifle', 'AK 47', -1, 0, 1),
('assaultrifle_mk2', 'assaultrifle_mk2', -1, 0, 1),
('assaultshotgun', 'UTAS UTS-15', -1, 0, 1),
('assaultsmg', 'Magpul PDR', -1, 0, 1),
('autoshotgun', 'AA-12', -1, 0, 1),
('ball', 'ball', -1, 0, 1),
('ball_ammo', 'ball_ammo', -1, 0, 1),
('bat', 'Baseball Bat', -1, 0, 1),
('battleaxe', 'Battle Axe', -1, 0, 1),
('bird_crap_ammo', 'bird_crap_ammo', -1, 0, 1),
('bottle', 'Bottle', -1, 0, 1),
('bread', 'Bread', 1, 0, 1),
('bullpuprifle', 'Type 86-S', -1, 0, 1),
('bullpuprifle_mk2', 'bullpuprifle_mk2', -1, 0, 1),
('bullpupshotgun', 'Kel-Tec KSG', -1, 0, 1),
('bzgas', 'bz gas', -1, 0, 1),
('carbinerifle', 'M4A1', -1, 0, 1),
('carbinerifle_mk2', 'carbinerifle_mk2', -1, 0, 1),
('combatmg', 'M249E1', -1, 0, 1),
('combatmg_mk2', 'combatmg_mk2', -1, 0, 1),
('combatpdw', 'SIG Sauer MPX', -1, 0, 1),
('combatpistol', 'Sig Sauer P228', -1, 0, 1),
('compactlauncher', 'M79 GL', -1, 0, 1),
('compactrifle', 'Micro Draco AK Pistol', -1, 0, 1),
('crowbar', 'Crow Bar', -1, 0, 1),
('dagger', 'Dagger', -1, 0, 1),
('dbshotgun', 'Zabala short-barreled side-by-side shotgun', -1, 0, 1),
('digiscanner', 'digiscanner', -1, 0, 1),
('doubleaction', 'doubleaction', -1, 0, 1),
('enemy_laser_ammo', 'enemy_laser_ammo', -1, 0, 1),
('fireextinguisher', 'Fire Extinguisher', -1, 0, 1),
('fireextinguisher_ammo', 'fireextinguisher_ammo', -1, 0, 1),
('firework', 'Firework', -1, 0, 1),
('flare', 'Flare', -1, 0, 1),
('flare_ammo', 'Flares', -1, 0, 1),
('flaregun', 'Flare Gun', -1, 0, 1),
('flashlight', 'Flashlight', -1, 0, 1),
('garbagebag', 'garbagebag', -1, 0, 1),
('golfclub', 'Golf Club', -1, 0, 1),
('grenade', 'grenade', -1, 0, 1),
('grenadelauncher', 'Milkor MGL', -1, 0, 1),
('grenadelauncher_ammo', 'grenadelauncher_ammo', -1, 0, 1),
('grenadelauncher_smoke_ammo', 'grenadelauncher_smoke_ammo', -1, 0, 1),
('gusenberg', 'M1928A1 Thompson SMG', -1, 0, 1),
('gzgas_ammo', 'gzgas_ammo', -1, 0, 1),
('hammer', 'Hammer', -1, 0, 1),
('handcuffs', 'handcuffs', -1, 0, 1),
('hatchet', 'hatchet', -1, 0, 1),
('heavypistol', 'EWB 1911', -1, 0, 1),
('heavyshotgun', 'Saiga-12K', -1, 0, 1),
('heavysniper', 'M107', -1, 0, 1),
('heavysniper_mk2', 'heavysniper_mk2', -1, 0, 1),
('hominglauncher', 'SA-7 Grail', -1, 0, 1),
('knife', 'Knife', -1, 0, 1),
('knuckle', 'Knuckledusters', -1, 0, 1),
('machete', 'machete', -1, 0, 1),
('machinepistol', 'TEC-9', -1, 0, 1),
('marksmanpistol', 'Thompson-Center Contender G2', -1, 0, 1),
('marksmanrifle', 'M39 EMR', -1, 0, 1),
('marksmanrifle_mk2', 'marksmanrifle_mk2', -1, 0, 1),
('mg', 'PKP Pecheneg', -1, 0, 1),
('mg_ammo', 'MG Ammo', -1, 0, 1),
('microsmg', 'Micro SMG', -1, 0, 1),
('minigun', 'minigun', -1, 0, 1),
('minigun_ammo', 'Minigun Ammo', -1, 0, 1),
('minismg', 'Skorpion Vz. 61', -1, 0, 1),
('molotov', 'Molotov Cocktail', -1, 0, 1),
('molotov_ammo', 'molotov_ammo', -1, 0, 1),
('musket', 'Brown Bess', -1, 0, 1),
('nightstick', 'ASP Baton', -1, 0, 1),
('nightvision', 'Night Vision', -1, 0, 1),
('parachute', 'parachute', -1, 0, 1),
('petrolcan', 'Petrol Can', -1, 0, 1),
('pipebomb', 'pipe bomb', -1, 0, 1),
('pistol', 'Colt M1911', -1, 0, 1),
('pistol_ammo', 'Pistol Ammo', -1, 0, 1),
('pistol_mk2', 'Sig Sauer P226', -1, 0, 1),
('pistol50', 'Desert Eagle', -1, 0, 1),
('plane_rocket_ammo', 'plane_rocket_ammo', -1, 0, 1),
('player_laser_ammo', 'player_laser_ammo', -1, 0, 1),
('poolcue', 'pool cue', -1, 0, 1),
('proxmine', 'Proxmine Mine', -1, 0, 1),
('pumpshotgun', 'Remington 870', -1, 0, 1),
('pumpshotgun_mk2', 'pumpshotgun_mk2', -1, 0, 1),
('railgun', 'railgun', -1, 0, 1),
('remotesniper', 'Remote Sniper', -1, 0, 1),
('revolver', 'Taurus Raging Bull', -1, 0, 1),
('revolver_mk2', 'revolver_mk2', -1, 0, 1),
('rifle_ammo', 'Rifle Ammo', -1, 0, 1),
('rpg', 'RPG-7', -1, 0, 1),
('rpg_ammo', 'RPG Ammo', -1, 0, 1),
('sawnoffshotgun', 'Mossberg 500', -1, 0, 1),
('shotgun_ammo', 'Shotgun Ammo', -1, 0, 1),
('smg', 'MP5A3', -1, 0, 1),
('smg_ammo', 'SMG Ammo', -1, 0, 1),
('smg_mk2', 'smg_mk2', -1, 0, 1),
('smokegrenade', 'smoke grenade', -1, 0, 1),
('smokegrenade_ammo', 'smokegrenade_ammo', -1, 0, 1),
('sniper_ammo', 'Sniper Ammo', -1, 0, 1),
('sniper_remote_ammo', 'Sniper Remote Ammo', -1, 0, 1),
('sniperrifle', 'PSG-1', -1, 0, 1),
('snowball', 'Snow Ball', -1, 0, 1),
('snspistol', 'H&K P7', -1, 0, 1),
('snspistol_mk2', 'snspistol_mk2', -1, 0, 1),
('space_rocket_ammo', 'space_rocket_ammo', -1, 0, 1),
('specialcarbine', 'H&K G36C', -1, 0, 1),
('specialcarbine_mk2', 'specialcarbine_mk2', -1, 0, 1),
('stickybomb', 'sticky bomb', -1, 0, 1),
('stickybomb_ammo', 'stickybomb_ammo', -1, 0, 1),
('stinger', 'stinger', -1, 0, 1),
('stinger_ammo', 'stinger_ammo', -1, 0, 1),
('stungun', 'X26 Taser', -1, 0, 1),
('stungun_ammo', 'Stungun Ammo', -1, 0, 1),
('switchblade', 'Switchblade', -1, 0, 1),
('tank_ammo', 'tank_ammo', -1, 0, 1),
('vintagepistol', 'FN Model 1910', -1, 0, 1),
('water', 'Water', 1, 0, 1),
('wrench', 'wrench', -1, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `jobs`
--

INSERT INTO `jobs` (`name`, `label`) VALUES
('unemployed', 'Unemployed');

-- --------------------------------------------------------

--
-- Estrutura da tabela `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accounts` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `inventory` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'unemployed',
  `job2_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `firstname` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateofbirth` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Índices para tabela `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Índices para tabela `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Índices para tabela `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Índices para tabela `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Índices para tabela `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Índices para tabela `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Índices para tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Índices para tabela `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Índices para tabela `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Índices para tabela `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
