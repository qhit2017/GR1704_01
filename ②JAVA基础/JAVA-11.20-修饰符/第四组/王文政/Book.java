package com.wangwenzheng;

public class Book {
	
	private String name;
	
	private String price;
	
	private final String no = "不";
	
	private final String count = "没有数量";
	
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

	public void getinfo(){
		System.out.println("书籍名字:"+name+",价格:"+price+",这本书书店有没有卖的:"+no+",数量有多少:"+count);
	}
	

}
