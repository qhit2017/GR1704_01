package com.xiaoshou;

public class shuxing {

	private int bianhao;
	
	private String name;
	
	private int jiage;
	
	private  int shuliang;

	public int getBianhao() {
		return bianhao;
	}

	public void setBianhao(int bianhao) {
		this.bianhao = bianhao;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getJiage() {
		return jiage;
	}

	public void setJiage(int jiage) {
		this.jiage = jiage;
	}

	public int getShuliang() {
		return shuliang;
	}

	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	
	public void info(){
		System.out.println("编号："+bianhao+",名字："+name+",价格："+jiage+",数量："+shuliang);
	}

}
