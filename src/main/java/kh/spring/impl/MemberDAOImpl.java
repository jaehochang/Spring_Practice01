package kh.spring.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberDAO;


@Component
public class MemberDAOImpl implements MemberDAO{


	
	@Autowired
	private JdbcTemplate template;

	@Override
	public int insertMember(MemberDTO dto) {
		String sql = "insert into member values(members_seq.nextval,?,?,?) ";
		//signup.jsp
		return template.update(sql,dto.getEmail(),dto.getPw(),dto.getNickname());
	}

	@Override
	public List<MemberDTO> selectMember() {
		String sql = "select * from member ";
		return template.query(sql, new RowMapper<MemberDTO>() {

			@Override
			public MemberDTO mapRow(ResultSet rs, int nownum) throws SQLException {

				MemberDTO mdto = new MemberDTO();
				mdto.setSeq(rs.getInt(1));
				mdto.setEmail(rs.getString(2));
				mdto.setPw(rs.getString(3));
				mdto.setNickname(rs.getString(4));
				return mdto;

			}

		});
	}

	@Override
	public Boolean loginCheck(MemberDTO dto) {
		
		String sql = "select count(*) from member where email=? and pw=?";
		boolean result = false;
		int count = template.queryForObject(sql, new Object[] { dto.getEmail(), dto.getPw() }, Integer.class);
		if (count > 0) {
			result = true;
		}
		return result;
		
//		String sql = "select * from member where email=? and pw=?";
//		List<MemberDTO> result= template.query(sql, new RowMapper() {
//
//			@Override
//			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
//				
//				MemberDTO dto = new MemberDTO();
//				
//				dto.setEmail(rs.getString("email"));
//	            dto.setPw(rs.getString("pw"));
//	            return dto;
//			
//			}
//			
//		}, dto.getEmail(), dto.getPw()); 
//				
//				
//		if(result.size() >0) {
//			return true;
//		}else {
//			return false;
//		}
		
		
	
	}



}
