CREATE DATABASE website;
-- Creating an 'ad' table
CREATE TABLE website.ad (
    id SERIAL PRIMARY KEY,
    event_id INT,
    source VARCHAR(50)
);
-- Creating an 'event' table
CREATE TABLE website.event (
    id SERIAL PRIMARY KEY,
    event_end DATE,
    is_expired BOOLEAN,
    is_verified BOOLEAN,
    created_at TIMESTAMP
);

-- Creating an 'ad_ticket' table
CREATE TABLE website.ad_ticket (
    id SERIAL PRIMARY KEY,
    ad_id INT,
    ticket_info VARCHAR(50)
);

-- Inserting sample data into 'ad'
INSERT INTO website.ad (event_id, source) VALUES
(1, 'social-media'),
(2, 'email'),
(3, 'social-media'),
(NULL, 'web-mobile');
 -- The last row won't be included  due to the WHERE clause

-- Inserting sample data into 'event'
INSERT INTO website.event (id, event_end, is_expired, is_verified, created_at) VALUES
(1, '2024-04-20', TRUE, TRUE, '2024-01-01 00:00:00'),
(2, '2024-05-01', FALSE, TRUE, '2024-01-02 00:00:00'),
(3, '2024-05-15', FALSE, FALSE, '2024-01-03 00:00:00'); 
-- The last row won't be included because it's not verified

-- Inserting sample data into 'ad_ticket'
INSERT INTO website.ad_ticket (ad_id, ticket_info) VALUES
(1, 'Ticket 1'),
(1, 'Ticket 2'),
(2, 'Ticket 3'),
(2, 'Ticket 4'),
(3, 'Ticket 5');


