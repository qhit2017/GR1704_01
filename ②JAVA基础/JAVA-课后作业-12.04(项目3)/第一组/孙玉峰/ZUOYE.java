package com.sun;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ZUOYE {
	
	public static void main(String[] args) {
		List<B1>list=new ArrayList<B1>();
		
		Scanner  sc=new  Scanner(System.in);
		for(int  i=1;i>=1;i++){
		System.out.println("�����룺1.ѧ������Ϣ2	��ʾ����ѧ����Ϣ3	��ѯ��߷�, ����: �ܷ���߷� �� ������߷�4	�˳�����");
		int  a=sc.nextInt();
		if(a==1){
			System.out.println("�����룺ѧ����Ϣ  ��ʽ�� ��  ����,��� ,���ĳɼ�,��ѧ�ɼ�,Ӣ��ɼ�");
			String   a1 =sc.next();
			String  [] arr=a1.split(",");
			B1   b=new  B1();
			b.setXingming(arr[0]);
			b.setBianhao( arr[1]);
			b.setYuwen(Integer.parseInt(arr[2]));
			b.setShuxue(Integer.parseInt(arr[3]));
			b.setYingyu(Integer.parseInt(arr[4]));
			list.add(b);
			System.out.println("��ӳɹ�");
		}else  if(a==2){
			for(B1 s:list){
				s.xinxi();
			}
		}else  if(a==3){
			System.out.println("1.��ӡ�ܷ���߷�2.��ӡ��ѧ��߷�3.��ӡ������߷�4.��ӡӢ����߷�5.�˳�");
			while(true){
				int  d=sc.nextInt();
				if(d==1){
				int max=0;
				for(B1 c:list){
				if(c.getYuwen()+c.getShuxue()+c.getYingyu()>max){
				max=c.getYuwen()+c.getShuxue()+c.getYingyu();}
				
				System.out.println("�ܷ���߷���"+max);
				}
					
					System.out.println("��ӡ�ܷ���߷�");
				}else  if(a==2){
				int max=0;
				for(B1 t:list){
					if(max<t.getShuxue()){
					max=t.getShuxue();
					}
					}
					System.out.println("��ѧ��߷��ǣ�"+max);
				}else  if(a==3){
					int  max=0;
					for(B1 y:list){
						if(max<y.getYuwen()){
							max=y.getYuwen();
						}
					}
					System.out.println("������߷��ǣ�"+max);
				}else  if(a==4){
					int max=0;
					for(B1  x:list){
						if(max<x.getYingyu()){
							max=x.getYingyu();
						}
					}
					System.out.println("Ӣ����߷��ǣ�"+max);
				}else  if(a==5){
					System.out.println("�������˵�");
					break;
				}else{
					System.out.println("����������ֲ��淶 �� ����������");
				}
				}
		}else  if(a==4){
			System.out.println("�˳�����");
			break;
		}else {
			System.out.println("�������������������������");
		}
		}
	}
}	
		
		
	
	
	


		
	


