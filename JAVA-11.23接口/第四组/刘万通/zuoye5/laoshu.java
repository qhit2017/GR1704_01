package com.nesyd;

public class laoshu implements dongwu {

	//�������� ʵ�ֶ�������ӿڡ�Ҫ��������е����԰�����������Ʒ�֡������ȡ����أ�����˽�У� ��
	//���������ֹ��췽����1 �޲ι��췽�� 2 ����Ϊ������Ʒ�ֵĹ��췽����
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
		System.out.println(xingming+"�Եĺܶ�");
	}
	@Override
	public void jiao() {
		// TODO Auto-generated method stub
         
	}
	
	@Override
	public void chi(String pinzhong, String xingming) {
		// TODO Auto-generated method stub
		System.out.println(xingming+pinzhong+"����ɲ���");
	}
	
	
	
	
}
