package com.dangliutao;

public class book {
	/*
	 * 被final修饰的属性、方法、类分别有什么特点？
2、创建Java Project工程，并创建包名com.自己名字 ，在包中创建class 类Book.java。 
   a、给Book.java类创建四个私有成员变量 name,price,no,count；
   b、实现成员变量name, price的封装 。
   c、为no,count提供只读操作 。
   d、getInfo（）方法输出书籍的基本信息 。
   e、在com.自己名字 包下创建测试类TestBook.java 。
	 */
	private String name;
	private String price ;
	private  final String no="不";
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
		System.out.println("我的名字是："+name+"价格是："+price+"我的长度是："+count+"我"+no+"外借");
		
	}
}
