package com.qierkang;

import java.util.Scanner;

public class t1 {
	//从键盘接收n，判断n是否能被3整除
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
			int n=sc.nextInt();
			if(n%3==0){
				System.out.println("能被3整除");
			}else{
				System.out.println("不能被3整除");
			}
		}
	}
