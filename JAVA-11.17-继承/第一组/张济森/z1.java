package z__19;

public class z1 extends dongwu
{
	//定义一个类：狗，属性包括： 品种，毛的颜色， 年龄，重量  方法包括：叫、吃、睡觉
    //要求属性私有，并提供get、set方法 
	private String type;
	private String color ;
	private int nianling;
	private int zhongliang;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public void run(){
		System.out.println("我的狗是"+type+"的,毛是"+color+"色的,他有"+nianling+"岁了,重"+zhongliang+"kg."+"他每天都叫,喜欢吃骨头,每天都睡觉");
	}
	
	
	
	
	
	
	
	
}
	


