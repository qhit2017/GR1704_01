package com.xiaoshou;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class xiaoshou {

	
	public static void main(String[] args) {
		
		List<shuxing>list=new ArrayList<shuxing>();
		Scanner sc=new Scanner(System.in);
		while (true){
		System.out.println("1   ������Ʒ2   ����3   ����4   �ο����5   �˳�����");
		int i=sc.nextInt();
			if(i==1){
				System.out.println(" ������Ʒ,¼����Ʒ��Ϣ������Ʒ��š����ơ��۸񡢳�ʼ����  ����,1245,ˮ��,45,457");
				String a=sc.next();
				String arr[]=a.split(",");
				shuxing b=new shuxing();
				b.setBianhao(Integer.parseInt(arr[0]));
				b.setName(arr[1]);
				b.setJiage(Integer.parseInt(arr[2]));
				b.setShuliang(Integer.parseInt(arr[3]));
				b.info();
				list.add(b);
				System.out.println("¼��ɹ�");
			}else if(i==2){
				
				System.out.println("���� ������Ʒ��ź����������д˱����Ʒ����������Ӧ��������û������ʾ����ʧ�ܡ�");
				String a1=sc.next();
				String arr[]=a1.split(",");
				boolean x=true;
				for(shuxing b1:list){
	
					if(b1.getBianhao()==Integer.parseInt(arr[0])){
					b1.setShuliang(b1.getShuliang()+Integer.parseInt(arr[1]));
					System.out.println("��ӳɹ�");
					x =false;
					break;
				}
				}
				if(x){
					System.out.println("���ʧ��");
				}
			}else if(i==3){
				System.out.println("����3�����ۣ�������Ʒ��ź����������д˱����Ʒ����Ʒ�������������������������Ӧ������������ʾ����ʧ��");
				String a2=sc.next();
				String arr[]=a2.split(",");
				for(shuxing b2:list){
					if(b2.getBianhao()==Integer.parseInt(arr[0])&&b2.getShuliang()>Integer.parseInt(arr[1])){
						b2.setShuliang(b2.getShuliang()-Integer.parseInt(arr[1]));
					}
				}
			}else if(i==4){
				for(shuxing b3:list){
					b3.info();
				}
			}else if(i==5){
				System.out.println("�˳�");
				break;
			}else{
				System.out.println("�ף��������Ŷ����");
			}
		}
	}
}
