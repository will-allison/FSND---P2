# Swiss Tournament Project

This program will create a Swiss Tournament.
It allows you to add players, record matches, see the standinds of the tournament, and see the upcoming matches of the tournament

## Requirements
This program will need [Python 2.7](https://www.python.org/downloads/) to run and a SQL Database.

## Contents
Three files are included in this program:
1. **tournament.py** - This file contains all the functions necessary to create and maintain a tournament.
2. **tournament.sql** - This file creates the tables and views necessary for this program in the SQL Database
3. **tournament_test.py** - This file tests **tournament.py** to make sure all the functions are set up correctly.

## Usage
Create a SQL Database and import the tournament.sql file.

Run "python tournament_test.py" to make sure all functions are set up correctly.

Function details listed below:

def connect():
	"""Connect to the PostgreSQL database.  Returns a database connection."""
	return psycopg2.connect("dbname=tournament")


def deleteMatches():
	"""Remove all the match records from the database."""

def deletePlayers():
	"""Remove all the player records from the database."""

def countPlayers():
	"""Returns the number of players currently registered."""
	
def registerPlayer(name):
	"""Adds a player to the tournament database.
  
	The database assigns a unique serial id number for the player.  (This
	should be handled by your SQL database schema, not in your Python code.)
  
	Args:
	name: the player's full name (need not be unique).
	"""


def playerStandings():
	"""Returns a list of the players and their win records, sorted by wins.

	The first entry in the list should be the player in first place, or a player
	tied for first place if there is currently a tie.

	Returns:
	A list of tuples, each of which contains (id, name, wins, matches):
        id: the player's unique id (assigned by the database)
        name: the player's full name (as registered)
        wins: the number of matches the player has won
        matches: the number of matches the player has played
	"""

def reportMatch(winner, loser):
	"""Records the outcome of a single match between two players.

	Args:
		winner:  the id number of the player who won
		loser:  the id number of the player who lost
	"""
 
 
def swissPairings():
	"""Returns a list of pairs of players for the next round of a match.
 
	Assuming that there are an even number of players registered, each player
	appears exactly once in the pairings.  Each player is paired with another
	player with an equal or nearly-equal win record, that is, a player adjacent
	to him or her in the standings.
  
	Returns:
	A list of tuples, each of which contains (id1, name1, id2, name2)
		id1: the first player's unique id
        name1: the first player's name
        id2: the second player's unique id
        name2: the second player's name
    """