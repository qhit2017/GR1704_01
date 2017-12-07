package zuoye5;

public class laoshu {

	private String xingming;
	
	private String pinzhong;
	
	private int jitiaotui;
	
	private int tizhong;

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

	public int getJitiaotui() {
		return jitiaotui;
	}

	public void setJitiaotui(int jitiaotui) {
		this.jitiaotui = jitiaotui;
	}

	public int getTizhong() {
		return tizhong;
	}

	public void setTizhong(int tizhong) {
		this.tizhong = tizhong;
	}
	public void xinxi(){
		System.out.println("姓名"+xingming+",品种"+pinzhong+",几条腿"+jitiaotui+",体重"+tizhong+"斤");
	}
}
