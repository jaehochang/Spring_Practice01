package kh.spring.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	List<String> chat=new ArrayList<String>();
	
	@RequestMapping("/home.mo")
	public String toHome() {
		return "redirect:main.jsp";
	}

	@RequestMapping("/sendChat.mo")
	public void toSend(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws Exception {
		response.setCharacterEncoding("utf8");
		String keyword=request.getParameter("chatText");
		System.out.println();
		String id=(String) session.getAttribute("userID");
		PrintWriter out=response.getWriter();
		System.out.println(keyword);
		chat.add("<div>"+request.getParameter("chatText")+"</div>");
		
	}
	@RequestMapping("/receiveChat.mo")
	public void toReceive(HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		
		if(chat.size()>15) {
			chat.remove(0);
		}
		
		StringBuilder sb=new StringBuilder();
		for(String tmp:chat) {
			System.out.println(tmp);
			sb.append(tmp+"<br>");
		}
		
		out.println(sb.toString());
		
	}
	
}
