package com.gege;

public class shangpin {
	private String bianhao;
	
	public void setJiage(double jiage) {
		this.jiage = jiage;
	}

	private String name;
	
	private double jiage;
	
	private int shuliang;

	public String getBianhao() {
		return bianhao;
	}

	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getJiage() {
		return jiage;
	}

	public void setJiage(Double jiage) {
		this.jiage = jiage;
	}

	public int getShuliang() {
		return shuliang;
	}

	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	
	public void info(){
		System.out.println("商品名称："+name+"，商品编号："+bianhao+"，商品价格："+jiage+"，商品数量："+shuliang);
	}

}
