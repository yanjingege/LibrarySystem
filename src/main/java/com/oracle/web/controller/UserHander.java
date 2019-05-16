package com.oracle.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.oracle.web.service.UserService;

@Controller
@Scope(value = "prototype")
public class UserHander {
	
	@Autowired
	private UserService userService;

	
}
