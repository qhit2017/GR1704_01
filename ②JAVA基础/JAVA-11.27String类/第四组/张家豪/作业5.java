package ��ҵ;

import java.util.Scanner;

public class ��ҵ5 {
	//(1) ����̨�����
    //1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ
 //(2)��ѡ��1��ʱ��������ѧ���ɹ���Ȼ�������
    // 1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ
 //(3) ��ѡ��2��ʱ�������ѯ����ѷ��͸�����Ȼ���������
   //  1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ
 //(4) ��ѡ��4��ʱ�����ɾ��ѧ���ɹ���Ȼ�������
   //  1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ
  //(5)��ѡ��5��ʱ�����ϵͳ�رգ�Ȼ��ѭ������
  //(6)��������������ʱ����ʾ����������ֲ��ԣ�Ȼ�������
    // 1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ
	public static void main(String[] args) {
		Scanner sc =new Scanner(System.in);
		for(int i=1;i>0;i++){
		int a =sc.nextInt();
		
		if(a==1){
			System.out.println("���ѧ��");
			System.out.println("���ѧ���ɹ�");
		}else if(a==2){
			System.out.println("��ѯ����ѧ��");
			System.out.println("��ѯ����ѷ��͸���");
		}else if(a==3){
			System.out.println("�޸�ѧ��");
		}else if(a==4){
			System.out.println("ɾ��ѧ��");
			System.out.println("ɾ��ѧ��ѧ���ɹ�");
		}else if(a==5){
			System.out.println("ֹͣ");
			System.out.println("ϵͳ�ر�");
			break;
		}else{
			System.out.println("����������ֲ���");
		}
		}
	}
}