/*
 * Retrieve a list of all users along with their favorite movies as array of identifiers

    Shape
        ID
        Username
        Favorite movie IDs 
 */


select 
u.id , u.username,
COALESCE(array_agg(fm.movie_id), ARRAY[]::integer[]) AS favorite_movie_ids
from users u
join favorite_movie fm on fm.user_id = u.id 
group by u.id, u.username 