-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE TABLE matches (
	winner integer,
	loser integer
);

CREATE TABLE players (
	id serial PRIMARY KEY,
	name text
);

CREATE view total_matches as select players.id,players.name,count(matches.winner) as wins from players left join matches on matches.winner = players.id	group by players.id order by wins desc;

CREATE view standings as select total_matches.id,total_matches.name,total_matches.wins,count(matches.winner) as matches from total_matches left join matches on matches.winner = total_matches.id or matches.loser = total_matches.id group by total_matches.name,total_matches.id,total_matches.wins order by wins desc, matches
