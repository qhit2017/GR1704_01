package com.shengjie;

import java.util.Scanner;

import org.omg.Messaging.SyncScopeHelper;
/*����̨�����
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
public class Work5 {
	public static void main(String[] args) {
		
		Scanner sc =new Scanner(System.in);
		for(;;){
			System.out.println("1 ���ѧ�� 2 ��ѯ����ѧ�� 3 �޸�ѧ�� 4 ɾ��ѧ�� 5 ֹͣ");
			int a=sc.nextInt();
			switch(a){
			case 1:System.out.println("���ѧ���ɹ�");continue;
			case 2:System.out.println("��ѯ����ѷ�����");continue;
			case 3:System.out.println("�޸�ѧ����Ϣ");continue;
			case 4:System.out.println("ɾ��ѧ���ɹ�");continue;
			case 5:System.out.println("ϵͳ�ر�");break;
			default:System.out.println("����������ֲ���");
			
			
		}
	
		}

}

	
}