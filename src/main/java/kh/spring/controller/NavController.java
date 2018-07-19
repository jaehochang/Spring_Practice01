package kh.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavController {

	@RequestMapping("home.do")
	public String toHome() {
		return "redirect:index.jsp";
	}
	
}
