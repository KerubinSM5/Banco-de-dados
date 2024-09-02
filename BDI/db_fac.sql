-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_fac
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `db_fac` ;

-- -----------------------------------------------------
-- Schema db_fac
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_fac` DEFAULT CHARACTER SET utf8 ;
USE `db_fac` ;

-- -----------------------------------------------------
-- Table `db_fac`.`tb_faculdade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_fac`.`tb_faculdade` ;

CREATE TABLE IF NOT EXISTS `db_fac`.`tb_faculdade` (
  `idt_faculdade` INT NOT NULL AUTO_INCREMENT,
  `nme_faculdade` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idt_faculdade`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_fac`.`tb_curso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_fac`.`tb_curso` ;

CREATE TABLE IF NOT EXISTS `db_fac`.`tb_curso` (
  `idt_curso` INT NOT NULL AUTO_INCREMENT,
  `nme_curso` VARCHAR(45) NOT NULL,
  `dta_abertura_curso` DATE NOT NULL,
  `cod_faculdade` INT NOT NULL,
  PRIMARY KEY (`idt_curso`),
  INDEX `fk_tb_curso_tb_faculdade_idx` (`cod_faculdade` ASC) VISIBLE,
  CONSTRAINT `fk_tb_curso_tb_faculdade`
    FOREIGN KEY (`cod_faculdade`)
    REFERENCES `db_fac`.`tb_faculdade` (`idt_faculdade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_fac`.`tb_aluno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_fac`.`tb_aluno` ;

CREATE TABLE IF NOT EXISTS `db_fac`.`tb_aluno` (
  `idt_aluno` INT NOT NULL AUTO_INCREMENT,
  `nme_aluno` VARCHAR(45) NOT NULL,
  `dta_nasc_aluno` DATE NOT NULL,
  `cod_curso` INT NOT NULL,
  PRIMARY KEY (`idt_aluno`),
  INDEX `fk_tb_aluno_tb_curso1_idx` (`cod_curso` ASC) VISIBLE,
  CONSTRAINT `fk_tb_aluno_tb_curso1`
    FOREIGN KEY (`cod_curso`)
    REFERENCES `db_fac`.`tb_curso` (`idt_curso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `db_fac`.`tb_faculdade`
-- -----------------------------------------------------
START TRANSACTION;
USE `db_fac`;
INSERT INTO `db_fac`.`tb_faculdade` (`idt_faculdade`, `nme_faculdade`) VALUES (1, 'CEUB');
INSERT INTO `db_fac`.`tb_faculdade` (`idt_faculdade`, `nme_faculdade`) VALUES (2, 'Católica');
INSERT INTO `db_fac`.`tb_faculdade` (`idt_faculdade`, `nme_faculdade`) VALUES (3, 'Projeção');

COMMIT;


-- -----------------------------------------------------
-- Data for table `db_fac`.`tb_curso`
-- -----------------------------------------------------
START TRANSACTION;
USE `db_fac`;
INSERT INTO `db_fac`.`tb_curso` (`idt_curso`, `nme_curso`, `dta_abertura_curso`, `cod_faculdade`) VALUES (1, 'Ciencia da Computação', '1999-08-01', 1);
INSERT INTO `db_fac`.`tb_curso` (`idt_curso`, `nme_curso`, `dta_abertura_curso`, `cod_faculdade`) VALUES (2, 'Biologia', '1985-01-01', 2);
INSERT INTO `db_fac`.`tb_curso` (`idt_curso`, `nme_curso`, `dta_abertura_curso`, `cod_faculdade`) VALUES (3, 'Análise de sistemas', '2002-02-01', 1);
INSERT INTO `db_fac`.`tb_curso` (`idt_curso`, `nme_curso`, `dta_abertura_curso`, `cod_faculdade`) VALUES (4, 'Medicina', '2010-01-01', 1);
INSERT INTO `db_fac`.`tb_curso` (`idt_curso`, `nme_curso`, `dta_abertura_curso`, `cod_faculdade`) VALUES (5, 'Direito', '1971-01-01', 1);
INSERT INTO `db_fac`.`tb_curso` (`idt_curso`, `nme_curso`, `dta_abertura_curso`, `cod_faculdade`) VALUES (6, 'Pedagogia', '1983-08-02', 2);
INSERT INTO `db_fac`.`tb_curso` (`idt_curso`, `nme_curso`, `dta_abertura_curso`, `cod_faculdade`) VALUES (7, 'Administração', '2010-01-01', 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `db_fac`.`tb_aluno`
-- -----------------------------------------------------
START TRANSACTION;
USE `db_fac`;
INSERT INTO `db_fac`.`tb_aluno` (`idt_aluno`, `nme_aluno`, `dta_nasc_aluno`, `cod_curso`) VALUES (1, 'Rodrigo Filho I', '2000-04-13', 1);
INSERT INTO `db_fac`.`tb_aluno` (`idt_aluno`, `nme_aluno`, `dta_nasc_aluno`, `cod_curso`) VALUES (2, 'Rodrigo Filho II', '2002-08-02', 1);
INSERT INTO `db_fac`.`tb_aluno` (`idt_aluno`, `nme_aluno`, `dta_nasc_aluno`, `cod_curso`) VALUES (3, 'Rodrigo Filho III', '1999-02-08', 2);
INSERT INTO `db_fac`.`tb_aluno` (`idt_aluno`, `nme_aluno`, `dta_nasc_aluno`, `cod_curso`) VALUES (4, 'Igor', '2004-07-09', 1);
INSERT INTO `db_fac`.`tb_aluno` (`idt_aluno`, `nme_aluno`, `dta_nasc_aluno`, `cod_curso`) VALUES (5, 'Guilherme', '1990-03-30', 3);
INSERT INTO `db_fac`.`tb_aluno` (`idt_aluno`, `nme_aluno`, `dta_nasc_aluno`, `cod_curso`) VALUES (6, 'Marcela', '2001-08-10', 4);
INSERT INTO `db_fac`.`tb_aluno` (`idt_aluno`, `nme_aluno`, `dta_nasc_aluno`, `cod_curso`) VALUES (7, 'Katia', '2003-04-19', 5);
INSERT INTO `db_fac`.`tb_aluno` (`idt_aluno`, `nme_aluno`, `dta_nasc_aluno`, `cod_curso`) VALUES (8, 'Vanessa', '1997-07-24', 6);
INSERT INTO `db_fac`.`tb_aluno` (`idt_aluno`, `nme_aluno`, `dta_nasc_aluno`, `cod_curso`) VALUES (9, 'Pedro', '2005-12-05', 7);

COMMIT;

