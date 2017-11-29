package com.diwu;

public class Laoshu implements Dongwu{
	private String name;
	private String pinzhong;
	private int jitiaotui;
	private int tizhong;
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("³Ô³Ô");
	}

	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("½Ð-");
	}
	Laoshu(){
		
	}
	Laoshu(String name,String pinzhong){
		this.name=name;
		this.pinzhong=pinzhong;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
