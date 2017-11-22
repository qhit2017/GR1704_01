package com.wangwenzheng;

public class ren {
	
	private String xingming;
	
	private int nianling;
	
	private int shengao;
	
	private String dizhi;

	public String getXingming() {
		return xingming;
	}

	public void setXingming(String xingming) {
		this.xingming = xingming;
	}

	public int getNianling() {
		return nianling;
	}

	public void setNianling(int nianling) {
		this.nianling = nianling;
	}

	public int getShengao() {
		return shengao;
	}

	public void setShengao(int shengao) {
		this.shengao = shengao;
	}

	public String getDizhi() {
		return dizhi;
	}

	public void setDizhi(String dizhi) {
		this.dizhi = dizhi;
	}

	public void xinxi(){
		System.out.println("姓名:"+xingming+"今年:"+nianling+"岁"+"身高:"+shengao+"地址:"+dizhi);
		
	}	
	public void chifan(String xihuanchishenme){
		System.out.println("我喜欢吃土豆");
	}
	public int shuijiao(int i){
		System.out.println("我一般十一点睡觉");
		return i;
}
}
	

