package com.dtna.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/quotes")
public class RecommendationController {
	@GetMapping()
	public String getUIPage(){
		return "QuickQuote";
	}

}
