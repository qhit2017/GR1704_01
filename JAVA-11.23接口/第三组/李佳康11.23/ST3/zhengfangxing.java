package com.ST3;

public class zhengfangxing implements xingzhuang{
	private int bianchang;
	private int zhouchang;
	private int mianji;
	
	public int getBianchang() {
		return bianchang;
	}

	public void setBianchang(int bianchang) {
		this.bianchang = bianchang;
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

	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println("��������ε��ܳ��ǣ�"+zhouchang);
	}

	@Override
	public void mianji(int bianchang) {
		// TODO Auto-generated method stub
		System.out.println("��������ε�����ǣ�"+(bianchang*bianchang));
	}

	@Override
	public void mianji(int shhangbianchang, int xiabianchang,int gao) {
		// TODO Auto-generated method stub
		
	}
	
}
