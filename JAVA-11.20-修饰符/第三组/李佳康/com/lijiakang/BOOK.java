package com.lijiakang;

public class BOOK {
	private	 String name;
	private String price;
	private final char no='��';
	private final int count=100;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public char getNo() {
		return no;
	}
	
	public int getCount() {
		return count;
	}
	public void getInfo(){
		System.out.println("����"+name+"�۸�"+price+no+count);
	}
}
