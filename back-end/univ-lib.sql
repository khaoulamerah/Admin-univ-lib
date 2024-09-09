-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 09 sep. 2024 à 10:56
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `univ-lib`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact_us`
--

CREATE TABLE `contact_us` (
  `id_contact_us` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `message` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `id_courses` int(10) NOT NULL,
  `id_langage` int(10) NOT NULL,
  `level` varchar(5) NOT NULL,
  `date_creation` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `exam`
--

CREATE TABLE `exam` (
  `id_exam` int(7) NOT NULL,
  `name_exam` varchar(7) NOT NULL,
  `id_groupe` int(7) NOT NULL,
  `id_langage` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `exam_categories`
--

CREATE TABLE `exam_categories` (
  `id_exam_categories` int(10) NOT NULL,
  `id_exam` int(6) NOT NULL,
  `date_exam` datetime(6) NOT NULL,
  `name_category` varchar(6) NOT NULL,
  `duration` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id_groupe` int(10) NOT NULL,
  `id_courses` int(10) NOT NULL,
  `nom_groupe` varchar(10) NOT NULL,
  `num_students` int(10) NOT NULL,
  `max_student` int(10) NOT NULL,
  `id_teacher` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groupe_got_permission`
--

CREATE TABLE `groupe_got_permission` (
  `id_ggt` int(10) NOT NULL,
  `id_gp` int(10) NOT NULL,
  `id_permission` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groupe_permission`
--

CREATE TABLE `groupe_permission` (
  `id_gp` int(10) NOT NULL,
  `name_groupe` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `id_historique` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `time` time(6) NOT NULL,
  `description` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `langage`
--

CREATE TABLE `langage` (
  `id_langage` int(10) NOT NULL,
  `langage_name` varchar(10) NOT NULL,
  `date_creation` datetime(6) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `annee_universitaire` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

CREATE TABLE `log` (
  `id_log` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `tile_log` varchar(10) NOT NULL,
  `last_activity` tinyint(1) NOT NULL,
  `time_logout` time(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `id_session` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `marks`
--

CREATE TABLE `marks` (
  `id_marks` int(10) NOT NULL,
  `id_exam_categories` int(7) NOT NULL,
  `id_student_admited` int(7) NOT NULL,
  `mark` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id_notif` int(10) NOT NULL,
  `id_courses` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `title` varchar(10) NOT NULL,
  `content` int(10) NOT NULL,
  `date_creation` datetime(6) NOT NULL,
  `location` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id_permission` int(10) NOT NULL,
  `description` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `price`
--

CREATE TABLE `price` (
  `id_price` int(10) NOT NULL,
  `id_status` int(10) NOT NULL,
  `id_langage` int(10) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id_review` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `date_creation` datetime(6) NOT NULL,
  `content` int(10) NOT NULL,
  `rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id_status` int(10) NOT NULL,
  `name_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `id_student` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `student_admited`
--

CREATE TABLE `student_admited` (
  `id_admitted` int(7) NOT NULL,
  `id_student` int(7) NOT NULL,
  `id_courses` int(7) NOT NULL,
  `id_groupe` int(7) NOT NULL,
  `date_admission` datetime(6) NOT NULL,
  `date_paiement` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `has_succeded` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `student_doc`
--

CREATE TABLE `student_doc` (
  `id_doc` int(10) NOT NULL,
  `id_student` int(10) NOT NULL,
  `name_doc` varchar(10) NOT NULL,
  `doc_location` varchar(10) NOT NULL,
  `date_submission` datetime(6) NOT NULL,
  `type` varchar(10) NOT NULL,
  `proof` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `student_subscription`
--

CREATE TABLE `student_subscription` (
  `id_sebscription` int(10) NOT NULL,
  `id_student` int(10) NOT NULL,
  `id_langage` int(10) NOT NULL,
  `level` varchar(5) NOT NULL,
  `location` varchar(8) NOT NULL,
  `date_subscription` datetime(6) NOT NULL,
  `is_accepted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `teacher`
--

CREATE TABLE `teacher` (
  `id_teacher` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `first-name` varchar(10) NOT NULL,
  `last-name` varchar(10) NOT NULL,
  `date_of_birth` datetime(6) NOT NULL,
  `adresse` varchar(10) NOT NULL,
  `phone number` int(10) NOT NULL,
  `email` varchar(10) NOT NULL,
  `Nationnality` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `date_creation` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_super_user` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_got_group_perm`
--

CREATE TABLE `user_got_group_perm` (
  `id_uggp` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_gp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_got_unique_perm`
--

CREATE TABLE `user_got_unique_perm` (
  `id_ugup` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_permission` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id_contact_us`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id_courses`),
  ADD KEY `id_langage` (`id_langage`);

--
-- Index pour la table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id_exam`),
  ADD KEY `id_groupe` (`id_groupe`),
  ADD KEY `id_langage` (`id_langage`);

--
-- Index pour la table `exam_categories`
--
ALTER TABLE `exam_categories`
  ADD PRIMARY KEY (`id_exam_categories`),
  ADD KEY `id_exam` (`id_exam`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id_groupe`),
  ADD KEY `id_teacher` (`id_teacher`),
  ADD KEY `id_courses` (`id_courses`);

--
-- Index pour la table `groupe_got_permission`
--
ALTER TABLE `groupe_got_permission`
  ADD PRIMARY KEY (`id_ggt`),
  ADD KEY `id_permission` (`id_permission`),
  ADD KEY `id_gp` (`id_gp`);

--
-- Index pour la table `groupe_permission`
--
ALTER TABLE `groupe_permission`
  ADD PRIMARY KEY (`id_gp`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id_historique`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `langage`
--
ALTER TABLE `langage`
  ADD PRIMARY KEY (`id_langage`);

--
-- Index pour la table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id_marks`),
  ADD KEY `id_exam_categories` (`id_exam_categories`),
  ADD KEY `id_student_admited` (`id_student_admited`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id_notif`),
  ADD KEY `id_courses` (`id_courses`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id_permission`);

--
-- Index pour la table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id_price`),
  ADD KEY `id_langage` (`id_langage`),
  ADD KEY `id_status` (`id_status`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_status` (`id_status`);

--
-- Index pour la table `student_admited`
--
ALTER TABLE `student_admited`
  ADD PRIMARY KEY (`id_admitted`),
  ADD KEY `id_courses` (`id_courses`),
  ADD KEY `id_groupe` (`id_groupe`),
  ADD KEY `id_student` (`id_student`);

--
-- Index pour la table `student_doc`
--
ALTER TABLE `student_doc`
  ADD PRIMARY KEY (`id_doc`),
  ADD KEY `id_student` (`id_student`);

--
-- Index pour la table `student_subscription`
--
ALTER TABLE `student_subscription`
  ADD PRIMARY KEY (`id_sebscription`),
  ADD KEY `id_langage` (`id_langage`),
  ADD KEY `id_student` (`id_student`);

--
-- Index pour la table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id_teacher`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `user_got_group_perm`
--
ALTER TABLE `user_got_group_perm`
  ADD PRIMARY KEY (`id_uggp`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_gp` (`id_gp`);

--
-- Index pour la table `user_got_unique_perm`
--
ALTER TABLE `user_got_unique_perm`
  ADD PRIMARY KEY (`id_ugup`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_permission` (`id_permission`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id_contact_us` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `courses`
--
ALTER TABLE `courses`
  MODIFY `id_courses` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exam`
--
ALTER TABLE `exam`
  MODIFY `id_exam` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exam_categories`
--
ALTER TABLE `exam_categories`
  MODIFY `id_exam_categories` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id_groupe` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `groupe_got_permission`
--
ALTER TABLE `groupe_got_permission`
  MODIFY `id_ggt` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `groupe_permission`
--
ALTER TABLE `groupe_permission`
  MODIFY `id_gp` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `id_historique` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `langage`
--
ALTER TABLE `langage`
  MODIFY `id_langage` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `marks`
--
ALTER TABLE `marks`
  MODIFY `id_marks` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id_notif` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id_permission` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `price`
--
ALTER TABLE `price`
  MODIFY `id_price` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id_review` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `id_student` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `student_admited`
--
ALTER TABLE `student_admited`
  MODIFY `id_admitted` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `student_doc`
--
ALTER TABLE `student_doc`
  MODIFY `id_doc` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `student_subscription`
--
ALTER TABLE `student_subscription`
  MODIFY `id_sebscription` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id_teacher` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_got_group_perm`
--
ALTER TABLE `user_got_group_perm`
  MODIFY `id_uggp` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_got_unique_perm`
--
ALTER TABLE `user_got_unique_perm`
  MODIFY `id_ugup` int(10) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contact_us`
--
ALTER TABLE `contact_us`
  ADD CONSTRAINT `contact_us_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`id_langage`) REFERENCES `langage` (`id_langage`);

--
-- Contraintes pour la table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`id_groupe`) REFERENCES `groupe` (`id_groupe`),
  ADD CONSTRAINT `exam_ibfk_2` FOREIGN KEY (`id_langage`) REFERENCES `langage` (`id_langage`);

--
-- Contraintes pour la table `exam_categories`
--
ALTER TABLE `exam_categories`
  ADD CONSTRAINT `exam_categories_ibfk_1` FOREIGN KEY (`id_exam`) REFERENCES `exam` (`id_exam`);

--
-- Contraintes pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD CONSTRAINT `groupe_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`),
  ADD CONSTRAINT `groupe_ibfk_2` FOREIGN KEY (`id_courses`) REFERENCES `courses` (`id_courses`);

--
-- Contraintes pour la table `groupe_got_permission`
--
ALTER TABLE `groupe_got_permission`
  ADD CONSTRAINT `groupe_got_permission_ibfk_1` FOREIGN KEY (`id_permission`) REFERENCES `permissions` (`id_permission`),
  ADD CONSTRAINT `groupe_got_permission_ibfk_2` FOREIGN KEY (`id_gp`) REFERENCES `groupe_permission` (`id_gp`);

--
-- Contraintes pour la table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `historique_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`id_exam_categories`) REFERENCES `exam_categories` (`id_exam_categories`),
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`id_student_admited`) REFERENCES `student_admited` (`id_admitted`);

--
-- Contraintes pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`id_courses`) REFERENCES `courses` (`id_courses`),
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `price_ibfk_1` FOREIGN KEY (`id_langage`) REFERENCES `langage` (`id_langage`),
  ADD CONSTRAINT `price_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);

--
-- Contraintes pour la table `student_admited`
--
ALTER TABLE `student_admited`
  ADD CONSTRAINT `student_admited_ibfk_1` FOREIGN KEY (`id_courses`) REFERENCES `courses` (`id_courses`),
  ADD CONSTRAINT `student_admited_ibfk_2` FOREIGN KEY (`id_groupe`) REFERENCES `groupe` (`id_groupe`),
  ADD CONSTRAINT `student_admited_ibfk_3` FOREIGN KEY (`id_student`) REFERENCES `student` (`id_student`);

--
-- Contraintes pour la table `student_doc`
--
ALTER TABLE `student_doc`
  ADD CONSTRAINT `student_doc_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `student` (`id_student`);

--
-- Contraintes pour la table `student_subscription`
--
ALTER TABLE `student_subscription`
  ADD CONSTRAINT `student_subscription_ibfk_1` FOREIGN KEY (`id_langage`) REFERENCES `langage` (`id_langage`),
  ADD CONSTRAINT `student_subscription_ibfk_2` FOREIGN KEY (`id_student`) REFERENCES `student` (`id_student`);

--
-- Contraintes pour la table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `user_got_group_perm`
--
ALTER TABLE `user_got_group_perm`
  ADD CONSTRAINT `user_got_group_perm_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `user_got_group_perm_ibfk_2` FOREIGN KEY (`id_gp`) REFERENCES `groupe_permission` (`id_gp`);

--
-- Contraintes pour la table `user_got_unique_perm`
--
ALTER TABLE `user_got_unique_perm`
  ADD CONSTRAINT `user_got_unique_perm_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `user_got_unique_perm_ibfk_2` FOREIGN KEY (`id_permission`) REFERENCES `permissions` (`id_permission`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
