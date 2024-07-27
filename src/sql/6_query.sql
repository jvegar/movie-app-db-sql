/** 
 * Select detailed information about a movie with ID of 1
     Shape
        ID
        Title
        Release date
        Duration
        Description
        Poster (poster file information in JSON format)
        Director (person information in JSON format)
            ID
            First name
            Last name
            Photo (primary photo file information in JSON format)
        Actors (array of JSON objects)
            ID
            First name
            Last name
            Photo (primary photo file information in JSON format)
        Genres (array of objects in JSON format)
            ID
            Name
 */

select m.id, m.title, m.release_date, m.duration, m.description,
COALESCE(json_agg( 
    json_build_object(
    	'id', f.file_id,
    	'file_name', f.file_name,
    	'mime_type', f.mime_type,
    	'key', f."key",
    	'url', f.url 
    )), '{}'::json) AS "Poster",
    COALESCE(json_agg( 
    json_build_object(
    	'id', d.id,
    	'first_name', pe.first_name ,
    	'last_name', pe.last_name, 
    	'photo', json_build_object(
            'id', pp.id,
            'file_name', f2.file_name,
	    	'mime_type', f2.mime_type,
	    	'key', f2."key",
	    	'url', f2.url 
        )
    )), '{}'::json) AS "Director",
    COALESCE(json_agg( 
    json_build_object(
    	'id', a.id,
    	'first_name', pe2.first_name ,
    	'last_name', pe2.last_name, 
    	'photo', json_build_object(
            'id', pp2.id,
            'file_name', f3.file_name,
	    	'mime_type', f3.mime_type,
	    	'key', f3."key",
	    	'url', f3.url 
        )
    )), '{}'::json) AS "Actors",
    COALESCE(json_agg( 
    json_build_object(
    	'id', g.id,
    	'name', g."name" 
    )), '{}'::json) AS "Genres"
from movies m join
posters p on p.id = m.poster_id join 
files f on f.file_id = p.file_id join 
directors d on d.id = m.director_id join 
people pe on pe.id = d.person_id join 
photo_person pp on pp.person_id = pe.id and pp."type" = 'primary' join 
files f2 on f2.file_id  = pp.file_id join
character_movie cm on cm.movie_id = m.id join
"characters" c on c.id = cm.character_id  join
actors a on a.id = c.actor_id join
people pe2 on pe2.id = a.person_id join
photo_person pp2 on pp2.person_id = pe2.id and pp2."type" = 'primary' join
files f3 on f3.file_id = pp2.file_id join
genre_movie gem on gem.movie_id = m.id join
genres g on g.id = gem.genre_id 

group by 
m.id, m.title, m.release_date, m.duration, m.description
