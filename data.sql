/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Agumon', '2020-2-03', 0, 'TRUE', 10.23);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Gabumon', '2018-11-15', 2, 'TRUE', 8.0);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Pikachu', '2021-1-07', 1, 'FALSE', 15.04);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Devimon', '2017-5-12', 5, 'TRUE', 11.0);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', '2020-2-08', 0, 'FALSE', 11.0);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Plantmon', '2021-11-15', 2, 'TRUE', 5.7);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Squirtle', '1993-4-02', 3, 'FALSE', 12.13);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Angemon', '2005-6-12', 1, 'TRUE', 45.0);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Boarmon', '2005-6-07', 7, 'TRUE', 20.4);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Blossom', '1998-10-13', 3, 'TRUE', 17.0);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Ditto', '2022-5-14', 4, 'TRUE', 22.0);

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34), ('Jennifer Orwell', 19), ('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon'),('Digimon');

UPDATE animals
SET species_id = 1
WHERE name NOT LIKE '%mon';

UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

UPDATE animals
SET owner_id = (SELECT id from owners where full_name = 'Sam Smith')
WHERE name = 'Agumon';

UPDATE animals
SET owner_id = (SELECT id from owners where full_name = 'Jennifer Orwell')
WHERE name IN ('Gabumon','Pikachu');

UPDATE animals
SET owner_id = (SELECT id from owners where full_name = 'Bob')
WHERE name IN ('Devimon', 'Plantmon');

UPDATE animals
SET owner_id = (SELECT id from owners where full_name = 'Melody Pond')
WHERE name IN ('Charmander', 'Squirtle', 'Blossom');

UPDATE animals
SET owner_id = (SELECT id from owners where full_name = 'Dean Winchester')
WHERE name IN ('Angemon', 'Boarmon');

INSERT INTO vets (name, age, date_of_graduation) VALUES 
   ('William Tatcher', 45, '2000-4-23'),
   ('Maisy Smith', 26 , '2019-1-17'),
   ('Stephanie Mendez', 64, '1981-5-04'),
   ('Jack Harkness', 38 , '2008-6-08');

INSERT INTO specialities (species_type, vet_name) VALUES 
   ('Pokemon', 'William Tatcher'),
   ('Pokemon', 'Stephanie Mendez'),
   ('Digimon', 'Stephanie Mendez'),
   ('Digimon', 'Jack Harkness');

INSERT INTO visits (animal_name, vet_name, visit_date) VALUES 
   ('Agumon', 'William Tatcher', '2020-5-24'),
   ('Agumon', 'Stephanie Mendez', '2020-7-22'),
   ('Gabumon', 'Jack Harkness', '2020-7-22'),
   ('Pikachu', 'Maisy Smith', '2020-1-05'),
   ('Pikachu', 'Maisy Smith', '2020-3-08'),
   ('Pikachu', 'Maisy Smith', '2020-5-14'),
   ('Devimon', 'Stephanie Mendez', '2021-5-04'),
   ('Charmander', 'Jack Harkness', '2021-2-24'),
   ('Plantmon', 'Maisy Smith', '2019-12-21'),
   ('Plantmon', 'William Tatcher', '2020-08-10'),
   ('Plantmon', 'Maisy Smith', '2021-04-07'),
   ('Squirtle', 'Stephanie Mendez', '2019-09-29'),
   ('Angemon', 'Jack Harkness', '2020-10-03'),
   ('Angemon', 'Jack Harkness', '2020-11-24'),
   ('Boarmon', 'Maisy Smith', '2019-01-24'),
   ('Boarmon', 'Maisy Smith', '2019-05-15'),
   ('Boarmon', 'Maisy Smith', '2020-02-27'),
   ('Boarmon', 'Maisy Smith', '2020-08-03'),
   ('Blossom', 'Stephanie Mendez', '2020-05-24'),
   ('Blossom', 'William Tatcher', '2021-01-11');
   



