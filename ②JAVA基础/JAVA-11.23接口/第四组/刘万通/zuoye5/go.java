package com.nesyd;

public class go implements dongwu{

	
	//创建狗，实现动物这个接口。要求狗具有的属性包括：姓名、品种、颜色、年龄（属性私有）
	
	private String xingming;
	private String pinzhong;
	private String yanse;
	private String nainling;
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
	public String getYanse() {
		return yanse;
	}
	public void setYanse(String yanse) {
		this.yanse = yanse;
	}
	public String getNainling() {
		return nainling;
	}
	public void setNainling(String nainling) {
		this.nainling = nainling;
	}
	@Override
	public void chi(String xingming) {
		// TODO Auto-generated method stub
		System.out.println("我喜欢吃棒棒糖");
	}
	@Override
	public void jiao() {
		// TODO Auto-generated method stub
		System.out.println("我睡觉打呼噜");
	}
	
	@Override
	public void chi(String pinzhong, String xingming) {
		// TODO Auto-generated method stub
	
	}
		
		
}
