package com.qierkang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class zhuyemian {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<fangfa>list=new ArrayList<fangfa>();
		while(true){
			System.out.println("请按键：1.录入通讯录信息2.显示所有通讯录信息3.姓名搜索4.性别搜索5.电话搜索6.退出功能");
			int r=sc.nextInt();
			if(r==1){
				System.out.println("请输入,格式：姓名,性别,电话号码");
				String str=sc.next();
				String[]arr=str.split(",");
				fangfa s=new fangfa();
				s.setXingming(arr[0]);
				s.setXingbie(arr[1].charAt(0));
				s.setDianhua(arr[2]);
				list.add(s);
				System.out.println("添加成功");
			}else if(r==2){
				for(fangfa a:list){
					a.info();
				}
			}else if(r==3){
				System.out.println("请输入姓名：");
				String w=sc.next();
				for(fangfa t:list){
					if(w.equals(t.getXingming())){
						t.info();
					}
				}
			}else if(r==4){
				System.out.println("请输入性别");
				char b=sc.next().charAt(0);
				for(fangfa d:list){
					if(b==d.getXingbie()){
						d.info();
					}
				}
			}else if(r==5){
				String a=sc.next();
				for(fangfa f:list){
					if(a.equals(f.getDianhua())){
						f.info();
					}
				}
				System.out.println("电话搜索");
			}else if(r==6){
				System.out.println("系统关闭");
				break;
			}
		}
	}

}
