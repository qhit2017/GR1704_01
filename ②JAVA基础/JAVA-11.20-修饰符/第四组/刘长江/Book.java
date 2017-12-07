package com.liuchangjiang;
//a、给Book.java类创建四个私有成员变量 name,price,no,count；
//b、实现成员变量name, price的封装 。
//c、为no,count提供只读操作 。
//d、getInfo（）方法输出书籍的基本信息 。
//e、在com.自己名字 包下创建测试类TestBook.java 
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
		System.out.println("这本书的名字是"+name+",价格是"+price+",编号是："+no+"页数是："+count);
		
	}

}
