package 周末作业;

public class doog1 extends 动物{
	private String pinzhong;
	
	private String maodeyanse;
	
	private int nianling;
	
	private int zhongliang;
	
	public void run(){
	

	}

	public String getPinzhong() {
		return pinzhong;
	}

	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}

	public String getMaodeyanse() {
		return maodeyanse;
	}

	public void setMaodeyanse(String maodeyanse) {
		this.maodeyanse = maodeyanse;
	}

	public int getNianling() {
		return nianling;
	}

	public void setNianling(int nianling) {
		this.nianling = nianling;
	}

	public int getZhongliang() {
		return zhongliang;
	}

	public void setZhongliang(int zhongliang) {
		this.zhongliang = zhongliang;
	}
	
	public void xinxi(){
		System.out.println("它品种："+pinzhong+",它的颜色:"+maodeyanse+",它的年龄:"+nianling+",它的重量:"+zhongliang);
}
	public void xixing(String xixing){
		if(xixing.equals("嗷嗷叫")){
			System.out.println("喜欢嗷嗷叫");
		}else if(xixing.equals("吃东西")){
			System.out.println("喜欢吃肉");
		}else if(xixing.equals("睡觉")){
			System.out.println("九点睡");
		}
		
	}
	
}


	


