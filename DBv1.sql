-- MySQL Script generated by MySQL Workbench
-- Tue Dec 10 21:40:12 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET ujis ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`PlayerEntity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PlayerEntity` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NULL,
  `Positions` VARCHAR(255) NULL,
  `Active` BIT(1) NULL,
  `PlayerEntitycol` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TeamEntity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TeamEntity` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Description` VARCHAR(255) NULL,
  `Active` BIT(1) NULL,
  `HomeGround` INT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LocationEntity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`LocationEntity` (
  `Id` INT NOT NULL,
  `Name` VARCHAR(255) NULL,
  `Description` VARCHAR(255) NULL,
  `Active` BIT(1) NULL,
  `Geolocation` POINT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MatchEntity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`MatchEntity` (
  `Id` INT NOT NULL,
  `TournamentId` INT NULL,
  `LocationId` INT NULL,
  `HomeTeamId` INT NULL,
  `AwayTeamId` INT NULL,
  `Description` VARCHAR(255) NULL,
  `Status` VARCHAR(45) NULL,
  `HomeScore` INT NULL,
  `AwayScore` INT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AssignmentEntity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`AssignmentEntity` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `PlayerId` VARCHAR(45) NULL,
  `TeamId` VARCHAR(45) NULL,
  `MatchId` VARCHAR(45) NULL,
  `Status` VARCHAR(45) NULL,
  `Goal` INT NULL,
  `Assist` INT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AdvertEntity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`AdvertEntity` (
  `Id` INT NOT NULL,
  `Adtype` VARCHAR(45) NULL,
  `Description` VARCHAR(255) NULL,
  `Link` VARCHAR(45) NULL,
  `MatchId` VARCHAR(45) NULL,
  `TeamId` VARCHAR(45) NULL,
  `TournamentId` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `MatchId`
    FOREIGN KEY ()
    REFERENCES `mydb`.`MatchEntity` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TournamentEntity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TournamentEntity` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NULL,
  `Description` VARCHAR(255) NULL,
  `Rules` VARCHAR(255) NULL,
  `Status` VARCHAR(45) NULL,
  `TournamentEntitycol` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
