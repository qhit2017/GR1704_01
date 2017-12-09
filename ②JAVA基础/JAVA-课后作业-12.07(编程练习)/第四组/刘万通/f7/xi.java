package com.f7;

public class xi {

	private String name;
	private int bianhao;
	private int jiage;
	private int shuliang;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBianhao() {
		return bianhao;
	}
	public void setBianhao(int bianhao) {
		this.bianhao = bianhao;
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
		System.out.println("商品名:"+name+",编号"+bianhao+",价格"+jiage+",数量"+shuliang);
	}
}
