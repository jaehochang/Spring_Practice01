package kh.spring.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberDAO;

public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private JdbcTemplate template; 
	
	@Override
	public Boolean loginCheck(MemberDTO dto) {
		String sql="select email,pw from member where email=? and pw=?";
		List<MemberDTO> result=template.query(sql,  new RowMapper<MemberDTO>() {

			@Override
			public MemberDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
				MemberDTO dto= new MemberDTO();
				dto.setEmail(rs.getString("email"));
				dto.setPw(rs.getString("pw"));
				return dto;
				
			}
			
		},dto.getPw(),dto.getEmail());
		
		if(result.size()>0) {
			return true;
		}else {
			return false;
		}
		
	}

}
