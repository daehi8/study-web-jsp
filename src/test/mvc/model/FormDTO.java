package test.mvc.model;

//	DTO(DataTransferObject)/VO(Value Object)
public class FormDTO {
	private String id;
	private String pw;
	private String age;
	// 파라미터의 이름과 동일하게 만들기
	
	/* 아이디 조건
	 * 4글자 이상 10이하(4~10)
	 * 첫글자는 알파벳 	*/
	public void setId(String id) {	
		int length = id.length(); 
		if(length >= 4 && length <= 10) {
			int a = id.charAt(0);
			if(a >= 65 && a <=90) {
				this.id = id;	
			}else if(a >= 97 && a <= 122) {
				this.id = id;
			}
		}//첫번째 if문
	}
	
	public void setPw(String pw) {	this.pw = pw;	}
	
	//1~150 사이만 대입되도록하기.
	public void setAge(String age) {	
		int a = Integer.parseInt(age);
		if(a > 0 && a <= 150) {
			this.age = age;	
		}
	}

	public String getId() {	return id;	}
	public String getPw() {	return pw;	}
	public String getAge() {	return age+"";	}


}
