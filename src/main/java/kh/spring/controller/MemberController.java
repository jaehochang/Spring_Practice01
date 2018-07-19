package kh.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberService;

@Controller
public class MemberController {
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
	
@Autowired
private MemberService service;

@RequestMapping("/main.do")
public String toMain() {
	return "redirect:main.jsp";
	
}

@RequestMapping("/loginProc.do")
public ModelAndView toLoginProc(MemberDTO dto) {
	ModelAndView mav=new ModelAndView();
	
	Boolean result=service.loginCheck(dto);
	if(result==true) {
		mav.setViewName("main.jsp");
		return mav;
	}else {
		mav.setViewName("signup.jsp");
		return mav;
	}
	
	
	
}
}
