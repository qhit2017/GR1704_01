package com.lzz;

public class Book {

	
	private String name;
	
	private int price;
	
	private final String no="1";
	
	private final int count=123;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	public void getinfo(){
		System.out.println("�ҽ�"+name+"���۸�"+price+",��"+no+"����"+count);
	}
	
}
