package test.mvc.dao;

import java.sql.Timestamp;

public class TestDTO {
	private String id;
	private String pw;
	private String adr;
	private String name;
	private String age;
	private Timestamp reg;
	private String auto;
	//set �޼��� ����
	public void setId(String id) {
		this.id=id;
	}
	public void setPw(String pw) {
		this.pw=pw;
	}
	public void setAdr(String adr) {
		this.adr=adr;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setAge(String age) {
		this.age=age;
	}
	public void setReg(Timestamp reg) {
		this.reg=reg;
	}
	public void setAuto(String auto) {
		this.auto=auto;
	}
	//get �޼��� ����
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public String getAdr() {
		return adr;
	}
	public String getName() {
		return name;
	}
	public String getAge() {
		return age;
	}
	public Timestamp getReg() {
		return reg;
	}
	public String getAuto() {
		return auto;
	}
	
}
