package zuoye;

import java.util.Scanner;

public class zuoye6 {

	public static void main(String[] args) {
		 
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ����");
		int i=sc.nextInt(); int j = i ;
		System.out.println("������ڶ�����");
		int a=sc.nextInt(); int g = a;
		System.out.println("�������������");
		int b=sc.nextInt(); int d =b;
		System.out.println("��������ĸ���");
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
