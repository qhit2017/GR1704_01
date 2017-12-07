package com.yudshengjie;

public class zhengfangxing implements jiekou{
	private int  bainchang;

	
	
	
	public int getBainchang() {
		return bainchang;
	}
	public void setBainchang(int bainchang) {
		this.bainchang = bainchang;
	}

	
	 zhengfangxing(){
		
	}
	
	
	 zhengfangxing(int bianchang){
		this.bainchang=bianchang;
	}
	
	
	
	@Override
	public void c() {
		// TODO Auto-generated method stub
		
		System.out.println(bainchang+bainchang+bainchang+bainchang);
	}
	@Override
	public void s() {
		// TODO Auto-generated method stub
		System.out.println(bainchang*bainchang);
		
	}
	
}
