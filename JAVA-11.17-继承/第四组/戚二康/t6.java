package zuoye;

import java.util.Scanner;

public class t6 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("�������һ��������");
		int a=sc.nextInt();int j=a;
		System.out.println("������ڶ������� ��");
		int s=sc.nextInt();int n=s;
		System.out.println("�����������������");
		int d=sc.nextInt();int h=d;
		System.out.println("��������ĸ�������");
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
