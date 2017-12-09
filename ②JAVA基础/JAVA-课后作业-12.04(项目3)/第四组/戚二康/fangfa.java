package com.qierkang;

public class fangfa {
	private String mingzhi;
	
	private int bianhao;
	
	private int yuwen;
	
	private int shuxue;
	
	private int yingyu;

	public String getMingzhi() {
		return mingzhi;
	}

	public void setMingzhi(String mingzhi) {
		this.mingzhi = mingzhi;
	}

	public int getBianhao() {
		return bianhao;
	}

	public void setBianhao(int bianhao) {
		this.bianhao = bianhao;
	}

	public int getYuwen() {
		return yuwen;
	}

	public void setYuwen(int yuwen) {
		this.yuwen = yuwen;
	}

	public int getShuxue() {
		return shuxue;
	}

	public void setShuxue(int shuxue) {
		this.shuxue = shuxue;
	}

	public int getYingyu() {
		return yingyu;
	}

	public void setYingyu(int yingyu) {
		this.yingyu = yingyu;
	}
	public void info(){
		System.out.println("名字："+mingzhi+",编号："+bianhao+",语文成绩:"
	+yuwen+",数学成绩："+shuxue+",英语成绩："+yingyu+",总成绩："+(yuwen+shuxue+yingyu));
	}

}
