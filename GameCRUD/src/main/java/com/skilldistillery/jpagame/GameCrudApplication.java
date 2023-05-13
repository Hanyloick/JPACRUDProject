package com.skilldistillery.jpagame;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.jpagame")
public class GameCrudApplication {

	public static void main(String[] args) {
		SpringApplication.run(GameCrudApplication.class, args);
	}

}
