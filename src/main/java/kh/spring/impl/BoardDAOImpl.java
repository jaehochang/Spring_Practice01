package kh.spring.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.BoardDTO;
import kh.spring.interfaces.BoardDAO;

@Component
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	public JdbcTemplate template;
	
	
	public int writing(BoardDTO dto) {
		
		String sql="insert into board values(board_seq.nextval,?,?,?,sysdate)";
		
		int result = this.template.update(sql, dto.getTitle(),dto.getContents(),dto.getWriter());
		
		return result;
	}
	
}
