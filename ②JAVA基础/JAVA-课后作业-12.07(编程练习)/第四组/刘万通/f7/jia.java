package com.f7;

public class jia extends xi{

	private int jinhuoshuliang;
	private int xiaoshoshuliang;
	public int getJinhuoshuliang() {
		return jinhuoshuliang;
	}
	public void setJinhuoshuliang(int jinhuoshuliang) {
		this.jinhuoshuliang = jinhuoshuliang;
	}
	public int getXiaoshoshuliang() {
		return xiaoshoshuliang;
	}
	public void setXiaoshoshuliang(int xiaoshoshuliang) {
		this.xiaoshoshuliang = xiaoshoshuliang;
	}
	public void info2(){
		System.out.println("��Ʒ��"+getName
				()+"���"+getBianhao()+"�۸�"+getJiage()+"����"+getShuliang()+"��������"+jinhuoshuliang);
	}
	public void info3(){
		System.out.println("��Ʒ��"+getName
				()+"���"+getBianhao()+"�۸�"+getJiage()+"����"+getShuliang()+"��������"+xiaoshoshuliang);
	}
	
}
