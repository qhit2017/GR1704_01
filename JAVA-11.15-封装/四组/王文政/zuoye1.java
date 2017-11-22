package com.wangwenzheng;

public class zuoye1 {
	
	private String shuixian;
	
	private int huaban;
	
	private String yanse;
	
	private int huajing;

	public String getShuixian() {
		return shuixian;
	}

	public void setShuixian(String shuixian) {
		this.shuixian = shuixian;
	}

	public int getHuaban() {
		return huaban;
	}

	public void setHuaban(int huaban) {
		this.huaban = huaban;
	}

	public String getYanse() {
		return yanse;
	}

	public void setYanse(String yanse) {
		this.yanse = yanse;
	}

	public int getHuajing() {
		return huajing;
	}

	public void setHuajing(int huajing) {
		this.huajing = huajing;
	}
	public void xinxi(){
		System.out.println("花名:"+shuixian+",花瓣数:"+huaban+",颜色:"+yanse+",花茎数:"+huajing);
	}
	

}
