package com.zhangjisen;

public class zhengfangxing implements Xingzhuang{
	
	private int bianchang;
	
	public int getBianchang() {
		return bianchang;
	}
	public void setBianchang(int bianchang) {
		this.bianchang = bianchang;
	}
	
	public void c() {
		// TODO Auto-generated method stub
		System.out.println("�ܳ���"+(bianchang+bianchang+bianchang+bianchang));
	}
	@Override
	public void s() {
		// TODO Auto-generated method stub
		System.out.println("�����"+bianchang*bianchang);
	}
	zhengfangxing(int bianchang){
		this.bianchang = bianchang;
		
	}
	zhengfangxing(){
		
	}
	
}
