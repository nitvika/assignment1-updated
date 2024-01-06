use mavenmovies;

#-1. identify primary key and foreign key

  #Ans.primary keys are those which are not null and unique to a table like address_id, advisor_id and foreign keys are those which are taken as a reference to another table like actor_id is arefernce in actor_award.

#2. List all details of actors.

select * from actor_award;

#3. list all customer information.

select * from customer;

#4. list different countries.

select distinct(country) from country;

#5. display all active customers.

select * from customer where active <>0;

#6. list all rental ids for customer with id1.

select rental_id from rental where customer_id=1;

#7. display all films where rental_duartion greater than 5

select *  from film where rental_duration>5;

#8. list total no of films whose replacement cost greater than $15 and less than $20


select count(film_id) from film where replacement_cost between 15 and 20;

#9. display count of unique first names of actors.


select count(distinct(first_name)) from actor;

#10. display first 10 records from customer table.

select * from customer limit 10;

#11. display first 3records from customer table whose first name starts with b.

select * from customer where first_name like 'B%' limit 3;

#12. display names of first 5 movies which are rated as 'g

select  title from film where rating='g' limit 5;

#13. find all customers whose first name starts with a

select * from customer where first_name like 'a%';

#14. find all customers whose first name ends with a

select * from customer where first_name like '%a';

#15. display list of first 4 cities which start and end with a

select * from city where city like 'a%a' limit 4 ;


#16. find all customers whose first name have NI in any position.

select * from customer where first_name like '%NI%';

#17. find all customers whose first name have r in 2nd position.

select * from customer where first_name like '_r%';

#18. find all customers whose first name starts with a and are atleast 5 characters in length.

select first_name from customer where first_name like 'a%' and length(first_name)>=5;

SELECT first_name FROM customer WHERE first_name LIKE 'a____%';


#19. find all customers whose first name starts with a and ends with o.

select * from customer where first_name like 'a%o';

#20. get the films with pg and pg-13 rating using IN operator.

select * from film where rating in ('pg' , 'pg-13');

#21. get the films with length between 50 to 100  using between operator.

select * from film where length between 50 and 100;

#22. get top 50 actors using limit operator.
  
select * from actor limit 50;

#23. get distinct filmids from inventory table.

select distinct(film_id) from inventory;

