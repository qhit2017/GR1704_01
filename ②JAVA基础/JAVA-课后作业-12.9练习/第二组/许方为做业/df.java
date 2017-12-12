package 累;

import java.util.Scanner;

public class df {
	public static void main(String[] args) {
		
		
		/*从键盘接收n，判断n是否能被3整除*/
		System.out.println("请输入一个数");
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		for(int i=1;i<=n;i++){
			
			if(i*3==0){
				System.out.println("能被整数");
				
		}
			
		}
	
		System.out.println("不能被整除");
		
		
		
	}
	

}
