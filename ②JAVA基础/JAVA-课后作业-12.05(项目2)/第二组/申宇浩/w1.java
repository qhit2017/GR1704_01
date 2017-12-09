package com.lianxi;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class jinru {

	public static void main(String[] args) {
		
		List<shuxing>list=new ArrayList<shuxing>();
		Scanner sc=new Scanner(System.in);
		while (true){
			System.out.println("1:录入通讯录信息2:显示所有通讯录信息3:姓名搜索4:性别搜索5:电话搜索6:退出功能");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("请输入通讯信息：如,张三,男,1547894578");
				String o=sc.next();
				String []arr=o.split(",");
				
				shuxing x=new shuxing();
				x.setName(arr[0]);
				x.setXingbie(arr[1].charAt(0));
				x.setDianhua(Integer.parseInt(arr[3]));
				list.add(x);
				System.out.println("输入成功");
			}else if(i==2){
				for(shuxing b:list){
					b.info();
				}
			}else if(i==3){
			String ming=sc.next();
				for(shuxing a:list){
					if(ming.equals(a.getName())){
						a.info();
					}
				}
			}else if(i==4){
				System.out.println("电话搜索");
			}else if(i==5){
				System.out.println("性别搜索");
			}else if(i==6){
				System.out.println("退出");
			}
		}
	}
}
