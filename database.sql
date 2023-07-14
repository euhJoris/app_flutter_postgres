-- CREATE DATABASE agri_manager;

-- -- Utiliser la base de données
-- \c agri_manager;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    surname VARCHAR(100),
    email VARCHAR NOT NULL,
    phone_number INT(8) NOT NULL,
    password VARCHAR NOT NULL,  -- SHA256 hash of the password
    associated_systems JSON
);

CREATE TABLE systems (
    system_id SERIAL PRIMARY KEY,
    working_authorisation_token  VARCHAR,
    associated_to_user INT
    -- ADD CONSTRAINT fk_for_user_associated
    -- FOREIGN KEY (associated_to_user)
    -- REFERENCES users (user_id)
);

CREATE TABLE users_configs (
    config_id SERIAL PRIMARY KEY,
    system_associated INT,
    user_associated INT,
    -- ADD CONSTRAINT fk_for_user_associated
    -- FOREIGN KEY (user_associated)
    -- REFERENCES users (user_id),
    -- ADD CONSTRAINT fk_for_system_associated
    -- FOREIGN KEY (system_associated)
    -- REFERENCES systems (system_id)
);

INSERT INTO users (user_id, name, surname, email, phone_number, password)
VALUES  ('1', 'userName 1', 'userSurname 1', 'qwr@emil,com',12121,  'passsdb'),
        ('2', 'userName 2', 'userSurname 2', 'qwr2@emil,com',12121,  'passdsa'),
        ('3', 'userName 3', 'userSurname 3', 'qwr@3emil,com', 12121, 'passewfsd'),
        ('4', 'userName 4', 'userSurname 4', 'qwr@e4mil,com', 12121, 'pass423');


INSERT INTO systems (system_id, working_authorisation_token, associated_to_user)
VALUES  ('1', 'iugUjbUIGDnlfw54VH', '3'),
        ('2', 'mnb$uifw2lh89kBKIH', '3'),
        ('3', 'ds6HBflknJFUw3787t', '1');
