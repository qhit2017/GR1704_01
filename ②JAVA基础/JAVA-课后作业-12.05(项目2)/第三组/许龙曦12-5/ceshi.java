package com.xxx;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
/*
 *  ģ��һ��ͨѶ¼ϵͳ����ҵ��Χ������
1	¼��ͨѶ¼��Ϣ
2	��ʾ����ͨѶ¼��Ϣ
3	��������
4	�Ա�����
5	�绰����
6	�˳�����
 */
public class ceshi {
 public static void main(String[] args) {
	 List<tong>list=new ArrayList<tong>();
	Scanner sc=new Scanner(System.in);
	while(true){
		System.out.println(" ģ��һ��ͨѶ¼ϵͳ����ҵ��Χ������,1¼��ͨѶ¼��Ϣ,2	��ʾ����ͨѶ¼��Ϣ,3��������,4�Ա�����,5�绰����,6	�˳�����");
		    int x=sc.nextInt();
			if (x==1) {
			System.out.println("������ͨѶ¼��Ϣ��ʽ�ǣ�����,�Ա�,�绰������磺����,��,136");
			String str=sc.next();
			String[]arr=str.split(",");
			tong t=new tong();
			t.setXingming(arr[0]);
			t.setXingbie(arr[1].charAt(0));
			t.setDianhua(arr[2]);
			list.add(t);
			System.out.println("��ӳɹ�");
		}else if (x==2) {
			System.out.println("��ʾ����ͨѶ¼��Ϣ");
			for (tong i:list) {
				i.iofo();
			}
		}else if (x==3) {
			System.out.println("��������");
			String e=sc.next();
			for (tong i:list) {
				if (e.equals(i.getXingming())) {
					i.iofo();
				}
			}
		}else if (x==4) {
			System.out.println("�Ա�����");
			char e=sc.next().charAt(0);
			for (tong i:list) {
				if (e==(i.getXingbie())) {
					i.iofo();
				}
			}
		}else if (x==5) {
			System.out.println("�绰����");
			String e=sc.next();
			for (tong i:list) {
				if (e.equals(i.getDianhua())) {
					i.iofo();
				}
			}
		}else if (x==6) {
			System.out.println("�˳�����");
			break;
		}else{
			System.out.println("����������ֲ��淶");
		}
		
	}
	
	
}
}
