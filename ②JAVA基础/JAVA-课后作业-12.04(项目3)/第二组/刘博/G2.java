package c1;

public class G2 {
 
	private String xingming;
	private String bianhao;
	private int yuwen;
	private int yingyu;
	private int shuxue;
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
	public int getYuwen() {
		return yuwen;
	}
	public void setYuwen(int yuwen) {
		this.yuwen = yuwen;
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
		System.out.println("我叫"+xingming+",第几"+bianhao+",英语"
	+yingyu+",语文"+yuwen+",数学"+shuxue);
	}
}
