package com.f5;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class txl {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<xi>list= new ArrayList<xi>();
		while(true){
			System.out.println("1.录入通讯录信息2.显示所有通讯录信息3.姓名搜索4.性别搜索5.电话搜索6.退出功能");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("请输入联系人：姓名,性别,电话,");
				String str=sc.next();
				String []arr=str.split(",");
				xi x=new xi();
				x.setXingming(arr[0]);
				x.setXingie(arr[1].charAt(0));
				x.setDianhua(arr[2]);
				list.add(x);
				System.out.println("添加成功");
			}else if(i==2){
				for(xi c:list){
					c.info();
				}
			}else if(i==3){
				System.out.println("请输入姓名");
				 String str=sc.next();
				for(xi a:list){
					if(str.equals(a.getXingming())){
					a.info();
					}
				}
			}else if(i==4){
				System.out.println("请输入性别");
				char a=sc.next().charAt(0);
				for(xi b:list){
					if(a==b.getXingie()){
					b.info();
					}
				}
			}else if(i==5){
				System.out.println("请输入电话号");
				String m = sc.next();
				for(xi g:list){
					if(m.equals(g.getDianhua())){
					g.info();
					}
				}
			}else if(i==6){
				System.out.println("退出功能");
				break;
			}else{
				System.out.println("您输入的不规范");
			}
		}
		
	
	
		
	
		}
}
