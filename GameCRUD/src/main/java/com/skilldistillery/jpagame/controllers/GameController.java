package com.skilldistillery.jpagame.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpagame.data.GameDAO;
import com.skilldistillery.jpagame.entities.Game;

@Controller
public class GameController {

	@Autowired
	private GameDAO gameDAO;

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		model.addAttribute("gameList", gameDAO.findAll());
		return "home";
	}

	// search game by id √
	@RequestMapping(path = "getGame.do", method = RequestMethod.GET)
	public String getGame(@RequestParam("id") int gameId, Model model) {
		Game game = gameDAO.findById(gameId);		
		model.addAttribute("game", game);
		return "gameView/result";
	}

	// go to the addGame.jsp for adding
	@RequestMapping(path = "addGame.do", method = RequestMethod.GET)
	public String goAddGame() {
		return "addGame";
	}

	// once addgame form submitted do ->
	@RequestMapping(path = "createGame.do", method = RequestMethod.POST)
	public String addGame(Game game, RedirectAttributes redir) {
		redir.addFlashAttribute("game", gameDAO.createGame(game));
		return "redirect:gameCreated.do";
		
	}
	@GetMapping(path="gameCreated.do")
	public String gameAdded() {
		return "gameView/result";
	}
	
	// when editGame.do confirm game and add to model to go to the update page
	@RequestMapping(path = "editGame.do", method = RequestMethod.GET)
	public String goUpdateGame(@RequestParam("id") int id, Game game, Model model) {
		Game gameToUpdate = gameDAO.findById(game.getId());
		model.addAttribute("game", gameToUpdate);
		return "updateGame";
	}

	// after updateGame form submit save any changes then display the film
	@RequestMapping(path = "updateGame.do", method = RequestMethod.POST)
	public String updateGame(int id, Game game, Model model) {
		Game updatedGame = gameDAO.updateGame(id, game);
		System.out.println(updatedGame + " **************************************************8");
		model.addAttribute("game", updatedGame);
		return "gameView/result";

	}

	@RequestMapping(path = "deleteGame.do", method = RequestMethod.POST)
	public String deleteGame(@RequestParam("id") int gameId) {
		gameDAO.deleteById(gameId);
		return "gameView/delete";
	}

}
