package com.qierkang;

import java.util.Scanner;

public class t5 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int b=1;
		while(b==1){
			System.out.println("1 添加学生 \n2 查询所有学生 \n3 修改学生\n4 删除学生\n5 停止");
			int a=sc.nextInt();
		if(a==1){
			System.out.println("添加学生成功");
		}else if(a==2){
			System.out.println("查询结果已发送给您");
		}else if(a==3){	
		System.out.println("修改成功");
		}else if(a==4){
			System.out.println("删除学生成功");
		}else if(a==5){
			System.out.println("系统关闭");b=2;
		}else {
			System.out.println("您输入的数字不正确");
			System.out.println("1 添加学生 \n2 查询所有学生 \n3 修改学生\n4 删除学生\n5 停止");
		}		
		}
	}
}

