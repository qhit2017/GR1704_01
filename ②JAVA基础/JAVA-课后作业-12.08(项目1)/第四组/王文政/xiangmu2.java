package com.练习;

public class lianxi3 {
	
	private String shangpinbianhao;
	
	private String mingcheng;
	
	private int jiage;
	
	private int chushishuliang;

	public String getShangpinbianhao() {
		return shangpinbianhao;
	}

	public void setShangpinbianhao(String shangpinbianhao) {
		this.shangpinbianhao = shangpinbianhao;
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

	public int getChushishuliang() {
		return chushishuliang;
	}

	public void setChushishuliang(int chushishuliang) {
		this.chushishuliang = chushishuliang;
	}
	
	public void info(){
		System.out.println("商品编号:"+shangpinbianhao+",名称:"+mingcheng+",价格:"+jiage+",初始数量:"+chushishuliang);
	}

}
