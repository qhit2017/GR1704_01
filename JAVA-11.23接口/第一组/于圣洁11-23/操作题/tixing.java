package com.yudshengjie;

public class tixing implements jiekou {
	private int sbc;
	private int xbc;
	private int gao;
	
	
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

	@Override
	public void c() {
		// TODO Auto-generated method stub
		System.out.println("梯形没有周长。");
	}

	@Override
	public void s() {
		// TODO Auto-generated method stub
		
		System.out.println((sbc+xbc)*gao/2);
	}
	tixing(){
		
	}
	
	tixing(int sbc,int xbc){
		this.sbc=sbc;
		this.xbc=xbc;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
