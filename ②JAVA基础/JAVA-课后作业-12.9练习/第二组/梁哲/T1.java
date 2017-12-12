package zy;

import java.util.Scanner;

/*
 * 从键盘接收n，判断n是否能被3整除
 */
public class T1 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入一个数：");
		int n=sc.nextInt();
		if(n%3==0){
			System.out.println("这个数能被3整除！");
		}else {
			System.out.println("这个数不能被3整除！");
		}
		
		
		
	}
}
