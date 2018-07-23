package kh.spring.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class PeaceAspect {
	
	@Pointcut("execution(* kh.spring.impl.MemberServiceImpl.insert*(..))")
	public void secretPassword() {}
	
	@Before("secretPassword()")
	public void setSecretpw(JoinPoint jp) {
		
	}
	
}
