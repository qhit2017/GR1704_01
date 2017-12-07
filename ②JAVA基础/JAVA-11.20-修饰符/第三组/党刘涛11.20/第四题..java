package com.dangliutao;

import java.util.Scanner;
import java.util.concurrent.locks.Condition;

public class 第四题 {
//从键盘输入1~7的数字，如果数字是1，则输出星期一，如果数字是2，
	//则输出星期二........如果数字是7,则输出星期日(用switch)
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		switch (i){
		case 1:System.out.println("周一");break;
		case 2:System.out.println("周二");break;
		case 3:System.out.println("周三");break;
		case 4:System.out.println("周四");break;
		case 5:System.out.println("周五");break;
		case 6:System.out.println("周六");break;
		case 7:System.out.println("周日");break;
		default:System.out.println("您输入的数字不规范");
		}
	}
}
