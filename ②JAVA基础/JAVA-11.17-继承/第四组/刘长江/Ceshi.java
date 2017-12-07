//创建一个测试类，实例化一个警犬对象，设置警犬品种、毛的颜色、重量、年龄、眼睛颜色、腿的数量、最快时速，
//     调用它的吃的方法和work方法
public class Ceshi {
	
	public static void main(String[] args) {
		Jingquan c = new Jingquan();
		
		c.setPingzhong("金毛");
		c.setColor("黄色");
		c.setZhongliang(40);
		c.setNianling(6);
		c.setYanjing("褐色");
		c.setTui(4);
		c.setShisu(100);
		c.chi();
		c.work();
	}

	
	
	
	
	
}
