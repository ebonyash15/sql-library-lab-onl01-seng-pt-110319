def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year
  FROM books
  INNER JOIN series
  ON Books.series_id = Series.id
  WHERE Series.id = 1
  ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY motto LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name AS author_name, Subgenres.name AS subgenre_name
  FROM series
  INNER JOIN authors ON Series.author_id = Authors.id
  INNER JOIN subgenres ON Series.subgenre_id = Subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title
  FROM authors
  INNER JOIN characters ON Characters.author_id = Authors.id
  INNER JOIN series ON Series.author_id = Authors.id
  WHERE Characters.species = 'human'
  GROUP BY Series.author_id
  ORDER BY COUNT(Characters.species) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(Character_books.book_id) AS number
  FROM character_books
  INNER JOIN books ON Character_books.book_id = Books.id
  INNER JOIN characters ON Character_books.character_id = Characters.id
  GROUP BY number"
end
