package com.lianxi;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class jinru {

	public static void main(String[] args) {
		
		List<shuxing>list=new ArrayList<shuxing>();
		Scanner sc=new Scanner(System.in);
		while (true){
			System.out.println("1:¼��ͨѶ¼��Ϣ2:��ʾ����ͨѶ¼��Ϣ3:��������4:�Ա�����5:�绰����6:�˳�����");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("������ͨѶ��Ϣ����,����,��,1547894578");
				String o=sc.next();
				String []arr=o.split(",");
				
				shuxing x=new shuxing();
				x.setName(arr[0]);
				x.setXingbie(arr[1].charAt(0));
				x.setDianhua(Integer.parseInt(arr[3]));
				list.add(x);
				System.out.println("����ɹ�");
			}else if(i==2){
				for(shuxing b:list){
					b.info();
				}
			}else if(i==3){
			String ming=sc.next();
				for(shuxing a:list){
					if(ming.equals(a.getName())){
						a.info();
					}
				}
			}else if(i==4){
				System.out.println("�绰����");
			}else if(i==5){
				System.out.println("�Ա�����");
			}else if(i==6){
				System.out.println("�˳�");
			}
		}
	}
}
