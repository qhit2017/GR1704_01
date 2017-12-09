package com.liuchangjiang;

public class Info {

private int bianhao;
	
	private String shangpinming;
	
	private int jiage;
	
	private int shuliang;

	public int getBianhao() {
		return bianhao;
	}

	public void setBianhao(int bianhao) {
		this.bianhao = bianhao;
	}

	public String getShangpinming() {
		return shangpinming;
	}

	public void setShangpinming(String shangpinming) {
		this.shangpinming = shangpinming;
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
	public void xinxi(){
		System.out.println("编号"+bianhao+",商品名"+shangpinming+",价格"+jiage+",数量"+shuliang);
	}

}

