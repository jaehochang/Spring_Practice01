package kh.spring.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import kh.security.utils.EncryptUtils;
import kh.spring.dto.MemberDTO;

@Aspect
@Component
public class MemberAspect {
	
	@Pointcut("execution(* kh.spring.controller.MemberController.signProc*(..))")
	public void signUpEncrypt() {} 
	
	
	@Before("signUpEncrypt()")
	public void signUpEncryptProc(JoinPoint jp) {
		
		
		MemberDTO dto = (MemberDTO)jp.getArgs()[0];
		
		dto.setPw(EncryptUtils.getSha256(dto.getPw())); 
		System.out.println(dto.getPw() + "aop");
	}
	

}
