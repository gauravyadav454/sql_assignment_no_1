use mavenmovies;
-- 1.  identify the primary keys and foreign keys in mavenmovies db.Discuss the deffernces

-- solution

select * from Information_schema.key_column_usage;

/* primary key is the unique identifier column in a table and it consists 
 unique and not null values  whereas foreign keys esteblish
 connection in tables it can be multiple in a table */


-- 2.  list all details of actors
 
 -- solution
 select * from actor;
 
 -- 3.  list all customer information from DB
 
 -- solution
 select * from customer;
 
 -- 4. list different countries.
 
 -- solution
 select distinct country from country;
 
 
 -- 5.  Display all active customers.
 
 -- solution
 select first_name , last_name from customer where active = 1;
 
 
 -- 6. List of all rental IDs for customer with ID 1.
 
 -- solution
 select rental_id from rental where customer_id = 1;
 
 -- 7. Display all the films whose rental duration is greater than 5.
  
-- solution
 select title from film where rental_duration > 5;
 
 -- 8. List the total number of films whose replacement cost is greater than $15 and less than $20. 
 
 -- solution
 select count(*) as total_number_of_films from film where replacement_cost >15 and replacement_cost <20;
  
  -- 9. Display the count of unique first names of actors.
  
  -- solution
  select count(distinct first_name) from actor;
  
  -- 10. Display the first 10 records from the customers table.
 
 -- solution
 select * from customer limit 10;
  
  -- 11. Display the first 3 records from the customer table whose first name starts with 'b'.
  
  -- solution
  select * from customer where first_name like 'b%' limit 3;
  
  -- 12.  Display the name of the first 5 movies which are rated as 'G'.
  
  -- solution
  select title from film where rating = 'G' limit 5;
  
  -- 13. find all customers whose first name start with 'a'.
  
  -- solution
  select * from customer where first_name like 'a%';
  
  -- 14. find all customers whose first name ends with 'a'. 
   
   -- solution
select * from customer where first_name like '%a';

-- 15. Display the list of first 4 cities which start and end with 'a'. 

-- solution
select city from city where city like 'a%a' limit 4;

-- 16. find all customers whose first name have 'NI' in any position. 

-- solution
select first_name from customer where first_name like '%NI%';

-- 17. find all customers whose first name have 'r' in the second position. 

-- solution
select first_name from customer where first_name like '_r%';

-- 18. find all customers whose first name starts with 'a' and are at least 5 characters in length. 

-- solution
select first_name from customer where first_name like 'a____%';

-- 19. find all customers whose first name start with 'a' and ends with 'o'.

-- solution
select * from customer where first_name like 'a%o';

-- 20. Get the films with pg and pg-13 rating using IN operator.

select * from film where rating in ('pg', 'pg-13');

-- 21. Get the films with length between 50 to 100 using between operator.

SELECT * from film where length between 50 and 100;

-- 22. Get the top 50 actors using limit operator.

select * from actor  limit 50;

-- 23. Get the distinct film ids from inventory table.

select distinct film_id from inventory; 

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  


  
 
 
 
 
 
 
 
 