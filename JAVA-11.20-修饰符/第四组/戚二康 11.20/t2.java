package com.qierkang;

public class t2 {
	private String name;
	
	private  int price;
	
	private final String no="����";
	
	private final int count=100;

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
	}	public void getInfo(){
		System.out.println("������"+name+
				"���۸�"+price+"  "+"10��"+no+"�ٸ���"+"����"+count+"��");
	}
	
}
