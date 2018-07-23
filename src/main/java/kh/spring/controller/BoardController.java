package kh.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.dto.BoardDTO;
import kh.spring.interfaces.BoardService;

@Controller
public class BoardController {

	@Autowired
	public BoardService bService;

	@RequestMapping("/home.bo")
	public String toIndex() {

		return "redirect:index.jsp";
	}

	@RequestMapping("/board.bo")
	public ModelAndView toBoard(HttpServletRequest req) {

		ModelAndView mav = new ModelAndView();

		// get page num

		String currentPageNum = "";
		currentPageNum = req.getParameter("currentPageNum");
		System.out.println("currentPageNum : " + currentPageNum);

		try {
			currentPageNum.equals("null");
		} catch (Exception e) {
			currentPageNum = "1";
		}

		int currentPageNumInt = Integer.parseInt(currentPageNum);

		if (currentPageNumInt < 0) {
			currentPageNumInt = 1;
		}

		int startNum = currentPageNumInt * 10 - 9;
		int endNum = currentPageNumInt * 10;

		// get Page num end

		List<BoardDTO> result = this.bService.getAllBoardList(startNum, endNum);

		// result �� null �̸�, lastPageNum �� ���ٴ� ��.
		System.out.println(result);
		boolean lastPageNull = false;
		try {
			result.get(0);
		} catch (Exception e) {
			lastPageNull = true;
			System.out.println(lastPageNull);
		}

		mav.addObject("boardListData", result);
		mav.addObject("currentPageNum", "" + currentPageNumInt);
		mav.addObject("lastPageNull", lastPageNull);
		mav.setViewName("board.jsp");

		return mav;

	}
	

	@RequestMapping("/writing.bo")
	public int writing(@RequestParam BoardDTO dto) {

		int result = this.bService.writing(dto);

		return result;
	}

	@RequestMapping("/getDummyData.bo")
	public void getDummyData() {
		this.bService.getDummyData();
	}

	@RequestMapping("/home.bo")
	public String toHome() {
		return "home.jsp";
	}
}
