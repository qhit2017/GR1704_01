package com.zhangjisen;

public class gou implements Dongwu {
	private String name;
	private String type;
	private char color;
	private int age;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public char getColor() {
		return color;
	}
	public void setColor(char color) {
		this.color = color;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void run(){
		System.out.println("�ҵĹ���������"+name+",��"+type+",��ɫ��"+color+"ɫ,����"+age+"����.");
	}
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("ϲ���Թ�ͷ");
	}
	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("������.......");
	}
	
	gou( String name,String type,char color,int age){
		this.name = name;
		this.age= age;
		this.color=color;
		this.type= type;
		
	}
	gou(){
		
		
		
	}
	
	

}
