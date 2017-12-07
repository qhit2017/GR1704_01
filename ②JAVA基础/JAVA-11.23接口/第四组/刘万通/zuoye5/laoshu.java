package com.nesyd;

public class laoshu implements dongwu {

	//创建老鼠 实现动物这个接口。要求老鼠具有的属性包括：姓名、品种、几条腿、体重（属性私有） ，
	//并创建两种构造方法（1 无参构造方法 2 参数为姓名、品种的构造方法）
	private  String xingming;
	private  String pinzhong;
	private  int tui;
	private  int tizhong;
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
	public int getTui() {
		return tui;
	}
	public void setTui(int tui) {
		this.tui = tui;
	}
	public int getTizhong() {
		return tizhong;
	}
	public void setTizhong(int tizhong) {
		this.tizhong = tizhong;
	}
	@Override
	public void chi(String xingming) {
		// TODO Auto-generated method stub
		System.out.println(xingming+"吃的很多");
	}
	@Override
	public void jiao() {
		// TODO Auto-generated method stub
         
	}
	
	@Override
	public void chi(String pinzhong, String xingming) {
		// TODO Auto-generated method stub
		System.out.println(xingming+pinzhong+"吃类可不少");
	}
	
	
	
	
}
