package com.wjds;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class gtuy {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<xi>list=new ArrayList<xi>();
		while (true){
			System.out.println("�밴����1.����ѧ����Ϣ 2.��ѯ����ѧ����Ϣ 3.��ѯ��߷� 4.�˳�");
			int i=sc.nextInt();
			if(i==1){
				System.out.println("������ѧ����Ϣ ��ʽ ���� ,���, ���ĳɼ�, ��ѧ�ɼ�, Ӣ��ɼ�");
				String a=sc.next();
				String[] str=a.split(",");
				xi x = new xi();
				x.setXingming(str[0]);
				x.setBianhao(Integer.parseInt(str[1]));
				x.setYuwen(Integer.parseInt(str[2]));
				x.setShuxue(Integer.parseInt(str[3]));
				x.setYingyu(Integer.parseInt(str[4]));
				list.add(x);
				System.out.println("��ӳɹ�");
			}else if(i==2){
				for(xi c : list){
					c.info();
				}	
			}else if(i==3){
				while(true){
					System.out.println("�밴����1.�ܷ���߷� 2.������߷�3.��ѧ��߷� 4.Ӣ����߷� 5�˳�");
					int n=sc.nextInt();
					if(n==1){
						int max=0;
						for(xi a:list){
							if(max<a.getYuwen()+a.getShuxue()+a.getYingyu()){
								max=a.getYuwen()+a.getShuxue()+a.getYingyu();
							}
						}
						System.out.println("�ܷ���߷�"+max);
					}else if(n==2){
						int max=0;
						for(xi a:list){
							if(max<a.getYuwen()){
								max=a.getYuwen();
							}
						}
						System.out.println("������߷�"+max);
					}else if(n==3){
						int max=0;
						for(xi a:list){
							if(max<a.getShuxue()){
								max=a.getShuxue();
							}
						}
						System.out.println("��ѧ��߷�"+max);
					}else if(n==4){
						int max = 0;
						for(xi a:list){
							if(max<a.getYingyu()){
								max=a.getYingyu();
						}
					}
						
					System.out.println("Ӣ����߷���"+max);
					}else if(n==5){
						System.out.println("�˳�");break;
					}
				}
				
			}else if(i==4){
				System.out.println("�˳�");
				break;
			}
		}
		
		
		
			
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
