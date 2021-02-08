-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema pasantias
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pasantias
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pasantias` DEFAULT CHARACTER SET latin1 ;
USE `pasantias` ;

-- -----------------------------------------------------
-- Table `pasantias`.`tipotelefono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`tipotelefono` (
  `id_tipotelefono` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipotelefono`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`especialidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`especialidad` (
  `id_especialidad` INT(11) NOT NULL,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_especialidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`alumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`alumno` (
  `legajo` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `id_especialidad` INT(11) NOT NULL,
  `mail` VARCHAR(100) NULL DEFAULT NULL,
  `tipo_telefono` INT(11) NULL DEFAULT NULL,
  `nro_telefono` INT(11) NOT NULL,
  PRIMARY KEY (`legajo`),
  INDEX `tipo_telefono` (`tipo_telefono` ASC),
  INDEX `id_especialidad` (`id_especialidad` ASC),
  CONSTRAINT `alumno_ibfk_1`
    FOREIGN KEY (`tipo_telefono`)
    REFERENCES `pasantias`.`tipotelefono` (`id_tipotelefono`),
  CONSTRAINT `alumno_ibfk_2`
    FOREIGN KEY (`id_especialidad`)
    REFERENCES `pasantias`.`especialidad` (`id_especialidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`pais` (
  `id_pais` INT(11) NOT NULL,
  `estado` TINYINT(1) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`provincia` (
  `id_provincia` INT(11) NOT NULL,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `id_pais` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_provincia`),
  INDEX `id_pais_idx` (`id_pais` ASC),
  CONSTRAINT `id_pais`
    FOREIGN KEY (`id_pais`)
    REFERENCES `pasantias`.`pais` (`id_pais`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`localidad` (
  `id_localidad` INT(11) NOT NULL,
  `estado` VARCHAR(45) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `id_provincia` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_localidad`),
  INDEX `id_provincia_idx` (`id_provincia` ASC),
  CONSTRAINT `id_provincia`
    FOREIGN KEY (`id_provincia`)
    REFERENCES `pasantias`.`provincia` (`id_provincia`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`barrio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`barrio` (
  `id_barrio` INT(11) NOT NULL,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `id_localidad` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_barrio`),
  INDEX `id_localidad_idx` (`id_localidad` ASC),
  CONSTRAINT `id_localidad`
    FOREIGN KEY (`id_localidad`)
    REFERENCES `pasantias`.`localidad` (`id_localidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`cantidadaniospasante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`cantidadaniospasante` (
  `id_cantidad_aniospasante` INT(11) NOT NULL,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_cantidad_aniospasante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`tipoempresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`tipoempresa` (
  `id_tipoEmpresa` INT(11) NOT NULL,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipoEmpresa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`empresa` (
  `id_empresa` INT(11) NOT NULL,
  `cuit` VARCHAR(45) NULL DEFAULT NULL,
  `guid` VARCHAR(45) NULL DEFAULT NULL,
  `observaciones` VARCHAR(45) NULL DEFAULT NULL,
  `razon_social` VARCHAR(45) NULL DEFAULT NULL,
  `id_tipoEmpresa` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_empresa`),
  INDEX `id_tipoEmpresa_idx` (`id_tipoEmpresa` ASC),
  CONSTRAINT `id_tipoEmpresa`
    FOREIGN KEY (`id_tipoEmpresa`)
    REFERENCES `pasantias`.`tipoempresa` (`id_tipoEmpresa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`estadoarm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`estadoarm` (
  `id_estado` INT(11) NOT NULL,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`genero` (
  `id_genero` INT(11) NOT NULL,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_genero`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '		';


-- -----------------------------------------------------
-- Table `pasantias`.`estadosucursal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`estadosucursal` (
  `id_estado_sucursal` INT(11) NOT NULL,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado_sucursal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`sucursalesxempresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`sucursalesxempresa` (
  `id_sucursal` INT(11) NOT NULL,
  `nombre_sucursal` VARCHAR(45) NULL DEFAULT NULL,
  `cantidad_empleados` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `fecha_registro` DATETIME NULL DEFAULT NULL,
  `rubro` VARCHAR(45) NULL DEFAULT NULL,
  `sitio_web` VARCHAR(45) NULL DEFAULT NULL,
  `celular` INT(11) NULL DEFAULT NULL,
  `telefono_fijo` INT(11) NULL DEFAULT NULL,
  `calle` VARCHAR(45) NULL DEFAULT NULL,
  `numero_calle` INT(11) NULL DEFAULT NULL,
  `id_barrio` INT(11) NULL DEFAULT NULL,
  `id_empresa` INT(11) NULL DEFAULT NULL,
  `id_estado_sucursal` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`),
  INDEX `id_empresa_idx` (`id_empresa` ASC),
  INDEX `id_barrio_idx` (`id_barrio` ASC),
  INDEX `id_estado_sucursal_idx` (`id_estado_sucursal` ASC),
  CONSTRAINT `id_barrio`
    FOREIGN KEY (`id_barrio`)
    REFERENCES `pasantias`.`barrio` (`id_barrio`),
  CONSTRAINT `id_empresa`
    FOREIGN KEY (`id_empresa`)
    REFERENCES `pasantias`.`empresa` (`id_empresa`),
  CONSTRAINT `id_estado_sucursal`
    FOREIGN KEY (`id_estado_sucursal`)
    REFERENCES `pasantias`.`estadosucursal` (`id_estado_sucursal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`formularioarm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`formularioarm` (
  `id_arm` INT(11) NOT NULL,
  `cantidadPasantes` INT(11) NULL DEFAULT NULL,
  `cargoACubrir` VARCHAR(300) NULL DEFAULT NULL,
  `codigoArm` VARCHAR(45) NULL DEFAULT NULL,
  `denegacionDebidoA` VARCHAR(300) NULL DEFAULT NULL,
  `duracionMeses` INT(11) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `estudiante_docente` TINYINT(4) NULL DEFAULT NULL,
  `experiencia` VARCHAR(300) NULL DEFAULT NULL,
  `fehcaAlta` DATETIME NULL DEFAULT NULL,
  `fechaBaja` DATETIME NULL DEFAULT NULL,
  `horaInicio` DATETIME NULL DEFAULT NULL,
  `horaFin` DATETIME NULL DEFAULT NULL,
  `lugarTrabajo` VARCHAR(300) NULL DEFAULT NULL,
  `otrosConocimientos` VARCHAR(300) NULL DEFAULT NULL,
  `otrosRequisitos` VARCHAR(300) NULL DEFAULT NULL,
  `perfilSolicitado` VARCHAR(300) NULL DEFAULT NULL,
  `remuneracion` FLOAT NULL DEFAULT NULL,
  `seOfrece` VARCHAR(300) NULL DEFAULT NULL,
  `id_genero` INT(11) NULL DEFAULT NULL,
  `id_cantidadAnios` INT(11) NULL DEFAULT NULL,
  `id_estado` INT(11) NULL DEFAULT NULL,
  `id_sucursal` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_arm`),
  INDEX `id_genero_idx` (`id_genero` ASC),
  INDEX `id_cantidadAños_idx` (`id_cantidadAnios` ASC),
  INDEX `id_estado_idx` (`id_estado` ASC),
  INDEX `id_sucursal_idx` (`id_sucursal` ASC),
  CONSTRAINT `id_cantidadAnios`
    FOREIGN KEY (`id_cantidadAnios`)
    REFERENCES `pasantias`.`cantidadaniospasante` (`id_cantidad_aniospasante`),
  CONSTRAINT `id_estado`
    FOREIGN KEY (`id_estado`)
    REFERENCES `pasantias`.`estadoarm` (`id_estado`),
  CONSTRAINT `id_genero`
    FOREIGN KEY (`id_genero`)
    REFERENCES `pasantias`.`genero` (`id_genero`),
  CONSTRAINT `id_sucursal`
    FOREIGN KEY (`id_sucursal`)
    REFERENCES `pasantias`.`sucursalesxempresa` (`id_sucursal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`especialidadxarm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`especialidadxarm` (
  `id_especialidadXArm` INT(11) NOT NULL,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `id_arm` INT(11) NULL DEFAULT NULL,
  `id_especialidad` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_especialidadXArm`),
  INDEX `id_formularioArm_idx` (`id_arm` ASC),
  INDEX `id_especialidad_idx` (`id_especialidad` ASC),
  CONSTRAINT `id_arm`
    FOREIGN KEY (`id_arm`)
    REFERENCES `pasantias`.`formularioarm` (`id_arm`),
  CONSTRAINT `id_especialidad`
    FOREIGN KEY (`id_especialidad`)
    REFERENCES `pasantias`.`especialidad` (`id_especialidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`estadoarmxalumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`estadoarmxalumno` (
  `id_estado` INT(11) NOT NULL,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`responsable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`responsable` (
  `legajo` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellido` VARCHAR(45) NULL DEFAULT NULL,
  `fecha_alta` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`legajo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `pasantias`.`formularioarmxalumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`formularioarmxalumno` (
  `id_formularioArmXalumno` INT(11) NOT NULL,
  `id_formularioArm` INT(11) NOT NULL,
  `legajo_alumno` INT(11) NOT NULL,
  `fecha_solicitud` DATETIME NULL DEFAULT NULL,
  `fecha_respuesta` DATETIME NULL DEFAULT NULL,
  `legajo_responsable` INT(11) NOT NULL,
  `id_estado` INT(11) NOT NULL,
  `observacion` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id_formularioArmXalumno`),
  INDEX `id_formularioArm` (`id_formularioArm` ASC),
  INDEX `legajo_alumno` (`legajo_alumno` ASC),
  INDEX `legajo_responsable` (`legajo_responsable` ASC),
  INDEX `id_estado` (`id_estado` ASC),
  CONSTRAINT `formularioarmxalumno_ibfk_1`
    FOREIGN KEY (`id_formularioArm`)
    REFERENCES `pasantias`.`formularioarm` (`id_arm`),
  CONSTRAINT `formularioarmxalumno_ibfk_2`
    FOREIGN KEY (`legajo_alumno`)
    REFERENCES `pasantias`.`alumno` (`legajo`),
  CONSTRAINT `formularioarmxalumno_ibfk_3`
    FOREIGN KEY (`legajo_responsable`)
    REFERENCES `pasantias`.`responsable` (`legajo`),
  CONSTRAINT `formularioarmxalumno_ibfk_4`
    FOREIGN KEY (`id_estado`)
    REFERENCES `pasantias`.`estadoarmxalumno` (`id_estado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
