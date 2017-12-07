package com.liuchangjiang;
//上边上、下边长、高、周长、面积（属性私有） ，
//并创建两种构造方法（1 无参构造方法 2 参数为上边长、下边长的构造方法）
public class Tixing implements Xingzhuang{

	@Override
	public void zc() {
		// TODO Auto-generated method stub
		System.out.println("梯形的周长");
	}

	@Override
	public void mj() {
		// TODO Auto-generated method stub
		System.out.println("梯形的面积");
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
