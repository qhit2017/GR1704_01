package com.qierkang;

public class fangfa {
	private String xingming;
	
	private char xingbie;
	
	private String dianhua;

	public String getXingming() {
		return xingming;
	}

	public void setXingming(String xingming) {
		this.xingming = xingming;
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
		System.out.println("姓名："+xingming+",性别："+xingbie+",电话号码："+dianhua);
	}

}
