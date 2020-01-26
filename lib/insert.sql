INSERT INTO series (title, author_id, subgenre_id) VALUES
  ('Harry Potter',1,1),
  ('The Witcher',2,2);
INSERT INTO subgenres (name) VALUES
  ('magic and wizardry'),
  ('moraly ambiguous epic');
INSERT INTO authors (name) VALUES
  ('J.K. Rowling'),
  ('‎Andrzej Sapkowski');
INSERT INTO books (title, year, series_id) VALUES
  ('The Chamber of Secrets', 1998,1),
  ('The Order of the Pheonix', 2003,1),
  ('The Deathly Hollows', 2007,1),
  ('The Last Wish', 1993,2),
  ('Blood of Elves', 1994,2),
  ('The Lady of the Lake', 1999,2);
INSERT INTO characters (name, motto, species, author_id) VALUES
  ('Harry Potter', 'I''m the chosen one and therefore invincible!', 'half-blood wizard', 1),
  ('Ron Weasley', 'Why does it always have to be spiders?', 'pure-blood wizard', 1),
  ('Hermoine Granger', 'Knowledge is power and I will possess it all.', 'muggle-born witch', 1),
  ('Rubeus Hagrid', 'All beasts are really just misunderstood babies.', 'Giant', 1),
  ('Geralt of Rivia', 'The lesser evil is still evil.', 'witcher', 2),
  ('Yennefer of Vengerburg', 'The Council of Sorcerers is a currupt group that will sabotage you at the drop of a hat.', 'human-elf-mage', 2),
  ('Dandelion ''Jaslier''', 'The witcher will protect me while providing material for songs and I will in turn repair his reputation through the songs.', 'human-bard', 2),
  ('Albus Dumbledore', 'My morals are fluid but my favoritism of Griffindor is blatant.', 'half-blood wizard', 1);
INSERT INTO character_books (book_id, character_id) VALUES
  (1, 4), (3, 4), (4, 5), (5, 5),
  (1, 1), (2, 1), (4, 6), (5, 6),
  (1, 2), (3, 2), (4, 7), (6, 7),
  (2, 3), (3, 3), (1, 8), (3, 8);
