INSERT INTO authors (name) VALUES ("Mike A."), ("V. Valdez");

INSERT INTO subgenres (name) VALUES ("Fantasy"), ("Thriller");

INSERT INTO series (title, author_id, subgenre_id) VALUES ("A Trilogy", 1, 1), ("Stone's Throw", 1, 2);

INSERT INTO books (title, year, series_id) VALUES ("Book 1", 2002, 1), ("Book 2", 2005, 1), ("Book 3", 2008, 1), ("Book 1", 2012, 2), ("Book 2", 2013, 2), ("Book 3", 2015, 2);

INSERT INTO characters (name, motto, species, author_id, series_id) VALUES
("Abby", "Nothing", "Human", 1, 1),
("Clone", "Beep", "Robot", 1, 1),
("Sadie", "Woof", "Dog", 1, 1),
("Draco", "Live!", "Dragon", 1, 1),
("Abby", "Nothing", "Human", 1, 2),
("Clone", "Beep", "Robot", 1, 2),
("Sadie", "Woof", "Dog", 1, 2),
("Draco", "Live!", "Dragon", 1, 2);

INSERT INTO character_books (character_id, book_id)
SELECT characters.id, books.id FROM characters, books
WHERE characters.series_id = books.series_id
LIMIT 16;
