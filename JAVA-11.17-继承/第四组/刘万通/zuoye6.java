package zuoye;

import java.util.Scanner;

public class zuoye6 {

	public static void main(String[] args) {
		 
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第一个数");
		int i=sc.nextInt(); int j = i ;
		System.out.println("请输入第二个数");
		int a=sc.nextInt(); int g = a;
		System.out.println("请输入第三个数");
		int b=sc.nextInt(); int d =b;
		System.out.println("请输入第四个数");
		int c=sc.nextInt(); int z =c;
		for(;;){
			j++;
			g++;
			d++;
			z++;
			if(j==1000000000){
				System.out.println(i);
				continue;
			}if(g==1000000000){
				System.out.println(a);
				continue;
			}if(d==1000000000){
				System.out.println(b);
				continue;
			}if(z==1000000000){
				System.out.println(c);
				break;
			}
			
		}
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
}
