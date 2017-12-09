package 兄弟;

import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.concurrent.ArrayBlockingQueue;

public class sdfgsg {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<xuesheng>list=new ArrayList<xuesheng>();
		while (true){
			
			System.out.println("1.录入学生信息2.显示所有考生成绩3.查询信息4.系统停止");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("录入学生信息格式是：姓名,编号,语文成绩,数学成绩,英语成绩");
				String str =sc.next();
				String[] arr=str.split(",");
				xuesheng g=new xuesheng();
				g.setXingming(arr[0]);
				g.setBianhoa(arr[1]);
				g.setYingyuchenhji(arr[2]);
				g.setShuxuchenji(arr[3]);
				g.setYuwenchengji(arr[4]);
				
				
				list.add(g);
				System.out.println("添加成功");
			
		}else if (num==2){
			for(xuesheng g:list){
				
				g.xinxi();
			}
			
				
				
			System.out.println("显示所有考生成绩");
		}else if (num==3){
			while(true){
				System.out.println("1.打印总分最高分2打印数学最高分3.打印语文最高分4.打印英语最高分5.退出");
				int a=sc.nextInt();
			if(a==1){
				System.out.println("总分最高分");
			}else if(a==2){
				
				int max=0;
				for(xuesheng b:list){
					if(max<Integer.parseInt(b.getShuxuchenji())){
						
					}
					
					
				}
				
				
			
				System.out.println("数学最高分");
			}else if(a==3){
				System.out.println("语文最高分");
			}else if(a==4){
				System.out.println("英语最高分");
			}else if(a==5){
				System.out.println("退出");
			}
				
				
				}
				
			
		
			
				
			
			
			
			
			
			
			System.out.println("查询信息");
		}else if (num==4){
			System.out.println("系统停止");
			break;
		}else {
			System.out.println("你输入的数字不规范");
		}
			
		}
			
	}
		
			
		
}
		
	


