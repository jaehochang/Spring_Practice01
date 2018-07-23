package kh.spring.controller;

import java.util.List;

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
		System.out.println(dto.getPw());
		
		return mav;
	}

	@RequestMapping("/main.do")
	public String toMain() {
		return "redirect:main.jsp";

	}

	@RequestMapping("/loginProc.do")
	public Object toLoginProc(String email, String pw, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println(email +" : "+ pw);
		boolean result = service.loginCheck(email, pw);
		System.out.println(result);
		if (result == true) {
			session.setAttribute("userID", email);
			System.out.println(session.getAttribute("userID") + ":" + pw + ":" +"loginproc");
			mav.setViewName("main.jsp");
			return mav;
		} else {
			mav.setViewName("sign.do");
			return mav;
		}

	}
	@RequestMapping("/mypage.do")
	public ModelAndView toMypage(String email) {
		
		System.out.println(email + "mypage");
		ModelAndView mav = new ModelAndView();
		
		List<MemberDTO> result = service.selectMypage(email);
		
		mav.addObject("result", result); 
		mav.setViewName("mypage.jsp");
		
		return mav;
	}	
	@RequestMapping("/delete.do")
	public String toDelete() {
		return "redirect:delete.jsp";
	}
	@RequestMapping("/deleteProc.do")
	public ModelAndView toDeleteProc(MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		int result = service.deleteMember(dto);
		mav.addObject("result", result);
		mav.setViewName("deleteProc.jsp");
		return mav;
		
		
	}
	@RequestMapping("/update.do")
	public ModelAndView toUpdate(MemberDTO dto) {
		
		ModelAndView mav = new ModelAndView();
		List<MemberDTO> result = service.update(dto);
		
		if(result.size()>0) {
			mav.addObject("updateResult", result);
			mav.setViewName("mypage.jsp");
			return mav;
			
		}else {
			mav.addObject("updateResult", result);
			mav.setViewName("mypage.jsp");
			return mav;
		}
		
		
		
				
		
		
		
	}
	@RequestMapping("/logout.do")
	public String tologOut(HttpSession session) {
		session.invalidate();
		return "redirect:login.jsp";
	}
}
