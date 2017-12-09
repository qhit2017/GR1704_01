package com.liuchangjiang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Inext {

	public static void main(String[] args) {
		List<Examinfo> list = new ArrayList<Examinfo>();
		Scanner sc = new Scanner(System.in);
		
		while(true){
			System.out.println("请输入按键   1.录入学生信息 2.查询所有学生 3.输出最高分 4.系统关闭");
			int num = sc.nextInt();
			if(num==1){
			System.out.println("请输入考生信息:名字,编号,语文成绩,数学成绩,英语成绩");
			String str = sc.next();	
			String [] arr = str.split(",");
			Examinfo exam = new Examinfo();	
			
			exam.setName(arr[0]);	
			exam.setNo(arr[1]);	
			exam.setShuxue(Integer.parseInt(arr[2]));	
			exam.setYuwen(Integer.parseInt(arr[3]));
			exam.setYingyu(Integer.parseInt(arr[4]));
			list.add(exam);
				System.out.println("录入成功");
			}else if(num==2){
				for(Examinfo e:list){
					e.info();
					}
			}else if(num==3){
				while(true){
					System.out.println("请选择：1.打印总分最高分2.打印数学最高分3.打印语文最高分4.打印英语最高分5.退出");
					int x=sc.nextInt();
				if(x==1){
					int max = 0;
					String name = "";
					for(Examinfo s:list){
					if(s.getShuxue()+s.getYuwen()+s.getYingyu()>max){
					max = s.getShuxue()+s.getYuwen()+s.getYingyu();
					name = s.getName();
				}		
				}	
					System.out.println("名字："+name+"是总分最高分："+max);
				}else if(x==2){
					int max = 0;
					String name = "";
					for(Examinfo e:list){
					if(e.getShuxue()>max){
					max = e.getShuxue();
					
				}
				}
					System.out.println("名字："+name+"是总分最高分："+max);
				}else if(x==3){
					int max = 0;
					String name = "";
					for(Examinfo e:list){
					if(e.getYuwen()>max){
					max = e.getYuwen();
				    
				}
				}
					System.out.println("名字："+name+"是总分最高分："+max);
				}else if(x==4){
				    int max = 0;
				    String name = "";
					for(Examinfo e:list){
					if(e.getYingyu()>max){
					max = e.getYingyu();
					
				}
				}
					System.out.println("名字："+name+"是总分最高分："+max);
				}else if(x==5){
					System.out.println("退出");
					break;
				}
	            }
				
			}else if(num==4){
				System.out.println("系统关闭");
				break;
			}else{
				System.out.println("你输入的数字不规范");
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
