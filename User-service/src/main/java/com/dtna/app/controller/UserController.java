package com.dtna.app.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dtna.app.model.User;
import com.dtna.app.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {
	@Autowired
	private UserService userService;

	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String prodRegPage() {
		return "registerUser";
	}


	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute User user) {
		userService.save(user);
		return "redirect:";
	}
	
	@GetMapping()
	public String getUsers(Model model) {
		List<User> users = userService.findAll();

		model.addAttribute("users", users);
		return "userDetails";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteUser(@RequestParam("id") Integer id) {

		userService.deleteById(id);

		return "redirect:";
	}

}
