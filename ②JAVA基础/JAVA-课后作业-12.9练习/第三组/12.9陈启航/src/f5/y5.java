package f5;

import java.util.Scanner;

public class y5 {
//求1~20之间以6结尾的数的乘积
	public static void main(String[] args) {
		Scanner sc=new  Scanner(System.in);
		int s=1;
		for(int i=1;i<=20;i++){
			if(i%10==6){
				s=s*i;
			}
		}
		System.out.println(s);
	}
}
