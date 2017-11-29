package xsy;

public class gou extends laoshu{

	private String xingming;
	
	private String pinzhong;
	
	private String yanse;
	
	private int nianling;

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

	public String getYanse() {
		return yanse;
	}

	public void setYanse(String yanse) {
		this.yanse = yanse;
	}

	public int getNianling() {
		return nianling;
	}

	public void setNianling(int nianling) {
		this.nianling = nianling;
	}
	public void xinxi(){
		System.out.println("姓名"+xingming+",品种"+pinzhong+",颜色"+yanse+",年龄"+nianling);
	}
	
}
