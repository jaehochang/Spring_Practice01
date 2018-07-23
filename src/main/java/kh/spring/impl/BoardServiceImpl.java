package kh.spring.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dto.BoardDTO;
import kh.spring.interfaces.BoardDAO;
import kh.spring.interfaces.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	public BoardDAO dao;

	@Override
	public int writing(BoardDTO dto) {

		return this.dao.writing(dto);
	}

	@Override
	public void getDummyData() {

		this.dao.getDummyData();
	}
	
	@Override
	public List<BoardDTO> getAllBoardList(int startNum, int endNum) {

		return this.dao.getAllBoardList(startNum, endNum);
	}

}
