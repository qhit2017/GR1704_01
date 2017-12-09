
public class tongxunxinxi {

	private String xingming;
	
	private String xingbie;
	
	private String dianhua;

	public String getXingming() {
		return xingming;
	}

	public void setXingming(String xingming) {
		this.xingming = xingming;
	}

	public String getXingbie() {
		return xingbie;
	}

	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}

	public String getDianhua() {
		return dianhua;
	}

	public void setDianhua(String dianhua) {
		this.dianhua = dianhua;
	}
	
	public void xinxi(){
		System.out.println("姓名"+xingming+",性别"+xingbie+",电话号码"+dianhua);
	}
	
}
