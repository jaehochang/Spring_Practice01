package kh.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	// �닚�꽌�뒗 留욎땅�떆�떎 

	@RequestMapping("/index.do")
	public String toIndex() {
		return "redirect:index.jsp";
	}

	@RequestMapping("/sign.do")
	public String toSign() {
		return "redirect:sign.jsp";
	}

	@RequestMapping("/login.do")
	public String toLogin() {
		return "redirect:login.jsp";
	}

	@RequestMapping("/signProc.do")
	public ModelAndView signProc(MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		
		
		int result = service.insertMember(dto);
		mav.addObject("result", result);
		mav.setViewName("signProc.jsp");
		return mav;
	}

	@RequestMapping("/loginProc.do")
	public ModelAndView toLoginProc(MemberDTO dto, HttpSession session) {
		ModelAndView mav = new ModelAndView();

		Boolean result = service.loginCheck(dto);

		if (result == true) {
			session.setAttribute("userID", dto.getEmail());
			System.out.println(session.getAttribute("userID"));
			mav.setViewName("main.jsp");
			return mav;
		} else {
			mav.setViewName("sign.do");
			return mav;
		}
	}

	@RequestMapping("/main.do")
	public String toMain() {
		return "redirect:main.jsp";

	}
	
	@RequestMapping("/delete.do")
	public String toDelete() {
		return "redirect:memberleave.jsp";
	}
	
	@RequestMapping("/update.do")
	public String toUpdate() {
		return "redirect:update.jsp";
	}
	
	@RequestMapping("/deleteProc.do")
	public ModelAndView toDeleteProc(MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		int result = service.deleteMember(dto);
		mav.addObject("result", result);
		mav.setViewName("memberleaveProc.jsp");
		return mav;
	}
	
	@RequestMapping("/updateProc.do")
	public ModelAndView toUpdateProc(MemberDTO dto ,int seq) {
		ModelAndView mav = new ModelAndView();
		int result = service.modifyMember(dto, seq);
		mav.addObject("result", result);
		mav.setViewName("updateProc.jsp");
		return mav;
	}
	
	@RequestMapping("/logout.do")
	public String tologOut(HttpSession session) {
		session.invalidate();
		return "redirect:login.jsp";
	}
	
	
	
	@RequestMapping("/mypage.do")
	public String toMypage() {
		return "mypage.jsp";
	}
	
}
