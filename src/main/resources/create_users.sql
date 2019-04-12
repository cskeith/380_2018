CREATE TABLE users (
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (username)
);

CREATE TABLE user_roles (
    user_role_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    username VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL,
    PRIMARY KEY (user_role_id),
    FOREIGN KEY (username) REFERENCES users(username)
);

INSERT INTO users VALUES ('keith', '$2a$10$dHpXhH42.h3E7sq4ISe2.epIvkQwlcL4pCnSPzFICf3sgFfsdRCva');
INSERT INTO user_roles(username, role) VALUES ('keith', 'ROLE_USER');
INSERT INTO user_roles(username, role) VALUES ('keith', 'ROLE_ADMIN');

INSERT INTO users VALUES ('tsli', '$2a$10$q6mSlksyfTK/h8l2uDS1dewsHssFIjquVflzB4ocZyXXbB1hodeDy');
INSERT INTO user_roles(username, role) VALUES ('tsli', 'ROLE_ADMIN');

INSERT INTO users VALUES ('kevin', '$2a$10$g0T2rqJT7mlxN8kHkTRJVuY2m9Bm.qWovZrDhuF0XVagfVan8AOMi');
INSERT INTO user_roles(username, role) VALUES ('kevin', 'ROLE_USER');

INSERT INTO users VALUES ('oliver', '$2a$10$bwVC2eZHRJi0p4GL8iImtuv8bft4EpD6TzvarxG.9KWzDUSshrKry');
INSERT INTO user_roles(username, role) VALUES ('oliver', 'ROLE_USER');
