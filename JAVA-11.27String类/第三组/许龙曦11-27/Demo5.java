package com.x;

import java.util.Scanner;

/*
 * 5 (1) ����̨�����
      1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ
   (2)��ѡ��1��ʱ��������ѧ���ɹ���Ȼ�������
       1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ
   (3) ��ѡ��2��ʱ�������ѯ����ѷ��͸�����Ȼ���������
       1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ
   (4) ��ѡ��4��ʱ�����ɾ��ѧ���ɹ���Ȼ�������
       1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ
    (5)��ѡ��5��ʱ�����ϵͳ�رգ�Ȼ��ѭ������
    (6)��������������ʱ����ʾ����������ֲ��ԣ�Ȼ�������
       1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ
 */
public class Demo5 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	int n=1;
			while(n==1) {
				System.out.println(" 1 ���ѧ��\n 2 ��ѯ����ѧ��\n 3 �޸�ѧ��\n 4 ɾ��ѧ��\n 5 ֹͣ");
			     int a=sc.nextInt();
			     if(a>=1&&a<=5){
			     switch(a){
			    case 1:{
			    	 System.out.println("1 ���ѧ��");continue;
			     }
			    case 2:{
			    	System.out.println(" 2 ��ѯ����ѧ��");continue;
			    }
			    case 3:{
			    	System.out.println("3 �޸�ѧ��");continue;
			    }
			    case 4:{
			    	System.out.println(" 4 ɾ��ѧ��");continue;
			    }
			    case 5:{
			    	System.out.println( "5 ֹͣ");n=2;
			    }
			     }
				
			}else{
				System.out.println("����������ֲ���");
			}
			
			
			
			
			
			}
}
}
