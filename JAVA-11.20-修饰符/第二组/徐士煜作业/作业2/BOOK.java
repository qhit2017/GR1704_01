package com.xsy;

public class BOOK {
	private String name;
	private int price;
	private final String no="1";
	private final String count="2";
	public String getNo() {
		return no;
	}
	public String getCount() {
		return count;
	}
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
		System.out.println(name+"Ò»¹²"+price+"Ò³"+no+count);
	}
		
	

}
