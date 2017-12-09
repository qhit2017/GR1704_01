package com.lianxi;

public class shuxing {

	
	private String name;
	
	private char xingbie;
	
	private int dianhua ;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public char getXingbie() {
		return xingbie;
	}

	public void setXingbie(char xingbie) {
		this.xingbie = xingbie;
	}

	public int getDianhua() {
		return dianhua;
	}

	public void setDianhua(int dianhua) {
		this.dianhua = dianhua;
	}
	
	public void info(){
		System.out.println("我是"+name+",性别"+xingbie+",电话"+dianhua);
	}
}
