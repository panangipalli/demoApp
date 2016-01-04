package com.evoke.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.evoke.model.User;
import com.evoke.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		System.out.println("=======================================================");
		model.addAttribute("user", new User());
		return "showForm";
	}
	@RequestMapping("/saveUser")
	public void save(User user) {
		userService.save(user);
	}
}
