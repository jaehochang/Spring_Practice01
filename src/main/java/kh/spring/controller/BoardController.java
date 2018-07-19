package kh.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kh.spring.dto.BoardDTO;
import kh.spring.interfaces.BoardService;

@Controller
public class BoardController {

	@Autowired
	public BoardService bService;

	@RequestMapping("/board.bo")
	public String toBoard() {

		return "redirect:board.jsp";
	}

	@RequestMapping("/writing.bo")
	public int writing(@RequestParam BoardDTO dto) {

		
		int result = this.bService.writing(dto);

		return result;
	}

}
