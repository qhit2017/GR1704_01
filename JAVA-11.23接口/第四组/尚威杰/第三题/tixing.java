package com.swjh;

public class tixing {

	private int shangbianshang;
	
	private int xiabianchang;
	
	private int gao;
	
	private int zhouchang;
	
	private int mianji;

	public int getShangbianshang() {
		return shangbianshang;
	}

	public void setShangbianshang(int shangbianshang) {
		this.shangbianshang = shangbianshang;
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

	public int getZhouchang() {
		return zhouchang;
	}

	public void setZhouchang(int zhouchang) {
		this.zhouchang = zhouchang;
	}

	public int getMianji() {
		return mianji;
	}

	public void setMianji(int mianji) {
		this.mianji = mianji;
	}
	public void xinxi(){
		System.out.println("上边上"+shangbianshang
				+",下边长"+xiabianchang
				+",高"+gao
				+",周长"+zhouchang
				+",面积"+mianji);
	}
	
}
