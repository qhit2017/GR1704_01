package com.xx;
import java.awt.List;
import java.util.ArrayList;
/*
 * 模拟一个高考评分系统，其业务范围包括：
1	录入考生的高考信息
2	显示所有考生信息
3	查询最高分, 包括: 总分最高分 和 单科最高分
4	退出功能

 */
import java.util.Scanner;

public class Index {
public static void main(String[] args) {
   Scanner sc=new Scanner(System.in);
	java.util.List<ExamInfo>list=new ArrayList<ExamInfo>();
	while(true){
		
		System.out.println("1录入考生的高考信息,2显示所有考生信息,3查询最高分,包括: 总分最高分 和 单科最高分,4退出功能");
		int num=sc.nextInt();
		if (num==1) {
			/*System.out.println("请输入考生姓名");
			String name =sc.next();
			System.out.println("请输入考生编号");
			String no =sc.next();
			System.out.println("请输入考生语文成绩");
			int chinese=sc.nextInt();
			System.out.println("请输入考生数学成绩");
			int math=sc.nextInt();
			System.out.println("请输入考生英语成绩");
			int english=sc.nextInt();*/
			
			System.out.println("请输入学生姓名、编号、语文、数学、英语成绩例如李四,024,78,89,90");
			String str=sc.next();
			String[]arr=str.split(",");
			ExamInfo esam=new ExamInfo();
			
			esam.setName(arr[0]);
			esam.setNo(arr[1]);
			esam.setChinese(Integer.parseInt(arr[2]));
			esam.setMath(Integer.parseInt(arr[3]));
			esam.setEnglish(Integer.parseInt(arr[4]));
			
			list.add(esam);
			System.out.println("添加成功");
			
		}else if(num==2){
			for (ExamInfo i:list) {
				i.iofo();
				
			}
		
		}else if(num==3){
			while(true){
				System.out.println("请选择1打印总分最高分 2打印数学最高分 3打印语文最高分 4打印英语最高分 5	退出");
				int x=sc.nextInt();
				if(x==1){
					System.out.println("打印总分最高分");
										
				}else if(x==2){
					int max=0;
					String name="";
					for (ExamInfo e:list) {
						if(max<e.getMath()){
						max=e.getMath();
						name=e.getName();
						
						
					}
					System.out.println("数学最高分是："+max+",他的名字是"+name);
				}
				}else if(x==3){
					int max=0;
					for (ExamInfo e:list) {
						if(max<e.getChinese());
						max=e.getChinese();
				}
					System.out.println("语文最高分是:"+max);
			}else if(x==4){
				int max=0;
				for (ExamInfo e:list) {
					if(max<e.getEnglish());
					max=e.getEnglish();
			}
				System.out.println("英语最高分是："+max);
			}else if(x==5){
				System.out.println("返回上一层");
				break;
			}else{
				System.out.println("您输入的数字不规范");
			}
			}
			
		}else if(num==4){
			System.out.println("4退出功能");
			break;
	}else {
		System.out.println("您输入的数字不规范");
		
	}
	}
}
}
