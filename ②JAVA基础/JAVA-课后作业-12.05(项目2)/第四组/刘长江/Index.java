package com.project;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {

	public static void main(String[] args) {
		List<Info> list = new ArrayList<Info>();
		Scanner sc = new Scanner(System.in);
		while(true){
			System.out.println("�밴�� 1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3.��������4.�Ա�����5.�绰����6.�˳�����");
			int num = sc.nextInt();
			if(num==1){
				System.out.println("1��¼��ͨѶ¼��Ϣ��ʽ�ǣ��������Ա𡢵绰");
				String str = sc.next();
				String [] arr = str.split(",");
				Info in = new Info();
				in.setName(arr[0]);
				in.setXingbie(arr[1].charAt(0));
				in.setDianhua(arr[2]);
				list.add(in);
				System.out.println("��ӳɹ�");
			}else if(num==2){
				for(Info e:list){
					e.info();
				}
				
			}else if(num==3){
				System.out.println("����������:");
				String str = sc.next();
				for(Info e:list){
					if(str.equals(e.getName())){
						e.info();
					}
				}
				
			}else if(num==4){
				System.out.println("�������Ա�:");
				char c = sc.next().charAt(0);
				for(Info e:list){
					if(c==e.getXingbie()){
						e.info();
						
					}
					
				}
			}else if(num==5){
				System.out.println("������绰����:");
				String str = sc.next();
				for(Info e:list){
					if(str.equals(e.getDianhua())){
						e.info();
					}
				}
					
				
				
				
			}else if(num==6){
				System.out.println("ϵͳ����");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
			
			
			
			
			
			
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
