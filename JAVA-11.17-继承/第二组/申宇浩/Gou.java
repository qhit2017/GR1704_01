package 练习;

public class gou extends dongwu {
//1  定义一个类：狗，属性包括： 品种，毛的颜色， 年龄，重量  方法包括：叫、吃、睡觉
   // 要求属性私有，并提供get、set方法 
	private String pinzhong;
	private	String yanse ;
	private  int nianling;
	private	 int zhongliang;
	
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
	public int getZhongliang() {
		return zhongliang;
	}
	public void setZhongliang(int zhongliang) {
		this.zhongliang = zhongliang;
	}
	public void jiao(){
		System.out.println("我嗷嗷叫");
		
		
	}
	public void chi(){
		
		System.out.println("我喜欢啃骨头");
	}
	public void shuijiao(){
		System.out.println("我不喜欢睡觉");
	}
	
	
	
	
	
}
