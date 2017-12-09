package com.project;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {

	public static void main(String[] args) {
		List<Info> list = new ArrayList<Info>();
		Scanner sc = new Scanner(System.in);
		while(true){
			System.out.println("请按键 1.录入通讯录信息2.显示所有通讯录信息3.姓名搜索4.性别搜索5.电话搜索6.退出功能");
			int num = sc.nextInt();
			if(num==1){
				System.out.println("1、录入通讯录信息格式是：姓名、性别、电话");
				String str = sc.next();
				String [] arr = str.split(",");
				Info in = new Info();
				in.setName(arr[0]);
				in.setXingbie(arr[1].charAt(0));
				in.setDianhua(arr[2]);
				list.add(in);
				System.out.println("添加成功");
			}else if(num==2){
				for(Info e:list){
					e.info();
				}
				
			}else if(num==3){
				System.out.println("请输入姓名:");
				String str = sc.next();
				for(Info e:list){
					if(str.equals(e.getName())){
						e.info();
					}
				}
				
			}else if(num==4){
				System.out.println("请输入性别:");
				char c = sc.next().charAt(0);
				for(Info e:list){
					if(c==e.getXingbie()){
						e.info();
						
					}
					
				}
			}else if(num==5){
				System.out.println("请输入电话号码:");
				String str = sc.next();
				for(Info e:list){
					if(str.equals(e.getDianhua())){
						e.info();
					}
				}
					
				
				
				
			}else if(num==6){
				System.out.println("系统结束");
				break;
			}else{
				System.out.println("你输入的数字不规范");
			}
			
			
			
			
			
			
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
