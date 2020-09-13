DROP TABLE IF EXISTS Questions;

CREATE TABLE Questions (
                           id IDENTITY PRIMARY KEY,
                           question VARCHAR(8000),
                           a VARCHAR(255),
                           b VARCHAR(255),
                           c VARCHAR(255),
                           d VARCHAR(255),
                           right_an VARCHAR(255),
                           tags VARCHAR(255)
);


INSERT INTO Questions (question, a, b, c, d, right_an, tags) VALUES ( 'The biggest planet.', 'Jupiter', 'Mars', 'Earth', 'Saturn', 'a', 'astronomy');
INSERT INTO Questions (question, a, b, c, d, right_an, tags) VALUES ( 'The smallest planet.', 'Mercury', 'Mars', 'Earth', 'Saturn', 'a', 'astronomy');