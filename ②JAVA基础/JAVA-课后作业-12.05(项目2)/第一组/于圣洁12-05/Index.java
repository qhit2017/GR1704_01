package com.fushi;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		List<Lei>list = new ArrayList<Lei>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("1.录入通讯录信息2.显示所有通讯录信息3.姓名搜索4.性别搜索5.电话搜索6.退出功能");
			int num =sc.nextInt();
			if(num==1){
				System.out.println("请输入通讯录信息格式如：姓名,性别,电话号码");
				String str=sc.next();
				String []arr=str.split(",");
				Lei l=new Lei();
				l.setName(arr[0]);
				l.setSex(arr[1].charAt(0));
				l.setPhoneNumber(arr[2]);
				list.add(l);
				System.out.println("添加成功");
			}else if(num==2){
				for(Lei a:list){
					a.info();
				}
			}else if(num==3){
				System.out.println("请输入姓名搜索");
				String name=sc.next();
				for(Lei b:list){
					if(name.equals(b.getName())){
						b.info();
					}
					
				}
			}else if(num==4){
				System.out.println("请输入性别搜索");
				String sex=sc.next();
				for(Lei d:list){
					if(sex.equals(d.getSex())){
						d.info();
					}
				}
				
			}else if(num==5){
				System.out.println("请输入电话搜索");
				String phoneNumber=sc.next();
				for(Lei e:list){
				if(	phoneNumber.equals(e.getPhoneNumber())){
					e.info();
				}
					
				}
				
			}else if(num==6){
				System.out.println("停止");
				break;
			}else{
				System.out.println("您输入的数字不规范");
			}
		}
	}

}
