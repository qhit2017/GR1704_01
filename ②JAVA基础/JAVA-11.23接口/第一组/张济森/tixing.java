package com.zhangjisen;

public class tixing implements Xingzhuang {
	private int xia;
	private int shang;
	private int gao;
	
	public int getXia() {
		return xia;
	}
	public void setXia(int xia) {
		this.xia = xia;
	}
	public int getShang() {
		return shang;
	}
	public void setShang(int shang) {
		this.shang = shang;
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
		System.out.println("周长是"+(shang+xia+gao));
	}
	@Override
	public void s() {
		// TODO Auto-generated method stub
		System.out.println("面积是"+(shang+xia)*gao/2);
	}
	tixing(int xia,int gao,int shang){
		this.xia = xia;
		this.shang=shang;
		this.gao= gao;
	}
	tixing(){
		
	}
}
