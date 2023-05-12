package com.skilldistillery.jpagame.data;

import java.util.List;

import com.skilldistillery.jpagame.entities.Game;

public interface GameDAO {
	
	Game findById(int gameId);
	List<Game> findAll();
	Game createGame(Game game);
	Game updateGame(int gameId, Game game);
	boolean deleteById(int gameId);
	
}
 