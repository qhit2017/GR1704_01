package com.fushi;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		List<Lei>list = new ArrayList<Lei>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3.��������4.�Ա�����5.�绰����6.�˳�����");
			int num =sc.nextInt();
			if(num==1){
				System.out.println("������ͨѶ¼��Ϣ��ʽ�磺����,�Ա�,�绰����");
				String str=sc.next();
				String []arr=str.split(",");
				Lei l=new Lei();
				l.setName(arr[0]);
				l.setSex(arr[1].charAt(0));
				l.setPhoneNumber(arr[2]);
				list.add(l);
				System.out.println("��ӳɹ�");
			}else if(num==2){
				for(Lei a:list){
					a.info();
				}
			}else if(num==3){
				System.out.println("��������������");
				String name=sc.next();
				for(Lei b:list){
					if(name.equals(b.getName())){
						b.info();
					}
					
				}
			}else if(num==4){
				System.out.println("�������Ա�����");
				String sex=sc.next();
				for(Lei d:list){
					if(sex.equals(d.getSex())){
						d.info();
					}
				}
				
			}else if(num==5){
				System.out.println("������绰����");
				String phoneNumber=sc.next();
				for(Lei e:list){
				if(	phoneNumber.equals(e.getPhoneNumber())){
					e.info();
				}
					
				}
				
			}else if(num==6){
				System.out.println("ֹͣ");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
		}
	}

}
