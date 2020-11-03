package com.spring.rest.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.rest.service.IBoardService;

@Controller
public class xxController {

	@Autowired
	IBoardService ser;
	
	@PostMapping("insertboard")
	public ModelAndView insertBoard(HttpServletRequest req, ModelAndView mv) {
		return mv;
	}
	
}
