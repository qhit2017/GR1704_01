package com.project;

public class Info {

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
		System.out.println("我叫"+name+",是"+xingbie+"生,电话是"+dianhua);
	}
}
