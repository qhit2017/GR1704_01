package com.佩斯特;

public class tixing implements xingzhuang1{
	
	private int shangbianchang;
	
	private int xiabianchang;
	
	private int gao;
	
	private int zhouchang;
	
	private int mianji;

	public int getShangbianchang() {
		return shangbianchang;
	}

	public void setShangbianchang(int shangbianchang) {
		this.shangbianchang = shangbianchang;
	}

	public int getXiabianchang() {
		return xiabianchang;
	}

	public void setXiabianchang(int xiabianchang) {
		this.xiabianchang = xiabianchang;
	}

	public int getGao() {
		return gao;
	}

	public void setGao(int gao) {
		this.gao = gao;
	}

	public int getChouchang() {
		return zhouchang;
	}

	public void setChouchang(int chouchang) {
		this.zhouchang = chouchang;
	}

	public int getMianji() {
		return mianji;
	}

	public void setMianji(int mianji) {
		this.mianji = mianji;
	}
	
	public void tx(){
		
	}
	
	public void tx(int shangbianchang,int xiabianchang){
		this.shangbianchang=6;this.xiabianchang=9;
	}
	
	

	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println("梯形的周长:"+"条件不够");
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println("梯形的面积:"+(shangbianchang+xiabianchang)*gao/2);
	}

	

}
