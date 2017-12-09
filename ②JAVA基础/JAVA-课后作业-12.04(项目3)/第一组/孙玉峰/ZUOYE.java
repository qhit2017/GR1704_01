package com.sun;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ZUOYE {
	
	public static void main(String[] args) {
		List<B1>list=new ArrayList<B1>();
		
		Scanner  sc=new  Scanner(System.in);
		for(int  i=1;i>=1;i++){
		System.out.println("请输入：1.学生的信息2	显示所有学生信息3	查询最高分, 包括: 总分最高分 和 单科最高分4	退出功能");
		int  a=sc.nextInt();
		if(a==1){
			System.out.println("请输入：学生信息  格式是 ：  姓名,编号 ,语文成绩,数学成绩,英语成绩");
			String   a1 =sc.next();
			String  [] arr=a1.split(",");
			B1   b=new  B1();
			b.setXingming(arr[0]);
			b.setBianhao( arr[1]);
			b.setYuwen(Integer.parseInt(arr[2]));
			b.setShuxue(Integer.parseInt(arr[3]));
			b.setYingyu(Integer.parseInt(arr[4]));
			list.add(b);
			System.out.println("添加成功");
		}else  if(a==2){
			for(B1 s:list){
				s.xinxi();
			}
		}else  if(a==3){
			System.out.println("1.打印总分最高分2.打印数学最高分3.打印语文最高分4.打印英语最高分5.退出");
			while(true){
				int  d=sc.nextInt();
				if(d==1){
				int max=0;
				for(B1 c:list){
				if(c.getYuwen()+c.getShuxue()+c.getYingyu()>max){
				max=c.getYuwen()+c.getShuxue()+c.getYingyu();}
				
				System.out.println("总分最高分是"+max);
				}
					
					System.out.println("打印总分最高分");
				}else  if(a==2){
				int max=0;
				for(B1 t:list){
					if(max<t.getShuxue()){
					max=t.getShuxue();
					}
					}
					System.out.println("数学最高分是："+max);
				}else  if(a==3){
					int  max=0;
					for(B1 y:list){
						if(max<y.getYuwen()){
							max=y.getYuwen();
						}
					}
					System.out.println("语文最高分是："+max);
				}else  if(a==4){
					int max=0;
					for(B1  x:list){
						if(max<x.getYingyu()){
							max=x.getYingyu();
						}
					}
					System.out.println("英语最高分是："+max);
				}else  if(a==5){
					System.out.println("返回主菜单");
					break;
				}else{
					System.out.println("您输入的数字不规范 ， 请重新输入");
				}
				}
		}else  if(a==4){
			System.out.println("退出功能");
			break;
		}else {
			System.out.println("您输入的数字有误，请重新输入");
		}
		}
	}
}	
		
		
	
	
	


		
	


