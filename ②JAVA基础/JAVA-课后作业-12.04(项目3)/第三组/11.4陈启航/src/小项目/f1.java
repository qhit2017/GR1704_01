package 小项目;

import java.util.Scanner;

public class f1 {

    private String xingming;
    private String bianhao;
    private int yuwe;
    private int yingyu;
    private  int shuxue;
	
	public String getXingming() {
		return xingming;
	}
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	public String getBianhao() {
		return bianhao;
	}
	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}
	public int getYuwe() {
		return yuwe;
	}
	public void setYuwe(int yuwe) {
		this.yuwe = yuwe;
	}
	public int getYingyu() {
		return yingyu;
	}
	public void setYingyu(int yingyu) {
		this.yingyu = yingyu;
	}
	public int getShuxue() {
		return shuxue;
	}
	public void setShuxue(int shuxue) {
		this.shuxue = shuxue;
	}
	
    public void info(){
    	System.out.println("姓名:"+xingming+",编号:"+bianhao+",语文成绩:"+yuwe+",英语成绩:"+yingyu+",数学成绩："+shuxue+",总分："+(yuwe+yingyu+shuxue));
    
}
}
