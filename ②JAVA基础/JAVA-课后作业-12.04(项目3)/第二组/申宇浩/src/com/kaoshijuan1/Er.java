package com.kaoshijuan1;

public class Er {
	private String name;
	private int bianhao;
	private int yu;
	private int shu;
	private int ying;
	private int zongchengji;
	public int getZongchengji() {
		return zongchengji;
	}
	public void setZongchengji(int zongchengji) {
		this.zongchengji = zongchengji;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBianhao() {
		return bianhao;
	}
	public void setBianhao(int bianhao) {
		this.bianhao = bianhao;
	}
	public int getYu() {
		return yu;
	}
	public void setYu(int yu) {
		this.yu = yu;
	}
	public int getShu() {
		return shu;
	}
	public void setShu(int shu) {
		this.shu = shu;
	}
	public int getYing() {
		return ying;
	}
	public void setYing(int ying) {
		this.ying = ying;
	}
	
	public void info(){
		System.out.println("������"+name+"\t���:"+bianhao+"\t���ĳɼ���"+
	yu+"\t��ѧ�ɼ���"+shu+"\tӢ��ɼ���"+ying+"\t�ܳɼ��ǣ�"+zongchengji);
	}

}
