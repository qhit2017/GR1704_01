package com.佩斯特;

public class lianxi1 {
	
	private String name;
	
	private char xingbie;
	
	private String dianhua;

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

	public String getDianhua() {
		return dianhua;
	}

	public void setDianhua(String dianhua) {
		this.dianhua = dianhua;
	}
	
	public void info(){
		System.out.println("姓名:"+name+",性别:"+xingbie+",电话:"+dianhua);
	}

}
