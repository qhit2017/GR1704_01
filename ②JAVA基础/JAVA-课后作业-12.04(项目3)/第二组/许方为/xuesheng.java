package 兄弟;

public class xuesheng {
	private String xingming;
	private String bianhao;
	private String yuwen;
	private String shuxue;
	private String yingyu;
	public String getXingming() {
		return xingming;
	}
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	public String getBianhoa() {
		return bianhao;
	}
	public void setBianhoa(String bianhoa) {
		this.bianhao = bianhoa;
	}
	public String getYuwenchengji() {
		return yuwen;
	}
	public void setYuwenchengji(String yuwenchengji) {
		this.yuwen = yuwenchengji;
	}
	public String getShuxuchenji() {
		return shuxue;
	}
	public void setShuxuchenji(String shuxuchenji) {
		this.shuxue = shuxuchenji;
	}
	public String getYingyuchenhji() {
		return yingyu;
	}
	public void setYingyuchenhji(String yingyuchenhji) {
		this.yingyu = yingyuchenhji;
	}
	public void xinxi(){
		System.out.println("姓名"+xingming+"编号是"+bianhao+"语文成绩"+yuwen+",数学成绩"+shuxue+",英语成绩"+yingyu);
	}
	

}
