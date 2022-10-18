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
