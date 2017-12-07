package com.liuchangjiang;
//要求狗具有的属性包括：姓名、品种、颜色、年龄（属性私有） ，
//并创建两种构造方法（1 无参构造方法 2 参数为姓名的构造方法）
public class Dog implements Dongwu{

	@Override
	public void chi() {
		// TODO Auto-generated method stub
		System.out.println("狗：喜欢吃骨头");
	}

	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("狗叫：汪汪汪");
	}
	
	private String mingzi;
	private String pingzhong;
	private String colorl;
	private int nianling;
	
	public Dog (){
		
	}
	public Dog(String mingzi){
		this.mingzi = "金毛";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
