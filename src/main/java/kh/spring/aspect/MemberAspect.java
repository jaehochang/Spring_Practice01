package kh.spring.aspect;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
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
	@Pointcut("execution(* kh.spring.controller.MemberController.toLoginProc*(..))")
	public void loginPointCut() {}
	
	
	@Before("signUpEncrypt()")
	public void signUpEncryptProc(JoinPoint jp) {
		
		
		MemberDTO dto = (MemberDTO)jp.getArgs()[0];
		
		dto.setPw(EncryptUtils.getSha256(dto.getPw()));
		// call by reference 주소를 건드렸기 때문에 값이 저장된다
		// 일반 string으로 하면 지역변수로서 이 메서드에서만 동작하기 때문에 기억할수 없음
		System.out.println(dto.getPw() + "aop");
	}
	@Around("loginPointCut()")
	public Object loginEncryptProc(ProceedingJoinPoint pjp) {
		String email = pjp.getArgs()[0].toString();
		String pw = pjp.getArgs()[1].toString();
		HttpSession session = (HttpSession)pjp.getArgs()[2];
		
		System.out.println(email +" : "+ pw + "는 Aspect");
		pw = EncryptUtils.getSha256(pw);
		
		/*boolean result = false;*/
		Object result = null;
			try {
				result = pjp.proceed(new Object[] {email, pw, session});
			} catch (Throwable e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		
		}
		return result;
	}
	

}
