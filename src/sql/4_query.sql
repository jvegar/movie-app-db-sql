/**
 * Select directors along with the average budget of the movies they have directed

    Shape
        Director ID
        Director name (concatenation of first and last names)
        Average budget
 * */

select d.id as "Director ID" , concat(p.first_name,' ',p.last_name) as "Director name", avg(m.budget::numeric) as "Average budget" from directors d
join people p ON p.id = d.person_id 
join movies m on m.director_id  = d.id 
group by d.id, p.first_name ,p.last_name 