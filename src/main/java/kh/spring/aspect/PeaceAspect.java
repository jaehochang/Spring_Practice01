package kh.spring.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import kh.security.util.EncrpyUtils;
import kh.spring.dto.MemberDTO;

@Aspect
@Component
public class PeaceAspect {
	
	@Pointcut("execution(* kh.spring.impl.MemberServiceImpl.insert*(..))")
	public void secretPassword() {}
	
	@Before("secretPassword()")
	public void setSecretpw(JoinPoint jp) {
		MemberDTO dto = (MemberDTO) jp.getArgs()[0];
		dto.setPw(EncrpyUtils.getSha256(dto.getPw()));
	}
	
	@Around("secretPassword()")
	public int setSecretpw(ProceedingJoinPoint pjp) {
		MemberDTO dto = (MemberDTO) pjp.getArgs()[0];
		dto.setPw(EncrpyUtils.getSha256(dto.getPw()));
		int result = 0 ;
		try {
			result = (Integer) pjp.proceed(new Object[] {dto});
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
}
