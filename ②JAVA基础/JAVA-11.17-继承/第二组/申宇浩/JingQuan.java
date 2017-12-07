package 练习;

public class jingquan extends gou {
/*
 * 定义一个类：警犬 并继承第一题的类：狗
    属性：最快时速
	方法：work
 */
	public int zuikuaishisu;
	
	
	
	public void info(){
		System.out.println("我的名字叫"+getPinzhong()+"最快时速是"+zuikuaishisu
				+"我的颜色是"+getYanse()+"我的重量是"+getZhongliang()+"我的年龄是"+getNianling()+
				"我有"+tuideshuliang+"条腿，我的眼睛颜色是："+yanjingyanse);
	}
		
		public void work(){
			System.out.println("我的工作是：帮助警察");
		}
	}
	

