package zuoye;

import java.util.Scanner;

public class t6 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第一个整数：");
		int a=sc.nextInt();int j=a;
		System.out.println("请输入第二个整数 ：");
		int s=sc.nextInt();int n=s;
		System.out.println("请输入第三个整数：");
		int d=sc.nextInt();int h=d;
		System.out.println("请输入第四个整数：");
		int i=sc.nextInt();int k=i;  
		for(;;){
			j++;
			n++;
			h++;
			k++;
			if(j==100000000){
				System.out.println(a);
				continue;
			}if(n==100000000){
				System.out.println(s);
				continue;
			}if(h==100000000){
				System.out.println(d);
				continue;
			}if(k==100000000){
				System.out.println(i);
				break;
			}
		}
	}

}
