package com.gege;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class O1 {
	public static void main(String[] args) {
		List<shangpin> list=new ArrayList<shangpin>();
		Scanner sc=new Scanner(System.in);
		while(true){
			System.out.println("�����룺1.������Ʒ2.����3.����4.�ο����5.�˳�����");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("�����룺��Ʒ����,��Ʒ���,��Ʒ�۸�,��Ʒ����");
				String str=sc.next();
				String arr[] =str.split(",");
				shangpin sp=new shangpin();
				sp.setName(arr[0]);
				sp.setBianhao(arr[1]);
				sp.setJiage(Double.parseDouble(arr[2]));
				sp.setShuliang(Integer.parseInt(arr[3]));
				list.add(sp);
				System.out.println("��ӳɹ�");
			}else if(num==2){
				System.out.println("�����룺��Ʒ���,��������");
				String str1=sc.next();
				String arr1[] =str1.split(",");
				boolean c=true;
				for(shangpin sp:list){
					if(arr1[0].equals(sp.getBianhao())){
						sp.setShuliang(sp.getShuliang()+(Integer.parseInt(arr1[1])));
						c=false;
						System.out.println("�����ɹ�");
					}
				}
				if(c){
					System.out.println("����ʧ��");
				}
			}else if(num==3){
				System.out.println("�����룺��Ʒ���,��������");
				String str2=sc.next();
				String arr2[] =str2.split(",");
				boolean x=true;
				for(shangpin sp:list){
					if(arr2[0].equals(sp.getBianhao())){
						sp.setShuliang(sp.getShuliang()-Integer.parseInt(arr2[1]));
						x=false;
						System.out.println("���۳ɹ�");
					}
				}
				if(x){
					System.out.println("����ʧ��");
				}
				
			}else if(num==4){
				System.out.println("�ο����");
			}else if(num==5){
				System.out.println("ϵͳ����");
				break;
			}else{
				System.out.println("������ȷ������");
			}
			
		}
		
		
		
	}

}
