--1
USE playcenter;
SELECT player_id, amount_spent_usd, amount_spent_usd*0.8 amount_spent_euro FROM players;

--2
SELECT player_id, last_name, first_name, amount_spent_usd, installed_games, 
       amount_spent_usd / installed_games avarage_amount_paid
FROM players;

--3
SELECT player_id, email_address, installed_games, uninstalled_games, 
       uninstalled_games / installed_games installation_ratio 
FROM players;

--4
SELECT player_id, CONCAT(first_name, ' ', last_name) full_name
FROM players;

--5
SELECT player_id, email_address, 
	   CONCAT(country,'/', city, '/', street_address) country_city_street_address,
       total_playing_minutes/60 total_playing_hours
FROM players;

--6
SELECT CONCAT(first_name, ' ', last_name, ' prefered language is ', preferred_language) player_preferred_language
FROM players;
