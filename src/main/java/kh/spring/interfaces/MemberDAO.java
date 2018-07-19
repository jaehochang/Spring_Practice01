package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.MemberDTO;

public interface MemberDAO {
	public int insertMember(MemberDTO dto);

	public List<MemberDTO> selectMember();

	public Boolean loginCheck(MemberDTO dto);
	
	public int deleteMember(int seq);
	
	public int modifyMember(MemberDTO dto , int seq);
}
