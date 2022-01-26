-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

-- Create new tables, according to your domain model
-- TODO!

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""

-- The SQL statement for the cast output
-- TODO!

-- ANSWERS:

-- Generate NEW SQLite database
-- sqlite3 kmdb.sqlite3

-- Drop existing tables, so we start fresh
-- run of this script

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS cast;

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_name TEXT,
    movie_year INTEGER,
    movie_rating TEXT,
    director_first_name TEXT,
    director_last_name TEXT
);

CREATE TABLE cast (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_name TEXT,
    cast_first_name TEXT,
    cast_last_name TEXT,
    character_name TEXT,
    character_role_rank INTEGER
);

-- Increase Column Character Length
.width 25 25 25 25;


--Insert (CRUD) Data Movies
INSERT INTO movies (
    movie_name,
    movie_year,
    movie_rating,
    director_first_name,
    director_last_name
) VALUES (
    "Batman Begins",
    "2005",
    "PG-13",
    "Christopher",
    "Nolan"
);

INSERT INTO movies (
    movie_name,
    movie_year,
    movie_rating,
    director_first_name,
    director_last_name
) VALUES (
    "The Dark Knight",
    "2008",
    "PG-13",
    "Christopher",
    "Nolan"
);

INSERT INTO movies (
    movie_name,
    movie_year,
    movie_rating,
    director_first_name,
    director_last_name
) VALUES (
    "The Dark Knight Rises",
    "2012",
    "PG-13",
    "Christopher",
    "Nolan"
);

--Insert (CRUD) Data Cast - Batman Begins
INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "Batman Begins",
    "Christian",
    "Bale",
    "Bruce Wayne",
    "1"
);
INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "Batman Begins",
    "Michael",
    "Caine",
    "Alfred",
    "2"
);

INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "Batman Begins",
    "Liam",
    "Neeson",
    "Ra's Al Ghul",
    "3"
);

INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "Batman Begins",
    "Katie",
    "Holmes",
    "Rachel Dawes",
    "4"
);

INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "Batman Begins",
    "Gary",
    "Oldman",
    "Commissioner Gordon",
    "5"
);

--Insert (CRUD) Data Cast - The Dark Knight
INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "The Dark Knight",
    "Christian",
    "Bale",
    "Bruce Wayne",
    "1"
);
INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "The Dark Knight",
    "Heath",
    "Ledger",
    "Joker",
    "2"
);

INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "The Dark Knight",
    "Aaron",
    "Eckhart",
    "Harvey Dent",
    "3"
);

INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "The Dark Knight",
    "Michael",
    "Kaine",
    "Alfred",
    "4"
);

INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "The Dark Knight",
    "Maggie",
    "Gyllenhaal",
    "Rachel Dawes",
    "5"
);

--Insert (CRUD) Data Cast - The Dark Knight Rises
INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "The Dark Knight Rises",
    "Christian",
    "Bale",
    "Bruce Wayne",
    "1"
);
INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "The Dark Knight Rises",
    "Gary",
    "Oldman",
    "Commissioner Gordon",
    "2"
);

INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "The Dark Knight Rises",
    "Tom",
    "Hardy",
    "Bane",
    "3"
);

INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "The Dark Knight Rises",
    "Joseph",
    "Gordon-Levitt",
    "John Blake",
    "4"
);

INSERT INTO cast (
    movie_name,
    cast_first_name,
    cast_last_name,
    character_name,
    character_role_rank
) VALUES (
    "The Dark Knight Rises",
    "Anne",
    "Hathaway",
    "Selina Kyle",
    "5"
);

--Produce Results
.print "Movies"
.print "======"
.print ""
SELECT movie_name, movie_year, movie_rating, director_first_name, director_last_name FROM movies;

.print ""
.print "Top Cast"
.print "========"
.print ""
SELECT movie_name, cast_first_name, cast_last_name, character_name FROM cast;
