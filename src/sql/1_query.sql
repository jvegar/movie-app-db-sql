
/*
 * Select a list of actors along with the total budget of the movies they have appeared in

    Shape
        ID
        First name
        Last name
        Total movies budget
*/

select a.id, p.first_name, p.last_name, sum(m.budget) as "Total movies budget" from actors a 
join "characters" c on c.actor_id = a.id 
join character_movie cm on cm.character_id = c.id 
join movies m on m.id = cm.movie_id
join people p on p.id = a.person_id
group by a.id,p.first_name , p.last_name 
