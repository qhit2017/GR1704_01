package com.liuchangjiang;
//�ϱ��ϡ��±߳����ߡ��ܳ������������˽�У� ��
//���������ֹ��췽����1 �޲ι��췽�� 2 ����Ϊ�ϱ߳����±߳��Ĺ��췽����
public class Tixing implements Xingzhuang{

	@Override
	public void zc() {
		// TODO Auto-generated method stub
		System.out.println("���ε��ܳ�");
	}

	@Override
	public void mj() {
		// TODO Auto-generated method stub
		System.out.println("���ε����");
	}

	private int sbc;
	private int xbc;
	private int gao;
	private int zhouchang;
	private int mianji;
	
	
	public int getSbc() {
		return sbc;
	}

	public void setSbc(int sbc) {
		this.sbc = sbc;
	}

	public int getXbc() {
		return xbc;
	}

	public void setXbc(int xbc) {
		this.xbc = xbc;
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

	public Tixing (){
		
	}
	public Tixing(int sbc,int xbc){
		 this.sbc = 4;
			this.xbc = 6;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
