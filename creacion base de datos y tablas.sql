use sakila;
-- Table 'query_chatboot_reclamos'
CREATE TABLE query_chatboot_reclamos (
  id_reclamacion INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT NOT NULL ,
  guia  INT NOT NULL,
  Item VARCHAR(100) NOT NULL,
  queja_novedad_reclamo LONGTEXT NOT NULL,
  fecha DATETIME NOT NULL
  );
use sakila;
-- Table 'reporte_cun_pqr'
CREATE TABLE reporte_cun_pqr (
  remesa  INT UNSIGNED NOT NULL primary key,
  recargos_fletes DECIMAL(10,0) NOT NULL,
  tipo_reclamacion MEDIUMTEXT NOT NULL,
  status2 TEXT NOT NULL,
  notas_credito VARCHAR(8) NOT NULL,
  comentarios VARCHAR(45) NULL,
  paquetera TEXT(15) NOT NULL
  );
USE sakila;
-- Table 'cierre_estado_PQR'
CREATE TABLE cierre_estado_PQR (
  guia2 INT NOT NULL ,
  recargos_indemnizaciones DECIMAL(10,0) NOT NULL,
  status2 VARCHAR(45) NOT NULL,
  id_reporte_cartera INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  monto_indemnizar DECIMAL(10,0) NULL
  );
CREATE UNIQUE INDEX guia2 ON cierre_estado_PQR (guia2 ASC);
CREATE UNIQUE INDEX id_reporte_cartera  ON cierre_estado_PQR (id_reporte_cartera ASC);

use sakila;
-- Table 'analisis_ocurrencias'
CREATE TABLE analisis_ocurrencias (
  id_cliente INT NOT NULL PRIMARY KEY,
  kpi_gmv DECIMAL(10,0) NOT NULL,
  gmv DECIMAL(10,0) NOT NULL,
  paquetera TEXT(15) NOT NULL,
  flete DECIMAL(10,0) NOT NULL
  );
use sakila;
-- Table estados_cliente
CREATE TABLE estados_cliente (
  id_reclamacion INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  calificacion INT GENERATED ALWAYS AS (5) VIRTUAL 
  );