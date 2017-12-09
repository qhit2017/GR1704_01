package com.zuoye;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class kaoshiti {

	public static void main(String[] args) {
		List<xuesheng> list=new ArrayList<xuesheng>();
		Scanner  sc=new  Scanner(System.in);
		for(int  i=1;i>=1;i++){
		System.out.println("1.录入考生的高考信息2.显示所有考生信息3.查询最高分, 包括: 总分最高分 和 单科最高分4.退出功能");
		int  q=sc.nextInt();
		if(q==1){
			System.out.println("请输入学生信息 格式是     姓名    编号    语文成绩     数学成绩   英语成绩   ");
			String r=sc.next();
			String []arr=r.split(",");
			xuesheng  a=new xuesheng();
			
			a.setXingming(arr[0]);
			a.setBianhao(Integer.parseInt(arr[1]));
			a.setYuwen(Integer.parseInt(arr[2]));
			a.setShuxue(Integer.parseInt(arr[3]));
			a.setYingyu(Integer.parseInt(arr[4]));
			list.add(a);
			System.out.println("添加成功");
		}else  if(q==2){
			
			for(xuesheng  b:list){
				b.xinxi();
			}
		}else  if(q==3){
			System.out.println("查询最高分");
			while(true){
				
				System.out.println("1.打印总分最高分2.打印数学最高分3.打印语文最高分4.打印英语最高分5.退出	");
				int  s=sc.nextInt();
				if(s==1){
					System.out.println("打印总分最高分");
					int   max=0;
					
					for(xuesheng d:list){
						if(d.getShuxue()+d.getYingyu()+d.getYuwen()>max){
							max=d.getShuxue()+d.getYingyu()+d.getYuwen();
						}
					}
					System.out.println("总分最大值是"+max);
					
				}else  if(s==2){
					
					int  max=0;
					for(xuesheng d:list){
						if(max<d.getShuxue()){
							
						}
					}
					System.out.println("数学最高分是"+max);
					
				}else  if(s==3){
					
					int  max=0;
					for(xuesheng d:list){
						if(max<d.getYuwen()){
							
						}
					}
					System.out.println("语文英语"+max);
				}else  if(s==4){
					System.out.println("打印英语最高分");
					int max=0;
					for(xuesheng d:list){
						if(max<d.getYingyu()){
							
						}
					}
					System.out.println("英语英语"+max);
				}else  if(s==5){
					System.out.println("退出");
					break;
				}else{
					System.out.println("您输入的数字不规范，请重新输入");
				}	
			}
		}else  if(q==4){
			System.out.println("退出功能");
			break;
		}else {
			System.out.println("您输入的有误，请重新输入");
		}
		}
		
		
		
		
		
		
		
		
	}
	
	
	
}
