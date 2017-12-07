package com.佩斯特;

public class laoshu implements dongwu{
	
	private String xingming;
	
	private String pinzhong;
	
	private int jitiaotui;
	
	private int tizhong;

	public String getXingming() {
		return xingming;
	}

	public void setXingming(String xingming) {
		this.xingming = xingming;
	}

	public String getPinzhong() {
		return pinzhong;
	}

	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}

	public int getJitiaotui() {
		return jitiaotui;
	}

	public void setJitiaotui(int jitiaotui) {
		this.jitiaotui = jitiaotui;
	}

	public int getTizhong() {
		return tizhong;
	}

	public void setTizhong(int tizhong) {
		this.tizhong = tizhong;
	}
	
	public void ls(){
		
	}
	
	public void laoshu(String xingming,String pinzhong){
		this.xingming="波斯";this.pinzhong="田鼠";
	}

	@Override
	public void chi() {
		// TODO Auto-generated method stub
		System.out.println("波斯小心的吃");
	}

	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("波斯喜欢吱吱叫");
	}
	
}

