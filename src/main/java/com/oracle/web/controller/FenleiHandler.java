package com.oracle.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oracle.web.bean.Fenlei;

import com.oracle.web.service.FenleiService;


@Controller
@Scope(value = "prototype")
public class FenleiHandler {

	@Autowired
	private FenleiService fenleiService;
	
	@RequestMapping(value = "/fenleis1", method = RequestMethod.GET)
	public String fenleis(HttpServletRequest request) {

		List<Fenlei> list = fenleiService.list();

		System.out.println(list);

		request.setAttribute("List", list);

		return "showFenlei";
	}
	
	@RequestMapping(value = "/addUI", method = RequestMethod.GET)
	public String addUI(HttpServletRequest request) {

		List<Fenlei> list = fenleiService.list();

		request.setAttribute("List", list);

		return "addFenlei";
	}

	@RequestMapping(value = "/fenlei", method = RequestMethod.POST)
	public String add(Fenlei fenlei) {

		fenleiService.save(fenlei);

		return "redirect:/fenleis/1";

	}

	
}
