package ck;

import java.util.Scanner;

public class t2 {
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第一个小数：");
		double i = sc.nextDouble();
		System.out.println("请输入第二个小数：");
		double a=sc.nextDouble();
		if(i<a){
		System.out.println(i+"<"+a);	
		}else if(i>a){
			System.out.println(i+">"+a);
		}
	}
	

}
