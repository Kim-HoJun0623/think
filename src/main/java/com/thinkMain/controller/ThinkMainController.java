package com.thinkMain.controller;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ThinkMainController {

	
	@RequestMapping("/")
	public String ThinkMainView(HttpServletRequest request, HttpServletResponse response, Model model) {
		HashMap<String, Object> param = new HashMap<>();
		System.out.println("테스트 ");
		model.addAttribute("test", "테스트 데이타");
		
		return "/MainView"; 
	}
}
