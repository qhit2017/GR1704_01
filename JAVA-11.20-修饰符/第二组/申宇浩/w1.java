package com.zhangjisen;

public class Book {
	private String name;
	
	private int price;
	
	private final char no = '否';
	
	private int count = 100;
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

	public void getInfo(){
		System.out.println("这本书名字是"+name+",价格是"+price+"元,"+no+","+"共有"+count+"页.");
	}
	
	
	

}
