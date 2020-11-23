
CREATE database hotel_db;

USE hotel_db;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(25) NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    is_admin BOOLEAN DEFAULT false,
    has_booking BOOLEAN DEFAULT false,
    password VARCHAR(25) NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE rooms (
    id INT NOT NULL AUTO_INCREMENT,
    room_name VARCHAR(25) NOT NULL,
    room_cost DECIMAL(10,2) NOT NULL,
    room_capacity INT NOT NULL,
    is_booked BOOLEAN DEFAULT false,

    PRIMARY KEY (id)
);

CREATE TABLE reservations (
    user_number INT NULL,
    room_number INT NULL
) 