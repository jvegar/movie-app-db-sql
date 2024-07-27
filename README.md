# movie-app-db-sql

## ER Diagram

```mermaid
        erDiagram
        USER {
            serial id PK
            string username
            string first_name
            string last_name
            string email
            string password
            integer avatar_id FK
        }
        AVATAR {
            serial id PK
            integer file_id FK
        }
        USER ||--|| AVATAR: "[USER.avatar_id] to [AVATAR.id]"
        AVATAR ||--|| FILE: "[AVATAR.file_id] to [FILE.id]"

        FILE {
            serial file_id PK
            string file_name
            string mime_type
            string key
            string url
        }
        MOVIE {
            serial id PK
            string title
            string description
            money budget
            date release_date
            integer duration
            integer director_id FK
            integer country_id FK
            integer poster_id FK
        }
        CHARACTER_MOVIE {
            serial id PK
            integer movie_id FK
            integer character_id FK
        }
        MOVIE ||--|{ CHARACTER_MOVIE: "[MOVIE.id] to [CHARACTER_MOVIE.movie_id]"
        CHARACTER_MOVIE ||--|| CHARACTER: "[CHARACTER_MOVIE.character_id] to. [CHARACTER.id]"

        CHARACTER ||--o| ACTOR: "[CHARACTER.person_id] to [ACTOR.id]"
        CHARACTER {
            serial id PK
            string name
            text description
            string role "Enum type: leading, supporting, background"
            integer actor_id FK
        }
        MOVIE ||-- |{ GENRE_MOVIE: "[MOVIE.id] to [GENRE_MOVIE.movie_id]"
        GENRE_MOVIE {
            serial id PK
            integer movie_id FK
            integer genre_id FK
        }
        GENRE_MOVIE ||-- || GENRE: "[GENRE_MOVIE.genre_id] to [GENRE.id]"
        GENRE {
            serial id PK
            string name
        }
        MOVIE ||--o| POSTER: "[MOVIE.poster_id] to  [POSTER.id]"
        POSTER {
            serial id PK
            integer file_id FK
        }
        POSTER ||--|| FILE: "[POSTER.file_id] to [FILE.id]"
        MOVIE ||--|| COUNTRY: "[MOVIE.country_id] to [COUNTRY.id]"
        COUNTRY {
            serial id PK
            string name
        }
        MOVIE ||--|| DIRECTOR: "[MOVIE.director_id] to  [DIRECTOR.id]"

        DIRECTOR {
            serial id PK
            integer person_id FK
        }
        ACTOR {
            serial id PK
            integer person_id FK
        }
        ACTOR ||--|| PERSON: "[ACTOR.person_id] to [PERSON.id]"
        DIRECTOR ||--|| PERSON: "[DIRECTOR.person_id] to [PERSON.id]"
        PERSON {
            serial id PK
            string first_name
            string last_name
            text biography
            date date_of_birth
            string gender "enum type: male, female, other"
            integer country_id FK
        }
        PERSON ||--|| COUNTRY: "[PERSON.country_id] to [COUNTRY.id]"

        PHOTO_PERSON {
            serial id PK
            string type "enum type: primary, secundary"
            integer person_id FK
            integer file_id FK
        }
        PERSON ||--o{ PHOTO_PERSON: "[PERSON.id] to [PHOTO.person_id]"
        PHOTO_PERSON||--|| FILE: "[PHOTO.file_id] to [FILE.id]"

    EXTRA_CHARACTER {
        serial id PK
        string type "enum type: crowd, background"
        integer movie_id FK
        integer actor_id FK
    }

    MOVIE ||--o| EXTRA_CHARACTER: "[MOVIE.id] to [EXTRA_CHARACTER.movie_id]"
    EXTRA_CHARACTER ||--|| ACTOR: "[EXTRA_CHARACTER.person_id] to [ACTOR.id]"

    FAVORITE_MOVIE {
        serial id PK
        integer movie_id FK
        integer user_id FK
    }
    USER ||--o{ FAVORITE_MOVIE: "[USER.id] to [FAVORITE_MOVIE.user_id]"
    FAVORITE_MOVIE ||--|| MOVIE: "[FAVORITE_MOVIE.movie_id] to [MOVIE.id]"
```
