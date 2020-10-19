package test.mvc.model;

//	DTO(DataTransferObject)/VO(Value Object)
public class FormDTO {
	private String id;
	private String pw;
	private String age;
	// �Ķ������ �̸��� �����ϰ� �����
	
	/* ���̵� ����
	 * 4���� �̻� 10����(4~10)
	 * ù���ڴ� ���ĺ� 	*/
	public void setId(String id) {	
		int length = id.length(); 
		if(length >= 4 && length <= 10) {
			int a = id.charAt(0);
			if(a >= 65 && a <=90) {
				this.id = id;	
			}else if(a >= 97 && a <= 122) {
				this.id = id;
			}
		}//ù��° if��
	}
	
	public void setPw(String pw) {	this.pw = pw;	}
	
	//1~150 ���̸� ���Եǵ����ϱ�.
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
