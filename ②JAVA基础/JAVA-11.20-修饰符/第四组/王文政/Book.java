package com.wangwenzheng;

public class Book {
	
	private String name;
	
	private String price;
	
	private final String no = "��";
	
	private final String count = "û������";
	
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
		System.out.println("�鼮����:"+name+",�۸�:"+price+",�Ȿ�������û������:"+no+",�����ж���:"+count);
	}
	

}
