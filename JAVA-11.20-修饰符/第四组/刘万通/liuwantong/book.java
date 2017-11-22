package com.liuwantong;

public class book {

	private String name;
	private int price;
	private final String on="没有";
	private final int count=16552;
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
	public String getOn() {
		return on;
	}
	
	public int getCount() {
		return count;
	}
    public void getlnfo(){
    	System.out.println("我是"+name+",我的价格是"+price+"读了100页"+on+"了,总共有"+count+"页");
    }
	
	
	
}
