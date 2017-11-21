package zuoye;

public class go extends go3{

	private String pinzhong;
	private String yanse ;
	private int nianling ;
	private int zhongliang ;
	
	
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
		System.out.println("嗷嗷叫");
	}
	public void chi(){
		System.out.println("我喜欢吃骨头");
		
	}
	public void shuijiao(){
		System.out.println("我不喜欢睡觉");
	}
	
	
	
	
	public void  xinxi(){
		System.out.println("狗的品种是"+getPinzhong()+",毛的颜色是"+getYanse()+"今年"+getNianling()+"岁"+",重量是"+getZhongliang()+",公斤");
	   
	}

}