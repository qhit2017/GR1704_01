package ������ϰ;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;



public class zzy {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<dianhuabu>list=new ArrayList<dianhuabu>();
		while(true){
			System.out.println("1.¼��ͨѶ¼  2.��ʾͨѶ¼��Ϣ  3.��������  4.�Ա�����   5.�绰����   6.�˳�����");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("������ �������Ա𣬵绰");
				String  w=sc.next();
				String [] arr=w.split(",");
				dianhuabu a=new dianhuabu();
				a.setXingming(arr[0]);
				a.setXingbie(arr[1].charAt(0));
				a.setDianhua(Integer.parseInt(arr[2]));
				list.add(a);
				System.out.println("�ɹ�¼��");
			}else if(num==2){
				for(dianhuabu a:list){
					a.info();}	
			}else if(num==3){
				System.out.println("����������");
				String xingming=sc.next();
				for(dianhuabu a:list){
				if(xingming.equals(a.getXingming())){
					a.info();
				}
				}
			}else if(num==4){
				System.out.println("�������Ա�");
				char xingbie=sc.next().charAt(0);
				for(dianhuabu a:list){
				if(xingbie==a.getXingbie()){	
				}
				}
			}else if(num==5){
				System.out.println("������绰����");
				String dianhua=sc.next();
				for(dianhuabu b:list){
				if(dianhua.equals(b.getDianhua())){
				b.info();
			}else if(num==6){
				System.out.println("�˳�����");
				break;
			}else{
				System.out.println("����������ֲ��淶");
			}
					}
			}
		}
	}
		
}
