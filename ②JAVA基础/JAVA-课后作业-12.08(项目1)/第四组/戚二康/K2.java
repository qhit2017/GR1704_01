package com.qierkang;

public class K2 {
	private int bianhao;
	
	private String mingcheng;
	
	private int jiage;
	
	private int shuliang;

	public int getBianhao() {
		return bianhao;
	}

	public void setBianhao(int bianhao) {
		this.bianhao = bianhao;
	}

	public String getMingcheng() {
		return mingcheng;
	}

	public void setMingcheng(String mingcheng) {
		this.mingcheng = mingcheng;
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
		System.out.println("��ţ�"+bianhao+",��Ʒ���ƣ�"+mingcheng+",�۸�"+jiage+",��ʼ������"+shuliang);
	}
}
