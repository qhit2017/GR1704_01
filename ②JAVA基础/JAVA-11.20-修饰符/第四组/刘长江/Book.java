package com.liuchangjiang;
//a����Book.java�ഴ���ĸ�˽�г�Ա���� name,price,no,count��
//b��ʵ�ֳ�Ա����name, price�ķ�װ ��
//c��Ϊno,count�ṩֻ������ ��
//d��getInfo������������鼮�Ļ�����Ϣ ��
//e����com.�Լ����� ���´���������TestBook.java 
public class Book {
	private String name;
	private double price;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	private String no;
	private  int count;
	
	public void getInfo(){
		System.out.println("�Ȿ���������"+name+",�۸���"+price+",����ǣ�"+no+"ҳ���ǣ�"+count);
		
	}

}
