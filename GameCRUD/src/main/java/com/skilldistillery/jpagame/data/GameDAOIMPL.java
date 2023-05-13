package com.skilldistillery.jpagame.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContexts;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpagame.entities.Game;

@Service
@Transactional
public class GameDAOIMPL implements GameDAO {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public Game findById(int gameId) {
		Game idResult = entityManager.find(Game.class, 1);
		if (idResult != null) {
			return idResult;
		} else {
			return null;
		}
	}

	@Override
	public List<Game> findAll() {
		String jpql = "SELECT game FROM Game game";
		List<Game> results = entityManager.createQuery(jpql, Game.class).getResultList();
		if (results.size()>0) {
			return results;
		} else {
			return null;
		}
	}

	@Override
	public Game createGame(Game game) {
		entityManager.persist(game);
		if (entityManager.contains(game)) {
			return game;
		} else
			return null;
	}

	@Override
	public Game updateGame(int gameId, Game game) {
		Game managedGame = entityManager.find(Game.class, gameId);
		if (managedGame != null) {
			managedGame.setTitle(game.getTitle());
			managedGame.setDescription(game.getDescription());
			managedGame.setPublisher(game.getPublisher());
			managedGame.setCategory(game.getCategory());
			managedGame.setRating(game.getRating());
			managedGame.setReleaseYear(game.getReleaseYear());
			managedGame.setType(game.getType());
			managedGame.setUrlImg(game.getUrlImg());
			if (managedGame.equals(game)) {
				return managedGame;
			} else {
				return null;
			}
		} else
			return null;

	}

	@Override
	public boolean deleteById(int gameId) {
		Game gameForDelete = entityManager.find(Game.class, gameId);
		if (gameForDelete != null) {
			entityManager.remove(gameForDelete);
			if (entityManager.contains(gameForDelete)) {
				// the game was found but not deleted
				return false;
			} else {
				// tje game was found and deleted
				return true;
			}
		}
		// no game was found to delete
		return false;
	}

}
