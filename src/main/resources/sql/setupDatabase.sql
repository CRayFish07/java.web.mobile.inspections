-- ********************************
-- *** Last updated: 2016/07/15 ***
-- ********************************

-- Create schema:
CREATE SCHEMA mobileInsp;
-- Use schema:
USE mobileInsp;

-- Create user:
CREATE USER mobileInsp@localhost identified by 'mobileInspPwd';

-- Grant privileges:
GRANT ALL PRIVILEGES ON mobileInsp.* TO 'mobileInsp'@'localhost' IDENTIFIED BY 'mobileInspPwd';

-- Drop user:
DROP USER mobileInsp@localhost;
-- Drop schema:
DROP SCHEMA mobileInsp;

-- Query user permissions in mysql:
SELECT * FROM mysql.user;
-- Export table creation script in mysql:
show create table dragonballuser;
show create table hibernate_sequence;

-- MobileInspections Tables for mysql:
DROP TABLE IF EXISTS dragonballuser;
DROP TABLE IF EXISTS hibernate_sequence;

CREATE TABLE dragonballuser (
  id bigint(20) NOT NULL,
  age int(11) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  powerlevel int(11) DEFAULT NULL,
  stamina int(11) DEFAULT NULL,
  username varchar(255) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY UK_username (username)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE hibernate_sequence (
   next_val bigint(20) DEFAULT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Hibernate expects hibernate_sequence to have an initial value or it will fail
INSERT INTO hibernate_sequence(next_val) VALUES (0);

-- Query MobileInspections tables:
SELECT * FROM dragonballuser;
SELECT * FROM hibernate_sequence;
