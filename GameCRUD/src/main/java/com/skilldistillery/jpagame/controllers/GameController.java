package com.skilldistillery.jpagame.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpagame.data.GameDAO;

@Controller
public class GameController {
	
	@Autowired
	private GameDAO gameDAO;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("gameList", gameDAO.findAll());
		return "home";
	}

}
