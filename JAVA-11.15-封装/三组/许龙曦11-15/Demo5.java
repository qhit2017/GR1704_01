package kaoshiti;
/*
 * 5、输出1~1000之间，以3、6、9结尾的数
 */
public class Demo7 {
	public static void main(String[] args) {
		
		for (int i = 0; i <=1000; i++) {
			if (i%10==9||i%10==6||i%10==3) {
				System.out.println(i);
				
			}
			
		}
	}

}
