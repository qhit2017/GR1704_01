package com.������;

import java.util.Scanner;

public class zuoye7 {
	/*
	 *  (1) ����̨�����
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
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		for(int rs = 1;rs>0;rs++){
			System.out.println("1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ");
			int sr =sc.nextInt();
			if(sr==1){
				System.out.println("���ѧ���ɹ�");
			}else if(sr==2){
				System.out.println("��ѯ����ѷ��͸���");
			}else if(sr==3){
				System.out.println("�޸�ѧ���ɹ�");
			}else if(sr==4){
				System.out.println("ɾ��ѧ���ɹ�");
			}else if(sr==5){
				System.out.println("ϵͳֹͣ");
				break;
			}else{
				System.out.println("������Ĳ��淶");
				
			}
		
		}
	}

}
