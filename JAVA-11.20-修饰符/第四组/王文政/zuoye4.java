package com.wangwenzheng;
/*
 * 从键盘输入1~7的数字
 * 如果数字是1，则输出星期一
 * 如果数字是2，则输出星期二........
 * 如果数字是7,则输出星期日(用switch)
 */
import java.util.Scanner;

public class zuoye4 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入一个数字");
		int rs = sc.nextInt();
		
		switch(rs){
		case 1:System.out.println("星期一");
		case 2:System.out.println("星期二");
		case 3:System.out.println("星期三");
		case 4:System.out.println("星期四");
		case 5:System.out.println("星期五");
		case 6:System.out.println("星期六");
		case 7:System.out.println("星期天");
		
		}
		
		}
	}


