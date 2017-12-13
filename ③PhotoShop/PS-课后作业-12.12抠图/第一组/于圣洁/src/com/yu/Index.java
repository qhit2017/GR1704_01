package com.yu;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		List<Student>list=new ArrayList<Student>();
		Scanner sc = new Scanner(System.in);
		while (true){
			System.out.println("请按键:1.录入学生信息2.显示所有学生信息3.查询最高分4.停止");
			int num =sc.nextInt();
			if(num==1){
				System.out.println("请输入学生信息格式是：姓名,编号,语文成绩,数学成绩,英语成绩");
				String str=sc.next();
				String[]arr=str.split(",");
				
				Student s=new Student();
				s.setName(arr[0]);
				s.setBianhao(arr[1]);
				s.setChinese(Integer.parseInt(arr[2]));
				s.setMath(Integer.parseInt(arr[3]));
				s.setEnglish(Integer.parseInt(arr[4]));
				list.add(s);
				System.out.println("添加成功");
			}else if(num==2){
				System.out.println("显示所有学生信息");
				for(Student a :list){
					a.info();
				}
			}else if(num==3){
				while(true){
					System.out.println("1.查询总分最高分，2.语文最高分，3.数学最高分，4.英语最高分5.返回上一层");
					int x=sc.nextInt();
					if(x==1){
						int max=0;
						for(Student i:list){
							if(max<i.getChinese()+i.getEnglish()+i.getMath()){
								max=i.getChinese()+i.getEnglish()+i.getMath();
							}
						}
						System.out.println("查询总分最高分"+max);
					}else if(x==2){
						int max=0;
						for(Student b:list){
							if(max<b.getChinese()){
								max=b.getChinese();
							}
						}
						System.out.println("语文最高分"+max);
					}else if(x==3){
						int max=0;
						String name="";
						for(Student c:list){
							if(max<c.getMath()){
								max=c.getMath();
								name=c.getName();
							}else if(max==c.getMath()){
								max=c.getMath();
								name=c.getName();
							}
						}
						System.out.println("数学最高分"+max+"他的名字是"+name);
					}else if(x==4){
						int max=0;
						for(Student d:list){
							if(max<d.getEnglish()){
								max=d.getEnglish();
							}
						}
						System.out.println("英语最高分"+max);
					}else if(x==5){
						System.out.println("返回上一层");
					break;
					}else{
						System.out.println("您输入的数字不规范");
					}
				}
			}else if(num==4){
				System.out.println("停止");
				break;
			}else{
				System.out.println("您输入的数字不规范，请重新输入");
			}
		}
	}

}
