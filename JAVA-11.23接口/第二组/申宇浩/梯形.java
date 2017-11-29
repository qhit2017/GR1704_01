package com.w1;

public class 梯形 implements 形状 {
	
	private int shangbianchang;
	private int xiabianzhang;
	private int gao;
	
	梯形(){
		
	}
	梯形(int shangbianchang,int xiabianchang){
		this.shangbianchang=shangbianchang;
		this.xiabianzhang=xiabianchang;
	}
	
	
	
	

	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println("梯形没有周长");
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		
	}

}
