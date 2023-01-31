package com.webjjang.member.vo;

public class LoginVO {
	
	private String id, pw, name, email;
	private int gradeNo;
	private String gradeName;
	
	// 데이터베이스의 컬럼 이름과 java에서 properties
	// ${login.id} - getID(); : 프로퍼티(property)
	// 아이디를 꺼내서 사용하라는 명령어인데 이 때 사용하는 id는 위에서 선언한 변수 id가 아니라 getId() 메서드 이다.
	// 위의 변수 id는 private로 선언해서 외부에서 쓸 수 없다.
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getGradeNo() {
		return gradeNo;
	}
	public void setGradeNo(int gradeNo) {
		this.gradeNo = gradeNo;
	}
	public String getGradeName() {
		return gradeName;
	}
	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}
	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", pw=" + pw + ", name=" + name + ", email=" + email + ", gradeNo=" + gradeNo
				+ ", gradeName=" + gradeName + "]";
	}
	
	

}
