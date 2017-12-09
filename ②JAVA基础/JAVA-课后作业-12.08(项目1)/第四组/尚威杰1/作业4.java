package 星期天作业;

import java.util.Scanner;

public class 作业4 {
//在屏幕上打印出n行的金字塔图案，如，若n=5,则图案如下
	public static void main(String[] args) {
		
      Scanner sc =new Scanner(System.in);
      System.out.println("请输入一个整数");
      int n =sc.nextInt();
      
      
      for(int i =1;i<=n;i++){
    	  System.out.println(2*i-1);
    	  for(int j =1; j<=2*i-1;j++){
    		  System.out.println("*");
    	  }
    	  System.out.println();
      }
		
	}
	
}
