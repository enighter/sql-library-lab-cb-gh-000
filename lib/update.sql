UPDATE characters SET species = "Martian" WHERE characters.id >= (SELECT MAX(id) FROM characters);
