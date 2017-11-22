package com.dangliutao;

import java.util.Scanner;

public class 第三题 {
	
	//输入三个小数x,y,z，请把这三个数由大到小输出。
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		double i=sc.nextDouble();
		double a=sc.nextDouble();
		double b=sc.nextDouble();
		double sum=0;double min=0;
		if(i>=a){
			sum=i;min=a;
		}else{
			sum=a;min=i;
		}
		if(b>=sum){
			System.out.println(b+" "+sum+" "+min);
		}else{
			if(b>=min){				
			System.out.println(sum+" "+b+" "+min);
			}else{
			System.out.println(sum+" "+min+" "+b);
		}
		}
		
	}
}
