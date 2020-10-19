package test.academy.model;
import java.sql.Timestamp;

public class AcademyDTO {
	private String num;
	private String name;
	private String phone;
	private String phone1;
	private String phone2;
	private String phone3;
	private String address;
	private String birth;
	private int state;
	private Timestamp reg;
	private String img;

	//set
	public void setNum(String num) {
		this.num=num;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setPhone(String phone) {
		if(phone != null) {
			String [] p = phone.split("-");
			phone1 = p[0];
			phone2 = p[1];
			phone3 = p[2];
		}
		this.phone=phone;
	}
	public void setPhone1(String phone1) {
		this.phone1=phone1;
	}
	public void setPhone2(String phone2) {
		this.phone2=phone2;
	}
	public void setPhone3(String phone3) {
		this.phone3=phone3;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	public void setBirth(String birth) {
		this.birth=birth;
	}
	public void setState(int state) {
		this.state=state;
	}
	public void setReg(Timestamp reg) {
		this.reg=reg;
	}
	public void setImg(String img) {
		this.img=img;
	}
	
	
	//get
	public String getNum() {
		return num;
	}
	public String getName() {
		return name;
	}
	public String getPhone() {
		phone = getPhone1()+"-"+getPhone2()+"-"+getPhone3();
		return phone;
	}
	public String getPhone1() {
		return phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public String getAddress() {
		return address;
	}
	public String getBirth() {
		return birth;
	}
	public int getState() {
		return state;
	}
	public Timestamp getReg() {
		return reg;
	}
	public String getImg() {
		return img;
	}
}

