package zuoye;
/*
 *   定义一个类：狗，属性包括： 品种，毛的颜色， 年龄，重量  方法包括：叫、吃、睡觉
    要求属性私有，并提供get、set方法 
 */
public class zuoye1  extends dongwu {
    
	
	private String pinzhong ;
	
	private String colo;
	
	private int nianling;
	
	private String zhongling;

	public String getPinzhong() {
		return pinzhong;
	}

	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}

	public String getColo() {
		return colo;
	}

	public void setColo(String colo) {
		this.colo = colo;
	}

	public int getNianling() {
		return nianling;
	}

	public void setNianling(int nianling) {
		this.nianling = nianling;
	}

	public String getZhongling() {
		return zhongling;
	}

	public void setZhongling(String zhongling) {
		this.zhongling = zhongling;
	}
	public void fangfa(){
		System.out.println("我的品种是"+pinzhong+",我的颜色是"+colo+",我今年"+nianling+"岁,我有"+zhongling+"斤"+"我吃的很多"+"我叫的声音特别大"+"没事就睡觉觉");
	}
	
	
	
}
