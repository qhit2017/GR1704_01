package com.qierkang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
public class K1 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<K2>list=new ArrayList<K2>();
		while(true){
			System.out.println("�밴����1.������Ʒ2.����3.����4.�ο����5.�˳�����");
			int a=sc.nextInt();
			if(a==1){
				System.out.println("������,��ʽ�����,��Ʒ����,�۸�,����");
				String str=sc.next();
				String[]arr=str.split(",");
				K2 t=new K2();
				t.setBianhao(Integer.parseInt(arr[0]));
				t.setMingcheng(arr[1]);
				t.setJiage(Integer.parseInt(arr[2]));
				t.setShuliang(Integer.parseInt(arr[3]));
				list.add(t);
				System.out.println("��ӳɹ�");
			}else if(a==2){
				System.out.println("������,��ʽ�����,����");
				String i=sc.next();
				String[]arr=i.split(",");
				boolean p=true;
				for(K2 v:list ){
					if(v.getBianhao()==Integer.parseInt(arr[0])){
						v.setShuliang(v.getShuliang()+Integer.parseInt(arr[1]));
						System.out.println("�����ɹ�");
						p=false;
						break;
					}
				}
				if(p){
					System.out.println("��Ʒ���ڿ��");
				}
			}else if(a==3){
				System.out.println("������,��ʽ�����,����");
				String r=sc.next();
				String[]arr=r.split(",");
				boolean n=true;
				for(K2 b:list){
					if(b.getBianhao()==Integer.parseInt(arr[0])&&b.getShuliang()>=Integer.parseInt(arr[1])){
						b.setShuliang(b.getShuliang()-Integer.parseInt(arr[1]));
						System.out.println("���۳ɹ�");
					n=false;
					break;
					}
				}
				if(n){
				System.out.println("��治��");
			}
			}else if(a==4){
				for(K2 s:list){
					s.info();
				}
			}else if(a==5){
				System.out.println("�˳�����");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
		}
	}
}