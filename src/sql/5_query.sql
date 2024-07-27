/**
 * Select detailed information about movies that meet criteria below

    Criteria
        Belong to a country with ID of 1.
        Were released in 2022 or later.
        Have a duration of more than 2 hours and 15 minutes.
        Include at least one of the genres: Action or Drama.
    Shape
        ID
        Title
        Release date
        Duration
        Description
        Poster (poster file information as JSON)
        Director (director information as JSON)
            ID
            First name
            Last name
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
    	'id', pe.id,
    	'first_name', pe.first_name,
    	'last_name', pe.last_name
    )), '{}'::json) AS "Director"

from movies m
join posters p on p.id = m.poster_id
join files f on f.file_id = p.file_id
join directors d on d.id = m.director_id
join people pe on pe.id  = d.person_id 
join genre_movie gm on gm.movie_id = m.id 
group by m.id, m.title, m.release_date, m.duration, m.description, gm.genre_id 
having m.country_id = 1 and 
m.release_date > '2022-01-01' and 
m.duration  > 135 and
(gm.genre_id = 1 or gm.genre_id = 4)



