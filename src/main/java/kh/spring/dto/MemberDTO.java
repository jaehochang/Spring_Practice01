package kh.spring.dto;

public class MemberDTO {
	private int seq;
	private String email;
	private String pw; 
	private String nickname;
	
	public MemberDTO() {
		super();
	}

	public MemberDTO(int seq, String email, String pw, String nickname) {
		this.seq = seq;
		this.email = email;
		this.pw = pw;
		this.nickname = nickname;
	}
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
}
