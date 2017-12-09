package com.z;

import java.awt.List;
import java.util.ArrayList;
import java.util.Scanner;

public class Demo2 {
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		ArrayList<Demo1> list=new ArrayList<Demo1>();
		for(int i=1;i>=0;i++){
		System.out.println("1输入考生信息，2查询所有学生，3查询最高分 ，4系统关闭");
		int num=sc.nextInt();
		
		if(num==1){
			System.out.println("请输入考生信息 格式是：姓名,编号,语文成绩,数学成绩,英语成绩");
			String str=sc.next();
			String[] arr=str.split(",");
			
			Demo1 rs=new Demo1();
			rs.setXingming(arr[0]);
			rs.setBianhao(arr[1]);
			rs.setYuwen(Integer.parseInt(arr[2]));
			rs.setShuxue(Integer.parseInt(arr[3]));
			rs.setYingyu(Integer.parseInt(arr[4]));
			
			list.add(rs);
			System.out.println("添加成功");
			
		}else if(num==2){
			for(Demo1 rs:list){
				rs.xinxi();
				
			}
		}else if(num==3){
			while(true){
			System.out.println("1打印总分最高分2打印数学最高分3打印语文最高分4打印英语最高分");
			int z =sc.nextInt();
			if(z==1){
				int max=0;
				String xingming=",";
				for(Demo1 rs:list){
					if(rs.getShuxue()+rs.getYingyu()+rs.getYingyu()>max){
						max=rs.getShuxue()+rs.getYingyu()+rs.getYingyu();
						xingming =rs.getXingming();
					}
				}
				
				System.out.println("最高分是："+max+",他的名字"+xingming);
			}else if(z==2){
				int max=0;
				String xingming=",";
				for(Demo1 rs:list){
					if(max<rs.getShuxue()){
						max =rs.getShuxue();
						xingming =rs.getXingming();
						System.out.println("数学最高分是："+max+",他的名字"+xingming);
					}
				}
			}else if(z==3){
				int max=0;
				String xingming =",";
				for(Demo1 rs:list){
					if(max<rs.getYuwen()){
						max=rs.getYuwen();
						xingming =rs.getXingming();
					}
				}
				System.out.println("语文最高分是："+max+",他的名字："+xingming);
			}else if(z==4){
				int max =0;
				String xingming =",";
				for(Demo1 rs:list){
					if(max<rs.getYingyu()){
						max=rs.getYingyu();
						xingming =rs.getXingming();
					}
				}
				System.out.println("英语最高分是："+max+",他的名字："+xingming);
			}else if(z==5){
				System.out.println("返回上一页");
				break;
			}else{
				System.out.println("您输入的数字不规范");
			}
			}		
		}else if(num==4){
			System.out.println("系统关闭");
			break;
		}else{
			System.out.println("您输入的数不规范");
		}
	}
		}
	}