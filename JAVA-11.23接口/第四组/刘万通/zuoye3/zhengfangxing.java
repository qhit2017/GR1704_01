package com.wgwdb;

public class zhengfangxing implements zuoye3 {
	private int baincheng;
	private int zhochang;
	private int mianji;
	public int getBaincheng() {
		return baincheng;
	}
	public void setBaincheng(int baincheng) {
		this.baincheng = baincheng;
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
		System.out.println("�����ε��ܳ���"+4*baincheng);
	}
	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println("�����ε������"+baincheng*baincheng);
	}
	@Override
	public void xiabiancheng() {
		// TODO Auto-generated method stub
		
	}
	
	}

