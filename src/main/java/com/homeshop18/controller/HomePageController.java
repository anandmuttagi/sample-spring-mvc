package com.homeshop18.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomePageController {

	
	@RequestMapping(value="/homePage", method = RequestMethod.GET)
	public String welcome(ModelMap model) {
 
		model.addAttribute("message", "Welcome to Home Page");
 
		//Spring uses InternalResourceViewResolver and return back index.jsp
		return "index";
 
	}
}
