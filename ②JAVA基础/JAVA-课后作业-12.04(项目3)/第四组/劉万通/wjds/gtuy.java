package com.wjds;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class gtuy {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<xi>list=new ArrayList<xi>();
		while (true){
			System.out.println("请按键：1.输入学生信息 2.查询所有学生信息 3.查询最高分 4.退出");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("请输入学生信息 格式 姓名 ,编号, 语文成绩, 数学成绩, 英语成绩");
				String a=sc.next();
				String[] str=a.split(",");
				xi x = new xi();
				x.setXingming(str[0]);
				x.setBianhao(Integer.parseInt(str[1]));
				x.setYuwen(Integer.parseInt(str[2]));
				x.setShuxue(Integer.parseInt(str[3]));
				x.setYingyu(Integer.parseInt(str[4]));
				list.add(x);
				System.out.println("添加成功");
			}else if(i==2){
				for(xi c : list){
					c.info();
				}	
			}else if(i==3){
				while(true){
					System.out.println("请按键：1.总分最高分 2.语文最高分3.数学最高分 4.英语最高分 5退出");
					int n=sc.nextInt();
					if(n==1){
						int max=0;
						for(xi a:list){
							if(max<a.getYuwen()+a.getShuxue()+a.getYingyu()){
								max=a.getYuwen()+a.getShuxue()+a.getYingyu();
							}
						}
						System.out.println("总分最高分"+max);
					}else if(n==2){
						int max=0;
						for(xi a:list){
							if(max<a.getYuwen()){
								max=a.getYuwen();
							}
						}
						System.out.println("语文最高分"+max);
					}else if(n==3){
						int max=0;
						for(xi a:list){
							if(max<a.getShuxue()){
								max=a.getShuxue();
							}
						}
						System.out.println("数学最高分"+max);
					}else if(n==4){
						int max = 0;
						for(xi a:list){
							if(max<a.getYingyu()){
								max=a.getYingyu();
						}
					}
						
					System.out.println("英语最高分是"+max);
					}else if(n==5){
						System.out.println("退出");break;
					}
				}
				
			}else if(i==4){
				System.out.println("退出");
				break;
			}
		}
		
		
		
			
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
