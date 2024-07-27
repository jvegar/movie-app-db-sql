INSERT INTO files
  (file_name, mime_type, "key", url)
VALUES
  ('avatar_1.jpg', 'image/jpeg', 'avatar_1_key', 'https://example.com/images/avatars/avatar_1.jpg'),
  ('profile_pic_2.png', 'image/png', 'profile_pic_2_key', 'https://example.com/images/profiles/profile_pic_2.png'),
  ('movie_poster_3.jpg', 'image/jpeg', 'movie_poster_3_key', 'https://example.com/images/posters/movie_poster_3.jpg'),
  ('avatar_4.gif', 'image/gif', 'avatar_4_key', 'https://example.com/images/avatars/avatar_4.gif'),
  ('profile_pic_5.webp', 'image/webp', 'profile_pic_5_key', 'https://example.com/images/profiles/profile_pic_5.webp'),
  ('movie_poster_6.jpg', 'image/jpeg', 'movie_poster_6_key', 'https://example.com/images/posters/movie_poster_6.jpg'),
  ('avatar_7.png', 'image/png', 'avatar_7_key', 'https://example.com/images/avatars/avatar_7.png'),
  ('profile_pic_8.jpg', 'image/jpeg', 'profile_pic_8_key', 'https://example.com/images/profiles/profile_pic_8.jpg'),
  ('movie_poster_9.png', 'image/png', 'movie_poster_9_key', 'https://example.com/images/posters/movie_poster_9.png'),
  ('avatar_10.gif', 'image/gif', 'avatar_10_key', 'https://example.com/images/avatars/avatar_10.gif'),
  ('profile_pic_11.webp', 'image/webp', 'profile_pic_11_key', 'https://example.com/images/profiles/profile_pic_11.webp'),
  ('movie_poster_12.jpg', 'image/jpeg', 'movie_poster_12_key', 'https://example.com/images/posters/movie_poster_12.jpg'),
  ('avatar_13.png', 'image/png', 'avatar_13_key', 'https://example.com/images/avatars/avatar_13.png'),
  ('profile_pic_14.jpg', 'image/jpeg', 'profile_pic_14_key', 'https://example.com/images/profiles/profile_pic_14.jpg'),
  ('movie_poster_15.png', 'image/png', 'movie_poster_15_key', 'https://example.com/images/posters/movie_poster_15.png'),
  ('avatar_16.gif', 'image/gif', 'avatar_16_key', 'https://example.com/images/avatars/avatar_16.gif'),
  ('profile_pic_17.webp', 'image/webp', 'profile_pic_17_key', 'https://example.com/images/profiles/profile_pic_17.webp'),
  ('movie_poster_18.jpg', 'image/jpeg', 'movie_poster_18_key', 'https://example.com/images/posters/movie_poster_18.jpg'),
  ('avatar_19.png', 'image/png', 'avatar_19_key', 'https://example.com/images/avatars/avatar_19.png'),
  ('profile_pic_20.jpg', 'image/jpeg', 'profile_pic_20_key', 'https://example.com/images/profiles/profile_pic_20.jpg');

INSERT INTO avatars
  (file_id)
VALUES
  (1),
  -- Referencing file with ID 1
  (4),
  -- Referencing file with ID 4
  (7),
  -- Referencing file with ID 7
  (10),
  -- Referencing file with ID 10
  (13),
  -- Referencing file with ID 13
  (16),
  -- Referencing file with ID 16
  (19);
-- Referencing file with ID 19


INSERT INTO users
  (username, first_name, last_name, email, password, avatar_id)
VALUES
  ('user1', 'John', 'Doe', 'johndoe@example.com', 'password123', 1),
  ('user2', 'Jane', 'Smith', 'janesmith@example.com', 'password456', 2),
  ('user3', 'Michael', 'Johnson', 'michaeljohnson@example.com', 'password789', 3),
  ('user4', 'Emily', 'Brown', 'emilybrown@example.com', 'password101', 4),
  ('user5', 'David', 'Miller', 'davidmiller@example.com', 'password111', 5),
  ('user6', 'Jack', 'Miles', 'jackmiles@example.com', 'password121', 6),
  ('user7', 'Edward', 'Trump', 'edwardtrump@example.com', 'password122', 7);


INSERT INTO countries
  (name)
VALUES
  ('United States'),
  ('Canada'),
  ('Mexico'),
  ('Brazil'),
  ('Argentina'),
  ('Australia'),
  ('Japan'),
  ('China'),
  ('India'),
  ('United Kingdom');


INSERT INTO people
  (first_name, last_name, biography, date_of_birth, gender, country_id)
VALUES
  ('Tom', 'Hanks', 'Award-winning actor known for his roles in Forrest Gump and Cast Away.', '1956-07-09', 'male', 1),
  ('Meryl', 'Streep', 'Highly acclaimed actress with numerous Academy Awards.', '1949-06-22', 'female', 1),
  ('Steven', 'Spielberg', 'Renowned film director known for Jurassic Park and Schindlers List.', '1946-12-18', 'male', 1),
  ('Quentin', 'Tarantino', 'Iconic filmmaker known for his unique style and dialogue.', '1963-03-27', 'male', 1),
  ('Cate', 'Blanchett', 'Versatile actress with roles in Elizabeth and The Lord of the Rings.', '1969-05-14', 'female', 2),
  ('Leonardo', 'DiCaprio', 'Academy Award-winning actor known for Titanic and The Revenant.', '1974-11-11', 'male', 1),
  ('Frank', 'Darabont', 'American film director and screenwriter known for The Shawshank Redemption', '1959-08-28', 'male', 1),
  ('Francis Ford', 'Coppola', 'American film director, producer, and screenwriter known for The Godfather trilogy', '1939-04-07', 'male', 1),
  ('Christopher', 'Nolan', 'British-American film director, producer, and screenwriter known for The Dark Knight trilogy', '1970-07-30', 'male', 1),
  ('Christian', 'Bale', 'Christian Charles Philip Bale is an English actor. Known for his versatility and physical transformations for his roles, he has been a leading man in films of several genres. He has received various accolades, including an Academy Award and two Golden Globe Awards.', '1974-01-30', 'male', 1),
  ('Heath', 'Ledger', 'Heath Andrew Ledger was an Australian actor and music video director. After playing roles in Australian television and film during the 1990s, Ledger moved to the United States in 1998 to develop his film career. His portrayal of the Joker in The Dark Knight is considered one of the greatest performances in cinema history.', '1979-04-04', 'male', 2),
  ('Aaron', 'Eckhart', 'Aaron Edward Eckhart is an American actor. Born in California, he moved to England at age 13, when his father relocated the family. He began his acting career by performing in school plays, before moving to Australia for his high school senior year.', '1968-03-12', 'male', 3),
  ('Michael', 'Caine', 'Sir Michael Caine CBE is an English actor. Known for his distinctive Cockney accent, he has appeared in more than 130 films during a career spanning over 60 years, and is considered a British film icon.', '1933-03-14', 'male', 1),
  ('Maggie', 'Gyllenhaal', 'Margalit Ruth "Maggie" Gyllenhaal is an American actress and filmmaker. Part of the Gyllenhaal family, she is the daughter of filmmakers Stephen Gyllenhaal and Naomi Achs, and the older sister of actor Jake Gyllenhaal.', '1977-11-16', 'female', 3),
  ('Gary', 'Oldman', 'Gary Leonard Oldman is an English actor and filmmaker. Known for his versatility and intense acting style, he has received various awards, including an Academy Award, a Golden Globe Award, a Screen Actors Guild Award, and three British Academy Film Awards.', '1958-03-21', 'male', 1),
  ('Morgan', 'Freeman', 'Morgan Freeman is an American actor, director, and narrator. He has appeared in a range of film genres portraying character roles and is particularly known for his distinctive deep voice.', '1937-06-01', 'male', 3),
  ('Eric', 'Roberts', 'Eric Anthony Roberts is an American actor. His career began with a leading role in King of the Gypsies (1978), for which he received his first Golden Globe Award nomination. He was nominated for the Academy Award for Best Supporting Actor for his performance in Runaway Train (1985).', '1956-04-18', 'male', 3),
  ('Cillian', 'Murphy', 'Cillian Murphy is an Irish actor. He started his performing career as the lead singer, pianist, and songwriter of a rock band named The Sons of Mr. Green Genes. Murphy turned down a record deal in the late 1990s and began acting on stage and in short and independent films.', '1976-05-25', 'male', 4);


INSERT INTO posters
  (file_id)
VALUES
  (3),
  -- Referencing file with ID 3
  (6),
  -- Referencing file with ID 6
  (9),
  -- Referencing file with ID 9
  (12),
  -- Referencing file with ID 12
  (15),
  -- Referencing file with ID 15
  (18);
-- Referencing file with ID 18

INSERT INTO genres
  (name)
VALUES
  ('Action'),
  ('Adventure'),
  ('Comedy'),
  ('Drama'),
  ('Horror'),
  ('Sci-Fi'),
  ('Fantasy'),
  ('Romance'),
  ('Thriller'),
  ('Mystery');

INSERT INTO directors
  (person_id)
VALUES
  (3),
  -- Referencing person with ID 3 (Steven Spielberg)
  (4),
  -- Referencing person with ID 4 (Quentin Tarantino)
  (7),
  -- Referencing person with ID 4 (Frank Darabont)
  (8),
  -- Referencing person with ID 4 (Francis Ford Coppola)
  (9);
-- Referencing person with ID 4 (Christopher Nolan)


INSERT INTO actors
  (person_id)
VALUES
  (1),
  -- Referencing person with ID 1 (Tom Hanks)
  (2),
  -- Referencing person with ID 2 (Meryl Streep)
  (5),
  -- Referencing person with ID 5 (Cate Blanchet)
  (6),
  -- Referencing person with ID 6 (Leonardo DiCaprio)
  (10),
  -- Referencing person with ID 10 (Christian	Bale)
  (11),
  -- Referencing person with ID 11 (Heath	Ledger)
  (12),
  -- Referencing person with ID 12 (Aaron	Eckhart)
  (13),
  -- Referencing person with ID 13 (Michael Caine)
  (14),
  -- Referencing person with ID 14 (Maggie Gyllenhaal)
  (15),
  -- Referencing person with ID 15 (Gary Oldman)
  (16),
  -- Referencing person with ID 16 (Aaron	Eckhart)
  (17),
  -- Referencing person with ID 17 (Eric Roberts)
  (18);
-- Referencing person with ID 18 (Cillian Murphy)



INSERT INTO photo_person
  (type, person_id, file_id)
VALUES
  ('primary', 1, 2),
  -- Tom Hanks' primary photo
  ('secondary', 1, 5),
  -- Tom Hanks' secondary photo
  ('primary', 2, 8),
  -- Meryl Streep's primary photo
  ('secondary', 2, 11),
  -- Meryl Streep's secondary photo
  ('primary', 3, 14),
  -- Steven Spielberg's primary photo
  ('secondary', 3, 17);
-- Steven Spielberg's secondary photo


INSERT INTO movies
  (title, description, budget, release_date, duration, director_id, country_id, poster_id)
VALUES
  ('The Shawshank Redemption', 'A banker wrongly imprisoned for the murder of his wife and her lover...', 25000000, '1994-09-23', 142, 3, 1, 3),
  ('The Godfather', 'The aging patriarch of an organized crime family transfers control of his clandestine empire to his reluctant son.', 6000000, '1972-03-24', 175, 4, 1, 6),
  ('The Dark Knight', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 185000000, '2008-07-18', 152, 5, 1, 4),
  ('Interstellar', 'Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts who travel through a wormhole near Saturn in search of a new home for mankind.', 165000000, '2014-11-07', 169, 1, 1, 1),
  ('American Psycho','Set in the late 1980s, the film follows Patrick Bateman, a wealthy New York City investment banking executive who leads a secret life as a serial killer. The story is a biting satire of materialism, consumerism, and the excesses of Wall Street culture.', 7000000, '2000-04-14', 101, 2, 1 ,2);
 
 
INSERT INTO characters
  (name, description, role, actor_id)
VALUES
  ('Andy Dufresne', 'A banker wrongly imprisoned for the murder of his wife and her lover.', 'leading', 1),
  ('Red Redding', 'An elderly inmate serving a life sentence.', 'supporting', 2),
  ('Michael Corleone', 'The youngest son of a powerful mafia boss.', 'leading', 3),
  ('Vito Corleone', 'The patriarch of the Corleone crime family.', 'leading', 4),
  ('Batman', 'A masked vigilante who fights crime in Gotham City.', 'leading', 1),
  ('Joker', 'A psychopathic criminal mastermind.', 'supporting', 2),
  ('Patrick Bateman', 'A wealthy, materialistic New York City investment banking executive who leads a secret life as a serial killer.', 'leading', 5);



INSERT INTO character_movie
  (movie_id, character_id)
VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 5),
  (3, 6);
  
 INSERT INTO favorite_movie 
 (movie_id, user_id)
 VALUES
 (1,1),
 (1,2),
 (1,3),
 (2,1),
 (2,2),
 (3,1);
 
insert into genre_movie (movie_id, genre_id) values (3,1);
insert into genre_movie (movie_id, genre_id) values (4,1);