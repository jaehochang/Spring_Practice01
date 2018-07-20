package kh.spring.impl;

import java.util.List;

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

	@Override
	public Boolean loginCheck(MemberDTO dto) {
		return dao.loginCheck(dto);
	}

	@Override
	public List<MemberDTO> selectMypage(String email) {
		
		return dao.selectMypage(email);
	}

	@Override
	public List<MemberDTO> update(MemberDTO dto) {
		int result =  dao.update(dto);
		
		if(result > 0) {
			
			return dao.selectMypage(dto.getEmail());
		}else {
			
			System.out.println("���� ����");
			return dao.selectMypage(dto.getEmail());
		}
	}

	@Override
	public int deleteMember(MemberDTO dto) {
		
		return dao.deleteMember(dto);
	}

	@Override
	public int modifyMember(MemberDTO dto, int seq) {
		
		return dao.modifyMember(dto, seq);
	}
	

	
	
	
}
