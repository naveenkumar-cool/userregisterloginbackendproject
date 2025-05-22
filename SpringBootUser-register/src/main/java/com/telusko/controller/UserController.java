package com.telusko.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.telusko.entity.UserEntity;
import com.telusko.repo.UserRepository;

@Controller
public class UserController {

	@Autowired
	private UserRepository userRepository;
	
	
	
	@GetMapping("/")
	public String getRegisterPage(Model model) {
		model.addAttribute("user", new UserEntity());
		return "register";
	}
	
	@PostMapping("/saveUser")
	public String registerUser(UserEntity user, Model model) {
		//add user in DB
		UserEntity userEntity = userRepository.save(user);
		
		if(userEntity!=null) {
			String message = "Hello "+user.getFirstName()+" "+user.getLastName();
			model.addAttribute("msg",message);
		}
		return "success";
	}
}
