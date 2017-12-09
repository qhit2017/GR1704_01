package com.f7;

public class jia extends xi{

	private int jinhuoshuliang;
	private int xiaoshoshuliang;
	public int getJinhuoshuliang() {
		return jinhuoshuliang;
	}
	public void setJinhuoshuliang(int jinhuoshuliang) {
		this.jinhuoshuliang = jinhuoshuliang;
	}
	public int getXiaoshoshuliang() {
		return xiaoshoshuliang;
	}
	public void setXiaoshoshuliang(int xiaoshoshuliang) {
		this.xiaoshoshuliang = xiaoshoshuliang;
	}
	public void info2(){
		System.out.println("商品名"+getName
				()+"编号"+getBianhao()+"价格"+getJiage()+"数量"+getShuliang()+"进货数量"+jinhuoshuliang);
	}
	public void info3(){
		System.out.println("商品名"+getName
				()+"编号"+getBianhao()+"价格"+getJiage()+"数量"+getShuliang()+"销售数量"+xiaoshoshuliang);
	}
	
}
