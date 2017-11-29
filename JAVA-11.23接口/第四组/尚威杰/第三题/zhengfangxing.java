package com.swjh;

public class zhengfangxing extends tixing {

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
	public void xinxi(){
		System.out.println("边长"+bianchang+",周长"+zhouchang+",面积"+mianji);
	}
}
