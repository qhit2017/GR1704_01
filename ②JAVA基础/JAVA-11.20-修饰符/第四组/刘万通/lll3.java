package shadiao;

import java.util.Scanner;

public class lll3 {
public static void main(String[] args) {
	

	Scanner sc=new Scanner(System.in);
	System.out.println("������x��ֵ");
	double x=sc.nextDouble();
	System.out.println("������y��ֵ");
	double y=sc.nextDouble();
	System.out.println("������z��ֵ");
	double z=sc.nextDouble();	
	
	if(x>y&&y>z){
	
		System.out.println(x+">"+y+">"+z);
	}else if(x>z&&z>y){
		System.out.println(x+">"+z+">"+y);
	}else if(y>x&&x>z){
		System.out.println(y+">"+x+">"+z);
	}else if(y>z&&z>x){
		System.out.println(y+">"+z+">"+z);
	}else if(z>x&&x>y){
		System.out.println(z+">"+x+">"+y);
	}else if(z>y&&y>x){
		System.out.println(z+">"+y+">"+x);
	}

	
}
}
