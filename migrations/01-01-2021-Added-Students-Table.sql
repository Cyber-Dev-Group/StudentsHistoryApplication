-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------
create database students;



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "sessions" -------------------------------------
CREATE TABLE sessions
(
    id varchar(32) NOT NULL,
    access int(10) unsigned,
    data text,
    PRIMARY KEY (id)
);
-- -------------------------------------------------------------


-- CREATE TABLE "students" -------------------------------------
CREATE TABLE `students`(
    `name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `surname` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `gender` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `age` TinyInt( 0 ) NOT NULL,
    `groupnumber` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `mail` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `score` Smallint( 0 ) NOT NULL,
    `dob` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `islocal` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
    `id` Int( 0 ) AUTO_INCREMENT NULL,
    `session` LongText CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
    CONSTRAINT `unique_id` UNIQUE( `id` ),
    CONSTRAINT `unique_mail` UNIQUE( `mail` ) )
    CHARACTER SET = utf8
    COLLATE = utf8_general_ci
    ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users`(
    `login` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `MD5` Binary( 16 ) NOT NULL,
    `salt` VarChar( 12 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    PRIMARY KEY ( `login` ),
    CONSTRAINT `users_login_uindex` UNIQUE( `login` ) )
    CHARACTER SET = utf8
    COLLATE = utf8_general_ci
    ENGINE = InnoDB;
-- -------------------------------------------------------------

BEGIN;

INSERT INTO `students`(`name`,`surname`,`gender`,`age`,`groupnumber`,`mail`,`score`,`dob`,`islocal`,`id`,`session`) VALUES
( 'testname', 'testsur', 'female', '4', 'A115', 'test@example.com', '185', '2021-01-10', 'on', NULL, NULL );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "timestamp" ------------------------------------
CREATE INDEX `timestamp` USING BTREE ON `sessions`( `timestamp` );
-- -------------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------

ALTER USER root IDENTIFIED WITH mysql_native_password BY 'password';