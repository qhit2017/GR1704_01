package com.x;

import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Cs {
public static void main(String[] args) {
	List<lei>list=new ArrayList<lei>();
	Scanner sc=new Scanner(System.in);
	System.out.println("ģ��һ������ϵͳ����ҵ��Χ����:1 ������Ʒ,2����,3����,4�ο����,5�˳�����");
	while(true){
		int x=sc.nextInt();
		if (x==1) {
			System.out.println("��������Ҫ��ӵ���Ʒ�����,����,�۸�,�������磺001,���,2,100");
			lei c=new lei();
			String str=sc.next();
			String []arr=str.split(",");
			c.setSpbh(arr[0].codePointAt(0));
			c.setMc(arr[1]);
			c.setJg(Double.parseDouble(arr[2]));
			c.setSl(Integer.parseInt(arr[3]));
			
			list.add(c);
			System.out.println("��ӳɹ�");
		}else if(x==2){
			System.out.println("�������������Ʒ��ź�����Ҫ��ӵ��������磺g01,50");
			String str=sc.next();
			String []arr=str.split(",");
			
			String spbh=arr[0];
			int sl=Integer.parseInt(arr[1]);
			
			boolean flag=true;
			for (lei i:list) {
				if (arr[0].equals(i.getSpbh())) {
					i.setSl( i.getSl()+Integer.parseInt(arr[1]));
					flag=false;
				
				}
			}if( flag){
				System.out.println("����ʧ��");
				
				
			}
			
		}else if(x==3){
			System.out.println("�������������Ʒ��ź�����Ҫ��ӵ��������磺g01,50");
			System.out.println("����");
			String str=sc.next();
			String []arr=str.split(",");
			boolean flag=true;
			for (lei i:list) {
				if (arr[1].equals(i.getSpbh())&&Integer.parseInt(arr[1])<=i.getSpbh()) {
					i.setSl( i.getSl()-Integer.parseInt(arr[1]));
				
					flag=false;
					
				}
					
		}
			if( flag){
				System.out.println("����ʧ��");
			}
		}else if(x==4){
			System.out.println("�ο����");
			for (lei i:list) {
				i.iofo();
			}
			
		}else if(x==5){
			System.out.println("�˳�����");
			break;
		}else {
			System.out.println("������Ĳ������淶");
		}
	}
			
}
}
