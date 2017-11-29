package com.liuchangjiang;
//要求老鼠具有的属性包括：姓名、品种、几条腿、体重（属性私有） ，
//并创建两种构造方法（1 无参构造方法 2 参数为姓名、品种的构造方法）
public class Laoshu implements Dongwu{

	@Override
	public void chi() {
		// TODO Auto-generated method stub
		System.out.println("老鼠：吃大米");
	}

	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("老鼠叫：吱吱吱");
	}
	
	private String xingming;
	private String pingzhong;
	private int tuishu;
	private double tizhong;
	
	public Laoshu(){
		
	}
	public Laoshu(String xingming,String pingzhong){
		this.xingming = "米老鼠";
		this.pingzhong = "白鼠";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
