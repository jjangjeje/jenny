package com.fitness.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/Main")
	public String main(){
		return "Main";
	}
	@RequestMapping("/memList")
	public String memList() {
		return "memList";
	}
	@RequestMapping("/memSearch")
	public String memSearch() {
		return "memSearch";
	}
	@RequestMapping("/memInsert")
	public String memInsert() {
		return "memInsert";
	}
	
	
}
