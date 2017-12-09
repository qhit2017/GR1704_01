package com.xxx;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
/*
 *  模拟一个通讯录系统，其业务范围包括：
1	录入通讯录信息
2	显示所有通讯录信息
3	姓名搜索
4	性别搜索
5	电话搜索
6	退出功能
 */
public class ceshi {
 public static void main(String[] args) {
	 List<tong>list=new ArrayList<tong>();
	Scanner sc=new Scanner(System.in);
	while(true){
		System.out.println(" 模拟一个通讯录系统，其业务范围包括：,1录入通讯录信息,2	显示所有通讯录信息,3姓名搜索,4性别搜索,5电话搜索,6	退出功能");
		    int x=sc.nextInt();
			if (x==1) {
			System.out.println("请输入通讯录信息格式是：姓名,性别,电话号码比如：张三,男,136");
			String str=sc.next();
			String[]arr=str.split(",");
			tong t=new tong();
			t.setXingming(arr[0]);
			t.setXingbie(arr[1].charAt(0));
			t.setDianhua(arr[2]);
			list.add(t);
			System.out.println("添加成功");
		}else if (x==2) {
			System.out.println("显示所有通讯录信息");
			for (tong i:list) {
				i.iofo();
			}
		}else if (x==3) {
			System.out.println("姓名搜索");
			String e=sc.next();
			for (tong i:list) {
				if (e.equals(i.getXingming())) {
					i.iofo();
				}
			}
		}else if (x==4) {
			System.out.println("性别搜索");
			char e=sc.next().charAt(0);
			for (tong i:list) {
				if (e==(i.getXingbie())) {
					i.iofo();
				}
			}
		}else if (x==5) {
			System.out.println("电话搜索");
			String e=sc.next();
			for (tong i:list) {
				if (e.equals(i.getDianhua())) {
					i.iofo();
				}
			}
		}else if (x==6) {
			System.out.println("退出功能");
			break;
		}else{
			System.out.println("您输入的数字不规范");
		}
		
	}
	
	
}
}
