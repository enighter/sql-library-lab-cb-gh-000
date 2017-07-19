CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE subgenres (
  id INTEGER PRIMARY Key,
  name TEXT
);

CREATE TABLE series (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id REFERENCES author(id),
  subgenre_id REFERENCES subgenre(id)
);

CREATE TABLE characters (
  id INTEGER PRIMARY KEY,
  name TEXT,
  motto TEXT,
  species TEXT,
  author_id REFERENCES author(id),
  series_id REFERENCES series(id)
);

CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  year INTEGER,
  series_id REFERENCES series(id)
);

CREATE TABLE character_books (
  id INTEGER PRIMARY KEY,
  character_id REFERENCES characters(id),
  book_id REFERENCES book(id)
);
