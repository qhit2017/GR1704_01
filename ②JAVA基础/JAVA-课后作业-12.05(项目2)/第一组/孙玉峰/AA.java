package com.sun;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class AA {
	
	public static void main(String[] args) {
		List<tongxun>list =new  ArrayList<tongxun>();
		Scanner sc =new Scanner(System.in);
		System.out.println("1.¼��ͨѶ¼��Ϣ 2.��ʾ������Ϣ 3.�������� 4.�Ա����� 5.�绰���� 6.�˳�����");
		for (int a=0;a>=1;a++){
			if (a==1){
				System.out.println("¼��ͨѶ¼��Ϣ");
				String a1=sc.next();
				String[]arr=a1.split(",");
				tongxun a2=new tongxun();
				a2.setXingming(arr[0]);
				a2.setXingbie(arr[1].charAt(0));
				a2.setDianhua(Integer.parseInt(arr[2]));
				list.add(a2);
				System.out.println("��ӳɹ�");
				}else if (a==2){
					for ( tongxun a4:list ){
					a4.xinxi();
					}
				System.out.println("��ʾ������Ϣ");
			}else if (a==3){
				System.out.println("��������");
			}else if (a==4){
				System.out.println("�Ա�����");
			}else if (a==5){
				System.out.println("�绰����");
			}else if(a==6){
				System.out.println("�˳�����");
				break;
			
			}else  
				System.out.println("����������ֲ��淶");
				
			
		}
	}

}
