package com.sun;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class AA {
	
	public static void main(String[] args) {
		List<tongxun>list =new  ArrayList<tongxun>();
		Scanner sc =new Scanner(System.in);
		System.out.println("1.录入通讯录信息 2.显示所有信息 3.姓名搜索 4.性别搜索 5.电话搜索 6.退出功能");
		for (int a=0;a>=1;a++){
			if (a==1){
				System.out.println("录入通讯录信息");
				String a1=sc.next();
				String[]arr=a1.split(",");
				tongxun a2=new tongxun();
				a2.setXingming(arr[0]);
				a2.setXingbie(arr[1].charAt(0));
				a2.setDianhua(Integer.parseInt(arr[2]));
				list.add(a2);
				System.out.println("添加成功");
				}else if (a==2){
					for ( tongxun a4:list ){
					a4.xinxi();
					}
				System.out.println("显示所有信息");
			}else if (a==3){
				System.out.println("姓名搜索");
			}else if (a==4){
				System.out.println("性别搜索");
			}else if (a==5){
				System.out.println("电话搜索");
			}else if(a==6){
				System.out.println("退出功能");
				break;
			
			}else  
				System.out.println("您输入的数字不规范");
				
			
		}
	}

}
