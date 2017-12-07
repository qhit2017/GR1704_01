package 练习;

import java.util.Scanner;

public class wwwww {
	public static void main(String[] args) {
		//从键盘输入4个整数，编写程序实现对这4 个整数从大到小的顺序排列输出。
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第1个数字:");
		int a=sc.nextInt();
		System.out.println("请输入第2个数字:");
		int b=sc.nextInt();		
		System.out.println("请输入第3个数字:");
		int c=sc.nextInt();
		System.out.println("请输入第4个数字:");
		int d=sc.nextInt();
		int q;
		int w;
		int e;
		q=a>b?a:b;
		w=c>d?c:d;
		e=q>w?q:w;
		System.out.println(e);
		int r;
		int t;
		int y;
		int u;
		int i;
		int o;
		int p;
		r=q<w?q:w;
		t=c<d?c:d;
		y=r>t?r:t;
		u=a<b?a:b;
		y=r>u?r:u;
		System.out.println(y);
		i=t>u?t:u; 
		o=i<q?i:q;
		o=i<w?i:w;
		System.out.println(o);
		p=t<u?t:u;
		System.out.println(p);
		
	}
	
	
	
	
	
	
	
	
}
