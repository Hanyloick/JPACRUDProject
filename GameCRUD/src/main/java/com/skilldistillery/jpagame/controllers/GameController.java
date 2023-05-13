package com.skilldistillery.jpagame.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping(path = "getGame.do", method = RequestMethod.GET)
	  public ModelAndView getFilm(@RequestParam("gameId") int gameId) {
	    ModelAndView mv = new ModelAndView();

	    Game game = gameDAO.findById(gameId);     
	    // film is unmanaged after it is outside of the transaction that exists in the DAO

	    mv.addObject("game", game);
	    mv.setViewName("gameView/result");
	    return mv;
	  }

}
