package com.dangliutao;

public class book {
	/*
	 * ��final���ε����ԡ���������ֱ���ʲô�ص㣿
2������Java Project���̣�����������com.�Լ����� ���ڰ��д���class ��Book.java�� 
   a����Book.java�ഴ���ĸ�˽�г�Ա���� name,price,no,count��
   b��ʵ�ֳ�Ա����name, price�ķ�װ ��
   c��Ϊno,count�ṩֻ������ ��
   d��getInfo������������鼮�Ļ�����Ϣ ��
   e����com.�Լ����� ���´���������TestBook.java ��
	 */
	private String name;
	private String price ;
	private  final String no="��";
	private final String count="30cm";
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
		System.out.println("�ҵ������ǣ�"+name+"�۸��ǣ�"+price+"�ҵĳ����ǣ�"+count+"��"+no+"���");
		
	}
}
