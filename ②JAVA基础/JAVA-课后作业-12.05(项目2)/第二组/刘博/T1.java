package T;

public class T1 {

	private String xingming;
	private char xingbie;
	private String dianhua;
	public String getXingming() {
		return xingming;
	}
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	public char getXingbie() {
		return xingbie;
	}
	public void setXingbie(char xingbie) {
		this.xingbie = xingbie;
	}
	public String getDianhua() {
		return dianhua;
	}
	public void setDianhua(String dianhua) {
		this.dianhua = dianhua;
	}
	public void info(){
		System.out.println("我叫"+xingming+",我是"+xingbie+",电话"+dianhua);
	}
}
