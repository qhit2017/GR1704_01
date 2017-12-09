package com.qierkang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class xiangmu {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		ArrayList<fangfa>list=new ArrayList<fangfa>();
		while(true){
			System.out.println("1.录入考生的高考信息2.显示所有考生信息3.查询最高分, 包括: 总分最高分 和 单科最高分4.退出功能");
			int t=sc.nextInt();
			if(t==1){
				System.out.println("请按键,格式：姓名,编号,语文,数学,英语");
				String str=sc.next();
				String[]arr= str.split(",");
				fangfa a=new fangfa();
				a.setMingzhi(arr[0]);
				a.setBianhao(Integer.parseInt(arr[1]));
				a.setYuwen(Integer.parseInt(arr[2]));
				a.setShuxue(Integer.parseInt(arr[3]));
				a.setYingyu(Integer.parseInt(arr[4]));
				list.add(a);
				System.out.println("添加成功");
			}else if(t==2){
				for(fangfa v:list){
					v.info();
				}
			}else if(t==3){
				while(true){
					System.out.println("1.打印总分最高分2.打印数学最高分3.打印语文最高分4.打印英语最高分5.退出");
					int i=sc.nextInt();
					if(i==1){
						int b=0;
						for(fangfa s:list){
							if(b<s.getShuxue()+s.getYuwen()+s.getYingyu()){
								b=s.getShuxue()+s.getYuwen()+s.getYingyu();
							}
						}
						System.out.println("总分最高分"+b);
					}else if(i==2){
						int h=0;
						for(fangfa w:list){
							if(h<w.getShuxue()){
								h=w.getShuxue();
							}
						}
						System.out.println("数学最高分:"+h);
					}else if(i==3){
						int d=0;
						for(fangfa z:list){
							if(d<z.getYuwen()){
								d=z.getYuwen();
							}
						}
						System.out.println("语文最高分:"+d);
					}else if(i==4){
						int x=0;
						for(fangfa k:list){
							if(x<k.getYingyu()){
								x=k.getYingyu();
							}
						}
						System.out.println("英语最高分:"+x);
					}else if(i==5){
						System.out.println("返回上一层");
						break;
					}else{
						System.out.println("您输入的数字不规范");
					}
				}
			}else if(t==4){
				System.out.println("退出功能");
				break;
			}else{
				System.out.println("您输入的数字不规范");
			}
		}
	}
}
