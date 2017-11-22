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
		System.out.println("我叫"+name+"，价格"+price+",不"+no+"总数"+count);
	}
	
}
