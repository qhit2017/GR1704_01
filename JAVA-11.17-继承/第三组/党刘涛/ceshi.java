package 练习;

public class ceshi {
/*
 * 创建一个测试类，实例化一个警犬对象，设置警犬品种、毛的颜色、重量、年龄、眼睛颜色、腿的数量、最快时速，
     调用它的吃的方法和work方法
 */
	public static void main(String[] args) {
		
		jingquan c=new jingquan();
		c.setPinzhong("牧羊犬");
		c.setYanse("屎黄色");
		c.setZhongliang(160);
		c.setNianling(3);
		c.zuikuaishisu=(180);
		c.yanjingyanse=("蓝色");
		c.tuideshuliang=(4);
		c.info();
		c.work();
		c.chi();
	}
	
	
	
}
