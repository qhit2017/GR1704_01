package com.liuchangjiang;

public class Examinfo {

	private String name;
	private String no;
	private int yuwen;
	private int shuxue;
	private int yingyu;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public int getYuwen() {
		return yuwen;
	}
	public void setYuwen(int yuwen) {
		this.yuwen = yuwen;
	}
	public int getShuxue() {
		return shuxue;
	}
	public void setShuxue(int shuxue) {
		this.shuxue = shuxue;
	}
	public int getYingyu() {
		return yingyu;
	}
	public void setYingyu(int yingyu) {
		this.yingyu = yingyu;
	}
	
	public void info(){
		System.out.println("���֣�"+name+",���"+no+",����"+yuwen+",��ѧ"+shuxue+",Ӣ��"+yingyu+",�ܷ���"+(yuwen+shuxue+yingyu));
	}
}
