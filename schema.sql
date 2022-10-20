/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(40),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN NOT NULL,
    weight_kg DECIMAL,
    PRIMARY KEY(id)
);

ALTER TABLE animals ADD species varchar(40);

CREATE TABLE owners (
    id SERIAL,
    full_name VARCHAR(40),
    age INT,
    PRIMARY KEY(id)
);

CREATE TABLE species (
    id SERIAL,
    name VARCHAR(40),
    PRIMARY KEY(id)
);

ALTER TABLE animals DROP id;

ALTER TABLE animals ADD id SERIAL PRIMARY KEY;

ALTER TABLE animals DROP species;

ALTER TABLE animals ADD species_id INT;

ALTER TABLE animals ADD CONSTRAINT c1
      FOREIGN KEY(species_id) 
	  REFERENCES species(id);

ALTER TABLE animals ADD owner_id INT;

ALTER TABLE animals ADD CONSTRAINT c2
      FOREIGN KEY(owner_id) 
	  REFERENCES owners(id);

CREATE TABLE vets (
    id SERIAL,
    name VARCHAR(40),
    age INT,
    date_of_graduation DATE,
    PRIMARY KEY(id)
);

Create table specialities (
	species_type VARCHAR(40) NOT NULL,
	vet_name VARCHAR(40) NOT NULL,
	Primary Key (species_type, vet_name)
);

Create table visits (
	animal_name VARCHAR(40) NOT NULL,
	vet_name VARCHAR(40) NOT NULL,
    visit_date DATE,
	Primary Key (animal_name, vet_name, visit_date)
);




