// 定义一个类：狗，属性包括： 品种，毛的颜色， 年龄，重量  方法包括：叫、吃、睡觉
//    要求属性私有，并提供get、set方法 
public class Dog extends Dongwu{

	private String pingzhong;
	private String color;
	private int nianling;
	private int zhongliang;
	
	public String getPingzhong() {
		return pingzhong;
	}
	public void setPingzhong(String pingzhong) {
		this.pingzhong = pingzhong;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
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
		
	}
	public void chi(){
		System.out.println("我是"+pingzhong+"狗，是"+color+"，重量是："+zhongliang+",年龄是："+nianling);
	}
	public void shuijiao(){
		
	}
	
	
	
}
