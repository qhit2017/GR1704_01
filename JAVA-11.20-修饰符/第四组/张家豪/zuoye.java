package com.zhangjiahao;

public class zuoye {
	private String mingzi;
	
	private int jiage;
	
	private static int count;
	
	private final int n=count++;
	
	public String getmingz(){
		return mingzi;
	}
	public String getMingzi() {
		return mingzi;
	}

	public void setMingzi(String mingzi) {
		this.mingzi = mingzi;
	}

	public int getJiage() {
		return jiage;
	}

	public void setJiage(int jiage) {
		this.jiage = jiage;
	}

	public static int getCount() {
		return count;
	}

	public static void setCount(int count) {
		zuoye.count = count;
	}

	public int getNo() {
		return n;
	}
	
	public void xinxi(){
		System.out.println("书的名字是"+mingzi+"价格是"+jiage+"有"+n+"本书");
	}

}
