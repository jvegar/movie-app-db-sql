/*
 * Select movies released in the last 5 years with the number of actors who have appeared in each movie

    Shape
        ID
        Title
        Actors count
 */

select m.id, m.title, count(a.id) as "Actors count" from movies m
join character_movie cm  on m.id = cm.movie_id
join "characters" c on c.id = cm.character_id 
join actors a on a.id  = c.actor_id 
group by m.id, m.title 
having release_date > current_date - interval '5 years'
