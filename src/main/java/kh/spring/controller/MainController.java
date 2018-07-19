package kh.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/home.mo")
	public String toHome() {
		return "redirect:main.jsp";
	}

	
	
}
