package com.f5;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class txl {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<xi>list= new ArrayList<xi>();
		while(true){
			System.out.println("1.¼��ͨѶ¼��Ϣ2.��ʾ����ͨѶ¼��Ϣ3.��������4.�Ա�����5.�绰����6.�˳�����");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("��������ϵ�ˣ�����,�Ա�,�绰,");
				String str=sc.next();
				String []arr=str.split(",");
				xi x=new xi();
				x.setXingming(arr[0]);
				x.setXingie(arr[1].charAt(0));
				x.setDianhua(arr[2]);
				list.add(x);
				System.out.println("��ӳɹ�");
			}else if(i==2){
				for(xi c:list){
					c.info();
				}
			}else if(i==3){
				System.out.println("����������");
				 String str=sc.next();
				for(xi a:list){
					if(str.equals(a.getXingming())){
					a.info();
					}
				}
			}else if(i==4){
				System.out.println("�������Ա�");
				char a=sc.next().charAt(0);
				for(xi b:list){
					if(a==b.getXingie()){
					b.info();
					}
				}
			}else if(i==5){
				System.out.println("������绰��");
				String m = sc.next();
				for(xi g:list){
					if(m.equals(g.getDianhua())){
					g.info();
					}
				}
			}else if(i==6){
				System.out.println("�˳�����");
				break;
			}else{
				System.out.println("������Ĳ��淶");
			}
		}
		
	
	
		
	
		}
}
