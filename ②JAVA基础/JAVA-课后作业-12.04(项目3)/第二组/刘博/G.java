package c1;

import java.lang.reflect.GenericDeclaration;
import java.util.ArrayList;
import java.util.Scanner;

public class G {
public static void main(String[] args) {
	
	Scanner sc=new Scanner(System.in);
	ArrayList<G2> list=new ArrayList<G2>();
	while(true){
	System.out.println("1 录入学生信息,2显示所有考生成绩,3.查询信息 4系统停止");
		int sum=sc.nextInt();
		if(sum==1){
			System.out.println("录入学生信息格式是：姓名,编号,语文成绩,英语成绩,数学成绩");
			String str = sc.next();
			String[] arr = str.split(",");
			G2 g2 = new G2();
			g2.setXingming(arr[0]);
			g2.setBianhao(arr[1]);
			g2.setYuwen(Integer.parseInt(arr[2]));
			g2.setShuxue(Integer.parseInt(arr[3]));
			g2.setYingyu(Integer.parseInt(arr[4]));
			
			list.add(g2);
			System.out.println("添加成功");	
		}else if(sum==2){
			for(G2 g2:list){
			g2.info();
			}
			System.out.println("显示所有考生成绩");
		}else if(sum==3){
			int a=0;
				while(true){
				System.out.println("1.打印总分最高分2.打印数学最高分3.打印语文最高分4.打印英语最高分");
				for(G2 x:list)
					 a=sc.nextInt();
				if(a==1){
					System.out.println("打印总分最高分");
				}else if(a==2){
					int smu = 0;
					for(G2 p:list){
						if(smu<p.getShuxue()){
							smu=p.getShuxue();
						}
						
					}
				System.out.println("数学最高分"+smu);
				}else if(a==3){
					int smu = 0;
					for(G2 p:list){
						if(smu<p.getYuwen()){
							smu=p.getYuwen();
						}
					}
					System.out.println("语文最高分"+smu);
				}else  if(a==4){
					int smu = 0;
					for(G2 p:list){
						if(smu<p.getYingyu()){
							smu=p.getYingyu();
						}
					}
					System.out.println("打印英语最高分"+smu);
				}else if(a==5){
					System.out.println("返回上一层");
					break;
				}else{
					System.out.println("你输入的数字不规范");
				}
			}
		}else if(sum==4){
			System.out.println("系统停止");
			break;
		}else{
			System.out.println("你输入的数字不规范");
		}
		}
	}
		
	
	

}

