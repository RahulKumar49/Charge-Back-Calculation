package com.cts.chargeback.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.chargeback.entity.User;
import com.cts.chargeback.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
    
	final static Logger logger = Logger.getLogger(UserController.class);
	
	@GetMapping("/show")
	public String showForm(){
		return "registeradmin";
		
	}
	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User user,@RequestParam("password") String password,Model model){
		String encodePassword= new BCryptPasswordEncoder().encode(password);
		logger.debug("ENCODED PASSWORD : "+encodePassword);
		user.setPassword(encodePassword);
		boolean status;
		try{
			status=userService.saveUser(user);
		}catch (Exception e) {
			// TODO: handle exception
			return "redirect:/user/show?exist";
		}
		if(status==true)
			model.addAttribute("status", status);
		return "registeradmin";
		
	}
	
}
