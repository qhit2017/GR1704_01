package kaoshiti;
/*
 2、创建人这个类并实例化，属性包括：姓名，年龄，身高，地址  
   方法包括：
   吃饭，吃饭要有参数，喜欢吃什么？
   睡觉，睡觉要有返回值，几点睡觉？
 */
public class Demo3 {
	public String xingming;
	
	public int nianling;
	
	public int shengao;
	
	public String dizhi;
	
	
	public void xixi(){
		System.out.println("我叫"+xingming+",今年"+nianling+"岁"+",身高是"+shengao+"厘米"+",住在"+dizhi);
	}
      public void chi(){
    	  System.out.println(xingming+"喜欢吃蔬菜");
      }
	
        public int shueijiao(int i){
        	System.out.println(xingming+"一般"+i+"点睡觉");
        	
        	return i;
        }
        
}
