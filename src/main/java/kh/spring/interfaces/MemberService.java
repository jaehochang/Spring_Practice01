package kh.spring.interfaces;

import java.util.List;

import kh.spring.dto.MemberDTO;


public interface MemberService {
	public int insertMember(MemberDTO dto);
	public List<MemberDTO> selectMember();
	public Boolean loginCheck(MemberDTO dto);
	public List<MemberDTO> selectMypage(String email);
	public List<MemberDTO> update(MemberDTO dto);
	public int deleteMember(MemberDTO dto);
	public int modifyMember(MemberDTO dto , int seq);
}
