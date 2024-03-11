--1. Write a query to display all of the information inside players
select * from players;

--2. Write a query to retrieve the last_name, first_name and city for each player
select last_name, first_name, city from players;

--3. Write a query to retrieve the email_address, country, and street_address for each player
select email_address, country, street_address from players;

--4. Write a query to display the player_id, total_playing_minutes, and installed_games for 
--each player. The installed_games column represents the amount of games each player has purchased/installed
select player_id, total_playing_minutes, installed_games from players;

--5. Write a query to display the player_id, age_group, and total_playing_minutes for each player
select player_id, age_group, total_playing_minutes from players;
