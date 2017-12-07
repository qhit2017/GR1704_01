package com.liuchangjiang;

import java.util.Scanner;

//输入三个小数x,y,z，请把这三个数由大到小输出。
public class Demo1 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入x:");
		double x = sc.nextDouble();
		System.out.println("请输入y:");
		double y = sc.nextDouble();
		System.out.println("请输入z:");
		double z = sc.nextDouble();
		
		if(x>y&&z>x){
			System.out.println(z+"，"+x+"，"+y);
		}else if(x>y&&z<y){
			System.out.println(x+"，"+y+"，"+z);
		}else if(z>y&&y>x){
			System.out.println(z+"，"+y+"，"+x);
		}else if(x>z&&z>y){
			System.out.println(x+"，"+z+"，"+y);
		}else if(y>z&&z>x){
			System.out.println(y+"，"+z+"，"+x);
		}else if(y>x&&x>z){
			System.out.println(y+"，"+x+"，"+z);
		}
		
		
		
		
		
		
		
		
		
	}
}
