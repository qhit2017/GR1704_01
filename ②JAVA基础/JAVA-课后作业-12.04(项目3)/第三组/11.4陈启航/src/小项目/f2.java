package 小项目;

import java.awt.List;
import java.io.ObjectInputStream.GetField;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.concurrent.ArrayBlockingQueue;

public class f2 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	java.util.List <f1>List=new ArrayList<f1>();
	
	while (true) {
		
		System.out.println("1.录入学生信息2.显示所有考生成绩3.查询信息4.系统停止");
		int num=sc.nextInt();
		if(num==1){
			System.out.println("录入学生信息格式：姓名，编号，语文成绩，数学成绩，英语成绩");
			String str=sc.next();
			String[]arr=str.split(",");
			f1 a=new f1();
			a.setXingming(arr[0]);
			a.setBianhao(arr[1]);
			a.setYuwe(Integer.parseInt(arr[2]));
			a.setShuxue(Integer.parseInt(arr[3]));
			a.setYingyu(Integer.parseInt(arr[4]));
		   List.add(a);
		   	System.out.println("添加成功");
		   	a.info();    
		}else if(num==2){
			for(f1 a:List){
		}
		}else if(num==3){
			System.out.println("打印总分最高分2.打印数学最高分3.打印语文最高分4.打印英语最高分5.退出");
		while (true) {
			int a=sc.nextInt();
			if(a==1);
			int max=0;
			for(f1 y:List){
				if(y.getShuxue()+y.getYingyu()+y.getYuwe()>max){
					max=y.getShuxue()+y.getYingyu()+y.getYuwe();
				}
		}
			System.out.println("总分最高分是"+max);
		}
		}else if(num==2){
			int  max=0;
			for(f1 o:List){
			if(max<o.getShuxue()){
				max=o.getShuxue();
			}
			}	
			System.out.println("数学最高分"+max);
		}else if(num==3){
			int max=0;
			for(f1 y:List){
				if(max<y.getYuwe())
					max=y.getYuwe();
			System.out.println("语文最高分"+max);
			}
		}else if(num==4){
			int max=0;
			for(f1 y:List){
				if(max<y.getYingyu()){
					
				}
			}
			System.out.println("英语最高分是"+max);
		}else if(num==5){
			System.out.println("返回主菜单");
			break;
		}else{
			System.out.println("输入的不正确");
		}
		
		}	
		
		}
}