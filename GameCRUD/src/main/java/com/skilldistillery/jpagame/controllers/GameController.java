package com.skilldistillery.jpagame.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpagame.data.GameDAO;
import com.skilldistillery.jpagame.entities.Game;

@Controller
public class GameController {
	
	@Autowired
	private GameDAO gameDAO;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("gameList", gameDAO.findAll());
		return "home";
	}
	
	//search game by id √
	@RequestMapping(path = "getGame.do", method = RequestMethod.GET)
	  public String getGame(@RequestParam("id") int gameId, Model model) {
	    Game game = gameDAO.findById(gameId);  
	    System.out.println(game + " in getGame Method -----------------------------");
	    model.addAttribute("game", game);
	    System.out.println(model + "in getgame method --------------------------------");
	    return "gameView/result";
	  }
	
	//go to the addGame.jsp for adding
	@RequestMapping(path = "addGame.do", method = RequestMethod.GET)
	public String goAddGame() {
		return "addGame";
	}
	
	//once addgame form submitted do ->
	@RequestMapping(path = "createGame.do", method = RequestMethod.POST)
	public String addGame(Game game, Model model) {
		model.addAttribute("game", gameDAO.createGame(game));
		System.out.println(model + " " + game + "in addGame method----------------");
		return "gameView/result";
	}
	
	
	
	
	
	
	
	
	
	
	//when editGame.do confirm game and add to model to go to the update page
	@RequestMapping(path = "editGame.do", method = RequestMethod.GET)
	public String goUpdateGame(@RequestParam("id") int id, Game game, Model model) {
		Game gameToUpdate = gameDAO.findById(game.getId());
		System.out.println(gameToUpdate + "in editGame.do--------------------------");
		model.addAttribute("game", gameToUpdate);
		return "updateGame";
	}
	
	//after updateGame form submit save any changes then display the film
	@RequestMapping(path="updateGame.do", method = RequestMethod.POST)
	public String updateGame( int id, Game game, Model model) {
		Game updatedGame = gameDAO.updateGame(id, game);
		model.addAttribute("game", updatedGame);
		System.out.println(updatedGame + " " + model + "in updateGame method");
		return "gameView/result";
		
	}
	
	@RequestMapping(path="deleteGame.do", method = RequestMethod.POST)
	public String deleteGame(@RequestParam("id") int gameId) {
	    gameDAO.deleteById(gameId);
	    return "gameView/result";
	}
	
	

}
