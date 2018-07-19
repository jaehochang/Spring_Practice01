package kh.spring.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberDAO;

@Component
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private JdbcTemplate template;
	
	@Override
	public int insertMember(MemberDTO dto) {
		String sql = "insert into member values(member.nextval,?,?,?)";
		//signup.jsp
		return template.update(sql,dto.getEmail(),dto.getPw(),dto.getNickname());
	}

}
