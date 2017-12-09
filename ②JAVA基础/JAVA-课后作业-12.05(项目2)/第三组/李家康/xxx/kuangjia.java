package com.xxx;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class kuangjia {
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			List<people> list = new ArrayList<people>();
			while(true){
				System.out.println("请按键：1.录入通讯录信息2.显示所有通讯录信息3.姓名搜索4.性别搜索5.电话搜索6.退出功能");	
				int num = sc.nextInt();
				if(num==1){
					System.out.println("录入通讯录信息：");
					String str = sc.next();
					String[] arr = str.split(",");
					people a = new people();
					a.setName(arr[0]);
					a.setSex(arr[1].charAt(0));
					a.setDianhua(arr[2]);
					list.add(a);
					System.out.println("录入成功！");
				}else if(num==2){
					System.out.println("显示所有通讯录信息：");
					for(people i: list){
						i.info();
					}
				}else if(num==3){
					System.out.println("请输入姓名：");
					String name = sc.next();
					for(people i :list){
						if(name.equals(i.getName())){
							i.info();
						}
					}
				}else if(num==4){
					System.out.println("请输入性别：");
					char name = sc.next().charAt(0);
					for(people i :list){
						if(name==i.getSex()){
							i.info();
						}
					}
				}else if(num==5){
					System.out.println("请输入电话：");
					String name = sc.next();
					for(people i :list){
						if(name.equals(i.getDianhua())){
							i.info();
						}
					}
				}else if(num==6){
					System.out.println("退出功能");break;
				}
			}
		}
}
