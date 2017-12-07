package com.diwu;

public class Dog implements Dongwu{

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("郭郭。。。-");
	}

	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("出出....");
	}
	private String name;
	private String pinzhong;
	private String color;
	private int age;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPinzhong() {
		return pinzhong;
	}

	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	Dog(){
		
	}
	Dog (String name){
		this.name=name;
	}
	
	
	
	

}
