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
		return entityManager.find(Game.class, 1);
	}

	@Override
	public List<Game> findAll() {
		String jpql = "SELECT game FROM Game game";
		return	entityManager.createQuery(jpql, Game.class).getResultList();		
	}

	@Override
	public Game createGame(Game game) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Game updateGame(int gameId, Game game) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int gameId) {
		// TODO Auto-generated method stub
		return false;
	}

}
