package com.xxx;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class kuangjia {
		public static void main(String[] args) {
			Scanner sc = new Scanner(System.in);
			List<people> list = new ArrayList<people>();
			while(true){
				System.out.println("�밴����1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3.��������4.�Ա�����5.�绰����6.�˳�����");	
				int num = sc.nextInt();
				if(num==1){
					System.out.println("¼��ͨѶ¼��Ϣ��");
					String str = sc.next();
					String[] arr = str.split(",");
					people a = new people();
					a.setName(arr[0]);
					a.setSex(arr[1].charAt(0));
					a.setDianhua(arr[2]);
					list.add(a);
					System.out.println("¼��ɹ���");
				}else if(num==2){
					System.out.println("��ʾ����ͨѶ¼��Ϣ��");
					for(people i: list){
						i.info();
					}
				}else if(num==3){
					System.out.println("������������");
					String name = sc.next();
					for(people i :list){
						if(name.equals(i.getName())){
							i.info();
						}
					}
				}else if(num==4){
					System.out.println("�������Ա�");
					char name = sc.next().charAt(0);
					for(people i :list){
						if(name==i.getSex()){
							i.info();
						}
					}
				}else if(num==5){
					System.out.println("������绰��");
					String name = sc.next();
					for(people i :list){
						if(name.equals(i.getDianhua())){
							i.info();
						}
					}
				}else if(num==6){
					System.out.println("�˳�����");break;
				}
			}
		}
}
