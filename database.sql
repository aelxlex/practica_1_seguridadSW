CREATE DATABASE secure_login;

USE secure_login;

CREATE TABLE users (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE intentos_login (
  id INT AUTO_INCREMENT PRIMARY KEY,
  direccion_ip VARCHAR(45) NOT NULL UNIQUE,  -- Columna única
  intentos INT DEFAULT 0,
  ultimo_intento TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);