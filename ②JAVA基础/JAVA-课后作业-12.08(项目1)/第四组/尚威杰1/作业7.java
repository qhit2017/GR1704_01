package ��������ҵ;

import java.util.Scanner;

public class ��ҵ7 {
//ѭ������5��ѧ���ĳɼ���������5��ѧ�����ܷ֣���ƽ����
	public static void main(String[] args) {
		
		Scanner sc =new Scanner(System.in);
		System.out.println("������ѧ���ĳɼ�");
		    int sum =0;
		    for(int i =1;i<=5;i++){
		    	int fenshu=sc.nextInt();
		    	sum =sum+fenshu;
		    }
		    System.out.println(sum);
		    System.out.println(sum/5);
		}
	}
	

