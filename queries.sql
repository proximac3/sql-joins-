-- write your queries here
SELECT * FROM owner FULL JOIN vehicles ON owner.id = vehicle.owner_id;

 SELECT first_name,last_name, COUNT(*) AS cars_owned FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY (first_name, last_name) ORDER BY first_name;


  SELECT first_name, last_name, FLOOR(AVG(price)), COUNT(owner_id) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY (first_name, last_name) HAVING AVG(price) > 10000 AND COUNT(owner_id) > 1 ORDER BY first_name DESC;

--  count number of cars for each owner  ----- Display the average price for each of the cars as integers ----- 