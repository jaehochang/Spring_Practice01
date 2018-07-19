package kh.spring.impl;

import java.util.List;
import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberService;

public class MemberServiceImpl implements MemberService{

	@Override
	public Boolean loginCheck(MemberDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kh.spring.dto.MemberDTO;
import kh.spring.interfaces.MemberDAO;
import kh.spring.interfaces.MemberService;

@Component
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO dao;
	
	@Override
	public int insertMember(MemberDTO dto) {
		
		return dao.insertMember(dto);
	}

	@Override
	public List<MemberDTO> selectMember() {
		
		return dao.selectMember();
	}
	
	
	
}
