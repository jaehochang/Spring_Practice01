package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.BoardDTO;

public interface BoardDAO {
	
	public int writing(BoardDTO dto);

	public void getDummyData();


	public List<BoardDTO> getAllBoardList(int startNum, int endNum);
	
}