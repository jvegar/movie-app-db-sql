CREATE TABLE files (
  file_id SERIAL PRIMARY KEY,
  file_name VARCHAR(255) NOT NULL,
  mime_type VARCHAR(255) NOT NULL,
  "key" VARCHAR(255),
  url VARCHAR(255),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE avatars (
  id SERIAL PRIMARY KEY,
  file_id INTEGER REFERENCES files(file_id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255)  UNIQUE NOT NULL,
  "password" VARCHAR(255) NOT NULL,
  avatar_id INTEGER REFERENCES avatars(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE countries (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT null,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE people (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  biography TEXT,
  date_of_birth DATE,
  gender VARCHAR(255) CHECK ("gender" IN ('male', 'female', 'other')),
  country_id INTEGER REFERENCES countries(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE posters (
  id SERIAL PRIMARY KEY,
  file_id INTEGER REFERENCES files(file_id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT null,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE directors (
  id SERIAL PRIMARY KEY,
  person_id INTEGER REFERENCES people(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE actors (
  id SERIAL PRIMARY KEY,
  person_id INTEGER REFERENCES people(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE photo_person (
  id SERIAL PRIMARY KEY,
  "type" VARCHAR(255) CHECK ("type" IN ('primary', 'secondary')),
  person_id INTEGER REFERENCES people(id),
  file_id INTEGER REFERENCES files(file_id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  budget MONEY,
  release_date DATE,
  duration INTEGER,
  director_id INTEGER REFERENCES directors(id),
  country_id INTEGER REFERENCES countries(id),
  poster_id INTEGER REFERENCES posters(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE characters (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  "role" VARCHAR(255) CHECK ("role" IN ('leading', 'supporting', 'background')),
  actor_id INTEGER REFERENCES actors(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE character_movie (
  id SERIAL PRIMARY KEY,
  movie_id INTEGER REFERENCES movies(id),
  character_id INTEGER REFERENCES characters(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE genre_movie (
  id SERIAL PRIMARY KEY,
  movie_id INTEGER REFERENCES movies(id),
  genre_id INTEGER REFERENCES genres(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE extra_characters (
  id SERIAL PRIMARY KEY,
  "role" VARCHAR(255) CHECK ("role" IN ('crowd', 'background')),
  movie_id INTEGER REFERENCES movies(id),
  actor_id INTEGER REFERENCES actors(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE favorite_movie (
  id SERIAL PRIMARY KEY,
  movie_id INTEGER REFERENCES movies(id),
  user_id INTEGER REFERENCES users(id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);