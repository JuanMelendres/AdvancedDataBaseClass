//Create KeySpace:

  CREATE KEYSPACE IF NOT EXISTS la_liga_mx WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

//Create Table:

  CREATE TABLE la_liga_mx.season (club text, total_games int, win_games int, draw_games int, lost_games int, goals_favor int, goals_against int, goal_difference int, points int, primary key(club, total_games, goal_difference, points));

  CREATE TABLE la_liga_mx.ranking (place int, club text, total_games int, goal_difference int, points int, primary key(club, total_games, goal_difference, points, place));

//Create Insert:

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Santos', 11, 7, 2, 2, 26, 14, 12, 23);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Necaxa', 12, 6, 3, 3, 23, 14, 9, 21);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('America', 12, 5, 6, 1, 19, 13, 6, 21);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Leon', 11, 5, 4, 2, 25, 16, 9, 19);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Pachuca', 12, 5, 3, 4, 26, 19, 7, 18);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Club Queretaro', 11, 5, 3, 3, 19, 13, 6, 18);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Tigres', 11, 4, 5, 2, 15, 11, 4, 17);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Pumas', 11, 5, 2, 4, 12, 9, 3, 17);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Atlas', 12, 5, 2, 5, 14, 13, 1, 17);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Club Tijuana', 11, 5, 2, 4, 19, 21, -2, 17);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Morelia', 11, 5, 1, 5, 13, 12, 1, 16);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Monterrey', 12, 5, 1, 6, 15, 17, -2, 16);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Atletico San Luis', 11, 4, 2, 5, 15, 18, -3, 14);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Cruz Azul', 12, 2, 7, 3, 12, 14, -2, 13);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Toluca', 12, 3, 3, 6, 10, 15, -5, 12);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Puebla', 11, 3, 3, 5, 13, 22, -9, 12);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Chivas', 11, 3, 2, 6, 15, 20, -5, 11);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('FC Juarez', 11, 3, 2, 6, 8, 14, -6, 11);

  INSERT INTO la_liga_mx.season (club, total_games, win_games, draw_games, lost_games, goals_favor, goals_against, goal_difference, points) VALUES ('Veracruz', 11, 0, 3, 8, 6, 29, -23, 3);
