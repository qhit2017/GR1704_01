package 课堂练习;

public class dianhuabu {
	private String xingming;
	private char xingbie;
	private int dianhua;
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
	public int getDianhua() {
		return dianhua;
	}
	public void setDianhua(int dianhua) {
		this.dianhua = dianhua;
	}
		public void info(){
			System.out.println("姓名是"+xingming+"性别是"+xingbie+"电话号码"+dianhua);
		}
	}


