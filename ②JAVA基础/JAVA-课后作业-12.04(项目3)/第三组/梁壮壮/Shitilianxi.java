package com.lianxi;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Shitilianxi {

	public static void main(String[] args) {
		/*1	¼�뿼���ĸ߿���Ϣ
		  2	��ʾ���п�����Ϣ
		  3	��ѯ��߷�, ����: �ܷ���߷� �� ������߷�
		  4	�˳�����*/
		List<Shuxing>list=new ArrayList<Shuxing>();
		Scanner sc=new Scanner(System.in);
		System.out.println("������1��¼�뿼���ĸ߿���Ϣ2����ʾ���п�����Ϣ3����ѯ��߷�, ����: �ܷ���߷� �� ������߷�4���˳�����");
		while (true){
			int i =sc.nextInt();
			if(i==1){
					System.out.println("������ѧ����Ϣ������,����,8569,78,98,56");
					String a=sc.next();
					String arr[]=a.split(",");
					Shuxing x=new Shuxing();
					x.setName(arr[0]);
					x.setBianhao(Integer.parseInt(arr[1]));
					x.setShuxue(Integer.parseInt(arr[2]));
					x.setYingyu(Integer.parseInt(arr[3]));
					x.setYuwen(Integer.parseInt(arr[4]));
					list.add(x);
					System.out.println("����ɹ�");
			}else if(i==2){
				for(Shuxing p:list){
					p.info();
				}	
			}else if (i==3){
				while (true){
					int m=sc.nextInt();
					if(m==1){
						
						int max=0;
						for(Shuxing r:list){
							if(max<(r.getShuxue()+r.getYingyu()+r.getYingyu())){
								max=r.getShuxue()+r.getYingyu()+r.getYingyu();
							}
							System.out.println(max);
						}
					}else if(m==2){
						int max =0;
						for(Shuxing r2:list){
							if(max>r2.getYingyu()){
								max=r2.getYingyu();
							}
							System.out.println(max);
						}
					}else if(m==3){
						int max =0;
						for(Shuxing r3:list){
							if(max>r3.getYingyu()){
								max=r3.getYingyu();
							}
							System.out.println(max);
						}
					}else if(m==4){
						int max =0;
						for(Shuxing r4:list){
							if(max>r4.getYingyu()){
								max=r4.getYingyu();
							}
							System.out.println(max);
						}break;
					}else{
						System.out.println("��,�˳�Ŷ");
					}
				}
				
			}else if (i==4){
				System.out.println("�˳�����");break;
			}else {
				System.out.println("������Ĳ��淶");
			}
		}
		}
		
}
