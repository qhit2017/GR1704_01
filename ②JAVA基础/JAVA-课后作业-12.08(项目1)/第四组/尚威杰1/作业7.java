package 星期天作业;

import java.util.Scanner;

public class 作业7 {
//循环输入5个学生的成绩，计算这5个学生的总分，及平均分
	public static void main(String[] args) {
		
		Scanner sc =new Scanner(System.in);
		System.out.println("请输入学生的成绩");
		    int sum =0;
		    for(int i =1;i<=5;i++){
		    	int fenshu=sc.nextInt();
		    	sum =sum+fenshu;
		    }
		    System.out.println(sum);
		    System.out.println(sum/5);
		}
	}
	

