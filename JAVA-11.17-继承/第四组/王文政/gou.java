package 周末作业;

public class gou extends dongwu {
	
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
		System.out.println("品种："+pinzhong+",毛的颜色:"+maodeyanse+",年龄:"+nianling+",重量:"+zhongliang);
}
	public void xixing(String xixing){
		if(xixing.equals("喊叫")){
			System.out.println("喜欢半夜鬼嚎");
		}else if(xixing.equals("吃食")){
			System.out.println("喜欢吃肉");
		}else if(xixing.equals("睡觉")){
			System.out.println("八点睡");
		}
		
	}
	
}

