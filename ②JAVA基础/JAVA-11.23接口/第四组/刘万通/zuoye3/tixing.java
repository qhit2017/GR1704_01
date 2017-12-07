package com.wgwdb;

public class tixing implements zuoye3 {

	
	
	private  int shangbianxing;
	
	private  int xiabiancheng;
	
	private  int gao;
	
	private  int zhochang;
	private  int mianji;
	public int getShangbianxing() {
		return shangbianxing;
	}
	public void setShangbianxing(int shangbianxing) {
		this.shangbianxing = shangbianxing;
	}
	public int getXiabiancheng() {
		return xiabiancheng;
	}
	public void setXiabiancheng(int xiabiancheng) {
		this.xiabiancheng = xiabiancheng;
	}
	public int getGao() {
		return gao;
	}
	public void setGao(int gao) {
		this.gao = gao;
	}
	public int getZhochang() {
		return zhochang;
	}
	public void setZhochang(int zhochang) {
		this.zhochang = zhochang;
	}
	public int getMianji() {
		return mianji;
	}
	public void setMianji(int mianji) {
		this.mianji = mianji;
	}
	@Override
	public void zhochang() {
		// TODO Auto-generated method stub
		System.out.println("周长是"+zhochang);
	}
	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println("面积是"+mianji);
	}
	@Override
	public void xiabiancheng() {
		// TODO Auto-generated method stub
		System.out.println("下边长是"+xiabiancheng);
	}
	
	
	
	
	
	
	
}
