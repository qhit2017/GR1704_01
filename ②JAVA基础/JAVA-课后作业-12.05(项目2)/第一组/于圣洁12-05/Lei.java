package com.fushi;

public class Lei {
	private String name;
	private char sex;
	private String  phoneNumber;
	public String getName() {
		return name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public void setName(String name) {
		this.name = name;
	}
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	
	public void info(){
		System.out.println("姓名是"+name+",性别是"+sex+",电话是"+phoneNumber);
	}
	

}
