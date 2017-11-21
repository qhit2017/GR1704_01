
public class Dog extends DW{
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
	public void xinxi(){
		System.out.println("我是一条"
	+getPingzhong()+"，我毛的颜色是："
				+color+"，"
				+ "今年"+nianling+"岁，我的体重是："+zhongliang+"千克");
			}
		
		public void jiao(){
		}
		public void chi(){
			System.out.println("吃的方法是：");
			System.out.println("比较文明的吃");
		
		}
		public void shuijiao(){
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}


