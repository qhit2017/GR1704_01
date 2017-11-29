package com.zhangjisen;

import java.awt.Container;
import java.util.Scanner;

public class z5 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int b =1;
		for(;b==1;){
			System.out.println("1 添加学生");
			System.out.println("2 查询所有学生");
			System.out.println("3 修改学生");
			System.out.println("4 删除学生");
			System.out.println("5 停止");
			int i =sc.nextInt();
			if(i>=1&&i<=5){
		switch(i){
		case 1:{
			System.out.println("添加学生成功");continue;
		}				
		case 2:{
			System.out.println("查询所有学生成功");continue;
		}				
		case 3:{
			System.out.println("修改学生成功");continue;
		}				
		case 4:{
			System.out.println("删除学生成功");continue;
		}				
		case 5:{
			System.out.println("停止");b=2;}		
		}
		}else  {
				System.out.println("你输入的数字不对：");
			
		}
		}
		}
		}
