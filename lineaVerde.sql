-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `tipo_id` (`tipo_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`tipo_id`) REFERENCES `notifications_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `notifications` (`id`, `user_id`, `tipo_id`, `nombre`, `created`, `modified`) VALUES
(1,	1,	3,	'Bache en carretera 542',	NULL,	NULL),
(2,	1,	1,	'Corta de setos en carretera 895',	NULL,	NULL),
(3,	2,	3,	'Falta de hierba en jardín central',	NULL,	NULL);

DROP TABLE IF EXISTS `notifications_types`;
CREATE TABLE `notifications_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `notifications_types` (`id`, `nombre`, `created`, `modified`) VALUES
(1,	'poda',	NULL,	NULL),
(2,	'siembra',	NULL,	NULL),
(3,	'asfaltado',	NULL,	NULL);

DROP TABLE IF EXISTS `notifications_users`;
CREATE TABLE `notifications_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `notification_id` (`notification_id`),
  CONSTRAINT `notifications_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `notifications_users_ibfk_2` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `notifications_users` (`id`, `user_id`, `notification_id`) VALUES
(1,	1,	3),
(2,	2,	1),
(3,	2,	3);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `nombre`, `created`, `modified`) VALUES
(1,	'Alberto',	NULL,	NULL),
(2,	'Luis',	NULL,	NULL),
(3,	'Jose',	NULL,	NULL);

-- 2020-01-16 19:59:17
