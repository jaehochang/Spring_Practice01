package kh.spring.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import kh.spring.dto.BoardDTO;
import kh.spring.interfaces.BoardDAO;

@Component
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	public JdbcTemplate template;

	public int writing(BoardDTO dto) {

		String sql = "insert into board values(board_seq.nextval,?,?,?,sysdate)";

		int result = this.template.update(sql, dto.getTitle(), dto.getContents(), dto.getWriter());

		return result;
	}

	public void getDummyData() {
		String sql = "insert into board values(board_seq.nextval,?,?,?,sysdate)";

		String writer = "";
		String title = "";
		String contents = "";
		for (int i = 0; i < 251; i++) {
			writer = "Anonymous - " + i;
			title = "Everything gonna be alright" + i;
			contents = "Allez y tous les monde!" + i;

			int result = this.template.update(sql, title, writer, contents);
			System.out.println(writer + " : " + title + " : " + contents);

			int regCount = 0;
			if (result > 0) {
				regCount++;
				System.out.println(regCount + "번째 글이 성공적으로 등록되었습니다.");
			}
		}

	}
	
		

	@Override
	public List<BoardDTO> getAllBoardList(int startNum , int endNum) {

		String sql = "select * from board where seq between  ? and ? order by seq desc ";
		return this.template.query(sql, new Object[] {startNum,endNum}, new RowMapper<BoardDTO>() {

			@Override
			public BoardDTO mapRow(ResultSet rs, int rowNum) throws SQLException {

				BoardDTO tmp = new BoardDTO();
				tmp.setSeq(rs.getInt("seq"));
				tmp.setTitle(rs.getString("title"));
				tmp.setContents(rs.getString("contents"));
				tmp.setWriter(rs.getString("writer"));
				tmp.setDate(rs.getString("date"));

				return tmp;

			}

		});
	}

}
