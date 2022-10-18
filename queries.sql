/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';
SELECT * from animals WHERE date_of_birth BETWEEN '2016/01/01' AND '2019/12/31';
SELECT * from animals WHERE neutered = 'TRUE' AND escape_attempts < 3;
SELECT * from animals WHERE name IN ('Agumon','Pikachu');
SELECT name, escape_attempts from animals WHERE weight_kg < 10.5;
SELECT * from animals WHERE neutered = 'TRUE';
SELECT * from animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

BEGIN;
UPDATE animals
SET species = 'unspecified';
ROLLBACK;

BEGIN;
UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';
UPDATE animals
SET species = 'pokemon'
WHERE name NOT LIKE '%mon';
COMMIT;

BEGIN;
DELETE from animals;
ROLLBACK;

BEGIN;
DELETE from animals WHERE date_of_birth > '2022/01/01';
SAVEPOINT savepoint_01;
UPDATE animals
SET weight_kg = weight_kg*-1;
ROLLBACK TO SAVEPOINT savepoint_01;
UPDATE animals
SET weight_kg = weight_kg*-1
WHERE weight_kg < 0;
COMMIT;



