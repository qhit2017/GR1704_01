package com.zhangjisen;

public class Book {
	private String name;
	
	private int price;
	
	private final char no = '��';
	
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
		System.out.println("�Ȿ��������"+name+",�۸���"+price+"Ԫ,"+no+","+"����"+count+"ҳ.");
	}
	
	
	

}
