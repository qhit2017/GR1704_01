package ti1;

import java.util.Scanner;
/*
 * �Ӽ��̽�������n����1~n֮���ܱ�3�����ĸ���
 */
public class T10 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("������һ������");
		int a=sc.nextInt();
		int h=0;
		for(int i=1;i<=a;i++){
			if(i%3==0){
				
				h=h+1;
		}
	}
		System.out.println(h);
}
	
}
