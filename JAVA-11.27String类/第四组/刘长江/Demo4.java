package com.liuchangjiang;
//模拟实现计算器的功能
//要求从键盘输入第一个数
//输入操作符
//输入第二个数
//然后输出结果
//比如先输入7，然后输入+，最后输入8 回车之后输出：7+8=15
//比如先输入9，然后输入/，最后输入2 回车之后输出：9/2=4
import java.util.Scanner;

public class Demo4 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("输入第一个数：");
		int a = sc.nextInt();
		System.out.println("输入运算符：");
		String c = sc.next();
		System.out.println("输入第二个数：");
		int b = sc.nextInt();
		if("+".equals(c)){
			System.out.println(a+"+"+b+"="+(a+b));
		}else if("-".equals(c)){
			System.out.println(a+"-"+b+"="+(a-b));
		}else if("/".equals(c)){
			System.out.println(a+"/"+b+"="+(a/b));
		}else if("*".equals(c)){
			System.out.println(a+"*"+b+"="+(a*b));
		}else{
			System.out.println("输入有误");
		}
			
			
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		

		
		
		
		
		
	
		
	}
}
