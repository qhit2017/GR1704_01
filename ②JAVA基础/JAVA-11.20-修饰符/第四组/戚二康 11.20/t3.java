package zuoye;

import java.util.Scanner;

public class t3 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("请输入第一个数：");
		double i=sc.nextDouble();
		System.out.println("请输入第二个数：");
		double a=sc.nextDouble();
		System.out.println("请输入第三个数：");
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
