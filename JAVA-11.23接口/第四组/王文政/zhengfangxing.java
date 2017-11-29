package com.佩斯特;

public class zhengfangxing implements xingzhuang1{
	
	private int bianchang;
	
	private int zhouchang;
	
	private int mianji;


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

	public int getBianchang() {
		return bianchang;
	}

	public void setBianchang(int bianchang) {
		this.bianchang = bianchang;
	}


	
	public void zfx(){
		
	}
	
	public void zfx(int bianchang){
		this.bianchang=4;
	}
	


	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println("正方形的周长:"+bianchang*4);
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println("正方形的面积:"+bianchang*bianchang);
	}
	

}
