package zuoye;

import java.util.Scanner;

public class t3 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ������");
		double i=sc.nextDouble();
		System.out.println("������ڶ�������");
		double a=sc.nextDouble();
		System.out.println("���������������");
		double s=sc.nextDouble();
		double w=0; double q=0;
		if(i>=a){ 
		w=i; q=a;
				
			}else{
				w=a; q=i;
			if(w>=s){
				
		System.out.println(w+">"+q+">"+s);
		}else if(q>=s){
			System.out.println(w+">"+s+">"+q);
		}else{
			System.out.println(s+">"+w+">"+q);
		}
			
		}
	}

}
