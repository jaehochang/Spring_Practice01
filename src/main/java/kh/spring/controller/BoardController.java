package kh.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping("/board.bo")
	public String toBoard() {
	
		return "redirect:board.jsp";
	}

	
}
