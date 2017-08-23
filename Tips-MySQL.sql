-- 日本語UTF-8, LF



-- ===================================================================
-- database management

DROP DATABASE IF EXISTS `__DATABASE_NAME__`;
CREATE DATABASE `__DATABASE_NAME__` character set utf8;

SHOW DATABASES;



-- ===================================================================
-- table management

DROP TABLE IF EXISTS `__TABLE_NAME__`;
CREATE TABLE `__TABLE_NAME__`
(
	`c__id` bigint(20) NOT NULL,
	`c__name` text NOT NULL,
	PRIMARY KEY ( `c__id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SHOW CREATE TABLE `__TABLE_NAME__`\G
TRUNCATE TABLE `__TABLE_NAME__`;
INSERT INTO `__TABLE_NAME__` SET `c__id` = 1, `c__name` = 'data';

SELECT COUNT( * ) FROM `__TABLE_NAME__`;
SELECT * FROM `__TABLE_NAME__`;
SHOW TABLES;



-- ===================================================================
-- user management

CREATE USER '__USER_NAME__'@'__IP_RANGE__';
CREATE USER '__USER_NAME__'@'localhost';
GRANT SELECT ON `__DATABASE_NAME__`.* TO '__USER_NAME__'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON `__DATABASE_NAME__`.`__TABLE_NAME__` TO '__USER_NAME__'@'localhost';
REVOKE SELECT ON `__DATABASE_NAME__`.* FROM '__USER_NAME__'@'localhost';
REVOKE SELECT, INSERT, UPDATE, DELETE ON `__DATABASE_NAME__`.`__TABLE_NAME__` FROM '__USER_NAME__'@'localhost';
UPDATE `mysql`.`user` SET `authentication_string` = '*__PASSWORD_HASH__' WHERE `user` = '__USER_NAME__';

SELECT `user`, `host`, `authentication_string` FROM `mysql`.`user`;
SELECT PASSWORD( '__PASSWORD__' );
SHOW GRANTS FOR '__USER_NAME__'@'localhost';



-- ===================================================================
-- etc.

FLUSH PRIVILEGES;
USE `__DATABASE_NAME__`;



