package com.oracle.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oracle.web.bean.User;
import com.oracle.web.service.UserService;

@Controller
@Scope(value = "prototype")
public class UserHander {
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String user(HttpServletRequest request) {

 		List<User> list = userService.list();

 		request.setAttribute("List", list);

 		return "showUser";
 		
	}
	
//	@RequestMapping(value = "/users/{pageNow}", method = RequestMethod.GET)
//	public String monsters(@PathVariable("pageNow")Integer pageNow, HttpServletRequest request) {
//		
//		if(pageNow == null || pageNow < 1){
//			
//			pageNow = 1;
//		}
//
//		PageBean<SubUser> pb=this.userService.selectAllByPageHelper(pageNow);
//		
//		request.setAttribute("pb", pb);
//		
//		System.out.println(pb);
//		
//		return "list";
//	}
//	
	@RequestMapping(value = "/addUI", method = RequestMethod.GET)
	public String addUI(HttpServletRequest request) {

 		List<User> list = userService.list();

 		request.setAttribute("List", list);

 		return "addUser";
 		
 		
	}
	
	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public String add(User user) {

		userService.save(user);

		return "redirect:/users/1";
	}
	
	@RequestMapping(value = "/user/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("id") Integer id) {

		User u=new User();
		
		u.setId(id);
		
		userService.delete(u);

		return "redirect:/users/1";
	}
	
	@RequestMapping(value = "/user/{id}", method = RequestMethod.GET)
	public String updateUI(@PathVariable("id") Integer id,HttpSession session) {

		User user=userService.queryOneUser(id);

		session.setAttribute("u", user);
		
		return "update";
	}
	
	@RequestMapping(value = "/user/user", method = RequestMethod.PUT)
	public String update(User user) {
		
		System.out.println(user);

		userService.update(user);

		return "redirect:/users/1";
	}
}
